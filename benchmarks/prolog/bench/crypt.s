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
                        sub              rsp, 3776
                        mov              qword ptr [rsp + 3752], rcx
                        mov              qword ptr [rsp + 3760], rdx
                        mov              qword ptr [rsp + 3768], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 3776]
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3736], r13
                        mov              qword ptr [rsp + 3728], 0
                        mov              qword ptr [rsp + 3720], 0
                        mov              qword ptr [rsp + 3712], r12
                        lea              rax, [rip + mult$2F4_alt1]
                        mov              qword ptr [rsp + 3720], rax
                        lea              rdi, [rsp + 3712]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 3568
                        mov              edx, 3712
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
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx;         jmp   n39_lit_string_α
                        .size            n38_var_ref_bx, .-n38_var_ref_bx
                        .type            n39_lit_string_bx, @function
n39_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rbp + 2144], 2            # result
                        mov              dword ptr [rbp + 2148], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_133_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n40_var_ref_α
.Llit_string_α_133_0:   .quad            .Llit_string_α_133_0_s
.Llit_string_α_133_0_s: .string          "."
                        .size            n39_lit_string_bx, .-n39_lit_string_bx
                        .type            n40_var_ref_bx, @function
n40_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3664]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx;         jmp   n41_var_ref_α
                        .size            n40_var_ref_bx, .-n40_var_ref_bx
                        .type            n41_var_ref_bx, @function
n41_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3568]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n42_call_α
                        .size            n41_var_ref_bx, .-n41_var_ref_bx
                        .type            n42_call_bx, @function
n42_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_call_α:             mov              r11, 19
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2040]
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
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n43_call_α
n42_call_β:             mov              r11, 19;                             jmp   mult$2F4_step
                        .size            n42_call_bx, .-n42_call_bx
                        .type            n43_call_bx, @function
n43_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_call_α:             mov              r11, 20
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2072]
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
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx;         jmp   n45_var_ref_α
                        .size            n44_var_ref_bx, .-n44_var_ref_bx
                        .type            n45_var_ref_bx, @function
n45_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3584]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n46_call_α
                        .size            n45_var_ref_bx, .-n45_var_ref_bx
                        .type            n46_call_bx, @function
n46_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:             mov              r11, 23
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
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
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx;         jmp   n48_var_ref_α
                        .size            n47_var_ref_bx, .-n47_var_ref_bx
                        .type            n48_var_ref_bx, @function
n48_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3680]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx;         jmp   n49_call_α
                        .size            n48_var_ref_bx, .-n48_var_ref_bx
                        .type            n49_call_bx, @function
n49_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_call_α:             mov              r11, 26
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1784], rax
                        lea              rdi, [rbp + 1776]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
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
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx;         jmp   n51_lit_string_α
                        .size            n50_var_ref_bx, .-n50_var_ref_bx
                        .type            n51_lit_string_bx, @function
n51_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rbp + 1744], 2            # result
                        mov              dword ptr [rbp + 1748], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_152_0]
                        mov              qword ptr [rbp + 1752], rax;         jmp   n52_var_ref_α
.Llit_string_α_152_0:   .quad            .Llit_string_α_152_0_s
.Llit_string_α_152_0_s: .string          "."
                        .size            n51_lit_string_bx, .-n51_lit_string_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3648]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx;         jmp   n53_var_ref_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_var_ref_bx, @function
n53_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3616]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx;         jmp   n54_call_α
                        .size            n53_var_ref_bx, .-n53_var_ref_bx
                        .type            n54_call_bx, @function
n54_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:             mov              r11, 31
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1640]
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
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n55_call_α
n54_call_β:             mov              r11, 31;                             jmp   mult$2F4_step
                        .size            n54_call_bx, .-n54_call_bx
                        .type            n55_call_bx, @function
n55_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_call_α:             mov              r11, 32
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1576], rax
                        lea              rdi, [rbp + 1568]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n56_var_ref_α
n55_call_β:             mov              r11, 32;                             jmp   mult$2F4_step
                        .size            n55_call_bx, .-n55_call_bx
                        .type            n56_var_ref_bx, @function
n56_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3632]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n57_var_α
                        .size            n56_var_ref_bx, .-n56_var_ref_bx
                        .type            n57_var_bx, @function
n57_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n58_call_α
                        .size            n57_var_bx, .-n57_var_bx
                        .type            n58_call_bx, @function
n58_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_call_α:             mov              r11, 35
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1304], rax
                        lea              rdi, [rbp + 1296]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n59_var_α
n58_call_β:             mov              r11, 35;                             jmp   mult$2F4_step
                        .size            n58_call_bx, .-n58_call_bx
                        .type            n59_var_bx, @function
n59_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              mov              r11, 36
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 1336], rax;         jmp   n60_call_α
                        .size            n59_var_bx, .-n59_var_bx
                        .type            n60_call_bx, @function
n60_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_call_α:             mov              r11, 37
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1360]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n61_call_α
n60_call_β:             mov              r11, 37;                             jmp   mult$2F4_step
                        .size            n60_call_bx, .-n60_call_bx
                        .type            n61_call_bx, @function
n61_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_call_α:             mov              r11, 38
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rdi, [rbp + 1216]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n62_call_α
n61_call_β:             mov              r11, 38;                             jmp   mult$2F4_step
                        .size            n61_call_bx, .-n61_call_bx
                        .type            n62_call_bx, @function
n62_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_call_α:             mov              r11, 39
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1408]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n63_var_α
n62_call_β:             mov              r11, 39;                             jmp   mult$2F4_step
                        .size            n62_call_bx, .-n62_call_bx
                        .type            n63_var_bx, @function
n63_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:              mov              r11, 40
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 1448], rax;         jmp   n64_call_α
                        .size            n63_var_bx, .-n63_var_bx
                        .type            n64_call_bx, @function
n64_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_call_α:             mov              r11, 41
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1472]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n65_call_α
n64_call_β:             mov              r11, 41;                             jmp   mult$2F4_step
                        .size            n64_call_bx, .-n64_call_bx
                        .type            n65_call_bx, @function
n65_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_call_α:             mov              r11, 42
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n66_call_α
n65_call_β:             mov              r11, 42;                             jmp   mult$2F4_step
                        .size            n65_call_bx, .-n65_call_bx
                        .type            n66_call_bx, @function
n66_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:             mov              r11, 43
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1520]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n67_call_α
n66_call_β:             mov              r11, 43;                             jmp   mult$2F4_step
                        .size            n66_call_bx, .-n66_call_bx
                        .type            n67_call_bx, @function
n67_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:             mov              r11, 44
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n68_var_ref_α
n67_call_β:             mov              r11, 44;                             jmp   mult$2F4_step
                        .size            n67_call_bx, .-n67_call_bx
                        .type            n68_var_ref_bx, @function
n68_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3648]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n69_var_α
                        .size            n68_var_ref_bx, .-n68_var_ref_bx
                        .type            n69_var_bx, @function
n69_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              mov              r11, 46
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 808], rax;          jmp   n70_call_α
                        .size            n69_var_bx, .-n69_var_bx
                        .type            n70_call_bx, @function
n70_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_call_α:             mov              r11, 47
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 808]
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
                                                                              jmp   n71_lit_integer_α
n70_call_β:             mov              r11, 47;                             jmp   mult$2F4_step
                        .size            n70_call_bx, .-n70_call_bx
                        .type            n71_lit_integer_bx, @function
n71_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:      mov              r11, 48
                        mov              qword ptr [rbp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_180_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n72_call_α
.Llit_integer_α_180_0:  .quad            10
                        .size            n71_lit_integer_bx, .-n71_lit_integer_bx
                        .type            n72_call_bx, @function
n72_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_call_α:             mov              r11, 49
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n73_lit_string_α
n72_call_β:             mov              r11, 49;                             jmp   mult$2F4_step
                        .size            n72_call_bx, .-n72_call_bx
                        .type            n73_lit_string_bx, @function
n73_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:       mov              r11, 50
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_182_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n74_call_α
.Llit_string_α_182_0:   .quad            .Llit_string_α_182_0_s
.Llit_string_α_182_0_s: .string          "mod"
                        .size            n73_lit_string_bx, .-n73_lit_string_bx
                        .type            n74_call_bx, @function
n74_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_call_α:             mov              r11, 51
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 944]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n75_call_α
n74_call_β:             mov              r11, 51;                             jmp   mult$2F4_step
                        .size            n74_call_bx, .-n74_call_bx
                        .type            n75_call_bx, @function
n75_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_call_α:             mov              r11, 52
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n76_call_α
n75_call_β:             mov              r11, 52;                             jmp   mult$2F4_step
                        .size            n75_call_bx, .-n75_call_bx
                        .type            n76_call_bx, @function
n76_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_call_α:             mov              r11, 53
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n77_call_α
n76_call_β:             mov              r11, 53;                             jmp   mult$2F4_step
                        .size            n76_call_bx, .-n76_call_bx
                        .type            n77_call_bx, @function
n77_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_call_α:             mov              r11, 54
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n78_var_ref_α
n77_call_β:             mov              r11, 54;                             jmp   mult$2F4_step
                        .size            n77_call_bx, .-n77_call_bx
                        .type            n78_var_ref_bx, @function
n78_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3600]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n79_var_α
                        .size            n78_var_ref_bx, .-n78_var_ref_bx
                        .type            n79_var_bx, @function
n79_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              mov              r11, 56
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 408], rax;          jmp   n80_call_α
                        .size            n79_var_bx, .-n79_var_bx
                        .type            n80_call_bx, @function
n80_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_call_α:             mov              r11, 57
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
                                                                              jmp   n81_lit_integer_α
n80_call_β:             mov              r11, 57;                             jmp   mult$2F4_step
                        .size            n80_call_bx, .-n80_call_bx
                        .type            n81_lit_integer_bx, @function
n81_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:      mov              r11, 58
                        mov              qword ptr [rbp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_192_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n82_call_α
.Llit_integer_α_192_0:  .quad            10
                        .size            n81_lit_integer_bx, .-n81_lit_integer_bx
                        .type            n82_call_bx, @function
n82_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_call_α:             mov              r11, 59
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
                                                                              jmp   n83_lit_string_α
n82_call_β:             mov              r11, 59;                             jmp   mult$2F4_step
                        .size            n82_call_bx, .-n82_call_bx
                        .type            n83_lit_string_bx, @function
n83_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:       mov              r11, 60
                        mov              qword ptr [rbp + 592], 2             # result
                        mov              dword ptr [rbp + 596], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_194_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n84_call_α
.Llit_string_α_194_0:   .quad            .Llit_string_α_194_0_s
.Llit_string_α_194_0_s: .string          "//"
                        .size            n83_lit_string_bx, .-n83_lit_string_bx
                        .type            n84_call_bx, @function
n84_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_call_α:             mov              r11, 61
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
                                                                              jmp   n85_call_α
n84_call_β:             mov              r11, 61;                             jmp   mult$2F4_step
                        .size            n84_call_bx, .-n84_call_bx
                        .type            n85_call_bx, @function
n85_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_call_α:             mov              r11, 62
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
                                                                              jmp   n86_call_α
n85_call_β:             mov              r11, 62;                             jmp   mult$2F4_step
                        .size            n85_call_bx, .-n85_call_bx
                        .type            n86_call_bx, @function
n86_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_call_α:             mov              r11, 63
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n87_call_α
n86_call_β:             mov              r11, 63;                             jmp   mult$2F4_step
                        .size            n86_call_bx, .-n86_call_bx
                        .type            n87_call_bx, @function
n87_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_call_α:             mov              r11, 64
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
                                                                              jmp   n88_var_ref_α
n87_call_β:             mov              r11, 64;                             jmp   mult$2F4_step
                        .size            n87_call_bx, .-n87_call_bx
                        .type            n88_var_ref_bx, @function
n88_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3568]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n89_var_ref_α
                        .size            n88_var_ref_bx, .-n88_var_ref_bx
                        .type            n89_var_ref_bx, @function
n89_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3584]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n90_var_ref_α
                        .size            n89_var_ref_bx, .-n89_var_ref_bx
                        .type            n90_var_ref_bx, @function
n90_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3600]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n91_var_ref_α
                        .size            n90_var_ref_bx, .-n90_var_ref_bx
                        .type            n91_var_ref_bx, @function
n91_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3616]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n92_call_proc_staged_α
                        .size            n91_var_ref_bx, .-n91_var_ref_bx
                        .type            n92_call_proc_staged_bx, @function
n92_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_call_proc_staged_α: mov              r11, 69
                        mov              qword ptr [rbp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_208_200
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_208_201
.Lcall_proc_staged_α_208_200:
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
.Lcall_proc_staged_α_208_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_208_202
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_208_203
.Lcall_proc_staged_α_208_202:
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
.Lcall_proc_staged_α_208_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_208_204
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_208_205
.Lcall_proc_staged_α_208_204:
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
.Lcall_proc_staged_α_208_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_208_206
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_208_207
.Lcall_proc_staged_α_208_206:
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
.Lcall_proc_staged_α_208_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_208_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_208_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 4
                        mov              rsi, rbp
                        lea              rdx, [rbp + 3776]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_208_99
                        mov              r10, qword ptr [rbp + 3736]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_208_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_208_99
                        mov              rcx, qword ptr [rbp + 3752]
                        mov              rdx, qword ptr [rbp + 3760]
                        lea              rsp, [rbp + 3776]
                        mov              rbp, qword ptr [rbp + 3768];         jmp   rax
.Lcall_proc_staged_α_208_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_208_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_208_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_208_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_208_3:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_208_21
                        add              rsp, 32
.Lcall_proc_staged_α_208_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_208_2
.Lcall_proc_staged_α_208_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_208_2
.Lcall_proc_staged_α_208_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_208_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   mult$2F4_step
.Lcall_proc_staged_α_208_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_208_29
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
.Lcall_proc_staged_α_208_29:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   mult$2F4_ret0
n92_call_proc_staged_β: mov              r11, 69
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_208_22
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_208_22
                        mov              rcx, qword ptr [rbp + 168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_208_22:
                                                                              jmp   mult$2F4_step
.Lcall_proc_staged_α_208_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   mult$2F4_ret0
.Lcall_proc_staged_α_208_0:
                        .quad            .Lcall_proc_staged_α_208_0_s
.Lcall_proc_staged_α_208_0_s:
                        .string          "mult/4"
                        .size            n92_call_proc_staged_bx, .-n92_call_proc_staged_bx
                        .type            n93_var_ref_bx, @function
n93_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:          mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx;         jmp   n94_lit_string_α
                        .size            n93_var_ref_bx, .-n93_var_ref_bx
                        .type            n94_lit_string_bx, @function
n94_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       mov              r11, 71
                        mov              qword ptr [rbp + 3552], 2            # result
                        mov              dword ptr [rbp + 3556], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_211_0]
                        mov              qword ptr [rbp + 3560], rax;         jmp   n95_call_α
.Llit_string_α_211_0:   .quad            .Llit_string_α_211_0_s
.Llit_string_α_211_0_s: .string          "[]"
                        .size            n94_lit_string_bx, .-n94_lit_string_bx
                        .type            n95_call_bx, @function
n95_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_call_α:             mov              r11, 72
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3496], rax
                        lea              rdi, [rbp + 3488]
                        mov              rsi, qword ptr [rip + .Lcall_α_212_2]
                                                                              jmp   .Lcall_α_212_3
.Lcall_α_212_2:         .quad            .Lcall_α_212_2_s
.Lcall_α_212_2_s:       .string          "[]"
.Lcall_α_212_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n96_var_ref_α
n95_call_β:             mov              r11, 72;                             jmp   mult$2F4_step
                        .size            n95_call_bx, .-n95_call_bx
                        .type            n96_var_ref_bx, @function
n96_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx;         jmp   n97_var_ref_α
                        .size            n96_var_ref_bx, .-n96_var_ref_bx
                        .type            n97_var_ref_bx, @function
n97_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:          mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3664]
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx;         jmp   n98_call_α
                        .size            n97_var_ref_bx, .-n97_var_ref_bx
                        .type            n98_call_bx, @function
n98_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_call_α:             mov              r11, 75
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3416], rax
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3392], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3400], rax
                        lea              rdi, [rbp + 3392]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n99_var_ref_α
n98_call_β:             mov              r11, 75;                             jmp   mult$2F4_step
                        .size            n98_call_bx, .-n98_call_bx
                        .type            n99_var_ref_bx, @function
n99_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:          mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx;         jmp   n100_var_ref_α
                        .size            n99_var_ref_bx, .-n99_var_ref_bx
                        .type            n100_var_ref_bx, @function
n100_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3680]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx;         jmp   n101_call_α
                        .size            n100_var_ref_bx, .-n100_var_ref_bx
                        .type            n101_call_bx, @function
n101_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_call_α:            mov              r11, 78
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3320], rax
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3304], rax
                        lea              rdi, [rbp + 3296]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n102_var_ref_α
n101_call_β:            mov              r11, 78;                             jmp   mult$2F4_step
                        .size            n101_call_bx, .-n101_call_bx
                        .type            n102_var_ref_bx, @function
n102_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:         mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx;         jmp   n103_lit_string_α
                        .size            n102_var_ref_bx, .-n102_var_ref_bx
                        .type            n103_lit_string_bx, @function
n103_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:      mov              r11, 80
                        mov              qword ptr [rbp + 3264], 2            # result
                        mov              dword ptr [rbp + 3268], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_225_0]
                        mov              qword ptr [rbp + 3272], rax;         jmp   n104_var_ref_α
.Llit_string_α_225_0:   .quad            .Llit_string_α_225_0_s
.Llit_string_α_225_0_s: .string          "."
                        .size            n103_lit_string_bx, .-n103_lit_string_bx
                        .type            n104_var_ref_bx, @function
n104_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3568]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx;         jmp   n105_lit_string_α
                        .size            n104_var_ref_bx, .-n104_var_ref_bx
                        .type            n105_lit_string_bx, @function
n105_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      mov              r11, 82
                        mov              qword ptr [rbp + 3152], 2            # result
                        mov              dword ptr [rbp + 3156], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_228_0]
                        mov              qword ptr [rbp + 3160], rax;         jmp   n106_var_ref_α
.Llit_string_α_228_0:   .quad            .Llit_string_α_228_0_s
.Llit_string_α_228_0_s: .string          "."
                        .size            n105_lit_string_bx, .-n105_lit_string_bx
                        .type            n106_var_ref_bx, @function
n106_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3648]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx;         jmp   n107_lit_string_α
                        .size            n106_var_ref_bx, .-n106_var_ref_bx
                        .type            n107_lit_string_bx, @function
n107_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      mov              r11, 84
                        mov              qword ptr [rbp + 3040], 2            # result
                        mov              dword ptr [rbp + 3044], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_231_0]
                        mov              qword ptr [rbp + 3048], rax;         jmp   n108_call_α
.Llit_string_α_231_0:   .quad            .Llit_string_α_231_0_s
.Llit_string_α_231_0_s: .string          "[]"
                        .size            n107_lit_string_bx, .-n107_lit_string_bx
                        .type            n108_call_bx, @function
n108_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_call_α:            mov              r11, 85
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3128], rax
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3112], rax
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3096], rax
                        lea              rdi, [rbp + 3088]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                        cmp              al, 104;                             je    mult$2F4_ω
                                                                              jmp   n109_call_α
n108_call_β:            mov              r11, 85;                             jmp   mult$2F4_ω
                        .size            n108_call_bx, .-n108_call_bx
                        .type            n109_call_bx, @function
n109_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_call_α:            mov              r11, 86
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3224], rax
                        mov              rax, qword ptr [rbp + 3264]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3272]
                        mov              qword ptr [rbp + 3208], rax
                        lea              rdi, [rbp + 3200]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n110_call_α
n109_call_β:            mov              r11, 86;                             jmp   mult$2F4_step
                        .size            n109_call_bx, .-n109_call_bx
                        .type            n110_call_bx, @function
n110_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_call_α:            mov              r11, 87
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3000], rax
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 2984], rax
                        lea              rdi, [rbp + 2976]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n111_var_ref_α
n110_call_β:            mov              r11, 87;                             jmp   mult$2F4_step
                        .size            n110_call_bx, .-n110_call_bx
                        .type            n111_var_ref_bx, @function
n111_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:         mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3568]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx;         jmp   n112_var_α
                        .size            n111_var_ref_bx, .-n111_var_ref_bx
                        .type            n112_var_bx, @function
n112_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             mov              r11, 89
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 2712], rax;         jmp   n113_call_α
                        .size            n112_var_bx, .-n112_var_bx
                        .type            n113_call_bx, @function
n113_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_call_α:            mov              r11, 90
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2744], rax
                        lea              rdi, [rbp + 2736]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n114_lit_integer_α
n113_call_β:            mov              r11, 90;                             jmp   mult$2F4_step
                        .size            n113_call_bx, .-n113_call_bx
                        .type            n114_lit_integer_bx, @function
n114_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_integer_α:     mov              r11, 91
                        mov              qword ptr [rbp + 2768], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_240_0]
                        mov              qword ptr [rbp + 2776], rax;         jmp   n115_call_α
.Llit_integer_α_240_0:  .quad            10
                        .size            n114_lit_integer_bx, .-n114_lit_integer_bx
                        .type            n115_call_bx, @function
n115_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_call_α:            mov              r11, 92
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2808], rax
                        lea              rdi, [rbp + 2800]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n116_lit_string_α
n115_call_β:            mov              r11, 92;                             jmp   mult$2F4_step
                        .size            n115_call_bx, .-n115_call_bx
                        .type            n116_lit_string_bx, @function
n116_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:      mov              r11, 93
                        mov              qword ptr [rbp + 2896], 2            # result
                        mov              dword ptr [rbp + 2900], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_242_0]
                        mov              qword ptr [rbp + 2904], rax;         jmp   n117_call_α
.Llit_string_α_242_0:   .quad            .Llit_string_α_242_0_s
.Llit_string_α_242_0_s: .string          "mod"
                        .size            n116_lit_string_bx, .-n116_lit_string_bx
                        .type            n117_call_bx, @function
n117_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_call_α:            mov              r11, 94
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2872], rax
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2856], rax
                        lea              rdi, [rbp + 2848]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n118_call_α
n117_call_β:            mov              r11, 94;                             jmp   mult$2F4_step
                        .size            n117_call_bx, .-n117_call_bx
                        .type            n118_call_bx, @function
n118_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_call_α:            mov              r11, 95
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2680], rax
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2664], rax
                        lea              rdi, [rbp + 2656]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n119_call_α
n118_call_β:            mov              r11, 95;                             jmp   mult$2F4_step
                        .size            n118_call_bx, .-n118_call_bx
                        .type            n119_call_bx, @function
n119_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_call_α:            mov              r11, 96
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2936], rax
                        lea              rdi, [rbp + 2928]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n120_call_α
n119_call_β:            mov              r11, 96;                             jmp   mult$2F4_step
                        .size            n119_call_bx, .-n119_call_bx
                        .type            n120_call_bx, @function
n120_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_call_α:            mov              r11, 97
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2600], rax
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2584], rax
                        lea              rdi, [rbp + 2576]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n121_var_ref_α
n120_call_β:            mov              r11, 97;                             jmp   mult$2F4_step
                        .size            n120_call_bx, .-n120_call_bx
                        .type            n121_var_ref_bx, @function
n121_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3648]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n122_var_α
                        .size            n121_var_ref_bx, .-n121_var_ref_bx
                        .type            n122_var_bx, @function
n122_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:             mov              r11, 99
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 2312], rax;         jmp   n123_call_α
                        .size            n122_var_bx, .-n122_var_bx
                        .type            n123_call_bx, @function
n123_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_call_α:            mov              r11, 100
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2344], rax
                        lea              rdi, [rbp + 2336]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n124_lit_integer_α
n123_call_β:            mov              r11, 100;                            jmp   mult$2F4_step
                        .size            n123_call_bx, .-n123_call_bx
                        .type            n124_lit_integer_bx, @function
n124_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:     mov              r11, 101
                        mov              qword ptr [rbp + 2368], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_252_0]
                        mov              qword ptr [rbp + 2376], rax;         jmp   n125_call_α
.Llit_integer_α_252_0:  .quad            10
                        .size            n124_lit_integer_bx, .-n124_lit_integer_bx
                        .type            n125_call_bx, @function
n125_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_call_α:            mov              r11, 102
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2408], rax
                        lea              rdi, [rbp + 2400]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n126_lit_string_α
n125_call_β:            mov              r11, 102;                            jmp   mult$2F4_step
                        .size            n125_call_bx, .-n125_call_bx
                        .type            n126_lit_string_bx, @function
n126_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      mov              r11, 103
                        mov              qword ptr [rbp + 2496], 2            # result
                        mov              dword ptr [rbp + 2500], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_254_0]
                        mov              qword ptr [rbp + 2504], rax;         jmp   n127_call_α
.Llit_string_α_254_0:   .quad            .Llit_string_α_254_0_s
.Llit_string_α_254_0_s: .string          "//"
                        .size            n126_lit_string_bx, .-n126_lit_string_bx
                        .type            n127_call_bx, @function
n127_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_call_α:            mov              r11, 104
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2456], rax
                        lea              rdi, [rbp + 2448]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n128_call_α
n127_call_β:            mov              r11, 104;                            jmp   mult$2F4_step
                        .size            n127_call_bx, .-n127_call_bx
                        .type            n128_call_bx, @function
n128_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_call_α:            mov              r11, 105
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2264], rax
                        lea              rdi, [rbp + 2256]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_idiv@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n129_call_α
n128_call_β:            mov              r11, 105;                            jmp   mult$2F4_step
                        .size            n128_call_bx, .-n128_call_bx
                        .type            n129_call_bx, @function
n129_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_call_α:            mov              r11, 106
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2536], rax
                        lea              rdi, [rbp + 2528]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n130_call_α
n129_call_β:            mov              r11, 106;                            jmp   mult$2F4_step
                        .size            n129_call_bx, .-n129_call_bx
                        .type            n130_call_bx, @function
n130_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_call_α:            mov              r11, 107
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   mult$2F4_γ
n130_call_β:            mov              r11, 107;                            jmp   mult$2F4_step
                        .size            n130_call_bx, .-n130_call_bx
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_ret0:
                        lea              rax, [rip + n92_call_proc_staged_β]
                        mov              qword ptr [rbp + 3728], rax
                                                                              jmp   mult$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_step:
                        mov              rdi, qword ptr [rbp + 3712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3728], 0
                        mov              qword ptr [rbp + 3584], 0
                        mov              qword ptr [rbp + 3592], 0
                        mov              qword ptr [rbp + 3680], 0
                        mov              qword ptr [rbp + 3688], 0
                        mov              qword ptr [rbp + 3664], 0
                        mov              qword ptr [rbp + 3672], 0
                        mov              qword ptr [rbp + 3568], 0
                        mov              qword ptr [rbp + 3576], 0
                        mov              qword ptr [rbp + 3648], 0
                        mov              qword ptr [rbp + 3656], 0
                        mov              qword ptr [rbp + 3616], 0
                        mov              qword ptr [rbp + 3624], 0
                        mov              qword ptr [rbp + 3632], 0
                        mov              qword ptr [rbp + 3640], 0
                        mov              qword ptr [rbp + 3600], 0
                        mov              qword ptr [rbp + 3608], 0
                        mov              rax, qword ptr [rbp + 3720]
                        test             rax, rax
                                                                              je    mult$2F4_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 3720], rax
                        mov              r13, qword ptr [rbp + 3736]
                                                                              jmp   n93_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_β:
                        test             r15, r15
                                                                              jne   mult$2F4_ω
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 3728], 0
                        test             rax, rax
                                                                              jne   mult$2F4_βres
                                                                              jmp   mult$2F4_step
mult$2F4_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 3752]
                        mov              rax, qword ptr [rbp + 3736]
                        cmp              r13, rax;                            je    mult$2F4_altdet
                        lea              rdx, [rip + mult$2F4_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 3768];         jmp   rcx
mult$2F4_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 3776]
                        mov              rbp, qword ptr [rbp + 3768];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_ω:
                        mov              rcx, qword ptr [rbp + 3760]
                        mov              r13, qword ptr [rbp + 3736]
                        lea              rsp, [rbp + 3776]
                        mov              rbp, qword ptr [rbp + 3768];         jmp   rcx
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
                        .type            n259_var_ref_bx, @function
n259_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:         mov              r11, 108
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n260_lit_integer_α
                        .size            n259_var_ref_bx, .-n259_var_ref_bx
                        .type            n260_lit_integer_bx, @function
n260_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_integer_α:     mov              r11, 109
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_276_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n261_call_α
.Llit_integer_α_276_0:  .quad            1
                        .size            n260_lit_integer_bx, .-n260_lit_integer_bx
                        .type            n261_call_bx, @function
n261_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_call_α:            mov              r11, 110
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
n261_call_β:            mov              r11, 110;                            jmp   odd$2F1_step
                        .size            n261_call_bx, .-n261_call_bx
                        .type            n262_var_ref_bx, @function
n262_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n263_lit_integer_α
                        .size            n262_var_ref_bx, .-n262_var_ref_bx
                        .type            n263_lit_integer_bx, @function
n263_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_integer_α:     mov              r11, 112
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_280_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n264_call_α
.Llit_integer_α_280_0:  .quad            3
                        .size            n263_lit_integer_bx, .-n263_lit_integer_bx
                        .type            n264_call_bx, @function
n264_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_call_α:            mov              r11, 113
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
n264_call_β:            mov              r11, 113;                            jmp   odd$2F1_step
                        .size            n264_call_bx, .-n264_call_bx
                        .type            n265_var_ref_bx, @function
n265_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n266_lit_integer_α
                        .size            n265_var_ref_bx, .-n265_var_ref_bx
                        .type            n266_lit_integer_bx, @function
n266_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_integer_α:     mov              r11, 115
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_284_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n267_call_α
.Llit_integer_α_284_0:  .quad            5
                        .size            n266_lit_integer_bx, .-n266_lit_integer_bx
                        .type            n267_call_bx, @function
n267_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_call_α:            mov              r11, 116
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
n267_call_β:            mov              r11, 116;                            jmp   odd$2F1_step
                        .size            n267_call_bx, .-n267_call_bx
                        .type            n268_var_ref_bx, @function
n268_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n269_lit_integer_α
                        .size            n268_var_ref_bx, .-n268_var_ref_bx
                        .type            n269_lit_integer_bx, @function
n269_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_integer_α:     mov              r11, 118
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_288_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n270_call_α
.Llit_integer_α_288_0:  .quad            7
                        .size            n269_lit_integer_bx, .-n269_lit_integer_bx
                        .type            n270_call_bx, @function
n270_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_call_α:            mov              r11, 119
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
n270_call_β:            mov              r11, 119;                            jmp   odd$2F1_step
                        .size            n270_call_bx, .-n270_call_bx
                        .type            n271_var_ref_bx, @function
n271_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n272_lit_integer_α
                        .size            n271_var_ref_bx, .-n271_var_ref_bx
                        .type            n272_lit_integer_bx, @function
n272_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_integer_α:     mov              r11, 121
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_292_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n273_call_α
.Llit_integer_α_292_0:  .quad            9
                        .size            n272_lit_integer_bx, .-n272_lit_integer_bx
                        .type            n273_call_bx, @function
n273_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_call_α:            mov              r11, 122
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
n273_call_β:            mov              r11, 122;                            jmp   odd$2F1_step
                        .size            n273_call_bx, .-n273_call_bx
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
                                                                              jmp   n262_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
odd$2F1_alt2:
                        lea              rax, [rip + odd$2F1_alt3]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n265_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
odd$2F1_alt3:
                        lea              rax, [rip + odd$2F1_alt4]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n268_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
odd$2F1_alt4:
                        xor              eax, eax
                        mov              qword ptr [rbp + 536], rax
                        mov              r13, qword ptr [rbp + 552]
                                                                              jmp   n271_var_ref_α
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
                        .type            n294_var_ref_bx, @function
n294_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_var_ref_α:         mov              r11, 123
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n295_var_ref_α
                        .size            n294_var_ref_bx, .-n294_var_ref_bx
                        .type            n295_var_ref_bx, @function
n295_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx;          jmp   n296_call_α
                        .size            n295_var_ref_bx, .-n295_var_ref_bx
                        .type            n296_call_bx, @function
n296_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_call_α:            mov              r11, 125
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
                                                                              jmp   n297_var_ref_α
n296_call_β:            mov              r11, 125;                            jmp   sum$2F3_step
                        .size            n296_call_bx, .-n296_call_bx
                        .type            n297_var_ref_bx, @function
n297_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_var_ref_α:         mov              r11, 126
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n298_var_ref_α
                        .size            n297_var_ref_bx, .-n297_var_ref_bx
                        .type            n298_var_ref_bx, @function
n298_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n299_call_α
                        .size            n298_var_ref_bx, .-n298_var_ref_bx
                        .type            n299_call_bx, @function
n299_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_call_α:            mov              r11, 128
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
                                                                              jmp   n300_var_ref_α
n299_call_β:            mov              r11, 128;                            jmp   sum$2F3_step
                        .size            n299_call_bx, .-n299_call_bx
                        .type            n300_var_ref_bx, @function
n300_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:         mov              r11, 129
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n301_var_ref_α
                        .size            n300_var_ref_bx, .-n300_var_ref_bx
                        .type            n301_var_ref_bx, @function
n301_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:         mov              r11, 130
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n302_call_α
                        .size            n301_var_ref_bx, .-n301_var_ref_bx
                        .type            n302_call_bx, @function
n302_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_call_α:            mov              r11, 131
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
                                                                              jmp   n303_var_ref_α
n302_call_β:            mov              r11, 131;                            jmp   sum$2F3_step
                        .size            n302_call_bx, .-n302_call_bx
                        .type            n303_var_ref_bx, @function
n303_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_var_ref_α:         mov              r11, 132
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n304_var_ref_α
                        .size            n303_var_ref_bx, .-n303_var_ref_bx
                        .type            n304_var_ref_bx, @function
n304_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:         mov              r11, 133
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n305_lit_integer_α
                        .size            n304_var_ref_bx, .-n304_var_ref_bx
                        .type            n305_lit_integer_bx, @function
n305_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_integer_α:     mov              r11, 134
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_327_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n306_var_ref_α
.Llit_integer_α_327_0:  .quad            0
                        .size            n305_lit_integer_bx, .-n305_lit_integer_bx
                        .type            n306_var_ref_bx, @function
n306_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_var_ref_α:         mov              r11, 135
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n307_call_proc_staged_α
                        .size            n306_var_ref_bx, .-n306_var_ref_bx
                        .type            n307_call_proc_staged_bx, @function
n307_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_call_proc_staged_α:
                        mov              r11, 136
                        mov              qword ptr [rbp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_331_200
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_331_201
.Lcall_proc_staged_α_331_200:
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
.Lcall_proc_staged_α_331_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_331_202
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_331_203
.Lcall_proc_staged_α_331_202:
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
.Lcall_proc_staged_α_331_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_331_204
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_331_205
.Lcall_proc_staged_α_331_204:
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
.Lcall_proc_staged_α_331_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_331_206
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_331_207
.Lcall_proc_staged_α_331_206:
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
.Lcall_proc_staged_α_331_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_331_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_331_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_331_99
                        mov              r10, qword ptr [rbp + 616]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_331_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_331_99
                        mov              rcx, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 640]
                        lea              rsp, [rbp + 656]
                        mov              rbp, qword ptr [rbp + 648];          jmp   rax
.Lcall_proc_staged_α_331_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_331_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_331_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_331_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_331_3:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_331_21
                        add              rsp, 32
.Lcall_proc_staged_α_331_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_331_2
.Lcall_proc_staged_α_331_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 144], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_331_2
.Lcall_proc_staged_α_331_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_331_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   sum$2F3_step
.Lcall_proc_staged_α_331_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_331_29
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
.Lcall_proc_staged_α_331_29:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    sum$2F3_step
                                                                              jmp   sum$2F3_ret0
n307_call_proc_staged_β:
                        mov              r11, 136
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_331_22
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_331_22
                        mov              rcx, qword ptr [rbp + 152]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_331_22:
                                                                              jmp   sum$2F3_step
.Lcall_proc_staged_α_331_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    sum$2F3_step
                                                                              jmp   sum$2F3_ret0
.Lcall_proc_staged_α_331_0:
                        .quad            .Lcall_proc_staged_α_331_0_s
.Lcall_proc_staged_α_331_0_s:
                        .string          "sum/4"
                        .size            n307_call_proc_staged_bx, .-n307_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
sum$2F3_ret0:
                        lea              rax, [rip + n307_call_proc_staged_β]
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
                        sub              rsp, 3392
                        mov              qword ptr [rsp + 3368], rcx
                        mov              qword ptr [rsp + 3376], rdx
                        mov              qword ptr [rsp + 3384], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 3392]
                        mov              qword ptr [rsp + 3360], rax
                        mov              qword ptr [rsp + 3352], r13
                        mov              qword ptr [rsp + 3344], 0
                        mov              qword ptr [rsp + 3336], 0
                        mov              qword ptr [rsp + 3328], r12
                        lea              rax, [rip + sum$2F4_alt1]
                        mov              qword ptr [rsp + 3336], rax
                        lea              rdi, [rsp + 3328]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 3152
                        mov              edx, 3328
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
sum$2F4_α_body:
                        .type            n332_var_ref_bx, @function
n332_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx;         jmp   n333_lit_string_α
                        .size            n332_var_ref_bx, .-n332_var_ref_bx
                        .type            n333_lit_string_bx, @function
n333_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_string_α:      mov              r11, 138
                        mov              qword ptr [rbp + 2256], 2            # result
                        mov              dword ptr [rbp + 2260], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_421_0]
                        mov              qword ptr [rbp + 2264], rax;         jmp   n334_var_ref_α
.Llit_string_α_421_0:   .quad            .Llit_string_α_421_0_s
.Llit_string_α_421_0_s: .string          "."
                        .size            n333_lit_string_bx, .-n333_lit_string_bx
                        .type            n334_var_ref_bx, @function
n334_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3248]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx;         jmp   n335_var_ref_α
                        .size            n334_var_ref_bx, .-n334_var_ref_bx
                        .type            n335_var_ref_bx, @function
n335_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3152]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx;         jmp   n336_call_α
                        .size            n335_var_ref_bx, .-n335_var_ref_bx
                        .type            n336_call_bx, @function
n336_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_call_α:            mov              r11, 141
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2232], rax
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2216], rax
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2200], rax
                        lea              rdi, [rbp + 2192]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n337_call_α
n336_call_β:            mov              r11, 141;                            jmp   sum$2F4_step
                        .size            n336_call_bx, .-n336_call_bx
                        .type            n337_call_bx, @function
n337_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_call_α:            mov              r11, 142
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2088], rax
                        lea              rdi, [rbp + 2080]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n338_var_ref_α
n337_call_β:            mov              r11, 142;                            jmp   sum$2F4_step
                        .size            n337_call_bx, .-n337_call_bx
                        .type            n338_var_ref_bx, @function
n338_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx;         jmp   n339_lit_string_α
                        .size            n338_var_ref_bx, .-n338_var_ref_bx
                        .type            n339_lit_string_bx, @function
n339_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_string_α:      mov              r11, 144
                        mov              qword ptr [rbp + 2048], 2            # result
                        mov              dword ptr [rbp + 2052], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_430_0]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n340_var_ref_α
.Llit_string_α_430_0:   .quad            .Llit_string_α_430_0_s
.Llit_string_α_430_0_s: .string          "."
                        .size            n339_lit_string_bx, .-n339_lit_string_bx
                        .type            n340_var_ref_bx, @function
n340_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3264]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx;         jmp   n341_var_ref_α
                        .size            n340_var_ref_bx, .-n340_var_ref_bx
                        .type            n341_var_ref_bx, @function
n341_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3168]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n342_call_α
                        .size            n341_var_ref_bx, .-n341_var_ref_bx
                        .type            n342_call_bx, @function
n342_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_call_α:            mov              r11, 147
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 1992], rax
                        lea              rdi, [rbp + 1984]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n343_call_α
n342_call_β:            mov              r11, 147;                            jmp   sum$2F4_step
                        .size            n342_call_bx, .-n342_call_bx
                        .type            n343_call_bx, @function
n343_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_call_α:            mov              r11, 148
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1976]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n344_var_ref_α
n343_call_β:            mov              r11, 148;                            jmp   sum$2F4_step
                        .size            n343_call_bx, .-n343_call_bx
                        .type            n344_var_ref_bx, @function
n344_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx;         jmp   n345_var_ref_α
                        .size            n344_var_ref_bx, .-n344_var_ref_bx
                        .type            n345_var_ref_bx, @function
n345_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:         mov              r11, 150
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3280]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx;         jmp   n346_call_α
                        .size            n345_var_ref_bx, .-n345_var_ref_bx
                        .type            n346_call_bx, @function
n346_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_call_α:            mov              r11, 151
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1784], rax
                        lea              rdi, [rbp + 1776]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n347_var_ref_α
n346_call_β:            mov              r11, 151;                            jmp   sum$2F4_step
                        .size            n346_call_bx, .-n346_call_bx
                        .type            n347_var_ref_bx, @function
n347_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_var_ref_α:         mov              r11, 152
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx;         jmp   n348_lit_string_α
                        .size            n347_var_ref_bx, .-n347_var_ref_bx
                        .type            n348_lit_string_bx, @function
n348_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_string_α:      mov              r11, 153
                        mov              qword ptr [rbp + 1744], 2            # result
                        mov              dword ptr [rbp + 1748], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_444_0]
                        mov              qword ptr [rbp + 1752], rax;         jmp   n349_var_ref_α
.Llit_string_α_444_0:   .quad            .Llit_string_α_444_0_s
.Llit_string_α_444_0_s: .string          "."
                        .size            n348_lit_string_bx, .-n348_lit_string_bx
                        .type            n349_var_ref_bx, @function
n349_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:         mov              r11, 154
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3232]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx;         jmp   n350_var_ref_α
                        .size            n349_var_ref_bx, .-n349_var_ref_bx
                        .type            n350_var_ref_bx, @function
n350_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:         mov              r11, 155
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3200]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx;         jmp   n351_call_α
                        .size            n350_var_ref_bx, .-n350_var_ref_bx
                        .type            n351_call_bx, @function
n351_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_call_α:            mov              r11, 156
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1640]
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
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n352_call_α
n351_call_β:            mov              r11, 156;                            jmp   sum$2F4_step
                        .size            n351_call_bx, .-n351_call_bx
                        .type            n352_call_bx, @function
n352_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_call_α:            mov              r11, 157
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1576], rax
                        lea              rdi, [rbp + 1568]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n353_cut_α
n352_call_β:            mov              r11, 157;                            jmp   sum$2F4_step
                        .size            n352_call_bx, .-n352_call_bx
                        .type            n353_cut_bx, @function
n353_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_cut_α:             mov              r11, 158
                        mov              qword ptr [rbp + 3336], 0
                        mov              qword ptr [rbp + 3344], 0
                        lea              rdi, [rbp + 3328]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n354_var_ref_α
                        .size            n353_cut_bx, .-n353_cut_bx
                        .type            n354_var_ref_bx, @function
n354_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3216]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n355_var_α
                        .size            n354_var_ref_bx, .-n354_var_ref_bx
                        .type            n355_var_bx, @function
n355_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_var_α:             mov              r11, 160
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n356_call_α
                        .size            n355_var_bx, .-n355_var_bx
                        .type            n356_call_bx, @function
n356_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_call_α:            mov              r11, 161
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1304], rax
                        lea              rdi, [rbp + 1296]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n357_var_α
n356_call_β:            mov              r11, 161;                            jmp   sum$2F4_step
                        .size            n356_call_bx, .-n356_call_bx
                        .type            n357_var_bx, @function
n357_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_var_α:             mov              r11, 162
                        mov              rax, qword ptr [rbp + 3264]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 3272]
                        mov              qword ptr [rbp + 1336], rax;         jmp   n358_call_α
                        .size            n357_var_bx, .-n357_var_bx
                        .type            n358_call_bx, @function
n358_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_call_α:            mov              r11, 163
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1360]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n359_call_α
n358_call_β:            mov              r11, 163;                            jmp   sum$2F4_step
                        .size            n358_call_bx, .-n358_call_bx
                        .type            n359_call_bx, @function
n359_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_call_α:            mov              r11, 164
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rdi, [rbp + 1216]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n360_call_α
n359_call_β:            mov              r11, 164;                            jmp   sum$2F4_step
                        .size            n359_call_bx, .-n359_call_bx
                        .type            n360_call_bx, @function
n360_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_call_α:            mov              r11, 165
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1408]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n361_var_α
n360_call_β:            mov              r11, 165;                            jmp   sum$2F4_step
                        .size            n360_call_bx, .-n360_call_bx
                        .type            n361_var_bx, @function
n361_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:             mov              r11, 166
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 1448], rax;         jmp   n362_call_α
                        .size            n361_var_bx, .-n361_var_bx
                        .type            n362_call_bx, @function
n362_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_call_α:            mov              r11, 167
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1472]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n363_call_α
n362_call_β:            mov              r11, 167;                            jmp   sum$2F4_step
                        .size            n362_call_bx, .-n362_call_bx
                        .type            n363_call_bx, @function
n363_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_call_α:            mov              r11, 168
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n364_call_α
n363_call_β:            mov              r11, 168;                            jmp   sum$2F4_step
                        .size            n363_call_bx, .-n363_call_bx
                        .type            n364_call_bx, @function
n364_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_call_α:            mov              r11, 169
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1520]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n365_call_α
n364_call_β:            mov              r11, 169;                            jmp   sum$2F4_step
                        .size            n364_call_bx, .-n364_call_bx
                        .type            n365_call_bx, @function
n365_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_call_α:            mov              r11, 170
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              al, 104;                             je    sum$2F4_ω
                                                                              jmp   n366_var_ref_α
n365_call_β:            mov              r11, 170;                            jmp   sum$2F4_ω
                        .size            n365_call_bx, .-n365_call_bx
                        .type            n366_var_ref_bx, @function
n366_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_var_ref_α:         mov              r11, 171
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3232]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n367_var_α
                        .size            n366_var_ref_bx, .-n366_var_ref_bx
                        .type            n367_var_bx, @function
n367_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:             mov              r11, 172
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 808], rax;          jmp   n368_call_α
                        .size            n367_var_bx, .-n367_var_bx
                        .type            n368_call_bx, @function
n368_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_call_α:            mov              r11, 173
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 808]
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
                                                                              jmp   n369_lit_integer_α
n368_call_β:            mov              r11, 173;                            jmp   sum$2F4_step
                        .size            n368_call_bx, .-n368_call_bx
                        .type            n369_lit_integer_bx, @function
n369_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_integer_α:     mov              r11, 174
                        mov              qword ptr [rbp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_474_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n370_call_α
.Llit_integer_α_474_0:  .quad            10
                        .size            n369_lit_integer_bx, .-n369_lit_integer_bx
                        .type            n370_call_bx, @function
n370_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_call_α:            mov              r11, 175
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n371_lit_string_α
n370_call_β:            mov              r11, 175;                            jmp   sum$2F4_step
                        .size            n370_call_bx, .-n370_call_bx
                        .type            n371_lit_string_bx, @function
n371_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:      mov              r11, 176
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_476_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n372_call_α
.Llit_string_α_476_0:   .quad            .Llit_string_α_476_0_s
.Llit_string_α_476_0_s: .string          "mod"
                        .size            n371_lit_string_bx, .-n371_lit_string_bx
                        .type            n372_call_bx, @function
n372_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:            mov              r11, 177
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 944]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n373_call_α
n372_call_β:            mov              r11, 177;                            jmp   sum$2F4_step
                        .size            n372_call_bx, .-n372_call_bx
                        .type            n373_call_bx, @function
n373_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_call_α:            mov              r11, 178
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n374_call_α
n373_call_β:            mov              r11, 178;                            jmp   sum$2F4_step
                        .size            n373_call_bx, .-n373_call_bx
                        .type            n374_call_bx, @function
n374_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_call_α:            mov              r11, 179
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n375_call_α
n374_call_β:            mov              r11, 179;                            jmp   sum$2F4_step
                        .size            n374_call_bx, .-n374_call_bx
                        .type            n375_call_bx, @function
n375_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_call_α:            mov              r11, 180
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              al, 104;                             je    sum$2F4_ω
                                                                              jmp   n376_var_ref_α
n375_call_β:            mov              r11, 180;                            jmp   sum$2F4_ω
                        .size            n375_call_bx, .-n375_call_bx
                        .type            n376_var_ref_bx, @function
n376_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_var_ref_α:         mov              r11, 181
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n377_var_α
                        .size            n376_var_ref_bx, .-n376_var_ref_bx
                        .type            n377_var_bx, @function
n377_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_var_α:             mov              r11, 182
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 408], rax;          jmp   n378_call_α
                        .size            n377_var_bx, .-n377_var_bx
                        .type            n378_call_bx, @function
n378_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_call_α:            mov              r11, 183
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
                                                                              jmp   n379_lit_integer_α
n378_call_β:            mov              r11, 183;                            jmp   sum$2F4_step
                        .size            n378_call_bx, .-n378_call_bx
                        .type            n379_lit_integer_bx, @function
n379_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_integer_α:     mov              r11, 184
                        mov              qword ptr [rbp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_486_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n380_call_α
.Llit_integer_α_486_0:  .quad            10
                        .size            n379_lit_integer_bx, .-n379_lit_integer_bx
                        .type            n380_call_bx, @function
n380_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_call_α:            mov              r11, 185
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
                                                                              jmp   n381_lit_string_α
n380_call_β:            mov              r11, 185;                            jmp   sum$2F4_step
                        .size            n380_call_bx, .-n380_call_bx
                        .type            n381_lit_string_bx, @function
n381_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:      mov              r11, 186
                        mov              qword ptr [rbp + 592], 2             # result
                        mov              dword ptr [rbp + 596], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_488_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n382_call_α
.Llit_string_α_488_0:   .quad            .Llit_string_α_488_0_s
.Llit_string_α_488_0_s: .string          "//"
                        .size            n381_lit_string_bx, .-n381_lit_string_bx
                        .type            n382_call_bx, @function
n382_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_call_α:            mov              r11, 187
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
                                                                              jmp   n383_call_α
n382_call_β:            mov              r11, 187;                            jmp   sum$2F4_step
                        .size            n382_call_bx, .-n382_call_bx
                        .type            n383_call_bx, @function
n383_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_call_α:            mov              r11, 188
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
                                                                              jmp   n384_call_α
n383_call_β:            mov              r11, 188;                            jmp   sum$2F4_step
                        .size            n383_call_bx, .-n383_call_bx
                        .type            n384_call_bx, @function
n384_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_call_α:            mov              r11, 189
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n385_call_α
n384_call_β:            mov              r11, 189;                            jmp   sum$2F4_step
                        .size            n384_call_bx, .-n384_call_bx
                        .type            n385_call_bx, @function
n385_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_call_α:            mov              r11, 190
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
                                                                              jmp   n386_var_ref_α
n385_call_β:            mov              r11, 190;                            jmp   sum$2F4_ω
                        .size            n385_call_bx, .-n385_call_bx
                        .type            n386_var_ref_bx, @function
n386_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3152]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n387_var_ref_α
                        .size            n386_var_ref_bx, .-n386_var_ref_bx
                        .type            n387_var_ref_bx, @function
n387_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_var_ref_α:         mov              r11, 192
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3168]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n388_var_ref_α
                        .size            n387_var_ref_bx, .-n387_var_ref_bx
                        .type            n388_var_ref_bx, @function
n388_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_var_ref_α:         mov              r11, 193
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n389_var_ref_α
                        .size            n388_var_ref_bx, .-n388_var_ref_bx
                        .type            n389_var_ref_bx, @function
n389_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3200]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n390_call_proc_staged_α
                        .size            n389_var_ref_bx, .-n389_var_ref_bx
                        .type            n390_call_proc_staged_bx, @function
n390_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_call_proc_staged_α:
                        mov              r11, 195
                        mov              qword ptr [rbp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_502_200
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_502_201
.Lcall_proc_staged_α_502_200:
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
.Lcall_proc_staged_α_502_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_502_202
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_502_203
.Lcall_proc_staged_α_502_202:
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
.Lcall_proc_staged_α_502_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_502_204
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_502_205
.Lcall_proc_staged_α_502_204:
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
.Lcall_proc_staged_α_502_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_502_206
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_502_207
.Lcall_proc_staged_α_502_206:
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
.Lcall_proc_staged_α_502_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_502_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_502_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 4
                        mov              rsi, rbp
                        lea              rdx, [rbp + 3392]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_502_99
                        mov              r10, qword ptr [rbp + 3352]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_502_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_502_99
                        mov              rcx, qword ptr [rbp + 3368]
                        mov              rdx, qword ptr [rbp + 3376]
                        lea              rsp, [rbp + 3392]
                        mov              rbp, qword ptr [rbp + 3384];         jmp   rax
.Lcall_proc_staged_α_502_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_502_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_502_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_502_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_502_3:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_502_21
                        add              rsp, 32
.Lcall_proc_staged_α_502_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_502_2
.Lcall_proc_staged_α_502_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_502_2
.Lcall_proc_staged_α_502_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_502_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   sum$2F4_ω
.Lcall_proc_staged_α_502_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_502_29
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
.Lcall_proc_staged_α_502_29:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    sum$2F4_ω
                                                                              jmp   sum$2F4_ret0
n390_call_proc_staged_β:
                        mov              r11, 195
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_502_22
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_502_22
                        mov              rcx, qword ptr [rbp + 168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_502_22:
                                                                              jmp   sum$2F4_ω
.Lcall_proc_staged_α_502_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    sum$2F4_ω
                                                                              jmp   sum$2F4_ret0
.Lcall_proc_staged_α_502_0:
                        .quad            .Lcall_proc_staged_α_502_0_s
.Lcall_proc_staged_α_502_0_s:
                        .string          "sum/4"
                        .size            n390_call_proc_staged_bx, .-n390_call_proc_staged_bx
                        .type            n391_var_ref_bx, @function
n391_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n391_var_ref_α:         mov              r11, 196
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx;         jmp   n392_lit_string_α
                        .size            n391_var_ref_bx, .-n391_var_ref_bx
                        .type            n392_lit_string_bx, @function
n392_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_string_α:      mov              r11, 197
                        mov              qword ptr [rbp + 2640], 2            # result
                        mov              dword ptr [rbp + 2644], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_505_0]
                        mov              qword ptr [rbp + 2648], rax;         jmp   n393_call_α
.Llit_string_α_505_0:   .quad            .Llit_string_α_505_0_s
.Llit_string_α_505_0_s: .string          "[]"
                        .size            n392_lit_string_bx, .-n392_lit_string_bx
                        .type            n393_call_bx, @function
n393_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n393_call_α:            mov              r11, 198
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2584], rax
                        lea              rdi, [rbp + 2576]
                        mov              rsi, qword ptr [rip + .Lcall_α_506_2]
                                                                              jmp   .Lcall_α_506_3
.Lcall_α_506_2:         .quad            .Lcall_α_506_2_s
.Lcall_α_506_2_s:       .string          "[]"
.Lcall_α_506_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n394_var_ref_α
n393_call_β:            mov              r11, 198;                            jmp   sum$2F4_step
                        .size            n393_call_bx, .-n393_call_bx
                        .type            n394_var_ref_bx, @function
n394_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx;         jmp   n395_var_ref_α
                        .size            n394_var_ref_bx, .-n394_var_ref_bx
                        .type            n395_var_ref_bx, @function
n395_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_var_ref_α:         mov              r11, 200
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3296]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n396_call_α
                        .size            n395_var_ref_bx, .-n395_var_ref_bx
                        .type            n396_call_bx, @function
n396_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_call_α:            mov              r11, 201
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2504], rax
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2488], rax
                        lea              rdi, [rbp + 2480]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n397_var_ref_α
n396_call_β:            mov              r11, 201;                            jmp   sum$2F4_step
                        .size            n396_call_bx, .-n396_call_bx
                        .type            n397_var_ref_bx, @function
n397_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_var_ref_α:         mov              r11, 202
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx;         jmp   n398_lit_integer_α
                        .size            n397_var_ref_bx, .-n397_var_ref_bx
                        .type            n398_lit_integer_bx, @function
n398_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_integer_α:     mov              r11, 203
                        mov              qword ptr [rbp + 2448], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_514_0]
                        mov              qword ptr [rbp + 2456], rax;         jmp   n399_call_α
.Llit_integer_α_514_0:  .quad            0
                        .size            n398_lit_integer_bx, .-n398_lit_integer_bx
                        .type            n399_call_bx, @function
n399_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n399_call_α:            mov              r11, 204
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2392], rax
                        lea              rdi, [rbp + 2384]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n400_var_ref_α
n399_call_β:            mov              r11, 204;                            jmp   sum$2F4_step
                        .size            n399_call_bx, .-n399_call_bx
                        .type            n400_var_ref_bx, @function
n400_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_var_ref_α:         mov              r11, 205
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx;         jmp   n401_var_ref_α
                        .size            n400_var_ref_bx, .-n400_var_ref_bx
                        .type            n401_var_ref_bx, @function
n401_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_var_ref_α:         mov              r11, 206
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3296]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx;         jmp   n402_call_α
                        .size            n401_var_ref_bx, .-n401_var_ref_bx
                        .type            n402_call_bx, @function
n402_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n402_call_α:            mov              r11, 207
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2360]
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
                                                                              jmp   n403_cut_α
n402_call_β:            mov              r11, 207;                            jmp   sum$2F4_step
                        .size            n402_call_bx, .-n402_call_bx
                        .type            n403_cut_bx, @function
n403_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_cut_α:             mov              r11, 208
                        mov              qword ptr [rbp + 3336], 0
                        mov              qword ptr [rbp + 3344], 0
                        lea              rdi, [rbp + 3328]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   sum$2F4_γ
                        .size            n403_cut_bx, .-n403_cut_bx
                        .type            n404_var_ref_bx, @function
n404_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_var_ref_α:         mov              r11, 209
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx;         jmp   n405_lit_string_α
                        .size            n404_var_ref_bx, .-n404_var_ref_bx
                        .type            n405_lit_string_bx, @function
n405_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_string_α:      mov              r11, 210
                        mov              qword ptr [rbp + 3136], 2            # result
                        mov              dword ptr [rbp + 3140], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_525_0]
                        mov              qword ptr [rbp + 3144], rax;         jmp   n406_call_α
.Llit_string_α_525_0:   .quad            .Llit_string_α_525_0_s
.Llit_string_α_525_0_s: .string          "[]"
                        .size            n405_lit_string_bx, .-n405_lit_string_bx
                        .type            n406_call_bx, @function
n406_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n406_call_α:            mov              r11, 211
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3080], rax
                        lea              rdi, [rbp + 3072]
                        mov              rsi, qword ptr [rip + .Lcall_α_526_2]
                                                                              jmp   .Lcall_α_526_3
.Lcall_α_526_2:         .quad            .Lcall_α_526_2_s
.Lcall_α_526_2_s:       .string          "[]"
.Lcall_α_526_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n407_var_ref_α
n406_call_β:            mov              r11, 211;                            jmp   sum$2F4_step
                        .size            n406_call_bx, .-n406_call_bx
                        .type            n407_var_ref_bx, @function
n407_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n407_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx;         jmp   n408_lit_string_α
                        .size            n407_var_ref_bx, .-n407_var_ref_bx
                        .type            n408_lit_string_bx, @function
n408_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_string_α:      mov              r11, 213
                        mov              qword ptr [rbp + 3040], 2            # result
                        mov              dword ptr [rbp + 3044], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_529_0]
                        mov              qword ptr [rbp + 3048], rax;         jmp   n409_call_α
.Llit_string_α_529_0:   .quad            .Llit_string_α_529_0_s
.Llit_string_α_529_0_s: .string          "[]"
                        .size            n408_lit_string_bx, .-n408_lit_string_bx
                        .type            n409_call_bx, @function
n409_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n409_call_α:            mov              r11, 214
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 2984], rax
                        lea              rdi, [rbp + 2976]
                        mov              rsi, qword ptr [rip + .Lcall_α_530_2]
                                                                              jmp   .Lcall_α_530_3
.Lcall_α_530_2:         .quad            .Lcall_α_530_2_s
.Lcall_α_530_2_s:       .string          "[]"
.Lcall_α_530_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n410_var_ref_α
n409_call_β:            mov              r11, 214;                            jmp   sum$2F4_step
                        .size            n409_call_bx, .-n409_call_bx
                        .type            n410_var_ref_bx, @function
n410_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n410_var_ref_α:         mov              r11, 215
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx;         jmp   n411_var_ref_α
                        .size            n410_var_ref_bx, .-n410_var_ref_bx
                        .type            n411_var_ref_bx, @function
n411_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n411_var_ref_α:         mov              r11, 216
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3280]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx;         jmp   n412_call_α
                        .size            n411_var_ref_bx, .-n411_var_ref_bx
                        .type            n412_call_bx, @function
n412_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n412_call_α:            mov              r11, 217
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2904], rax
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2888], rax
                        lea              rdi, [rbp + 2880]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n413_var_ref_α
n412_call_β:            mov              r11, 217;                            jmp   sum$2F4_step
                        .size            n412_call_bx, .-n412_call_bx
                        .type            n413_var_ref_bx, @function
n413_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_var_ref_α:         mov              r11, 218
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx;         jmp   n414_lit_string_α
                        .size            n413_var_ref_bx, .-n413_var_ref_bx
                        .type            n414_lit_string_bx, @function
n414_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:      mov              r11, 219
                        mov              qword ptr [rbp + 2848], 2            # result
                        mov              dword ptr [rbp + 2852], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_538_0]
                        mov              qword ptr [rbp + 2856], rax;         jmp   n415_var_ref_α
.Llit_string_α_538_0:   .quad            .Llit_string_α_538_0_s
.Llit_string_α_538_0_s: .string          "."
                        .size            n414_lit_string_bx, .-n414_lit_string_bx
                        .type            n415_var_ref_bx, @function
n415_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n415_var_ref_α:         mov              r11, 220
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3280]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx;         jmp   n416_lit_string_α
                        .size            n415_var_ref_bx, .-n415_var_ref_bx
                        .type            n416_lit_string_bx, @function
n416_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_string_α:      mov              r11, 221
                        mov              qword ptr [rbp + 2736], 2            # result
                        mov              dword ptr [rbp + 2740], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_541_0]
                        mov              qword ptr [rbp + 2744], rax;         jmp   n417_call_α
.Llit_string_α_541_0:   .quad            .Llit_string_α_541_0_s
.Llit_string_α_541_0_s: .string          "[]"
                        .size            n416_lit_string_bx, .-n416_lit_string_bx
                        .type            n417_call_bx, @function
n417_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_call_α:            mov              r11, 222
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2824], rax
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2808], rax
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2792], rax
                        lea              rdi, [rbp + 2784]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n418_call_α
n417_call_β:            mov              r11, 222;                            jmp   sum$2F4_step
                        .size            n417_call_bx, .-n417_call_bx
                        .type            n418_call_bx, @function
n418_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_call_α:            mov              r11, 223
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2696], rax
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2680], rax
                        lea              rdi, [rbp + 2672]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   sum$2F4_γ
n418_call_β:            mov              r11, 223;                            jmp   sum$2F4_step
                        .size            n418_call_bx, .-n418_call_bx
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_ret0:
                        lea              rax, [rip + n390_call_proc_staged_β]
                        mov              qword ptr [rbp + 3344], rax
                                                                              jmp   sum$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_step:
                        mov              rdi, qword ptr [rbp + 3328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3344], 0
                        mov              qword ptr [rbp + 3296], 0
                        mov              qword ptr [rbp + 3304], 0
                        mov              qword ptr [rbp + 3280], 0
                        mov              qword ptr [rbp + 3288], 0
                        mov              qword ptr [rbp + 3248], 0
                        mov              qword ptr [rbp + 3256], 0
                        mov              qword ptr [rbp + 3152], 0
                        mov              qword ptr [rbp + 3160], 0
                        mov              qword ptr [rbp + 3264], 0
                        mov              qword ptr [rbp + 3272], 0
                        mov              qword ptr [rbp + 3168], 0
                        mov              qword ptr [rbp + 3176], 0
                        mov              qword ptr [rbp + 3232], 0
                        mov              qword ptr [rbp + 3240], 0
                        mov              qword ptr [rbp + 3200], 0
                        mov              qword ptr [rbp + 3208], 0
                        mov              qword ptr [rbp + 3216], 0
                        mov              qword ptr [rbp + 3224], 0
                        mov              qword ptr [rbp + 3184], 0
                        mov              qword ptr [rbp + 3192], 0
                        mov              rax, qword ptr [rbp + 3336]
                        test             rax, rax
                                                                              je    sum$2F4_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_alt1:
                        lea              rax, [rip + sum$2F4_alt2]
                        mov              qword ptr [rbp + 3336], rax
                                                                              jmp   n391_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_alt2:
                        xor              eax, eax
                        mov              qword ptr [rbp + 3336], rax
                        mov              r13, qword ptr [rbp + 3352]
                                                                              jmp   n404_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_β:
                        test             r15, r15
                                                                              jne   sum$2F4_ω
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3344], 0
                        test             rax, rax
                                                                              jne   sum$2F4_βres
                                                                              jmp   sum$2F4_step
sum$2F4_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 3368]
                        mov              rax, qword ptr [rbp + 3352]
                        cmp              r13, rax;                            je    sum$2F4_altdet
                        lea              rdx, [rip + sum$2F4_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 3384];         jmp   rcx
sum$2F4_altdet:         xor              eax, eax
                        lea              rsp, [rbp + 3392]
                        mov              rbp, qword ptr [rbp + 3384];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_ω:
                        mov              rcx, qword ptr [rbp + 3376]
                        mov              r13, qword ptr [rbp + 3352]
                        lea              rsp, [rbp + 3392]
                        mov              rbp, qword ptr [rbp + 3384];         jmp   rcx
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
                        .type            n544_var_ref_bx, @function
n544_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n544_var_ref_α:         mov              r11, 224
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n545_lit_integer_α
                        .size            n544_var_ref_bx, .-n544_var_ref_bx
                        .type            n545_lit_integer_bx, @function
n545_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n545_lit_integer_α:     mov              r11, 225
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_561_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n546_call_α
.Llit_integer_α_561_0:  .quad            0
                        .size            n545_lit_integer_bx, .-n545_lit_integer_bx
                        .type            n546_call_bx, @function
n546_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n546_call_α:            mov              r11, 226
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
n546_call_β:            mov              r11, 226;                            jmp   even$2F1_step
                        .size            n546_call_bx, .-n546_call_bx
                        .type            n547_var_ref_bx, @function
n547_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n547_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n548_lit_integer_α
                        .size            n547_var_ref_bx, .-n547_var_ref_bx
                        .type            n548_lit_integer_bx, @function
n548_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n548_lit_integer_α:     mov              r11, 228
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_565_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n549_call_α
.Llit_integer_α_565_0:  .quad            2
                        .size            n548_lit_integer_bx, .-n548_lit_integer_bx
                        .type            n549_call_bx, @function
n549_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n549_call_α:            mov              r11, 229
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
n549_call_β:            mov              r11, 229;                            jmp   even$2F1_step
                        .size            n549_call_bx, .-n549_call_bx
                        .type            n550_var_ref_bx, @function
n550_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n550_var_ref_α:         mov              r11, 230
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n551_lit_integer_α
                        .size            n550_var_ref_bx, .-n550_var_ref_bx
                        .type            n551_lit_integer_bx, @function
n551_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n551_lit_integer_α:     mov              r11, 231
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_569_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n552_call_α
.Llit_integer_α_569_0:  .quad            4
                        .size            n551_lit_integer_bx, .-n551_lit_integer_bx
                        .type            n552_call_bx, @function
n552_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n552_call_α:            mov              r11, 232
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
n552_call_β:            mov              r11, 232;                            jmp   even$2F1_step
                        .size            n552_call_bx, .-n552_call_bx
                        .type            n553_var_ref_bx, @function
n553_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n553_var_ref_α:         mov              r11, 233
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n554_lit_integer_α
                        .size            n553_var_ref_bx, .-n553_var_ref_bx
                        .type            n554_lit_integer_bx, @function
n554_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n554_lit_integer_α:     mov              r11, 234
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_573_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n555_call_α
.Llit_integer_α_573_0:  .quad            6
                        .size            n554_lit_integer_bx, .-n554_lit_integer_bx
                        .type            n555_call_bx, @function
n555_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n555_call_α:            mov              r11, 235
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
n555_call_β:            mov              r11, 235;                            jmp   even$2F1_step
                        .size            n555_call_bx, .-n555_call_bx
                        .type            n556_var_ref_bx, @function
n556_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n556_var_ref_α:         mov              r11, 236
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n557_lit_integer_α
                        .size            n556_var_ref_bx, .-n556_var_ref_bx
                        .type            n557_lit_integer_bx, @function
n557_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n557_lit_integer_α:     mov              r11, 237
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_577_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n558_call_α
.Llit_integer_α_577_0:  .quad            8
                        .size            n557_lit_integer_bx, .-n557_lit_integer_bx
                        .type            n558_call_bx, @function
n558_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n558_call_α:            mov              r11, 238
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
n558_call_β:            mov              r11, 238;                            jmp   even$2F1_step
                        .size            n558_call_bx, .-n558_call_bx
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
                                                                              jmp   n547_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
even$2F1_alt2:
                        lea              rax, [rip + even$2F1_alt3]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n550_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
even$2F1_alt3:
                        lea              rax, [rip + even$2F1_alt4]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n553_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
even$2F1_alt4:
                        xor              eax, eax
                        mov              qword ptr [rbp + 536], rax
                        mov              r13, qword ptr [rbp + 552]
                                                                              jmp   n556_var_ref_α
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
                        .type            n579_var_ref_bx, @function
n579_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n579_var_ref_α:         mov              r11, 239
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx;         jmp   n580_var_ref_α
                        .size            n579_var_ref_bx, .-n579_var_ref_bx
                        .type            n580_var_ref_bx, @function
n580_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n580_var_ref_α:         mov              r11, 240
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6768]
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx;         jmp   n581_call_α
                        .size            n580_var_ref_bx, .-n580_var_ref_bx
                        .type            n581_call_bx, @function
n581_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n581_call_α:            mov              r11, 241
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
                                                                              jmp   n582_var_ref_α
n581_call_β:            mov              r11, 241;                            jmp   top$2F16_step
                        .size            n581_call_bx, .-n581_call_bx
                        .type            n582_var_ref_bx, @function
n582_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n582_var_ref_α:         mov              r11, 242
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx;         jmp   n583_var_ref_α
                        .size            n582_var_ref_bx, .-n582_var_ref_bx
                        .type            n583_var_ref_bx, @function
n583_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n583_var_ref_α:         mov              r11, 243
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6784]
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx;         jmp   n584_call_α
                        .size            n583_var_ref_bx, .-n583_var_ref_bx
                        .type            n584_call_bx, @function
n584_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n584_call_α:            mov              r11, 244
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
                                                                              jmp   n585_var_ref_α
n584_call_β:            mov              r11, 244;                            jmp   top$2F16_step
                        .size            n584_call_bx, .-n584_call_bx
                        .type            n585_var_ref_bx, @function
n585_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n585_var_ref_α:         mov              r11, 245
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx;         jmp   n586_var_ref_α
                        .size            n585_var_ref_bx, .-n585_var_ref_bx
                        .type            n586_var_ref_bx, @function
n586_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n586_var_ref_α:         mov              r11, 246
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6800]
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx;         jmp   n587_call_α
                        .size            n586_var_ref_bx, .-n586_var_ref_bx
                        .type            n587_call_bx, @function
n587_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n587_call_α:            mov              r11, 247
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
                                                                              jmp   n588_var_ref_α
n587_call_β:            mov              r11, 247;                            jmp   top$2F16_step
                        .size            n587_call_bx, .-n587_call_bx
                        .type            n588_var_ref_bx, @function
n588_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n588_var_ref_α:         mov              r11, 248
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 6240], rax
                        mov              qword ptr [rbp + 6248], rdx;         jmp   n589_var_ref_α
                        .size            n588_var_ref_bx, .-n588_var_ref_bx
                        .type            n589_var_ref_bx, @function
n589_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n589_var_ref_α:         mov              r11, 249
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6816]
                        mov              qword ptr [rbp + 6256], rax
                        mov              qword ptr [rbp + 6264], rdx;         jmp   n590_call_α
                        .size            n589_var_ref_bx, .-n589_var_ref_bx
                        .type            n590_call_bx, @function
n590_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n590_call_α:            mov              r11, 250
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
                                                                              jmp   n591_var_ref_α
n590_call_β:            mov              r11, 250;                            jmp   top$2F16_step
                        .size            n590_call_bx, .-n590_call_bx
                        .type            n591_var_ref_bx, @function
n591_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n591_var_ref_α:         mov              r11, 251
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 6144], rax
                        mov              qword ptr [rbp + 6152], rdx;         jmp   n592_var_ref_α
                        .size            n591_var_ref_bx, .-n591_var_ref_bx
                        .type            n592_var_ref_bx, @function
n592_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n592_var_ref_α:         mov              r11, 252
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6848]
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx;         jmp   n593_call_α
                        .size            n592_var_ref_bx, .-n592_var_ref_bx
                        .type            n593_call_bx, @function
n593_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n593_call_α:            mov              r11, 253
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
                                                                              jmp   n594_var_ref_α
n593_call_β:            mov              r11, 253;                            jmp   top$2F16_step
                        .size            n593_call_bx, .-n593_call_bx
                        .type            n594_var_ref_bx, @function
n594_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n594_var_ref_α:         mov              r11, 254
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 96]
                        mov              qword ptr [rbp + 6048], rax
                        mov              qword ptr [rbp + 6056], rdx;         jmp   n595_var_ref_α
                        .size            n594_var_ref_bx, .-n594_var_ref_bx
                        .type            n595_var_ref_bx, @function
n595_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n595_var_ref_α:         mov              r11, 255
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6640]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx;         jmp   n596_call_α
                        .size            n595_var_ref_bx, .-n595_var_ref_bx
                        .type            n596_call_bx, @function
n596_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n596_call_α:            mov              r11, 256
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
                                                                              jmp   n597_var_ref_α
n596_call_β:            mov              r11, 256;                            jmp   top$2F16_step
                        .size            n596_call_bx, .-n596_call_bx
                        .type            n597_var_ref_bx, @function
n597_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n597_var_ref_α:         mov              r11, 257
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 112]
                        mov              qword ptr [rbp + 5952], rax
                        mov              qword ptr [rbp + 5960], rdx;         jmp   n598_var_ref_α
                        .size            n597_var_ref_bx, .-n597_var_ref_bx
                        .type            n598_var_ref_bx, @function
n598_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n598_var_ref_α:         mov              r11, 258
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6656]
                        mov              qword ptr [rbp + 5968], rax
                        mov              qword ptr [rbp + 5976], rdx;         jmp   n599_call_α
                        .size            n598_var_ref_bx, .-n598_var_ref_bx
                        .type            n599_call_bx, @function
n599_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n599_call_α:            mov              r11, 259
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
                                                                              jmp   n600_var_ref_α
n599_call_β:            mov              r11, 259;                            jmp   top$2F16_step
                        .size            n599_call_bx, .-n599_call_bx
                        .type            n600_var_ref_bx, @function
n600_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n600_var_ref_α:         mov              r11, 260
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 128]
                        mov              qword ptr [rbp + 5856], rax
                        mov              qword ptr [rbp + 5864], rdx;         jmp   n601_var_ref_α
                        .size            n600_var_ref_bx, .-n600_var_ref_bx
                        .type            n601_var_ref_bx, @function
n601_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n601_var_ref_α:         mov              r11, 261
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6672]
                        mov              qword ptr [rbp + 5872], rax
                        mov              qword ptr [rbp + 5880], rdx;         jmp   n602_call_α
                        .size            n601_var_ref_bx, .-n601_var_ref_bx
                        .type            n602_call_bx, @function
n602_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n602_call_α:            mov              r11, 262
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
                                                                              jmp   n603_var_ref_α
n602_call_β:            mov              r11, 262;                            jmp   top$2F16_step
                        .size            n602_call_bx, .-n602_call_bx
                        .type            n603_var_ref_bx, @function
n603_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n603_var_ref_α:         mov              r11, 263
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 144]
                        mov              qword ptr [rbp + 5760], rax
                        mov              qword ptr [rbp + 5768], rdx;         jmp   n604_var_ref_α
                        .size            n603_var_ref_bx, .-n603_var_ref_bx
                        .type            n604_var_ref_bx, @function
n604_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n604_var_ref_α:         mov              r11, 264
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6688]
                        mov              qword ptr [rbp + 5776], rax
                        mov              qword ptr [rbp + 5784], rdx;         jmp   n605_call_α
                        .size            n604_var_ref_bx, .-n604_var_ref_bx
                        .type            n605_call_bx, @function
n605_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n605_call_α:            mov              r11, 265
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
                                                                              jmp   n606_var_ref_α
n605_call_β:            mov              r11, 265;                            jmp   top$2F16_step
                        .size            n605_call_bx, .-n605_call_bx
                        .type            n606_var_ref_bx, @function
n606_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n606_var_ref_α:         mov              r11, 266
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 160]
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx;         jmp   n607_var_ref_α
                        .size            n606_var_ref_bx, .-n606_var_ref_bx
                        .type            n607_var_ref_bx, @function
n607_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n607_var_ref_α:         mov              r11, 267
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6704]
                        mov              qword ptr [rbp + 5680], rax
                        mov              qword ptr [rbp + 5688], rdx;         jmp   n608_call_α
                        .size            n607_var_ref_bx, .-n607_var_ref_bx
                        .type            n608_call_bx, @function
n608_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n608_call_α:            mov              r11, 268
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
                                                                              jmp   n609_var_ref_α
n608_call_β:            mov              r11, 268;                            jmp   top$2F16_step
                        .size            n608_call_bx, .-n608_call_bx
                        .type            n609_var_ref_bx, @function
n609_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n609_var_ref_α:         mov              r11, 269
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 176]
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx;         jmp   n610_var_ref_α
                        .size            n609_var_ref_bx, .-n609_var_ref_bx
                        .type            n610_var_ref_bx, @function
n610_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n610_var_ref_α:         mov              r11, 270
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6720]
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx;         jmp   n611_call_α
                        .size            n610_var_ref_bx, .-n610_var_ref_bx
                        .type            n611_call_bx, @function
n611_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n611_call_α:            mov              r11, 271
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
                                                                              jmp   n612_var_ref_α
n611_call_β:            mov              r11, 271;                            jmp   top$2F16_step
                        .size            n611_call_bx, .-n611_call_bx
                        .type            n612_var_ref_bx, @function
n612_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n612_var_ref_α:         mov              r11, 272
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 192]
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx;         jmp   n613_var_ref_α
                        .size            n612_var_ref_bx, .-n612_var_ref_bx
                        .type            n613_var_ref_bx, @function
n613_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n613_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6736]
                        mov              qword ptr [rbp + 5488], rax
                        mov              qword ptr [rbp + 5496], rdx;         jmp   n614_call_α
                        .size            n613_var_ref_bx, .-n613_var_ref_bx
                        .type            n614_call_bx, @function
n614_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n614_call_α:            mov              r11, 274
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
                                                                              jmp   n615_var_ref_α
n614_call_β:            mov              r11, 274;                            jmp   top$2F16_step
                        .size            n614_call_bx, .-n614_call_bx
                        .type            n615_var_ref_bx, @function
n615_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n615_var_ref_α:         mov              r11, 275
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 208]
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx;         jmp   n616_var_ref_α
                        .size            n615_var_ref_bx, .-n615_var_ref_bx
                        .type            n616_var_ref_bx, @function
n616_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n616_var_ref_α:         mov              r11, 276
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6624]
                        mov              qword ptr [rbp + 5392], rax
                        mov              qword ptr [rbp + 5400], rdx;         jmp   n617_call_α
                        .size            n616_var_ref_bx, .-n616_var_ref_bx
                        .type            n617_call_bx, @function
n617_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n617_call_α:            mov              r11, 277
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
                                                                              jmp   n618_var_ref_α
n617_call_β:            mov              r11, 277;                            jmp   top$2F16_step
                        .size            n617_call_bx, .-n617_call_bx
                        .type            n618_var_ref_bx, @function
n618_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n618_var_ref_α:         mov              r11, 278
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 224]
                        mov              qword ptr [rbp + 5280], rax
                        mov              qword ptr [rbp + 5288], rdx;         jmp   n619_var_ref_α
                        .size            n618_var_ref_bx, .-n618_var_ref_bx
                        .type            n619_var_ref_bx, @function
n619_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n619_var_ref_α:         mov              r11, 279
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6608]
                        mov              qword ptr [rbp + 5296], rax
                        mov              qword ptr [rbp + 5304], rdx;         jmp   n620_call_α
                        .size            n619_var_ref_bx, .-n619_var_ref_bx
                        .type            n620_call_bx, @function
n620_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n620_call_α:            mov              r11, 280
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
                                                                              jmp   n621_var_ref_α
n620_call_β:            mov              r11, 280;                            jmp   top$2F16_step
                        .size            n620_call_bx, .-n620_call_bx
                        .type            n621_var_ref_bx, @function
n621_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n621_var_ref_α:         mov              r11, 281
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 240]
                        mov              qword ptr [rbp + 5184], rax
                        mov              qword ptr [rbp + 5192], rdx;         jmp   n622_var_ref_α
                        .size            n621_var_ref_bx, .-n621_var_ref_bx
                        .type            n622_var_ref_bx, @function
n622_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n622_var_ref_α:         mov              r11, 282
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6592]
                        mov              qword ptr [rbp + 5200], rax
                        mov              qword ptr [rbp + 5208], rdx;         jmp   n623_call_α
                        .size            n622_var_ref_bx, .-n622_var_ref_bx
                        .type            n623_call_bx, @function
n623_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n623_call_α:            mov              r11, 283
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
                                                                              jmp   n624_var_ref_α
n623_call_β:            mov              r11, 283;                            jmp   top$2F16_step
                        .size            n623_call_bx, .-n623_call_bx
                        .type            n624_var_ref_bx, @function
n624_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n624_var_ref_α:         mov              r11, 284
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 256]
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx;         jmp   n625_var_ref_α
                        .size            n624_var_ref_bx, .-n624_var_ref_bx
                        .type            n625_var_ref_bx, @function
n625_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n625_var_ref_α:         mov              r11, 285
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6576]
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx;         jmp   n626_call_α
                        .size            n625_var_ref_bx, .-n625_var_ref_bx
                        .type            n626_call_bx, @function
n626_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n626_call_α:            mov              r11, 286
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
                                                                              jmp   n627_var_ref_α
n626_call_β:            mov              r11, 286;                            jmp   top$2F16_step
                        .size            n626_call_bx, .-n626_call_bx
                        .type            n627_var_ref_bx, @function
n627_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n627_var_ref_α:         mov              r11, 287
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6768]
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx;         jmp   n628_call_proc_staged_α
                        .size            n627_var_ref_bx, .-n627_var_ref_bx
                        .type            n628_call_proc_staged_bx, @function
n628_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n628_call_proc_staged_α:
                        mov              r11, 288
                        mov              qword ptr [rbp + 4976], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_835_200
                        mov              rax, qword ptr [rbp + 5008]
                        mov              rdx, qword ptr [rbp + 5016]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_835_201
.Lcall_proc_staged_α_835_200:
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
.Lcall_proc_staged_α_835_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_835_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_835_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_835_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_835_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_835_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_835_3:
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_835_21
                        add              rsp, 32
.Lcall_proc_staged_α_835_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_835_2
.Lcall_proc_staged_α_835_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4976], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_835_2
.Lcall_proc_staged_α_835_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_835_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   top$2F16_step
.Lcall_proc_staged_α_835_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_835_29
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
.Lcall_proc_staged_α_835_29:
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n629_var_ref_α
n628_call_proc_staged_β:
                        mov              r11, 288
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_835_22
                        mov              rax, qword ptr [rbp + 4976]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_835_22
                        mov              rcx, qword ptr [rbp + 4984]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_835_22:
                                                                              jmp   top$2F16_step
.Lcall_proc_staged_α_835_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n629_var_ref_α
.Lcall_proc_staged_α_835_0:
                        .quad            .Lcall_proc_staged_α_835_0_s
.Lcall_proc_staged_α_835_0_s:
                        .string          "odd/1"
                        .size            n628_call_proc_staged_bx, .-n628_call_proc_staged_bx
                        .type            n629_var_ref_bx, @function
n629_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n629_var_ref_α:         mov              r11, 289
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6784]
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx;         jmp   n630_call_proc_staged_α
                        .size            n629_var_ref_bx, .-n629_var_ref_bx
                        .type            n630_call_proc_staged_bx, @function
n630_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n630_call_proc_staged_α:
                        mov              r11, 290
                        mov              qword ptr [rbp + 4896], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_839_200
                        mov              rax, qword ptr [rbp + 4928]
                        mov              rdx, qword ptr [rbp + 4936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_839_201
.Lcall_proc_staged_α_839_200:
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
.Lcall_proc_staged_α_839_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_839_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_839_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_839_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_839_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_839_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_839_3:
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_839_21
                        add              rsp, 32
.Lcall_proc_staged_α_839_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_839_2
.Lcall_proc_staged_α_839_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4896], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_839_2
.Lcall_proc_staged_α_839_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_839_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n628_call_proc_staged_β
.Lcall_proc_staged_α_839_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_839_29
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
.Lcall_proc_staged_α_839_29:
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                        cmp              al, 104;                             je    n628_call_proc_staged_β
                                                                              jmp   n631_var_ref_α
n630_call_proc_staged_β:
                        mov              r11, 290
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_839_22
                        mov              rax, qword ptr [rbp + 4896]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_839_22
                        mov              rcx, qword ptr [rbp + 4904]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_839_22:
                                                                              jmp   n628_call_proc_staged_β
.Lcall_proc_staged_α_839_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                        cmp              al, 104;                             je    n628_call_proc_staged_β
                                                                              jmp   n631_var_ref_α
.Lcall_proc_staged_α_839_0:
                        .quad            .Lcall_proc_staged_α_839_0_s
.Lcall_proc_staged_α_839_0_s:
                        .string          "even/1"
                        .size            n630_call_proc_staged_bx, .-n630_call_proc_staged_bx
                        .type            n631_var_ref_bx, @function
n631_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n631_var_ref_α:         mov              r11, 291
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6800]
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx;         jmp   n632_call_proc_staged_α
                        .size            n631_var_ref_bx, .-n631_var_ref_bx
                        .type            n632_call_proc_staged_bx, @function
n632_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n632_call_proc_staged_α:
                        mov              r11, 292
                        mov              qword ptr [rbp + 4816], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_843_200
                        mov              rax, qword ptr [rbp + 4848]
                        mov              rdx, qword ptr [rbp + 4856]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_843_201
.Lcall_proc_staged_α_843_200:
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
.Lcall_proc_staged_α_843_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_843_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_843_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_843_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_843_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_843_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_843_3:
                        mov              qword ptr [rbp + 4816], rax
                        mov              qword ptr [rbp + 4824], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_843_21
                        add              rsp, 32
.Lcall_proc_staged_α_843_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_843_2
.Lcall_proc_staged_α_843_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4816], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_843_2
.Lcall_proc_staged_α_843_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_843_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n630_call_proc_staged_β
.Lcall_proc_staged_α_843_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_843_29
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
.Lcall_proc_staged_α_843_29:
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                        cmp              al, 104;                             je    n630_call_proc_staged_β
                                                                              jmp   n633_var_ref_α
n632_call_proc_staged_β:
                        mov              r11, 292
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_843_22
                        mov              rax, qword ptr [rbp + 4816]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_843_22
                        mov              rcx, qword ptr [rbp + 4824]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_843_22:
                                                                              jmp   n630_call_proc_staged_β
.Lcall_proc_staged_α_843_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                        cmp              al, 104;                             je    n630_call_proc_staged_β
                                                                              jmp   n633_var_ref_α
.Lcall_proc_staged_α_843_0:
                        .quad            .Lcall_proc_staged_α_843_0_s
.Lcall_proc_staged_α_843_0_s:
                        .string          "even/1"
                        .size            n632_call_proc_staged_bx, .-n632_call_proc_staged_bx
                        .type            n633_var_ref_bx, @function
n633_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n633_var_ref_α:         mov              r11, 293
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6848]
                        mov              qword ptr [rbp + 4768], rax
                        mov              qword ptr [rbp + 4776], rdx;         jmp   n634_call_proc_staged_α
                        .size            n633_var_ref_bx, .-n633_var_ref_bx
                        .type            n634_call_proc_staged_bx, @function
n634_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n634_call_proc_staged_α:
                        mov              r11, 294
                        mov              qword ptr [rbp + 4736], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_847_200
                        mov              rax, qword ptr [rbp + 4768]
                        mov              rdx, qword ptr [rbp + 4776]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_847_201
.Lcall_proc_staged_α_847_200:
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
.Lcall_proc_staged_α_847_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_847_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_847_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_847_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_847_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_847_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_847_3:
                        mov              qword ptr [rbp + 4736], rax
                        mov              qword ptr [rbp + 4744], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_847_21
                        add              rsp, 32
.Lcall_proc_staged_α_847_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_847_2
.Lcall_proc_staged_α_847_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4736], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_847_2
.Lcall_proc_staged_α_847_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_847_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n632_call_proc_staged_β
.Lcall_proc_staged_α_847_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_847_29
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
.Lcall_proc_staged_α_847_29:
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        cmp              al, 104;                             je    n632_call_proc_staged_β
                                                                              jmp   n635_lit_string_α
n634_call_proc_staged_β:
                        mov              r11, 294
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_847_22
                        mov              rax, qword ptr [rbp + 4736]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_847_22
                        mov              rcx, qword ptr [rbp + 4744]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_847_22:
                                                                              jmp   n632_call_proc_staged_β
.Lcall_proc_staged_α_847_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        cmp              al, 104;                             je    n632_call_proc_staged_β
                                                                              jmp   n635_lit_string_α
.Lcall_proc_staged_α_847_0:
                        .quad            .Lcall_proc_staged_α_847_0_s
.Lcall_proc_staged_α_847_0_s:
                        .string          "even/1"
                        .size            n634_call_proc_staged_bx, .-n634_call_proc_staged_bx
                        .type            n635_lit_string_bx, @function
n635_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n635_lit_string_α:      mov              r11, 295
                        mov              qword ptr [rbp + 4208], 2            # result
                        mov              dword ptr [rbp + 4212], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_848_0]
                        mov              qword ptr [rbp + 4216], rax;         jmp   n636_var_ref_α
.Llit_string_α_848_0:   .quad            .Llit_string_α_848_0_s
.Llit_string_α_848_0_s: .string          "."
                        .size            n635_lit_string_bx, .-n635_lit_string_bx
                        .type            n636_var_ref_bx, @function
n636_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n636_var_ref_α:         mov              r11, 296
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6800]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx;         jmp   n637_lit_string_α
                        .size            n636_var_ref_bx, .-n636_var_ref_bx
                        .type            n637_lit_string_bx, @function
n637_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n637_lit_string_α:      mov              r11, 297
                        mov              qword ptr [rbp + 4096], 2            # result
                        mov              dword ptr [rbp + 4100], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_851_0]
                        mov              qword ptr [rbp + 4104], rax;         jmp   n638_var_ref_α
.Llit_string_α_851_0:   .quad            .Llit_string_α_851_0_s
.Llit_string_α_851_0_s: .string          "."
                        .size            n637_lit_string_bx, .-n637_lit_string_bx
                        .type            n638_var_ref_bx, @function
n638_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n638_var_ref_α:         mov              r11, 298
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6784]
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx;         jmp   n639_lit_string_α
                        .size            n638_var_ref_bx, .-n638_var_ref_bx
                        .type            n639_lit_string_bx, @function
n639_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n639_lit_string_α:      mov              r11, 299
                        mov              qword ptr [rbp + 3984], 2            # result
                        mov              dword ptr [rbp + 3988], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_854_0]
                        mov              qword ptr [rbp + 3992], rax;         jmp   n640_var_ref_α
.Llit_string_α_854_0:   .quad            .Llit_string_α_854_0_s
.Llit_string_α_854_0_s: .string          "."
                        .size            n639_lit_string_bx, .-n639_lit_string_bx
                        .type            n640_var_ref_bx, @function
n640_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n640_var_ref_α:         mov              r11, 300
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6768]
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx;         jmp   n641_lit_string_α
                        .size            n640_var_ref_bx, .-n640_var_ref_bx
                        .type            n641_lit_string_bx, @function
n641_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n641_lit_string_α:      mov              r11, 301
                        mov              qword ptr [rbp + 3872], 2            # result
                        mov              dword ptr [rbp + 3876], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_857_0]
                        mov              qword ptr [rbp + 3880], rax;         jmp   n642_call_α
.Llit_string_α_857_0:   .quad            .Llit_string_α_857_0_s
.Llit_string_α_857_0_s: .string          "[]"
                        .size            n641_lit_string_bx, .-n641_lit_string_bx
                        .type            n642_call_bx, @function
n642_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n642_call_α:            mov              r11, 302
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
                                                                              jmp   n643_call_α
n642_call_β:            mov              r11, 302;                            jmp   top$2F16_ω
                        .size            n642_call_bx, .-n642_call_bx
                        .type            n643_call_bx, @function
n643_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n643_call_α:            mov              r11, 303
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
                                                                              jmp   n644_call_α
n643_call_β:            mov              r11, 303;                            jmp   top$2F16_ω
                        .size            n643_call_bx, .-n643_call_bx
                        .type            n644_call_bx, @function
n644_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n644_call_α:            mov              r11, 304
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
                                                                              jmp   n645_var_ref_α
n644_call_β:            mov              r11, 304;                            jmp   top$2F16_step
                        .size            n644_call_bx, .-n644_call_bx
                        .type            n645_var_ref_bx, @function
n645_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n645_var_ref_α:         mov              r11, 305
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6848]
                        mov              qword ptr [rbp + 4224], rax
                        mov              qword ptr [rbp + 4232], rdx;         jmp   n646_lit_string_α
                        .size            n645_var_ref_bx, .-n645_var_ref_bx
                        .type            n646_lit_string_bx, @function
n646_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n646_lit_string_α:      mov              r11, 306
                        mov              qword ptr [rbp + 4688], 2            # result
                        mov              dword ptr [rbp + 4692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_863_0]
                        mov              qword ptr [rbp + 4696], rax;         jmp   n647_var_ref_α
.Llit_string_α_863_0:   .quad            .Llit_string_α_863_0_s
.Llit_string_α_863_0_s: .string          "."
                        .size            n646_lit_string_bx, .-n646_lit_string_bx
                        .type            n647_var_ref_bx, @function
n647_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n647_var_ref_α:         mov              r11, 307
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6688]
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx;         jmp   n648_lit_string_α
                        .size            n647_var_ref_bx, .-n647_var_ref_bx
                        .type            n648_lit_string_bx, @function
n648_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n648_lit_string_α:      mov              r11, 308
                        mov              qword ptr [rbp + 4576], 2            # result
                        mov              dword ptr [rbp + 4580], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_866_0]
                        mov              qword ptr [rbp + 4584], rax;         jmp   n649_var_ref_α
.Llit_string_α_866_0:   .quad            .Llit_string_α_866_0_s
.Llit_string_α_866_0_s: .string          "."
                        .size            n648_lit_string_bx, .-n648_lit_string_bx
                        .type            n649_var_ref_bx, @function
n649_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n649_var_ref_α:         mov              r11, 309
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6672]
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx;         jmp   n650_lit_string_α
                        .size            n649_var_ref_bx, .-n649_var_ref_bx
                        .type            n650_lit_string_bx, @function
n650_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n650_lit_string_α:      mov              r11, 310
                        mov              qword ptr [rbp + 4464], 2            # result
                        mov              dword ptr [rbp + 4468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_869_0]
                        mov              qword ptr [rbp + 4472], rax;         jmp   n651_var_ref_α
.Llit_string_α_869_0:   .quad            .Llit_string_α_869_0_s
.Llit_string_α_869_0_s: .string          "."
                        .size            n650_lit_string_bx, .-n650_lit_string_bx
                        .type            n651_var_ref_bx, @function
n651_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n651_var_ref_α:         mov              r11, 311
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6656]
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx;         jmp   n652_lit_string_α
                        .size            n651_var_ref_bx, .-n651_var_ref_bx
                        .type            n652_lit_string_bx, @function
n652_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n652_lit_string_α:      mov              r11, 312
                        mov              qword ptr [rbp + 4352], 2            # result
                        mov              dword ptr [rbp + 4356], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_872_0]
                        mov              qword ptr [rbp + 4360], rax;         jmp   n653_var_ref_α
.Llit_string_α_872_0:   .quad            .Llit_string_α_872_0_s
.Llit_string_α_872_0_s: .string          "."
                        .size            n652_lit_string_bx, .-n652_lit_string_bx
                        .type            n653_var_ref_bx, @function
n653_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n653_var_ref_α:         mov              r11, 313
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6640]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx;         jmp   n654_var_ref_α
                        .size            n653_var_ref_bx, .-n653_var_ref_bx
                        .type            n654_var_ref_bx, @function
n654_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n654_var_ref_α:         mov              r11, 314
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6832]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx;         jmp   n655_call_α
                        .size            n654_var_ref_bx, .-n654_var_ref_bx
                        .type            n655_call_bx, @function
n655_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n655_call_α:            mov              r11, 315
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
                                                                              jmp   n656_call_α
n655_call_β:            mov              r11, 315;                            jmp   top$2F16_ω
                        .size            n655_call_bx, .-n655_call_bx
                        .type            n656_call_bx, @function
n656_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n656_call_α:            mov              r11, 316
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
                                                                              jmp   n657_call_α
n656_call_β:            mov              r11, 316;                            jmp   top$2F16_ω
                        .size            n656_call_bx, .-n656_call_bx
                        .type            n657_call_bx, @function
n657_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n657_call_α:            mov              r11, 317
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
                                                                              jmp   n658_call_α
n657_call_β:            mov              r11, 317;                            jmp   top$2F16_ω
                        .size            n657_call_bx, .-n657_call_bx
                        .type            n658_call_bx, @function
n658_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n658_call_α:            mov              r11, 318
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
                                                                              jmp   n659_call_proc_staged_α
n658_call_β:            mov              r11, 318;                            jmp   top$2F16_step
                        .size            n658_call_bx, .-n658_call_bx
                        .type            n659_call_proc_staged_bx, @function
n659_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n659_call_proc_staged_α:
                        mov              r11, 319
                        mov              qword ptr [rbp + 3840], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_882_200
                        mov              rax, qword ptr [rbp + 4128]
                        mov              rdx, qword ptr [rbp + 4136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_882_201
.Lcall_proc_staged_α_882_200:
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
.Lcall_proc_staged_α_882_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_882_202
                        mov              rax, qword ptr [rbp + 4224]
                        mov              rdx, qword ptr [rbp + 4232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_882_203
.Lcall_proc_staged_α_882_202:
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
.Lcall_proc_staged_α_882_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_882_204
                        mov              rax, qword ptr [rbp + 4608]
                        mov              rdx, qword ptr [rbp + 4616]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_882_205
.Lcall_proc_staged_α_882_204:
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
.Lcall_proc_staged_α_882_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_882_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_882_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_882_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_882_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_882_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_882_3:
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_882_21
                        add              rsp, 32
.Lcall_proc_staged_α_882_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_882_2
.Lcall_proc_staged_α_882_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3840], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_882_2
.Lcall_proc_staged_α_882_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_882_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n634_call_proc_staged_β
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
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3776]
                        mov              rdx, qword ptr [rbp + 3784]
.Lcall_proc_staged_α_882_29:
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              al, 104;                             je    n634_call_proc_staged_β
                                                                              jmp   n660_var_ref_α
n659_call_proc_staged_β:
                        mov              r11, 319
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_882_22
                        mov              rax, qword ptr [rbp + 3840]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_882_22
                        mov              rcx, qword ptr [rbp + 3848]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_882_22:
                                                                              jmp   n634_call_proc_staged_β
.Lcall_proc_staged_α_882_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              al, 104;                             je    n634_call_proc_staged_β
                                                                              jmp   n660_var_ref_α
.Lcall_proc_staged_α_882_0:
                        .quad            .Lcall_proc_staged_α_882_0_s
.Lcall_proc_staged_α_882_0_s:
                        .string          "mult/3"
                        .size            n659_call_proc_staged_bx, .-n659_call_proc_staged_bx
                        .type            n660_var_ref_bx, @function
n660_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n660_var_ref_α:         mov              r11, 320
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6640]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx;         jmp   n661_call_proc_staged_α
                        .size            n660_var_ref_bx, .-n660_var_ref_bx
                        .type            n661_call_proc_staged_bx, @function
n661_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n661_call_proc_staged_α:
                        mov              r11, 321
                        mov              qword ptr [rbp + 3728], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_886_200
                        mov              rax, qword ptr [rbp + 3760]
                        mov              rdx, qword ptr [rbp + 3768]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_886_201
.Lcall_proc_staged_α_886_200:
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
.Lcall_proc_staged_α_886_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_886_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_886_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_886_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_886_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_886_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_886_3:
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_886_21
                        add              rsp, 32
.Lcall_proc_staged_α_886_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_886_2
.Lcall_proc_staged_α_886_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3728], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_886_2
.Lcall_proc_staged_α_886_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_886_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n659_call_proc_staged_β
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
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3696]
                        mov              rdx, qword ptr [rbp + 3704]
.Lcall_proc_staged_α_886_29:
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              al, 104;                             je    n659_call_proc_staged_β
                                                                              jmp   n662_var_ref_α
n661_call_proc_staged_β:
                        mov              r11, 321
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_886_22
                        mov              rax, qword ptr [rbp + 3728]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_886_22
                        mov              rcx, qword ptr [rbp + 3736]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_886_22:
                                                                              jmp   n659_call_proc_staged_β
.Lcall_proc_staged_α_886_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              al, 104;                             je    n659_call_proc_staged_β
                                                                              jmp   n662_var_ref_α
.Lcall_proc_staged_α_886_0:
                        .quad            .Lcall_proc_staged_α_886_0_s
.Lcall_proc_staged_α_886_0_s:
                        .string          "lefteven/1"
                        .size            n661_call_proc_staged_bx, .-n661_call_proc_staged_bx
                        .type            n662_var_ref_bx, @function
n662_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n662_var_ref_α:         mov              r11, 322
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6656]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx;         jmp   n663_call_proc_staged_α
                        .size            n662_var_ref_bx, .-n662_var_ref_bx
                        .type            n663_call_proc_staged_bx, @function
n663_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n663_call_proc_staged_α:
                        mov              r11, 323
                        mov              qword ptr [rbp + 3648], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_890_200
                        mov              rax, qword ptr [rbp + 3680]
                        mov              rdx, qword ptr [rbp + 3688]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_890_201
.Lcall_proc_staged_α_890_200:
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
.Lcall_proc_staged_α_890_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_890_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_890_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_890_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_890_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_890_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_890_3:
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_890_21
                        add              rsp, 32
.Lcall_proc_staged_α_890_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_890_2
.Lcall_proc_staged_α_890_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3648], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_890_2
.Lcall_proc_staged_α_890_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_890_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n661_call_proc_staged_β
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
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3616]
                        mov              rdx, qword ptr [rbp + 3624]
.Lcall_proc_staged_α_890_29:
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              al, 104;                             je    n661_call_proc_staged_β
                                                                              jmp   n664_var_ref_α
n663_call_proc_staged_β:
                        mov              r11, 323
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_890_22
                        mov              rax, qword ptr [rbp + 3648]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_890_22
                        mov              rcx, qword ptr [rbp + 3656]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_890_22:
                                                                              jmp   n661_call_proc_staged_β
.Lcall_proc_staged_α_890_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              al, 104;                             je    n661_call_proc_staged_β
                                                                              jmp   n664_var_ref_α
.Lcall_proc_staged_α_890_0:
                        .quad            .Lcall_proc_staged_α_890_0_s
.Lcall_proc_staged_α_890_0_s:
                        .string          "odd/1"
                        .size            n663_call_proc_staged_bx, .-n663_call_proc_staged_bx
                        .type            n664_var_ref_bx, @function
n664_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n664_var_ref_α:         mov              r11, 324
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6672]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx;         jmp   n665_call_proc_staged_α
                        .size            n664_var_ref_bx, .-n664_var_ref_bx
                        .type            n665_call_proc_staged_bx, @function
n665_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n665_call_proc_staged_α:
                        mov              r11, 325
                        mov              qword ptr [rbp + 3568], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_894_200
                        mov              rax, qword ptr [rbp + 3600]
                        mov              rdx, qword ptr [rbp + 3608]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_894_201
.Lcall_proc_staged_α_894_200:
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
.Lcall_proc_staged_α_894_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_894_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_894_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_894_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_894_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_894_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_894_3:
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_894_21
                        add              rsp, 32
.Lcall_proc_staged_α_894_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_894_2
.Lcall_proc_staged_α_894_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3568], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_894_2
.Lcall_proc_staged_α_894_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_894_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n663_call_proc_staged_β
.Lcall_proc_staged_α_894_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_894_29
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
.Lcall_proc_staged_α_894_29:
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              al, 104;                             je    n663_call_proc_staged_β
                                                                              jmp   n666_var_ref_α
n665_call_proc_staged_β:
                        mov              r11, 325
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_894_22
                        mov              rax, qword ptr [rbp + 3568]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_894_22
                        mov              rcx, qword ptr [rbp + 3576]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_894_22:
                                                                              jmp   n663_call_proc_staged_β
.Lcall_proc_staged_α_894_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              al, 104;                             je    n663_call_proc_staged_β
                                                                              jmp   n666_var_ref_α
.Lcall_proc_staged_α_894_0:
                        .quad            .Lcall_proc_staged_α_894_0_s
.Lcall_proc_staged_α_894_0_s:
                        .string          "even/1"
                        .size            n665_call_proc_staged_bx, .-n665_call_proc_staged_bx
                        .type            n666_var_ref_bx, @function
n666_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n666_var_ref_α:         mov              r11, 326
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6688]
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx;         jmp   n667_call_proc_staged_α
                        .size            n666_var_ref_bx, .-n666_var_ref_bx
                        .type            n667_call_proc_staged_bx, @function
n667_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n667_call_proc_staged_α:
                        mov              r11, 327
                        mov              qword ptr [rbp + 3488], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_898_200
                        mov              rax, qword ptr [rbp + 3520]
                        mov              rdx, qword ptr [rbp + 3528]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_898_201
.Lcall_proc_staged_α_898_200:
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
.Lcall_proc_staged_α_898_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_898_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_898_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_898_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_898_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_898_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_898_3:
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_898_21
                        add              rsp, 32
.Lcall_proc_staged_α_898_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_898_2
.Lcall_proc_staged_α_898_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3488], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_898_2
.Lcall_proc_staged_α_898_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_898_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n665_call_proc_staged_β
.Lcall_proc_staged_α_898_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_898_29
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
.Lcall_proc_staged_α_898_29:
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              al, 104;                             je    n665_call_proc_staged_β
                                                                              jmp   n668_var_ref_α
n667_call_proc_staged_β:
                        mov              r11, 327
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_898_22
                        mov              rax, qword ptr [rbp + 3488]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_898_22
                        mov              rcx, qword ptr [rbp + 3496]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_898_22:
                                                                              jmp   n665_call_proc_staged_β
.Lcall_proc_staged_α_898_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              al, 104;                             je    n665_call_proc_staged_β
                                                                              jmp   n668_var_ref_α
.Lcall_proc_staged_α_898_0:
                        .quad            .Lcall_proc_staged_α_898_0_s
.Lcall_proc_staged_α_898_0_s:
                        .string          "even/1"
                        .size            n667_call_proc_staged_bx, .-n667_call_proc_staged_bx
                        .type            n668_var_ref_bx, @function
n668_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n668_var_ref_α:         mov              r11, 328
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6832]
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx;         jmp   n669_call_proc_staged_α
                        .size            n668_var_ref_bx, .-n668_var_ref_bx
                        .type            n669_call_proc_staged_bx, @function
n669_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n669_call_proc_staged_α:
                        mov              r11, 329
                        mov              qword ptr [rbp + 3408], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_902_200
                        mov              rax, qword ptr [rbp + 3440]
                        mov              rdx, qword ptr [rbp + 3448]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_902_201
.Lcall_proc_staged_α_902_200:
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
.Lcall_proc_staged_α_902_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_902_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_902_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_902_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_902_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_902_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_902_3:
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_902_21
                        add              rsp, 32
.Lcall_proc_staged_α_902_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_902_2
.Lcall_proc_staged_α_902_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3408], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_902_2
.Lcall_proc_staged_α_902_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_902_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n667_call_proc_staged_β
.Lcall_proc_staged_α_902_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_902_29
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
.Lcall_proc_staged_α_902_29:
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              al, 104;                             je    n667_call_proc_staged_β
                                                                              jmp   n670_var_ref_α
n669_call_proc_staged_β:
                        mov              r11, 329
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_902_22
                        mov              rax, qword ptr [rbp + 3408]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_902_22
                        mov              rcx, qword ptr [rbp + 3416]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_902_22:
                                                                              jmp   n667_call_proc_staged_β
.Lcall_proc_staged_α_902_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              al, 104;                             je    n667_call_proc_staged_β
                                                                              jmp   n670_var_ref_α
.Lcall_proc_staged_α_902_0:
                        .quad            .Lcall_proc_staged_α_902_0_s
.Lcall_proc_staged_α_902_0_s:
                        .string          "zero/1"
                        .size            n669_call_proc_staged_bx, .-n669_call_proc_staged_bx
                        .type            n670_var_ref_bx, @function
n670_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n670_var_ref_α:         mov              r11, 330
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6816]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx;         jmp   n671_call_proc_staged_α
                        .size            n670_var_ref_bx, .-n670_var_ref_bx
                        .type            n671_call_proc_staged_bx, @function
n671_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n671_call_proc_staged_α:
                        mov              r11, 331
                        mov              qword ptr [rbp + 3328], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_906_200
                        mov              rax, qword ptr [rbp + 3360]
                        mov              rdx, qword ptr [rbp + 3368]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_906_201
.Lcall_proc_staged_α_906_200:
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
.Lcall_proc_staged_α_906_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_906_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_906_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_906_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_906_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_906_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_906_3:
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_906_21
                        add              rsp, 32
.Lcall_proc_staged_α_906_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_906_2
.Lcall_proc_staged_α_906_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3328], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_906_2
.Lcall_proc_staged_α_906_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_906_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n669_call_proc_staged_β
.Lcall_proc_staged_α_906_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_906_29
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
.Lcall_proc_staged_α_906_29:
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              al, 104;                             je    n669_call_proc_staged_β
                                                                              jmp   n672_lit_string_α
n671_call_proc_staged_β:
                        mov              r11, 331
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_906_22
                        mov              rax, qword ptr [rbp + 3328]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_906_22
                        mov              rcx, qword ptr [rbp + 3336]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_906_22:
                                                                              jmp   n669_call_proc_staged_β
.Lcall_proc_staged_α_906_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              al, 104;                             je    n669_call_proc_staged_β
                                                                              jmp   n672_lit_string_α
.Lcall_proc_staged_α_906_0:
                        .quad            .Lcall_proc_staged_α_906_0_s
.Lcall_proc_staged_α_906_0_s:
                        .string          "lefteven/1"
                        .size            n671_call_proc_staged_bx, .-n671_call_proc_staged_bx
                        .type            n672_lit_string_bx, @function
n672_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n672_lit_string_α:      mov              r11, 332
                        mov              qword ptr [rbp + 2912], 2            # result
                        mov              dword ptr [rbp + 2916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_907_0]
                        mov              qword ptr [rbp + 2920], rax;         jmp   n673_var_ref_α
.Llit_string_α_907_0:   .quad            .Llit_string_α_907_0_s
.Llit_string_α_907_0_s: .string          "."
                        .size            n672_lit_string_bx, .-n672_lit_string_bx
                        .type            n673_var_ref_bx, @function
n673_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n673_var_ref_α:         mov              r11, 333
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6800]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx;         jmp   n674_lit_string_α
                        .size            n673_var_ref_bx, .-n673_var_ref_bx
                        .type            n674_lit_string_bx, @function
n674_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n674_lit_string_α:      mov              r11, 334
                        mov              qword ptr [rbp + 2800], 2            # result
                        mov              dword ptr [rbp + 2804], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_910_0]
                        mov              qword ptr [rbp + 2808], rax;         jmp   n675_var_ref_α
.Llit_string_α_910_0:   .quad            .Llit_string_α_910_0_s
.Llit_string_α_910_0_s: .string          "."
                        .size            n674_lit_string_bx, .-n674_lit_string_bx
                        .type            n675_var_ref_bx, @function
n675_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n675_var_ref_α:         mov              r11, 335
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6784]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx;         jmp   n676_lit_string_α
                        .size            n675_var_ref_bx, .-n675_var_ref_bx
                        .type            n676_lit_string_bx, @function
n676_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n676_lit_string_α:      mov              r11, 336
                        mov              qword ptr [rbp + 2688], 2            # result
                        mov              dword ptr [rbp + 2692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_913_0]
                        mov              qword ptr [rbp + 2696], rax;         jmp   n677_var_ref_α
.Llit_string_α_913_0:   .quad            .Llit_string_α_913_0_s
.Llit_string_α_913_0_s: .string          "."
                        .size            n676_lit_string_bx, .-n676_lit_string_bx
                        .type            n677_var_ref_bx, @function
n677_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n677_var_ref_α:         mov              r11, 337
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6768]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx;         jmp   n678_lit_string_α
                        .size            n677_var_ref_bx, .-n677_var_ref_bx
                        .type            n678_lit_string_bx, @function
n678_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n678_lit_string_α:      mov              r11, 338
                        mov              qword ptr [rbp + 2576], 2            # result
                        mov              dword ptr [rbp + 2580], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_916_0]
                        mov              qword ptr [rbp + 2584], rax;         jmp   n679_call_α
.Llit_string_α_916_0:   .quad            .Llit_string_α_916_0_s
.Llit_string_α_916_0_s: .string          "[]"
                        .size            n678_lit_string_bx, .-n678_lit_string_bx
                        .type            n679_call_bx, @function
n679_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n679_call_α:            mov              r11, 339
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
                                                                              jmp   n680_call_α
n679_call_β:            mov              r11, 339;                            jmp   top$2F16_ω
                        .size            n679_call_bx, .-n679_call_bx
                        .type            n680_call_bx, @function
n680_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n680_call_α:            mov              r11, 340
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
                                                                              jmp   n681_call_α
n680_call_β:            mov              r11, 340;                            jmp   top$2F16_ω
                        .size            n680_call_bx, .-n680_call_bx
                        .type            n681_call_bx, @function
n681_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n681_call_α:            mov              r11, 341
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
                                                                              jmp   n682_var_ref_α
n681_call_β:            mov              r11, 341;                            jmp   top$2F16_step
                        .size            n681_call_bx, .-n681_call_bx
                        .type            n682_var_ref_bx, @function
n682_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n682_var_ref_α:         mov              r11, 342
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6816]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx;         jmp   n683_lit_string_α
                        .size            n682_var_ref_bx, .-n682_var_ref_bx
                        .type            n683_lit_string_bx, @function
n683_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n683_lit_string_α:      mov              r11, 343
                        mov              qword ptr [rbp + 3280], 2            # result
                        mov              dword ptr [rbp + 3284], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_922_0]
                        mov              qword ptr [rbp + 3288], rax;         jmp   n684_var_ref_α
.Llit_string_α_922_0:   .quad            .Llit_string_α_922_0_s
.Llit_string_α_922_0_s: .string          "."
                        .size            n683_lit_string_bx, .-n683_lit_string_bx
                        .type            n684_var_ref_bx, @function
n684_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n684_var_ref_α:         mov              r11, 344
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6736]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n685_lit_string_α
                        .size            n684_var_ref_bx, .-n684_var_ref_bx
                        .type            n685_lit_string_bx, @function
n685_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n685_lit_string_α:      mov              r11, 345
                        mov              qword ptr [rbp + 3168], 2            # result
                        mov              dword ptr [rbp + 3172], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_925_0]
                        mov              qword ptr [rbp + 3176], rax;         jmp   n686_var_ref_α
.Llit_string_α_925_0:   .quad            .Llit_string_α_925_0_s
.Llit_string_α_925_0_s: .string          "."
                        .size            n685_lit_string_bx, .-n685_lit_string_bx
                        .type            n686_var_ref_bx, @function
n686_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n686_var_ref_α:         mov              r11, 346
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6720]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx;         jmp   n687_lit_string_α
                        .size            n686_var_ref_bx, .-n686_var_ref_bx
                        .type            n687_lit_string_bx, @function
n687_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n687_lit_string_α:      mov              r11, 347
                        mov              qword ptr [rbp + 3056], 2            # result
                        mov              dword ptr [rbp + 3060], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_928_0]
                        mov              qword ptr [rbp + 3064], rax;         jmp   n688_var_ref_α
.Llit_string_α_928_0:   .quad            .Llit_string_α_928_0_s
.Llit_string_α_928_0_s: .string          "."
                        .size            n687_lit_string_bx, .-n687_lit_string_bx
                        .type            n688_var_ref_bx, @function
n688_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n688_var_ref_α:         mov              r11, 348
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6704]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx;         jmp   n689_var_ref_α
                        .size            n688_var_ref_bx, .-n688_var_ref_bx
                        .type            n689_var_ref_bx, @function
n689_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n689_var_ref_α:         mov              r11, 349
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6752]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx;         jmp   n690_call_α
                        .size            n689_var_ref_bx, .-n689_var_ref_bx
                        .type            n690_call_bx, @function
n690_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n690_call_α:            mov              r11, 350
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
                                                                              jmp   n691_call_α
n690_call_β:            mov              r11, 350;                            jmp   top$2F16_ω
                        .size            n690_call_bx, .-n690_call_bx
                        .type            n691_call_bx, @function
n691_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n691_call_α:            mov              r11, 351
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
                                                                              jmp   n692_call_α
n691_call_β:            mov              r11, 351;                            jmp   top$2F16_ω
                        .size            n691_call_bx, .-n691_call_bx
                        .type            n692_call_bx, @function
n692_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n692_call_α:            mov              r11, 352
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
                                                                              jmp   n693_call_proc_staged_α
n692_call_β:            mov              r11, 352;                            jmp   top$2F16_step
                        .size            n692_call_bx, .-n692_call_bx
                        .type            n693_call_proc_staged_bx, @function
n693_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n693_call_proc_staged_α:
                        mov              r11, 353
                        mov              qword ptr [rbp + 2544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_937_200
                        mov              rax, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_937_201
.Lcall_proc_staged_α_937_200:
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
.Lcall_proc_staged_α_937_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_937_202
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_937_203
.Lcall_proc_staged_α_937_202:
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
.Lcall_proc_staged_α_937_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_937_204
                        mov              rax, qword ptr [rbp + 3200]
                        mov              rdx, qword ptr [rbp + 3208]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_937_205
.Lcall_proc_staged_α_937_204:
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
.Lcall_proc_staged_α_937_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_937_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_937_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_937_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_937_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_937_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_937_3:
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_937_21
                        add              rsp, 32
.Lcall_proc_staged_α_937_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_937_2
.Lcall_proc_staged_α_937_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2544], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_937_2
.Lcall_proc_staged_α_937_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_937_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n671_call_proc_staged_β
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
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
.Lcall_proc_staged_α_937_29:
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              al, 104;                             je    n671_call_proc_staged_β
                                                                              jmp   n694_var_ref_α
n693_call_proc_staged_β:
                        mov              r11, 353
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_937_22
                        mov              rax, qword ptr [rbp + 2544]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_937_22
                        mov              rcx, qword ptr [rbp + 2552]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_937_22:
                                                                              jmp   n671_call_proc_staged_β
.Lcall_proc_staged_α_937_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              al, 104;                             je    n671_call_proc_staged_β
                                                                              jmp   n694_var_ref_α
.Lcall_proc_staged_α_937_0:
                        .quad            .Lcall_proc_staged_α_937_0_s
.Lcall_proc_staged_α_937_0_s:
                        .string          "mult/3"
                        .size            n693_call_proc_staged_bx, .-n693_call_proc_staged_bx
                        .type            n694_var_ref_bx, @function
n694_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n694_var_ref_α:         mov              r11, 354
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6704]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx;         jmp   n695_call_proc_staged_α
                        .size            n694_var_ref_bx, .-n694_var_ref_bx
                        .type            n695_call_proc_staged_bx, @function
n695_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n695_call_proc_staged_α:
                        mov              r11, 355
                        mov              qword ptr [rbp + 2432], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_941_200
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_941_201
.Lcall_proc_staged_α_941_200:
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
.Lcall_proc_staged_α_941_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_941_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_941_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_941_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_941_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_941_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_941_3:
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_941_21
                        add              rsp, 32
.Lcall_proc_staged_α_941_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_941_2
.Lcall_proc_staged_α_941_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2432], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_941_2
.Lcall_proc_staged_α_941_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_941_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n693_call_proc_staged_β
.Lcall_proc_staged_α_941_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_941_29
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
.Lcall_proc_staged_α_941_29:
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              al, 104;                             je    n693_call_proc_staged_β
                                                                              jmp   n696_var_ref_α
n695_call_proc_staged_β:
                        mov              r11, 355
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_941_22
                        mov              rax, qword ptr [rbp + 2432]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_941_22
                        mov              rcx, qword ptr [rbp + 2440]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_941_22:
                                                                              jmp   n693_call_proc_staged_β
.Lcall_proc_staged_α_941_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              al, 104;                             je    n693_call_proc_staged_β
                                                                              jmp   n696_var_ref_α
.Lcall_proc_staged_α_941_0:
                        .quad            .Lcall_proc_staged_α_941_0_s
.Lcall_proc_staged_α_941_0_s:
                        .string          "lefteven/1"
                        .size            n695_call_proc_staged_bx, .-n695_call_proc_staged_bx
                        .type            n696_var_ref_bx, @function
n696_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n696_var_ref_α:         mov              r11, 356
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6720]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx;         jmp   n697_call_proc_staged_α
                        .size            n696_var_ref_bx, .-n696_var_ref_bx
                        .type            n697_call_proc_staged_bx, @function
n697_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n697_call_proc_staged_α:
                        mov              r11, 357
                        mov              qword ptr [rbp + 2352], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_945_200
                        mov              rax, qword ptr [rbp + 2384]
                        mov              rdx, qword ptr [rbp + 2392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_945_201
.Lcall_proc_staged_α_945_200:
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
.Lcall_proc_staged_α_945_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_945_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_945_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_945_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_945_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_945_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_945_3:
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_945_21
                        add              rsp, 32
.Lcall_proc_staged_α_945_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_945_2
.Lcall_proc_staged_α_945_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2352], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_945_2
.Lcall_proc_staged_α_945_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_945_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n695_call_proc_staged_β
.Lcall_proc_staged_α_945_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_945_29
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
.Lcall_proc_staged_α_945_29:
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              al, 104;                             je    n695_call_proc_staged_β
                                                                              jmp   n698_var_ref_α
n697_call_proc_staged_β:
                        mov              r11, 357
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_945_22
                        mov              rax, qword ptr [rbp + 2352]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_945_22
                        mov              rcx, qword ptr [rbp + 2360]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_945_22:
                                                                              jmp   n695_call_proc_staged_β
.Lcall_proc_staged_α_945_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              al, 104;                             je    n695_call_proc_staged_β
                                                                              jmp   n698_var_ref_α
.Lcall_proc_staged_α_945_0:
                        .quad            .Lcall_proc_staged_α_945_0_s
.Lcall_proc_staged_α_945_0_s:
                        .string          "odd/1"
                        .size            n697_call_proc_staged_bx, .-n697_call_proc_staged_bx
                        .type            n698_var_ref_bx, @function
n698_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n698_var_ref_α:         mov              r11, 358
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6736]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n699_call_proc_staged_α
                        .size            n698_var_ref_bx, .-n698_var_ref_bx
                        .type            n699_call_proc_staged_bx, @function
n699_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n699_call_proc_staged_α:
                        mov              r11, 359
                        mov              qword ptr [rbp + 2272], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_949_200
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_949_201
.Lcall_proc_staged_α_949_200:
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
.Lcall_proc_staged_α_949_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_949_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_949_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_949_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_949_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_949_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_949_3:
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_949_21
                        add              rsp, 32
.Lcall_proc_staged_α_949_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_949_2
.Lcall_proc_staged_α_949_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2272], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_949_2
.Lcall_proc_staged_α_949_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_949_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n697_call_proc_staged_β
.Lcall_proc_staged_α_949_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_949_29
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
.Lcall_proc_staged_α_949_29:
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              al, 104;                             je    n697_call_proc_staged_β
                                                                              jmp   n700_var_ref_α
n699_call_proc_staged_β:
                        mov              r11, 359
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_949_22
                        mov              rax, qword ptr [rbp + 2272]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_949_22
                        mov              rcx, qword ptr [rbp + 2280]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_949_22:
                                                                              jmp   n697_call_proc_staged_β
.Lcall_proc_staged_α_949_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              al, 104;                             je    n697_call_proc_staged_β
                                                                              jmp   n700_var_ref_α
.Lcall_proc_staged_α_949_0:
                        .quad            .Lcall_proc_staged_α_949_0_s
.Lcall_proc_staged_α_949_0_s:
                        .string          "even/1"
                        .size            n699_call_proc_staged_bx, .-n699_call_proc_staged_bx
                        .type            n700_var_ref_bx, @function
n700_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n700_var_ref_α:         mov              r11, 360
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6752]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n701_call_proc_staged_α
                        .size            n700_var_ref_bx, .-n700_var_ref_bx
                        .type            n701_call_proc_staged_bx, @function
n701_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n701_call_proc_staged_α:
                        mov              r11, 361
                        mov              qword ptr [rbp + 2192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_953_200
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_953_201
.Lcall_proc_staged_α_953_200:
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
.Lcall_proc_staged_α_953_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_953_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_953_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_953_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_953_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_953_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_953_3:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_953_21
                        add              rsp, 32
.Lcall_proc_staged_α_953_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_953_2
.Lcall_proc_staged_α_953_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2192], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_953_2
.Lcall_proc_staged_α_953_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_953_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n699_call_proc_staged_β
.Lcall_proc_staged_α_953_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_953_29
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
.Lcall_proc_staged_α_953_29:
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              al, 104;                             je    n699_call_proc_staged_β
                                                                              jmp   n702_lit_string_α
n701_call_proc_staged_β:
                        mov              r11, 361
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_953_22
                        mov              rax, qword ptr [rbp + 2192]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_953_22
                        mov              rcx, qword ptr [rbp + 2200]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_953_22:
                                                                              jmp   n699_call_proc_staged_β
.Lcall_proc_staged_α_953_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              al, 104;                             je    n699_call_proc_staged_β
                                                                              jmp   n702_lit_string_α
.Lcall_proc_staged_α_953_0:
                        .quad            .Lcall_proc_staged_α_953_0_s
.Lcall_proc_staged_α_953_0_s:
                        .string          "zero/1"
                        .size            n701_call_proc_staged_bx, .-n701_call_proc_staged_bx
                        .type            n702_lit_string_bx, @function
n702_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n702_lit_string_α:      mov              r11, 362
                        mov              qword ptr [rbp + 1216], 2            # result
                        mov              dword ptr [rbp + 1220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_954_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n703_var_ref_α
.Llit_string_α_954_0:   .quad            .Llit_string_α_954_0_s
.Llit_string_α_954_0_s: .string          "."
                        .size            n702_lit_string_bx, .-n702_lit_string_bx
                        .type            n703_var_ref_bx, @function
n703_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n703_var_ref_α:         mov              r11, 363
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6688]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n704_lit_string_α
                        .size            n703_var_ref_bx, .-n703_var_ref_bx
                        .type            n704_lit_string_bx, @function
n704_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n704_lit_string_α:      mov              r11, 364
                        mov              qword ptr [rbp + 1104], 2            # result
                        mov              dword ptr [rbp + 1108], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_957_0]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n705_var_ref_α
.Llit_string_α_957_0:   .quad            .Llit_string_α_957_0_s
.Llit_string_α_957_0_s: .string          "."
                        .size            n704_lit_string_bx, .-n704_lit_string_bx
                        .type            n705_var_ref_bx, @function
n705_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n705_var_ref_α:         mov              r11, 365
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6672]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n706_lit_string_α
                        .size            n705_var_ref_bx, .-n705_var_ref_bx
                        .type            n706_lit_string_bx, @function
n706_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n706_lit_string_α:      mov              r11, 366
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_960_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n707_var_ref_α
.Llit_string_α_960_0:   .quad            .Llit_string_α_960_0_s
.Llit_string_α_960_0_s: .string          "."
                        .size            n706_lit_string_bx, .-n706_lit_string_bx
                        .type            n707_var_ref_bx, @function
n707_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n707_var_ref_α:         mov              r11, 367
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6656]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n708_lit_string_α
                        .size            n707_var_ref_bx, .-n707_var_ref_bx
                        .type            n708_lit_string_bx, @function
n708_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n708_lit_string_α:      mov              r11, 368
                        mov              qword ptr [rbp + 880], 2             # result
                        mov              dword ptr [rbp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_963_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n709_var_ref_α
.Llit_string_α_963_0:   .quad            .Llit_string_α_963_0_s
.Llit_string_α_963_0_s: .string          "."
                        .size            n708_lit_string_bx, .-n708_lit_string_bx
                        .type            n709_var_ref_bx, @function
n709_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n709_var_ref_α:         mov              r11, 369
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6640]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n710_lit_string_α
                        .size            n709_var_ref_bx, .-n709_var_ref_bx
                        .type            n710_lit_string_bx, @function
n710_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n710_lit_string_α:      mov              r11, 370
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_966_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n711_call_α
.Llit_string_α_966_0:   .quad            .Llit_string_α_966_0_s
.Llit_string_α_966_0_s: .string          "[]"
                        .size            n710_lit_string_bx, .-n710_lit_string_bx
                        .type            n711_call_bx, @function
n711_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n711_call_α:            mov              r11, 371
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
                                                                              jmp   n712_call_α
n711_call_β:            mov              r11, 371;                            jmp   top$2F16_ω
                        .size            n711_call_bx, .-n711_call_bx
                        .type            n712_call_bx, @function
n712_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n712_call_α:            mov              r11, 372
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
                                                                              jmp   n713_call_α
n712_call_β:            mov              r11, 372;                            jmp   top$2F16_ω
                        .size            n712_call_bx, .-n712_call_bx
                        .type            n713_call_bx, @function
n713_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n713_call_α:            mov              r11, 373
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
                                                                              jmp   n714_call_α
n713_call_β:            mov              r11, 373;                            jmp   top$2F16_ω
                        .size            n713_call_bx, .-n713_call_bx
                        .type            n714_call_bx, @function
n714_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n714_call_α:            mov              r11, 374
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
                                                                              jmp   n715_lit_string_α
n714_call_β:            mov              r11, 374;                            jmp   top$2F16_step
                        .size            n714_call_bx, .-n714_call_bx
                        .type            n715_lit_string_bx, @function
n715_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n715_lit_string_α:      mov              r11, 375
                        mov              qword ptr [rbp + 1680], 2            # result
                        mov              dword ptr [rbp + 1684], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_971_0]
                        mov              qword ptr [rbp + 1688], rax;         jmp   n716_lit_integer_α
.Llit_string_α_971_0:   .quad            .Llit_string_α_971_0_s
.Llit_string_α_971_0_s: .string          "."
                        .size            n715_lit_string_bx, .-n715_lit_string_bx
                        .type            n716_lit_integer_bx, @function
n716_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n716_lit_integer_α:     mov              r11, 376
                        mov              qword ptr [rbp + 1584], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_972_0]
                        mov              qword ptr [rbp + 1592], rax;         jmp   n717_lit_string_α
.Llit_integer_α_972_0:  .quad            0
                        .size            n716_lit_integer_bx, .-n716_lit_integer_bx
                        .type            n717_lit_string_bx, @function
n717_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n717_lit_string_α:      mov              r11, 377
                        mov              qword ptr [rbp + 1568], 2            # result
                        mov              dword ptr [rbp + 1572], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_973_0]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n718_var_ref_α
.Llit_string_α_973_0:   .quad            .Llit_string_α_973_0_s
.Llit_string_α_973_0_s: .string          "."
                        .size            n717_lit_string_bx, .-n717_lit_string_bx
                        .type            n718_var_ref_bx, @function
n718_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n718_var_ref_α:         mov              r11, 378
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6736]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n719_lit_string_α
                        .size            n718_var_ref_bx, .-n718_var_ref_bx
                        .type            n719_lit_string_bx, @function
n719_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n719_lit_string_α:      mov              r11, 379
                        mov              qword ptr [rbp + 1456], 2            # result
                        mov              dword ptr [rbp + 1460], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_976_0]
                        mov              qword ptr [rbp + 1464], rax;         jmp   n720_var_ref_α
.Llit_string_α_976_0:   .quad            .Llit_string_α_976_0_s
.Llit_string_α_976_0_s: .string          "."
                        .size            n719_lit_string_bx, .-n719_lit_string_bx
                        .type            n720_var_ref_bx, @function
n720_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n720_var_ref_α:         mov              r11, 380
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6720]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n721_lit_string_α
                        .size            n720_var_ref_bx, .-n720_var_ref_bx
                        .type            n721_lit_string_bx, @function
n721_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n721_lit_string_α:      mov              r11, 381
                        mov              qword ptr [rbp + 1344], 2            # result
                        mov              dword ptr [rbp + 1348], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_979_0]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n722_var_ref_α
.Llit_string_α_979_0:   .quad            .Llit_string_α_979_0_s
.Llit_string_α_979_0_s: .string          "."
                        .size            n721_lit_string_bx, .-n721_lit_string_bx
                        .type            n722_var_ref_bx, @function
n722_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n722_var_ref_α:         mov              r11, 382
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6704]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n723_lit_string_α
                        .size            n722_var_ref_bx, .-n722_var_ref_bx
                        .type            n723_lit_string_bx, @function
n723_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n723_lit_string_α:      mov              r11, 383
                        mov              qword ptr [rbp + 1232], 2            # result
                        mov              dword ptr [rbp + 1236], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_982_0]
                        mov              qword ptr [rbp + 1240], rax;         jmp   n724_call_α
.Llit_string_α_982_0:   .quad            .Llit_string_α_982_0_s
.Llit_string_α_982_0_s: .string          "[]"
                        .size            n723_lit_string_bx, .-n723_lit_string_bx
                        .type            n724_call_bx, @function
n724_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n724_call_α:            mov              r11, 384
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
                                                                              jmp   n725_call_α
n724_call_β:            mov              r11, 384;                            jmp   top$2F16_ω
                        .size            n724_call_bx, .-n724_call_bx
                        .type            n725_call_bx, @function
n725_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n725_call_α:            mov              r11, 385
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
                                                                              jmp   n726_call_α
n725_call_β:            mov              r11, 385;                            jmp   top$2F16_ω
                        .size            n725_call_bx, .-n725_call_bx
                        .type            n726_call_bx, @function
n726_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n726_call_α:            mov              r11, 386
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
                                                                              jmp   n727_call_α
n726_call_β:            mov              r11, 386;                            jmp   top$2F16_ω
                        .size            n726_call_bx, .-n726_call_bx
                        .type            n727_call_bx, @function
n727_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n727_call_α:            mov              r11, 387
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
                                                                              jmp   n728_lit_string_α
n727_call_β:            mov              r11, 387;                            jmp   top$2F16_step
                        .size            n727_call_bx, .-n727_call_bx
                        .type            n728_lit_string_bx, @function
n728_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n728_lit_string_α:      mov              r11, 388
                        mov              qword ptr [rbp + 2144], 2            # result
                        mov              dword ptr [rbp + 2148], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_987_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n729_var_ref_α
.Llit_string_α_987_0:   .quad            .Llit_string_α_987_0_s
.Llit_string_α_987_0_s: .string          "."
                        .size            n728_lit_string_bx, .-n728_lit_string_bx
                        .type            n729_var_ref_bx, @function
n729_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n729_var_ref_α:         mov              r11, 389
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6576]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx;         jmp   n730_lit_string_α
                        .size            n729_var_ref_bx, .-n729_var_ref_bx
                        .type            n730_lit_string_bx, @function
n730_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_string_α:      mov              r11, 390
                        mov              qword ptr [rbp + 2032], 2            # result
                        mov              dword ptr [rbp + 2036], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_990_0]
                        mov              qword ptr [rbp + 2040], rax;         jmp   n731_var_ref_α
.Llit_string_α_990_0:   .quad            .Llit_string_α_990_0_s
.Llit_string_α_990_0_s: .string          "."
                        .size            n730_lit_string_bx, .-n730_lit_string_bx
                        .type            n731_var_ref_bx, @function
n731_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n731_var_ref_α:         mov              r11, 391
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6592]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n732_lit_string_α
                        .size            n731_var_ref_bx, .-n731_var_ref_bx
                        .type            n732_lit_string_bx, @function
n732_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n732_lit_string_α:      mov              r11, 392
                        mov              qword ptr [rbp + 1920], 2            # result
                        mov              dword ptr [rbp + 1924], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_993_0]
                        mov              qword ptr [rbp + 1928], rax;         jmp   n733_var_ref_α
.Llit_string_α_993_0:   .quad            .Llit_string_α_993_0_s
.Llit_string_α_993_0_s: .string          "."
                        .size            n732_lit_string_bx, .-n732_lit_string_bx
                        .type            n733_var_ref_bx, @function
n733_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n733_var_ref_α:         mov              r11, 393
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6608]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx;         jmp   n734_lit_string_α
                        .size            n733_var_ref_bx, .-n733_var_ref_bx
                        .type            n734_lit_string_bx, @function
n734_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_string_α:      mov              r11, 394
                        mov              qword ptr [rbp + 1808], 2            # result
                        mov              dword ptr [rbp + 1812], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_996_0]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n735_var_ref_α
.Llit_string_α_996_0:   .quad            .Llit_string_α_996_0_s
.Llit_string_α_996_0_s: .string          "."
                        .size            n734_lit_string_bx, .-n734_lit_string_bx
                        .type            n735_var_ref_bx, @function
n735_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n735_var_ref_α:         mov              r11, 395
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6624]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx;         jmp   n736_var_ref_α
                        .size            n735_var_ref_bx, .-n735_var_ref_bx
                        .type            n736_var_ref_bx, @function
n736_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n736_var_ref_α:         mov              r11, 396
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6560]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx;         jmp   n737_call_α
                        .size            n736_var_ref_bx, .-n736_var_ref_bx
                        .type            n737_call_bx, @function
n737_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n737_call_α:            mov              r11, 397
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
                                                                              jmp   n738_call_α
n737_call_β:            mov              r11, 397;                            jmp   top$2F16_ω
                        .size            n737_call_bx, .-n737_call_bx
                        .type            n738_call_bx, @function
n738_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n738_call_α:            mov              r11, 398
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
                                                                              jmp   n739_call_α
n738_call_β:            mov              r11, 398;                            jmp   top$2F16_ω
                        .size            n738_call_bx, .-n738_call_bx
                        .type            n739_call_bx, @function
n739_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n739_call_α:            mov              r11, 399
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
                                                                              jmp   n740_call_α
n739_call_β:            mov              r11, 399;                            jmp   top$2F16_ω
                        .size            n739_call_bx, .-n739_call_bx
                        .type            n740_call_bx, @function
n740_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n740_call_α:            mov              r11, 400
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
                                                                              jmp   n741_call_proc_staged_α
n740_call_β:            mov              r11, 400;                            jmp   top$2F16_step
                        .size            n740_call_bx, .-n740_call_bx
                        .type            n741_call_proc_staged_bx, @function
n741_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n741_call_proc_staged_α:
                        mov              r11, 401
                        mov              qword ptr [rbp + 736], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1006_200
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1006_201
.Lcall_proc_staged_α_1006_200:
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
.Lcall_proc_staged_α_1006_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1006_202
                        mov              rax, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1006_203
.Lcall_proc_staged_α_1006_202:
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
.Lcall_proc_staged_α_1006_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1006_204
                        mov              rax, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_1006_205
.Lcall_proc_staged_α_1006_204:
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
.Lcall_proc_staged_α_1006_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1006_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1006_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1006_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1006_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1006_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1006_3:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1006_21
                        add              rsp, 32
.Lcall_proc_staged_α_1006_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1006_2
.Lcall_proc_staged_α_1006_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 736], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1006_2
.Lcall_proc_staged_α_1006_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1006_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n701_call_proc_staged_β
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
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
.Lcall_proc_staged_α_1006_29:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    n701_call_proc_staged_β
                                                                              jmp   n742_var_ref_α
n741_call_proc_staged_β:
                        mov              r11, 401
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1006_22
                        mov              rax, qword ptr [rbp + 736]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1006_22
                        mov              rcx, qword ptr [rbp + 744]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1006_22:
                                                                              jmp   n701_call_proc_staged_β
.Lcall_proc_staged_α_1006_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    n701_call_proc_staged_β
                                                                              jmp   n742_var_ref_α
.Lcall_proc_staged_α_1006_0:
                        .quad            .Lcall_proc_staged_α_1006_0_s
.Lcall_proc_staged_α_1006_0_s:
                        .string          "sum/3"
                        .size            n741_call_proc_staged_bx, .-n741_call_proc_staged_bx
                        .type            n742_var_ref_bx, @function
n742_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n742_var_ref_α:         mov              r11, 402
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6624]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n743_call_proc_staged_α
                        .size            n742_var_ref_bx, .-n742_var_ref_bx
                        .type            n743_call_proc_staged_bx, @function
n743_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n743_call_proc_staged_α:
                        mov              r11, 403
                        mov              qword ptr [rbp + 624], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1010_200
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1010_201
.Lcall_proc_staged_α_1010_200:
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
.Lcall_proc_staged_α_1010_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1010_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1010_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1010_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1010_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1010_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1010_3:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1010_21
                        add              rsp, 32
.Lcall_proc_staged_α_1010_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1010_2
.Lcall_proc_staged_α_1010_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 624], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1010_2
.Lcall_proc_staged_α_1010_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1010_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n741_call_proc_staged_β
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
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
.Lcall_proc_staged_α_1010_29:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    n741_call_proc_staged_β
                                                                              jmp   n744_var_ref_α
n743_call_proc_staged_β:
                        mov              r11, 403
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1010_22
                        mov              rax, qword ptr [rbp + 624]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1010_22
                        mov              rcx, qword ptr [rbp + 632]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1010_22:
                                                                              jmp   n741_call_proc_staged_β
.Lcall_proc_staged_α_1010_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    n741_call_proc_staged_β
                                                                              jmp   n744_var_ref_α
.Lcall_proc_staged_α_1010_0:
                        .quad            .Lcall_proc_staged_α_1010_0_s
.Lcall_proc_staged_α_1010_0_s:
                        .string          "odd/1"
                        .size            n743_call_proc_staged_bx, .-n743_call_proc_staged_bx
                        .type            n744_var_ref_bx, @function
n744_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n744_var_ref_α:         mov              r11, 404
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6608]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n745_call_proc_staged_α
                        .size            n744_var_ref_bx, .-n744_var_ref_bx
                        .type            n745_call_proc_staged_bx, @function
n745_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n745_call_proc_staged_α:
                        mov              r11, 405
                        mov              qword ptr [rbp + 544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1014_200
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1014_201
.Lcall_proc_staged_α_1014_200:
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
.Lcall_proc_staged_α_1014_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1014_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1014_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1014_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1014_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1014_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1014_3:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1014_21
                        add              rsp, 32
.Lcall_proc_staged_α_1014_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1014_2
.Lcall_proc_staged_α_1014_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 544], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1014_2
.Lcall_proc_staged_α_1014_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1014_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n743_call_proc_staged_β
.Lcall_proc_staged_α_1014_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1014_29
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
.Lcall_proc_staged_α_1014_29:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n743_call_proc_staged_β
                                                                              jmp   n746_var_ref_α
n745_call_proc_staged_β:
                        mov              r11, 405
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1014_22
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1014_22
                        mov              rcx, qword ptr [rbp + 552]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1014_22:
                                                                              jmp   n743_call_proc_staged_β
.Lcall_proc_staged_α_1014_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n743_call_proc_staged_β
                                                                              jmp   n746_var_ref_α
.Lcall_proc_staged_α_1014_0:
                        .quad            .Lcall_proc_staged_α_1014_0_s
.Lcall_proc_staged_α_1014_0_s:
                        .string          "odd/1"
                        .size            n745_call_proc_staged_bx, .-n745_call_proc_staged_bx
                        .type            n746_var_ref_bx, @function
n746_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n746_var_ref_α:         mov              r11, 406
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6592]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n747_call_proc_staged_α
                        .size            n746_var_ref_bx, .-n746_var_ref_bx
                        .type            n747_call_proc_staged_bx, @function
n747_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n747_call_proc_staged_α:
                        mov              r11, 407
                        mov              qword ptr [rbp + 464], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1018_200
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1018_201
.Lcall_proc_staged_α_1018_200:
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
.Lcall_proc_staged_α_1018_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1018_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1018_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1018_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1018_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1018_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1018_3:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1018_21
                        add              rsp, 32
.Lcall_proc_staged_α_1018_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1018_2
.Lcall_proc_staged_α_1018_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 464], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1018_2
.Lcall_proc_staged_α_1018_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1018_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n745_call_proc_staged_β
.Lcall_proc_staged_α_1018_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1018_29
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
.Lcall_proc_staged_α_1018_29:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n745_call_proc_staged_β
                                                                              jmp   n748_var_ref_α
n747_call_proc_staged_β:
                        mov              r11, 407
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1018_22
                        mov              rax, qword ptr [rbp + 464]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1018_22
                        mov              rcx, qword ptr [rbp + 472]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1018_22:
                                                                              jmp   n745_call_proc_staged_β
.Lcall_proc_staged_α_1018_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n745_call_proc_staged_β
                                                                              jmp   n748_var_ref_α
.Lcall_proc_staged_α_1018_0:
                        .quad            .Lcall_proc_staged_α_1018_0_s
.Lcall_proc_staged_α_1018_0_s:
                        .string          "even/1"
                        .size            n747_call_proc_staged_bx, .-n747_call_proc_staged_bx
                        .type            n748_var_ref_bx, @function
n748_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n748_var_ref_α:         mov              r11, 408
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6576]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n749_call_proc_staged_α
                        .size            n748_var_ref_bx, .-n748_var_ref_bx
                        .type            n749_call_proc_staged_bx, @function
n749_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n749_call_proc_staged_α:
                        mov              r11, 409
                        mov              qword ptr [rbp + 384], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1022_200
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1022_201
.Lcall_proc_staged_α_1022_200:
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
.Lcall_proc_staged_α_1022_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1022_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1022_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1022_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1022_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1022_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1022_3:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1022_21
                        add              rsp, 32
.Lcall_proc_staged_α_1022_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1022_2
.Lcall_proc_staged_α_1022_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 384], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1022_2
.Lcall_proc_staged_α_1022_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1022_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n747_call_proc_staged_β
.Lcall_proc_staged_α_1022_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1022_29
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
.Lcall_proc_staged_α_1022_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n747_call_proc_staged_β
                                                                              jmp   n750_var_ref_α
n749_call_proc_staged_β:
                        mov              r11, 409
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1022_22
                        mov              rax, qword ptr [rbp + 384]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1022_22
                        mov              rcx, qword ptr [rbp + 392]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1022_22:
                                                                              jmp   n747_call_proc_staged_β
.Lcall_proc_staged_α_1022_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n747_call_proc_staged_β
                                                                              jmp   n750_var_ref_α
.Lcall_proc_staged_α_1022_0:
                        .quad            .Lcall_proc_staged_α_1022_0_s
.Lcall_proc_staged_α_1022_0_s:
                        .string          "even/1"
                        .size            n749_call_proc_staged_bx, .-n749_call_proc_staged_bx
                        .type            n750_var_ref_bx, @function
n750_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n750_var_ref_α:         mov              r11, 410
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6560]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n751_call_proc_staged_α
                        .size            n750_var_ref_bx, .-n750_var_ref_bx
                        .type            n751_call_proc_staged_bx, @function
n751_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n751_call_proc_staged_α:
                        mov              r11, 411
                        mov              qword ptr [rbp + 304], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1026_200
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1026_201
.Lcall_proc_staged_α_1026_200:
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
.Lcall_proc_staged_α_1026_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1026_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1026_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_1026_99
                        mov              r10, qword ptr [rbp + 6904]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_1026_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_1026_99
                        mov              rcx, qword ptr [rbp + 6920]
                        mov              rdx, qword ptr [rbp + 6928]
                        lea              rsp, [rbp + 6944]
                        mov              rbp, qword ptr [rbp + 6936];         jmp   rax
.Lcall_proc_staged_α_1026_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1026_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1026_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1026_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1026_3:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1026_21
                        add              rsp, 32
.Lcall_proc_staged_α_1026_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1026_2
.Lcall_proc_staged_α_1026_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 304], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1026_2
.Lcall_proc_staged_α_1026_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1026_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n749_call_proc_staged_β
.Lcall_proc_staged_α_1026_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1026_29
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
.Lcall_proc_staged_α_1026_29:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n749_call_proc_staged_β
                                                                              jmp   top$2F16_ret0
n751_call_proc_staged_β:
                        mov              r11, 411
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1026_22
                        mov              rax, qword ptr [rbp + 304]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1026_22
                        mov              rcx, qword ptr [rbp + 312]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1026_22:
                                                                              jmp   n749_call_proc_staged_β
.Lcall_proc_staged_α_1026_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n749_call_proc_staged_β
                                                                              jmp   top$2F16_ret0
.Lcall_proc_staged_α_1026_0:
                        .quad            .Lcall_proc_staged_α_1026_0_s
.Lcall_proc_staged_α_1026_0_s:
                        .string          "zero/1"
                        .size            n751_call_proc_staged_bx, .-n751_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
top$2F16_ret0:
                        lea              rax, [rip + n751_call_proc_staged_β]
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
                        .type            n1027_var_ref_bx, @function
n1027_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1027_var_ref_α:        mov              r11, 412
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx;         jmp   n1028_var_ref_α
                        .size            n1027_var_ref_bx, .-n1027_var_ref_bx
                        .type            n1028_var_ref_bx, @function
n1028_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1028_var_ref_α:        mov              r11, 413
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2672]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx;         jmp   n1029_var_ref_α
                        .size            n1028_var_ref_bx, .-n1028_var_ref_bx
                        .type            n1029_var_ref_bx, @function
n1029_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1029_var_ref_α:        mov              r11, 414
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n1030_var_ref_α
                        .size            n1029_var_ref_bx, .-n1029_var_ref_bx
                        .type            n1030_var_ref_bx, @function
n1030_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1030_var_ref_α:        mov              r11, 415
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2640]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n1031_var_ref_α
                        .size            n1030_var_ref_bx, .-n1030_var_ref_bx
                        .type            n1031_var_ref_bx, @function
n1031_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1031_var_ref_α:        mov              r11, 416
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx;         jmp   n1032_var_ref_α
                        .size            n1031_var_ref_bx, .-n1031_var_ref_bx
                        .type            n1032_var_ref_bx, @function
n1032_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1032_var_ref_α:        mov              r11, 417
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx;         jmp   n1033_var_ref_α
                        .size            n1032_var_ref_bx, .-n1032_var_ref_bx
                        .type            n1033_var_ref_bx, @function
n1033_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1033_var_ref_α:        mov              r11, 418
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx;         jmp   n1034_var_ref_α
                        .size            n1033_var_ref_bx, .-n1033_var_ref_bx
                        .type            n1034_var_ref_bx, @function
n1034_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1034_var_ref_α:        mov              r11, 419
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2576]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n1035_var_ref_α
                        .size            n1034_var_ref_bx, .-n1034_var_ref_bx
                        .type            n1035_var_ref_bx, @function
n1035_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1035_var_ref_α:        mov              r11, 420
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2560]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx;         jmp   n1036_var_ref_α
                        .size            n1035_var_ref_bx, .-n1035_var_ref_bx
                        .type            n1036_var_ref_bx, @function
n1036_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1036_var_ref_α:        mov              r11, 421
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx;         jmp   n1037_var_ref_α
                        .size            n1036_var_ref_bx, .-n1036_var_ref_bx
                        .type            n1037_var_ref_bx, @function
n1037_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1037_var_ref_α:        mov              r11, 422
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx;         jmp   n1038_var_ref_α
                        .size            n1037_var_ref_bx, .-n1037_var_ref_bx
                        .type            n1038_var_ref_bx, @function
n1038_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1038_var_ref_α:        mov              r11, 423
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx;         jmp   n1039_var_ref_α
                        .size            n1038_var_ref_bx, .-n1038_var_ref_bx
                        .type            n1039_var_ref_bx, @function
n1039_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1039_var_ref_α:        mov              r11, 424
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx;         jmp   n1040_var_ref_α
                        .size            n1039_var_ref_bx, .-n1039_var_ref_bx
                        .type            n1040_var_ref_bx, @function
n1040_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1040_var_ref_α:        mov              r11, 425
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx;         jmp   n1041_var_ref_α
                        .size            n1040_var_ref_bx, .-n1040_var_ref_bx
                        .type            n1041_var_ref_bx, @function
n1041_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1041_var_ref_α:        mov              r11, 426
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx;         jmp   n1042_var_ref_α
                        .size            n1041_var_ref_bx, .-n1041_var_ref_bx
                        .type            n1042_var_ref_bx, @function
n1042_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1042_var_ref_α:        mov              r11, 427
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2448]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx;         jmp   n1043_call_proc_staged_α
                        .size            n1042_var_ref_bx, .-n1042_var_ref_bx
                        .type            n1043_call_proc_staged_bx, @function
n1043_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1043_call_proc_staged_α:
                        mov              r11, 428
                        mov              qword ptr [rbp + 2160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1128_200
                        mov              rax, qword ptr [rbp + 2192]
                        mov              rdx, qword ptr [rbp + 2200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1128_201
.Lcall_proc_staged_α_1128_200:
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
.Lcall_proc_staged_α_1128_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1128_202
                        mov              rax, qword ptr [rbp + 2208]
                        mov              rdx, qword ptr [rbp + 2216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1128_203
.Lcall_proc_staged_α_1128_202:
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
.Lcall_proc_staged_α_1128_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1128_204
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_1128_205
.Lcall_proc_staged_α_1128_204:
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
.Lcall_proc_staged_α_1128_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1128_206
                        mov              rax, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_1128_207
.Lcall_proc_staged_α_1128_206:
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
.Lcall_proc_staged_α_1128_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1128_208
                        mov              rax, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_1128_209
.Lcall_proc_staged_α_1128_208:
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
.Lcall_proc_staged_α_1128_209:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1128_210
                        mov              rax, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 80], rax
                        mov              qword ptr [r8 + 88], rdx;            jmp   .Lcall_proc_staged_α_1128_211
.Lcall_proc_staged_α_1128_210:
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
.Lcall_proc_staged_α_1128_211:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1128_212
                        mov              rax, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 96], rax
                        mov              qword ptr [r8 + 104], rdx;           jmp   .Lcall_proc_staged_α_1128_213
.Lcall_proc_staged_α_1128_212:
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
.Lcall_proc_staged_α_1128_213:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1128_214
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 112], rax
                        mov              qword ptr [r8 + 120], rdx;           jmp   .Lcall_proc_staged_α_1128_215
.Lcall_proc_staged_α_1128_214:
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
.Lcall_proc_staged_α_1128_215:
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
                        lea              rax, [rip + .Lcall_proc_staged_α_1128_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1128_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1128_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1128_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1128_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1128_3:
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1128_21
                        add              rsp, 32
.Lcall_proc_staged_α_1128_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1128_2
.Lcall_proc_staged_α_1128_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1128_2
.Lcall_proc_staged_α_1128_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1128_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main$2F0_step
.Lcall_proc_staged_α_1128_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1128_29
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
.Lcall_proc_staged_α_1128_29:
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n1044_lit_string_α
n1043_call_proc_staged_β:
                        mov              r11, 428
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1128_22
                        mov              rax, qword ptr [rbp + 2160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1128_22
                        mov              rcx, qword ptr [rbp + 2168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1128_22:
                                                                              jmp   main$2F0_step
.Lcall_proc_staged_α_1128_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n1044_lit_string_α
.Lcall_proc_staged_α_1128_0:
                        .quad            .Lcall_proc_staged_α_1128_0_s
.Lcall_proc_staged_α_1128_0_s:
                        .string          "top/16"
                        .size            n1043_call_proc_staged_bx, .-n1043_call_proc_staged_bx
                        .type            n1044_lit_string_bx, @function
n1044_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1044_lit_string_α:     mov              r11, 429
                        mov              qword ptr [rbp + 1872], 2            # result
                        mov              dword ptr [rbp + 1876], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1129_0]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n1045_var_ref_α
.Llit_string_α_1129_0:  .quad            .Llit_string_α_1129_0_s
.Llit_string_α_1129_0_s:
                        .string          "."
                        .size            n1044_lit_string_bx, .-n1044_lit_string_bx
                        .type            n1045_var_ref_bx, @function
n1045_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1045_var_ref_α:        mov              r11, 430
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx;         jmp   n1046_lit_string_α
                        .size            n1045_var_ref_bx, .-n1045_var_ref_bx
                        .type            n1046_lit_string_bx, @function
n1046_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1046_lit_string_α:     mov              r11, 431
                        mov              qword ptr [rbp + 1760], 2            # result
                        mov              dword ptr [rbp + 1764], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1132_0]
                        mov              qword ptr [rbp + 1768], rax;         jmp   n1047_var_ref_α
.Llit_string_α_1132_0:  .quad            .Llit_string_α_1132_0_s
.Llit_string_α_1132_0_s:
                        .string          "."
                        .size            n1046_lit_string_bx, .-n1046_lit_string_bx
                        .type            n1047_var_ref_bx, @function
n1047_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1047_var_ref_α:        mov              r11, 432
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2672]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx;         jmp   n1048_lit_string_α
                        .size            n1047_var_ref_bx, .-n1047_var_ref_bx
                        .type            n1048_lit_string_bx, @function
n1048_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1048_lit_string_α:     mov              r11, 433
                        mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1135_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n1049_var_ref_α
.Llit_string_α_1135_0:  .quad            .Llit_string_α_1135_0_s
.Llit_string_α_1135_0_s:
                        .string          "."
                        .size            n1048_lit_string_bx, .-n1048_lit_string_bx
                        .type            n1049_var_ref_bx, @function
n1049_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1049_var_ref_α:        mov              r11, 434
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n1050_lit_string_α
                        .size            n1049_var_ref_bx, .-n1049_var_ref_bx
                        .type            n1050_lit_string_bx, @function
n1050_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1050_lit_string_α:     mov              r11, 435
                        mov              qword ptr [rbp + 1536], 2            # result
                        mov              dword ptr [rbp + 1540], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1138_0]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n1051_var_ref_α
.Llit_string_α_1138_0:  .quad            .Llit_string_α_1138_0_s
.Llit_string_α_1138_0_s:
                        .string          "."
                        .size            n1050_lit_string_bx, .-n1050_lit_string_bx
                        .type            n1051_var_ref_bx, @function
n1051_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1051_var_ref_α:        mov              r11, 436
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2640]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n1052_lit_string_α
                        .size            n1051_var_ref_bx, .-n1051_var_ref_bx
                        .type            n1052_lit_string_bx, @function
n1052_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1052_lit_string_α:     mov              r11, 437
                        mov              qword ptr [rbp + 1424], 2            # result
                        mov              dword ptr [rbp + 1428], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1141_0]
                        mov              qword ptr [rbp + 1432], rax;         jmp   n1053_var_ref_α
.Llit_string_α_1141_0:  .quad            .Llit_string_α_1141_0_s
.Llit_string_α_1141_0_s:
                        .string          "."
                        .size            n1052_lit_string_bx, .-n1052_lit_string_bx
                        .type            n1053_var_ref_bx, @function
n1053_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1053_var_ref_α:        mov              r11, 438
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n1054_lit_string_α
                        .size            n1053_var_ref_bx, .-n1053_var_ref_bx
                        .type            n1054_lit_string_bx, @function
n1054_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1054_lit_string_α:     mov              r11, 439
                        mov              qword ptr [rbp + 1312], 2            # result
                        mov              dword ptr [rbp + 1316], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1144_0]
                        mov              qword ptr [rbp + 1320], rax;         jmp   n1055_var_ref_α
.Llit_string_α_1144_0:  .quad            .Llit_string_α_1144_0_s
.Llit_string_α_1144_0_s:
                        .string          "."
                        .size            n1054_lit_string_bx, .-n1054_lit_string_bx
                        .type            n1055_var_ref_bx, @function
n1055_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1055_var_ref_α:        mov              r11, 440
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n1056_lit_string_α
                        .size            n1055_var_ref_bx, .-n1055_var_ref_bx
                        .type            n1056_lit_string_bx, @function
n1056_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1056_lit_string_α:     mov              r11, 441
                        mov              qword ptr [rbp + 1200], 2            # result
                        mov              dword ptr [rbp + 1204], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1147_0]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n1057_var_ref_α
.Llit_string_α_1147_0:  .quad            .Llit_string_α_1147_0_s
.Llit_string_α_1147_0_s:
                        .string          "."
                        .size            n1056_lit_string_bx, .-n1056_lit_string_bx
                        .type            n1057_var_ref_bx, @function
n1057_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1057_var_ref_α:        mov              r11, 442
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n1058_lit_string_α
                        .size            n1057_var_ref_bx, .-n1057_var_ref_bx
                        .type            n1058_lit_string_bx, @function
n1058_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1058_lit_string_α:     mov              r11, 443
                        mov              qword ptr [rbp + 1088], 2            # result
                        mov              dword ptr [rbp + 1092], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1150_0]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n1059_var_ref_α
.Llit_string_α_1150_0:  .quad            .Llit_string_α_1150_0_s
.Llit_string_α_1150_0_s:
                        .string          "."
                        .size            n1058_lit_string_bx, .-n1058_lit_string_bx
                        .type            n1059_var_ref_bx, @function
n1059_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1059_var_ref_α:        mov              r11, 444
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2576]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n1060_lit_string_α
                        .size            n1059_var_ref_bx, .-n1059_var_ref_bx
                        .type            n1060_lit_string_bx, @function
n1060_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1060_lit_string_α:     mov              r11, 445
                        mov              qword ptr [rbp + 976], 2             # result
                        mov              dword ptr [rbp + 980], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1153_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n1061_var_ref_α
.Llit_string_α_1153_0:  .quad            .Llit_string_α_1153_0_s
.Llit_string_α_1153_0_s:
                        .string          "."
                        .size            n1060_lit_string_bx, .-n1060_lit_string_bx
                        .type            n1061_var_ref_bx, @function
n1061_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1061_var_ref_α:        mov              r11, 446
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2560]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n1062_lit_string_α
                        .size            n1061_var_ref_bx, .-n1061_var_ref_bx
                        .type            n1062_lit_string_bx, @function
n1062_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1062_lit_string_α:     mov              r11, 447
                        mov              qword ptr [rbp + 864], 2             # result
                        mov              dword ptr [rbp + 868], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1156_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n1063_var_ref_α
.Llit_string_α_1156_0:  .quad            .Llit_string_α_1156_0_s
.Llit_string_α_1156_0_s:
                        .string          "."
                        .size            n1062_lit_string_bx, .-n1062_lit_string_bx
                        .type            n1063_var_ref_bx, @function
n1063_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1063_var_ref_α:        mov              r11, 448
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n1064_lit_string_α
                        .size            n1063_var_ref_bx, .-n1063_var_ref_bx
                        .type            n1064_lit_string_bx, @function
n1064_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1064_lit_string_α:     mov              r11, 449
                        mov              qword ptr [rbp + 752], 2             # result
                        mov              dword ptr [rbp + 756], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1159_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n1065_var_ref_α
.Llit_string_α_1159_0:  .quad            .Llit_string_α_1159_0_s
.Llit_string_α_1159_0_s:
                        .string          "."
                        .size            n1064_lit_string_bx, .-n1064_lit_string_bx
                        .type            n1065_var_ref_bx, @function
n1065_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1065_var_ref_α:        mov              r11, 450
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n1066_lit_string_α
                        .size            n1065_var_ref_bx, .-n1065_var_ref_bx
                        .type            n1066_lit_string_bx, @function
n1066_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1066_lit_string_α:     mov              r11, 451
                        mov              qword ptr [rbp + 640], 2             # result
                        mov              dword ptr [rbp + 644], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1162_0]
                        mov              qword ptr [rbp + 648], rax;          jmp   n1067_var_ref_α
.Llit_string_α_1162_0:  .quad            .Llit_string_α_1162_0_s
.Llit_string_α_1162_0_s:
                        .string          "."
                        .size            n1066_lit_string_bx, .-n1066_lit_string_bx
                        .type            n1067_var_ref_bx, @function
n1067_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1067_var_ref_α:        mov              r11, 452
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n1068_lit_string_α
                        .size            n1067_var_ref_bx, .-n1067_var_ref_bx
                        .type            n1068_lit_string_bx, @function
n1068_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1068_lit_string_α:     mov              r11, 453
                        mov              qword ptr [rbp + 528], 2             # result
                        mov              dword ptr [rbp + 532], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1165_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n1069_var_ref_α
.Llit_string_α_1165_0:  .quad            .Llit_string_α_1165_0_s
.Llit_string_α_1165_0_s:
                        .string          "."
                        .size            n1068_lit_string_bx, .-n1068_lit_string_bx
                        .type            n1069_var_ref_bx, @function
n1069_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1069_var_ref_α:        mov              r11, 454
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n1070_lit_string_α
                        .size            n1069_var_ref_bx, .-n1069_var_ref_bx
                        .type            n1070_lit_string_bx, @function
n1070_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1070_lit_string_α:     mov              r11, 455
                        mov              qword ptr [rbp + 416], 2             # result
                        mov              dword ptr [rbp + 420], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1168_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n1071_var_ref_α
.Llit_string_α_1168_0:  .quad            .Llit_string_α_1168_0_s
.Llit_string_α_1168_0_s:
                        .string          "."
                        .size            n1070_lit_string_bx, .-n1070_lit_string_bx
                        .type            n1071_var_ref_bx, @function
n1071_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1071_var_ref_α:        mov              r11, 456
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n1072_lit_string_α
                        .size            n1071_var_ref_bx, .-n1071_var_ref_bx
                        .type            n1072_lit_string_bx, @function
n1072_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1072_lit_string_α:     mov              r11, 457
                        mov              qword ptr [rbp + 304], 2             # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1171_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n1073_var_ref_α
.Llit_string_α_1171_0:  .quad            .Llit_string_α_1171_0_s
.Llit_string_α_1171_0_s:
                        .string          "."
                        .size            n1072_lit_string_bx, .-n1072_lit_string_bx
                        .type            n1073_var_ref_bx, @function
n1073_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1073_var_ref_α:        mov              r11, 458
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2464]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n1074_lit_string_α
                        .size            n1073_var_ref_bx, .-n1073_var_ref_bx
                        .type            n1074_lit_string_bx, @function
n1074_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1074_lit_string_α:     mov              r11, 459
                        mov              qword ptr [rbp + 192], 2             # result
                        mov              dword ptr [rbp + 196], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1174_0]
                        mov              qword ptr [rbp + 200], rax;          jmp   n1075_var_ref_α
.Llit_string_α_1174_0:  .quad            .Llit_string_α_1174_0_s
.Llit_string_α_1174_0_s:
                        .string          "."
                        .size            n1074_lit_string_bx, .-n1074_lit_string_bx
                        .type            n1075_var_ref_bx, @function
n1075_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1075_var_ref_α:        mov              r11, 460
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2448]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n1076_lit_string_α
                        .size            n1075_var_ref_bx, .-n1075_var_ref_bx
                        .type            n1076_lit_string_bx, @function
n1076_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1076_lit_string_α:     mov              r11, 461
                        mov              qword ptr [rbp + 80], 2              # result
                        mov              dword ptr [rbp + 84], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1177_0]
                        mov              qword ptr [rbp + 88], rax;           jmp   n1077_call_α
.Llit_string_α_1177_0:  .quad            .Llit_string_α_1177_0_s
.Llit_string_α_1177_0_s:
                        .string          "[]"
                        .size            n1076_lit_string_bx, .-n1076_lit_string_bx
                        .type            n1077_call_bx, @function
n1077_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1077_call_α:           mov              r11, 462
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
                                                                              jmp   n1078_call_α
n1077_call_β:           mov              r11, 462;                            jmp   main$2F0_ω
                        .size            n1077_call_bx, .-n1077_call_bx
                        .type            n1078_call_bx, @function
n1078_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1078_call_α:           mov              r11, 463
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
                                                                              jmp   n1079_call_α
n1078_call_β:           mov              r11, 463;                            jmp   main$2F0_ω
                        .size            n1078_call_bx, .-n1078_call_bx
                        .type            n1079_call_bx, @function
n1079_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1079_call_α:           mov              r11, 464
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
                                                                              jmp   n1080_call_α
n1079_call_β:           mov              r11, 464;                            jmp   main$2F0_ω
                        .size            n1079_call_bx, .-n1079_call_bx
                        .type            n1080_call_bx, @function
n1080_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1080_call_α:           mov              r11, 465
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
                                                                              jmp   n1081_call_α
n1080_call_β:           mov              r11, 465;                            jmp   main$2F0_ω
                        .size            n1080_call_bx, .-n1080_call_bx
                        .type            n1081_call_bx, @function
n1081_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1081_call_α:           mov              r11, 466
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
                                                                              jmp   n1082_call_α
n1081_call_β:           mov              r11, 466;                            jmp   main$2F0_ω
                        .size            n1081_call_bx, .-n1081_call_bx
                        .type            n1082_call_bx, @function
n1082_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1082_call_α:           mov              r11, 467
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
                                                                              jmp   n1083_call_α
n1082_call_β:           mov              r11, 467;                            jmp   main$2F0_ω
                        .size            n1082_call_bx, .-n1082_call_bx
                        .type            n1083_call_bx, @function
n1083_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1083_call_α:           mov              r11, 468
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
                                                                              jmp   n1084_call_α
n1083_call_β:           mov              r11, 468;                            jmp   main$2F0_ω
                        .size            n1083_call_bx, .-n1083_call_bx
                        .type            n1084_call_bx, @function
n1084_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1084_call_α:           mov              r11, 469
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
                                                                              jmp   n1085_call_α
n1084_call_β:           mov              r11, 469;                            jmp   main$2F0_ω
                        .size            n1084_call_bx, .-n1084_call_bx
                        .type            n1085_call_bx, @function
n1085_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1085_call_α:           mov              r11, 470
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
                                                                              jmp   n1086_call_α
n1085_call_β:           mov              r11, 470;                            jmp   main$2F0_ω
                        .size            n1085_call_bx, .-n1085_call_bx
                        .type            n1086_call_bx, @function
n1086_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1086_call_α:           mov              r11, 471
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
                                                                              jmp   n1087_call_α
n1086_call_β:           mov              r11, 471;                            jmp   main$2F0_ω
                        .size            n1086_call_bx, .-n1086_call_bx
                        .type            n1087_call_bx, @function
n1087_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1087_call_α:           mov              r11, 472
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
                                                                              jmp   n1088_call_α
n1087_call_β:           mov              r11, 472;                            jmp   main$2F0_ω
                        .size            n1087_call_bx, .-n1087_call_bx
                        .type            n1088_call_bx, @function
n1088_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1088_call_α:           mov              r11, 473
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
                                                                              jmp   n1089_call_α
n1088_call_β:           mov              r11, 473;                            jmp   main$2F0_ω
                        .size            n1088_call_bx, .-n1088_call_bx
                        .type            n1089_call_bx, @function
n1089_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1089_call_α:           mov              r11, 474
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
                                                                              jmp   n1090_call_α
n1089_call_β:           mov              r11, 474;                            jmp   main$2F0_ω
                        .size            n1089_call_bx, .-n1089_call_bx
                        .type            n1090_call_bx, @function
n1090_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1090_call_α:           mov              r11, 475
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
                                                                              jmp   n1091_call_α
n1090_call_β:           mov              r11, 475;                            jmp   main$2F0_ω
                        .size            n1090_call_bx, .-n1090_call_bx
                        .type            n1091_call_bx, @function
n1091_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1091_call_α:           mov              r11, 476
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
                                                                              jmp   n1092_call_α
n1091_call_β:           mov              r11, 476;                            jmp   main$2F0_ω
                        .size            n1091_call_bx, .-n1091_call_bx
                        .type            n1092_call_bx, @function
n1092_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1092_call_α:           mov              r11, 477
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
                                                                              jmp   n1093_call_α
n1092_call_β:           mov              r11, 477;                            jmp   main$2F0_step
                        .size            n1092_call_bx, .-n1092_call_bx
                        .type            n1093_call_bx, @function
n1093_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1093_call_α:           mov              r11, 478
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
                        cmp              al, 104;                             je    n1043_call_proc_staged_β
                                                                              jmp   n1094_call_α
n1093_call_β:           mov              r11, 478;                            jmp   n1043_call_proc_staged_β
                        .size            n1093_call_bx, .-n1093_call_bx
                        .type            n1094_call_bx, @function
n1094_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1094_call_α:           mov              r11, 479
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
                        cmp              al, 104;                             je    n1043_call_proc_staged_β
                                                                              jmp   main$2F0_ret0
n1094_call_β:           mov              r11, 479;                            jmp   n1043_call_proc_staged_β
                        .size            n1094_call_bx, .-n1094_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ret0:
                        lea              rax, [rip + n1043_call_proc_staged_β]
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
                        .type            n1196_var_ref_bx, @function
n1196_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1196_var_ref_α:        mov              r11, 480
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n1197_lit_integer_α
                        .size            n1196_var_ref_bx, .-n1196_var_ref_bx
                        .type            n1197_lit_integer_bx, @function
n1197_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1197_lit_integer_α:    mov              r11, 481
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1210_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n1198_call_α
.Llit_integer_α_1210_0: .quad            2
                        .size            n1197_lit_integer_bx, .-n1197_lit_integer_bx
                        .type            n1198_call_bx, @function
n1198_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1198_call_α:           mov              r11, 482
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
n1198_call_β:           mov              r11, 482;                            jmp   lefteven$2F1_step
                        .size            n1198_call_bx, .-n1198_call_bx
                        .type            n1199_var_ref_bx, @function
n1199_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1199_var_ref_α:        mov              r11, 483
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n1200_lit_integer_α
                        .size            n1199_var_ref_bx, .-n1199_var_ref_bx
                        .type            n1200_lit_integer_bx, @function
n1200_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1200_lit_integer_α:    mov              r11, 484
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1214_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n1201_call_α
.Llit_integer_α_1214_0: .quad            4
                        .size            n1200_lit_integer_bx, .-n1200_lit_integer_bx
                        .type            n1201_call_bx, @function
n1201_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1201_call_α:           mov              r11, 485
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
n1201_call_β:           mov              r11, 485;                            jmp   lefteven$2F1_step
                        .size            n1201_call_bx, .-n1201_call_bx
                        .type            n1202_var_ref_bx, @function
n1202_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1202_var_ref_α:        mov              r11, 486
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n1203_lit_integer_α
                        .size            n1202_var_ref_bx, .-n1202_var_ref_bx
                        .type            n1203_lit_integer_bx, @function
n1203_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1203_lit_integer_α:    mov              r11, 487
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1218_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n1204_call_α
.Llit_integer_α_1218_0: .quad            6
                        .size            n1203_lit_integer_bx, .-n1203_lit_integer_bx
                        .type            n1204_call_bx, @function
n1204_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1204_call_α:           mov              r11, 488
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
n1204_call_β:           mov              r11, 488;                            jmp   lefteven$2F1_step
                        .size            n1204_call_bx, .-n1204_call_bx
                        .type            n1205_var_ref_bx, @function
n1205_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1205_var_ref_α:        mov              r11, 489
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n1206_lit_integer_α
                        .size            n1205_var_ref_bx, .-n1205_var_ref_bx
                        .type            n1206_lit_integer_bx, @function
n1206_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1206_lit_integer_α:    mov              r11, 490
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1222_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n1207_call_α
.Llit_integer_α_1222_0: .quad            8
                        .size            n1206_lit_integer_bx, .-n1206_lit_integer_bx
                        .type            n1207_call_bx, @function
n1207_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1207_call_α:           mov              r11, 491
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
n1207_call_β:           mov              r11, 491;                            jmp   lefteven$2F1_step
                        .size            n1207_call_bx, .-n1207_call_bx
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
                                                                              jmp   n1199_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
lefteven$2F1_alt2:
                        lea              rax, [rip + lefteven$2F1_alt3]
                        mov              qword ptr [rbp + 440], rax
                                                                              jmp   n1202_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
lefteven$2F1_alt3:
                        xor              eax, eax
                        mov              qword ptr [rbp + 440], rax
                        mov              r13, qword ptr [rbp + 456]
                                                                              jmp   n1205_var_ref_α
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
                        .type            n1224_var_ref_bx, @function
n1224_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1224_var_ref_α:        mov              r11, 492
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n1225_lit_string_α
                        .size            n1224_var_ref_bx, .-n1224_var_ref_bx
                        .type            n1225_lit_string_bx, @function
n1225_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1225_lit_string_α:     mov              r11, 493
                        mov              qword ptr [rbp + 112], 2             # result
                        mov              dword ptr [rbp + 116], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1237_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n1226_call_α
.Llit_string_α_1237_0:  .quad            .Llit_string_α_1237_0_s
.Llit_string_α_1237_0_s:
                        .string          "[]"
                        .size            n1225_lit_string_bx, .-n1225_lit_string_bx
                        .type            n1226_call_bx, @function
n1226_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1226_call_α:           mov              r11, 494
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        mov              rsi, qword ptr [rip + .Lcall_α_1238_2]
                                                                              jmp   .Lcall_α_1238_3
.Lcall_α_1238_2:        .quad            .Lcall_α_1238_2_s
.Lcall_α_1238_2_s:      .string          "[]"
.Lcall_α_1238_3:        mov              qword ptr [rip + rtccb+40], r8
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
n1226_call_β:           mov              r11, 494;                            jmp   zero$2F1_step
                        .size            n1226_call_bx, .-n1226_call_bx
                        .type            n1227_var_ref_bx, @function
n1227_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1227_var_ref_α:        mov              r11, 495
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n1228_lit_string_α
                        .size            n1227_var_ref_bx, .-n1227_var_ref_bx
                        .type            n1228_lit_string_bx, @function
n1228_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1228_lit_string_α:     mov              r11, 496
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1241_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n1229_lit_integer_α
.Llit_string_α_1241_0:  .quad            .Llit_string_α_1241_0_s
.Llit_string_α_1241_0_s:
                        .string          "."
                        .size            n1228_lit_string_bx, .-n1228_lit_string_bx
                        .type            n1229_lit_integer_bx, @function
n1229_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1229_lit_integer_α:    mov              r11, 497
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1242_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n1230_var_ref_α
.Llit_integer_α_1242_0: .quad            0
                        .size            n1229_lit_integer_bx, .-n1229_lit_integer_bx
                        .type            n1230_var_ref_bx, @function
n1230_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1230_var_ref_α:        mov              r11, 498
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n1231_call_α
                        .size            n1230_var_ref_bx, .-n1230_var_ref_bx
                        .type            n1231_call_bx, @function
n1231_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1231_call_α:           mov              r11, 499
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
                                                                              jmp   n1232_call_α
n1231_call_β:           mov              r11, 499;                            jmp   zero$2F1_step
                        .size            n1231_call_bx, .-n1231_call_bx
                        .type            n1232_call_bx, @function
n1232_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1232_call_α:           mov              r11, 500
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
                                                                              jmp   n1233_var_ref_α
n1232_call_β:           mov              r11, 500;                            jmp   zero$2F1_step
                        .size            n1232_call_bx, .-n1232_call_bx
                        .type            n1233_var_ref_bx, @function
n1233_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1233_var_ref_α:        mov              r11, 501
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n1234_call_proc_staged_α
                        .size            n1233_var_ref_bx, .-n1233_var_ref_bx
                        .type            n1234_call_proc_staged_bx, @function
n1234_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1234_call_proc_staged_α:
                        mov              r11, 502
                        mov              qword ptr [rbp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1250_200
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1250_201
.Lcall_proc_staged_α_1250_200:
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
.Lcall_proc_staged_α_1250_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1250_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1250_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_1250_99
                        mov              r10, qword ptr [rbp + 472]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_1250_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_1250_99
                        mov              rcx, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, qword ptr [rbp + 504];          jmp   rax
.Lcall_proc_staged_α_1250_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1250_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1250_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1250_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1250_3:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1250_21
                        add              rsp, 32
.Lcall_proc_staged_α_1250_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1250_2
.Lcall_proc_staged_α_1250_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1250_2
.Lcall_proc_staged_α_1250_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1250_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   zero$2F1_step
.Lcall_proc_staged_α_1250_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1250_29
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
.Lcall_proc_staged_α_1250_29:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    zero$2F1_step
                                                                              jmp   zero$2F1_ret1
n1234_call_proc_staged_β:
                        mov              r11, 502
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1250_22
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1250_22
                        mov              rcx, qword ptr [rbp + 168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1250_22:
                                                                              jmp   zero$2F1_step
.Lcall_proc_staged_α_1250_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    zero$2F1_step
                                                                              jmp   zero$2F1_ret1
.Lcall_proc_staged_α_1250_0:
                        .quad            .Lcall_proc_staged_α_1250_0_s
.Lcall_proc_staged_α_1250_0_s:
                        .string          "zero/1"
                        .size            n1234_call_proc_staged_bx, .-n1234_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
zero$2F1_ret1:
                        lea              rax, [rip + n1234_call_proc_staged_β]
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
                                                                              jmp   n1227_var_ref_α
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
                        .type            n1251_call_proc_staged_bx, @function
n1251_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1251_call_proc_staged_α:
                        mov              r11, 503
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1253_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1253_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1253_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1253_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1253_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1253_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1253_21
                        add              rsp, 32
.Lcall_proc_staged_α_1253_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1253_2
.Lcall_proc_staged_α_1253_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1253_2
.Lcall_proc_staged_α_1253_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1253_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_1253_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1253_29
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
.Lcall_proc_staged_α_1253_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n1251_call_proc_staged_β:
                        mov              r11, 503
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1253_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1253_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1253_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_1253_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_1253_0:
                        .quad            .Lcall_proc_staged_α_1253_0_s
.Lcall_proc_staged_α_1253_0_s:
                        .string          "main/0"
                        .size            n1251_call_proc_staged_bx, .-n1251_call_proc_staged_bx
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
                        .long            3696
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
                        .long            3312
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
