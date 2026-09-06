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
                        call             rt_pl_exist_key_raise@PLT
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
                        sub              rsp, 2960
                        mov              qword ptr [rsp + 2936], rcx
                        mov              qword ptr [rsp + 2944], rdx
                        mov              qword ptr [rsp + 2952], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 2960]
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2920], r13
                        mov              qword ptr [rsp + 2912], 0
                        mov              qword ptr [rsp + 2904], 0
                        mov              qword ptr [rsp + 2896], r12
                        lea              rax, [rip + mult$2F4_alt1]
                        mov              qword ptr [rsp + 2904], rax
                        lea              rdi, [rsp + 2896]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 2752
                        mov              edx, 2896
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
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx;         jmp   n39_lit_string_α
                        .size            n38_var_ref_bx, .-n38_var_ref_bx
                        .type            n39_lit_string_bx, @function
n39_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rbp + 1616], 2            # result
                        mov              dword ptr [rbp + 1620], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_116_0]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n40_var_ref_α
.Llit_string_α_116_0:   .quad            .Llit_string_α_116_0_s
.Llit_string_α_116_0_s: .string          "."
                        .size            n39_lit_string_bx, .-n39_lit_string_bx
                        .type            n40_var_ref_bx, @function
n40_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2848]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n41_var_ref_α
                        .size            n40_var_ref_bx, .-n40_var_ref_bx
                        .type            n41_var_ref_bx, @function
n41_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2752]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx;         jmp   n42_call_α
                        .size            n41_var_ref_bx, .-n41_var_ref_bx
                        .type            n42_call_bx, @function
n42_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_call_α:             mov              r11, 19
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rdi, [rbp + 1552]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n43_call_α
n42_call_β:             mov              r11, 19;                             jmp   mult$2F4_step
                        .size            n42_call_bx, .-n42_call_bx
                        .type            n43_call_bx, @function
n43_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_call_α:             mov              r11, 20
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rdi, [rbp + 1440]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
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
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx;         jmp   n45_var_ref_α
                        .size            n44_var_ref_bx, .-n44_var_ref_bx
                        .type            n45_var_ref_bx, @function
n45_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2768]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx;         jmp   n46_call_α
                        .size            n45_var_ref_bx, .-n45_var_ref_bx
                        .type            n46_call_bx, @function
n46_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:             mov              r11, 23
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1344]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
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
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx;         jmp   n48_var_ref_α
                        .size            n47_var_ref_bx, .-n47_var_ref_bx
                        .type            n48_var_ref_bx, @function
n48_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx;         jmp   n49_call_α
                        .size            n48_var_ref_bx, .-n48_var_ref_bx
                        .type            n49_call_bx, @function
n49_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_call_α:             mov              r11, 26
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rdi, [rbp + 1248]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
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
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n51_lit_string_α
                        .size            n50_var_ref_bx, .-n50_var_ref_bx
                        .type            n51_lit_string_bx, @function
n51_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rbp + 1216], 2            # result
                        mov              dword ptr [rbp + 1220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_135_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n52_var_ref_α
.Llit_string_α_135_0:   .quad            .Llit_string_α_135_0_s
.Llit_string_α_135_0_s: .string          "."
                        .size            n51_lit_string_bx, .-n51_lit_string_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2832]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n53_var_ref_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_var_ref_bx, @function
n53_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n54_call_α
                        .size            n53_var_ref_bx, .-n53_var_ref_bx
                        .type            n54_call_bx, @function
n54_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:             mov              r11, 31
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1112]
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
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n55_call_α
n54_call_β:             mov              r11, 31;                             jmp   mult$2F4_step
                        .size            n54_call_bx, .-n54_call_bx
                        .type            n55_call_bx, @function
n55_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_call_α:             mov              r11, 32
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n56_var_ref_α
n55_call_β:             mov              r11, 32;                             jmp   mult$2F4_step
                        .size            n55_call_bx, .-n55_call_bx
                        .type            n56_var_ref_bx, @function
n56_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2816]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n57_var_α
                        .size            n56_var_ref_bx, .-n56_var_ref_bx
                        .type            n57_var_bx, @function
n57_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 984], rax;          jmp   n58_var_α
                        .size            n57_var_bx, .-n57_var_bx
                        .type            n58_var_bx, @function
n58_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              mov              r11, 35
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n59_call_α
                        .size            n58_var_bx, .-n58_var_bx
                        .type            n59_call_bx, @function
n59_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_call_α:             mov              r11, 36
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n60_var_α
n59_call_β:             mov              r11, 36;                             jmp   mult$2F4_step
                        .size            n59_call_bx, .-n59_call_bx
                        .type            n60_var_bx, @function
n60_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              mov              r11, 37
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n61_call_α
                        .size            n60_var_bx, .-n60_var_bx
                        .type            n61_call_bx, @function
n61_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_call_α:             mov              r11, 38
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n62_call_α
n61_call_β:             mov              r11, 38;                             jmp   mult$2F4_step
                        .size            n61_call_bx, .-n61_call_bx
                        .type            n62_call_bx, @function
n62_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_call_α:             mov              r11, 39
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n63_var_ref_α
n62_call_β:             mov              r11, 39;                             jmp   mult$2F4_step
                        .size            n62_call_bx, .-n62_call_bx
                        .type            n63_var_ref_bx, @function
n63_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2832]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n64_var_α
                        .size            n63_var_ref_bx, .-n63_var_ref_bx
                        .type            n64_var_bx, @function
n64_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:              mov              r11, 41
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 664], rax;          jmp   n65_lit_integer_α
                        .size            n64_var_bx, .-n64_var_bx
                        .type            n65_lit_integer_bx, @function
n65_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:      mov              r11, 42
                        mov              qword ptr [rbp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_157_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n66_lit_string_α
.Llit_integer_α_157_0:  .quad            10
                        .size            n65_lit_integer_bx, .-n65_lit_integer_bx
                        .type            n66_lit_string_bx, @function
n66_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              r11, 43
                        mov              qword ptr [rbp + 752], 2             # result
                        mov              dword ptr [rbp + 756], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_158_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n67_call_α
.Llit_string_α_158_0:   .quad            .Llit_string_α_158_0_s
.Llit_string_α_158_0_s: .string          "mod"
                        .size            n66_lit_string_bx, .-n66_lit_string_bx
                        .type            n67_call_bx, @function
n67_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:             mov              r11, 44
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n68_call_α
n67_call_β:             mov              r11, 44;                             jmp   mult$2F4_step
                        .size            n67_call_bx, .-n67_call_bx
                        .type            n68_call_bx, @function
n68_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_call_α:             mov              r11, 45
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n69_call_α
n68_call_β:             mov              r11, 45;                             jmp   mult$2F4_step
                        .size            n68_call_bx, .-n68_call_bx
                        .type            n69_call_bx, @function
n69_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_call_α:             mov              r11, 46
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n70_var_ref_α
n69_call_β:             mov              r11, 46;                             jmp   mult$2F4_step
                        .size            n69_call_bx, .-n69_call_bx
                        .type            n70_var_ref_bx, @function
n70_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n71_var_α
                        .size            n70_var_ref_bx, .-n70_var_ref_bx
                        .type            n71_var_bx, @function
n71_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              mov              r11, 48
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 408], rax;          jmp   n72_lit_integer_α
                        .size            n71_var_bx, .-n71_var_bx
                        .type            n72_lit_integer_bx, @function
n72_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      mov              r11, 49
                        mov              qword ptr [rbp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_166_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n73_lit_string_α
.Llit_integer_α_166_0:  .quad            10
                        .size            n72_lit_integer_bx, .-n72_lit_integer_bx
                        .type            n73_lit_string_bx, @function
n73_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:       mov              r11, 50
                        mov              qword ptr [rbp + 496], 2             # result
                        mov              dword ptr [rbp + 500], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_167_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n74_call_α
.Llit_string_α_167_0:   .quad            .Llit_string_α_167_0_s
.Llit_string_α_167_0_s: .string          "//"
                        .size            n73_lit_string_bx, .-n73_lit_string_bx
                        .type            n74_call_bx, @function
n74_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_call_α:             mov              r11, 51
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
                                                                              jmp   n75_call_α
n74_call_β:             mov              r11, 51;                             jmp   mult$2F4_step
                        .size            n74_call_bx, .-n74_call_bx
                        .type            n75_call_bx, @function
n75_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_call_α:             mov              r11, 52
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
                                                                              jmp   n76_call_α
n75_call_β:             mov              r11, 52;                             jmp   mult$2F4_step
                        .size            n75_call_bx, .-n75_call_bx
                        .type            n76_call_bx, @function
n76_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_call_α:             mov              r11, 53
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
                                                                              jmp   n77_var_ref_α
n76_call_β:             mov              r11, 53;                             jmp   mult$2F4_step
                        .size            n76_call_bx, .-n76_call_bx
                        .type            n77_var_ref_bx, @function
n77_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:          mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2752]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n78_var_ref_α
                        .size            n77_var_ref_bx, .-n77_var_ref_bx
                        .type            n78_var_ref_bx, @function
n78_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2768]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n79_var_ref_α
                        .size            n78_var_ref_bx, .-n78_var_ref_bx
                        .type            n79_var_ref_bx, @function
n79_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:          mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n80_var_ref_α
                        .size            n79_var_ref_bx, .-n79_var_ref_bx
                        .type            n80_var_ref_bx, @function
n80_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              r11, 57
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n81_call_proc_staged_α
                        .size            n80_var_ref_bx, .-n80_var_ref_bx
                        .type            n81_call_proc_staged_bx, @function
n81_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_call_proc_staged_α: mov              r11, 58
                        mov              qword ptr [rbp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_180_200
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_180_201
.Lcall_proc_staged_α_180_200:
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
.Lcall_proc_staged_α_180_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_180_202
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_180_203
.Lcall_proc_staged_α_180_202:
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
.Lcall_proc_staged_α_180_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_180_204
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_180_205
.Lcall_proc_staged_α_180_204:
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
.Lcall_proc_staged_α_180_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_180_206
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_180_207
.Lcall_proc_staged_α_180_206:
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
.Lcall_proc_staged_α_180_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_180_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_180_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 4
                        mov              rsi, rbp
                        lea              rdx, [rbp + 2960]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_180_99
                        mov              r10, qword ptr [rbp + 2920]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_180_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_180_99
                        mov              rcx, qword ptr [rbp + 2936]
                        mov              rdx, qword ptr [rbp + 2944]
                        lea              rsp, [rbp + 2960]
                        mov              rbp, qword ptr [rbp + 2952];         jmp   rax
.Lcall_proc_staged_α_180_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_180_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_180_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_180_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_180_3:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_180_21
                        add              rsp, 32
.Lcall_proc_staged_α_180_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_180_2
.Lcall_proc_staged_α_180_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_180_2
.Lcall_proc_staged_α_180_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_180_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   mult$2F4_step
.Lcall_proc_staged_α_180_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_180_29
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
.Lcall_proc_staged_α_180_29:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   mult$2F4_ret0
n81_call_proc_staged_β: mov              r11, 58
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_180_22
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_180_22
                        mov              rcx, qword ptr [rbp + 168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_180_22:
                                                                              jmp   mult$2F4_step
.Lcall_proc_staged_α_180_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   mult$2F4_ret0
.Lcall_proc_staged_α_180_0:
                        .quad            .Lcall_proc_staged_α_180_0_s
.Lcall_proc_staged_α_180_0_s:
                        .string          "mult/4"
                        .size            n81_call_proc_staged_bx, .-n81_call_proc_staged_bx
                        .type            n82_var_ref_bx, @function
n82_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx;         jmp   n83_lit_string_α
                        .size            n82_var_ref_bx, .-n82_var_ref_bx
                        .type            n83_lit_string_bx, @function
n83_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:       mov              r11, 60
                        mov              qword ptr [rbp + 2736], 2            # result
                        mov              dword ptr [rbp + 2740], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_183_0]
                        mov              qword ptr [rbp + 2744], rax;         jmp   n84_call_α
.Llit_string_α_183_0:   .quad            .Llit_string_α_183_0_s
.Llit_string_α_183_0_s: .string          "[]"
                        .size            n83_lit_string_bx, .-n83_lit_string_bx
                        .type            n84_call_bx, @function
n84_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_call_α:             mov              r11, 61
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2680], rax
                        lea              rdi, [rbp + 2672]
                        mov              rsi, qword ptr [rip + .Lcall_α_184_2]
                                                                              jmp   .Lcall_α_184_3
.Lcall_α_184_2:         .quad            .Lcall_α_184_2_s
.Lcall_α_184_2_s:       .string          "[]"
.Lcall_α_184_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n85_var_ref_α
n84_call_β:             mov              r11, 61;                             jmp   mult$2F4_step
                        .size            n84_call_bx, .-n84_call_bx
                        .type            n85_var_ref_bx, @function
n85_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:          mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx;         jmp   n86_var_ref_α
                        .size            n85_var_ref_bx, .-n85_var_ref_bx
                        .type            n86_var_ref_bx, @function
n86_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2848]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx;         jmp   n87_call_α
                        .size            n86_var_ref_bx, .-n86_var_ref_bx
                        .type            n87_call_bx, @function
n87_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_call_α:             mov              r11, 64
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n88_var_ref_α
n87_call_β:             mov              r11, 64;                             jmp   mult$2F4_step
                        .size            n87_call_bx, .-n87_call_bx
                        .type            n88_var_ref_bx, @function
n88_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx;         jmp   n89_var_ref_α
                        .size            n88_var_ref_bx, .-n88_var_ref_bx
                        .type            n89_var_ref_bx, @function
n89_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n90_call_α
                        .size            n89_var_ref_bx, .-n89_var_ref_bx
                        .type            n90_call_bx, @function
n90_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_call_α:             mov              r11, 67
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
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n91_var_ref_α
n90_call_β:             mov              r11, 67;                             jmp   mult$2F4_step
                        .size            n90_call_bx, .-n90_call_bx
                        .type            n91_var_ref_bx, @function
n91_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx;         jmp   n92_lit_string_α
                        .size            n91_var_ref_bx, .-n91_var_ref_bx
                        .type            n92_lit_string_bx, @function
n92_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:       mov              r11, 69
                        mov              qword ptr [rbp + 2448], 2            # result
                        mov              dword ptr [rbp + 2452], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_197_0]
                        mov              qword ptr [rbp + 2456], rax;         jmp   n93_var_ref_α
.Llit_string_α_197_0:   .quad            .Llit_string_α_197_0_s
.Llit_string_α_197_0_s: .string          "."
                        .size            n92_lit_string_bx, .-n92_lit_string_bx
                        .type            n93_var_ref_bx, @function
n93_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:          mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2752]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx;         jmp   n94_lit_string_α
                        .size            n93_var_ref_bx, .-n93_var_ref_bx
                        .type            n94_lit_string_bx, @function
n94_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       mov              r11, 71
                        mov              qword ptr [rbp + 2336], 2            # result
                        mov              dword ptr [rbp + 2340], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_200_0]
                        mov              qword ptr [rbp + 2344], rax;         jmp   n95_var_ref_α
.Llit_string_α_200_0:   .quad            .Llit_string_α_200_0_s
.Llit_string_α_200_0_s: .string          "."
                        .size            n94_lit_string_bx, .-n94_lit_string_bx
                        .type            n95_var_ref_bx, @function
n95_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:          mov              r11, 72
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2832]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n96_lit_string_α
                        .size            n95_var_ref_bx, .-n95_var_ref_bx
                        .type            n96_lit_string_bx, @function
n96_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:       mov              r11, 73
                        mov              qword ptr [rbp + 2224], 2            # result
                        mov              dword ptr [rbp + 2228], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_203_0]
                        mov              qword ptr [rbp + 2232], rax;         jmp   n97_call_α
.Llit_string_α_203_0:   .quad            .Llit_string_α_203_0_s
.Llit_string_α_203_0_s: .string          "[]"
                        .size            n96_lit_string_bx, .-n96_lit_string_bx
                        .type            n97_call_bx, @function
n97_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_call_α:             mov              r11, 74
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2312], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2296], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2280], rax
                        lea              rdi, [rbp + 2272]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              al, 104;                             je    mult$2F4_ω
                                                                              jmp   n98_call_α
n97_call_β:             mov              r11, 74;                             jmp   mult$2F4_ω
                        .size            n97_call_bx, .-n97_call_bx
                        .type            n98_call_bx, @function
n98_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_call_α:             mov              r11, 75
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2408], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2392], rax
                        lea              rdi, [rbp + 2384]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n99_call_α
n98_call_β:             mov              r11, 75;                             jmp   mult$2F4_step
                        .size            n98_call_bx, .-n98_call_bx
                        .type            n99_call_bx, @function
n99_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_call_α:             mov              r11, 76
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2168], rax
                        lea              rdi, [rbp + 2160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n100_var_ref_α
n99_call_β:             mov              r11, 76;                             jmp   mult$2F4_step
                        .size            n99_call_bx, .-n99_call_bx
                        .type            n100_var_ref_bx, @function
n100_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2752]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx;         jmp   n101_var_α
                        .size            n100_var_ref_bx, .-n100_var_ref_bx
                        .type            n101_var_bx, @function
n101_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             mov              r11, 78
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2040], rax;         jmp   n102_lit_integer_α
                        .size            n101_var_bx, .-n101_var_bx
                        .type            n102_lit_integer_bx, @function
n102_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:     mov              r11, 79
                        mov              qword ptr [rbp + 2048], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_211_0]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n103_lit_string_α
.Llit_integer_α_211_0:  .quad            10
                        .size            n102_lit_integer_bx, .-n102_lit_integer_bx
                        .type            n103_lit_string_bx, @function
n103_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:      mov              r11, 80
                        mov              qword ptr [rbp + 2128], 2            # result
                        mov              dword ptr [rbp + 2132], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_212_0]
                        mov              qword ptr [rbp + 2136], rax;         jmp   n104_call_α
.Llit_string_α_212_0:   .quad            .Llit_string_α_212_0_s
.Llit_string_α_212_0_s: .string          "mod"
                        .size            n103_lit_string_bx, .-n103_lit_string_bx
                        .type            n104_call_bx, @function
n104_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_call_α:            mov              r11, 81
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2088], rax
                        lea              rdi, [rbp + 2080]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n105_call_α
n104_call_β:            mov              r11, 81;                             jmp   mult$2F4_step
                        .size            n104_call_bx, .-n104_call_bx
                        .type            n105_call_bx, @function
n105_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_call_α:            mov              r11, 82
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1992], rax
                        lea              rdi, [rbp + 1984]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n106_call_α
n105_call_β:            mov              r11, 82;                             jmp   mult$2F4_step
                        .size            n105_call_bx, .-n105_call_bx
                        .type            n106_call_bx, @function
n106_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_call_α:            mov              r11, 83
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n107_var_ref_α
n106_call_β:            mov              r11, 83;                             jmp   mult$2F4_step
                        .size            n106_call_bx, .-n106_call_bx
                        .type            n107_var_ref_bx, @function
n107_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2832]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx;         jmp   n108_var_α
                        .size            n107_var_ref_bx, .-n107_var_ref_bx
                        .type            n108_var_bx, @function
n108_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             mov              r11, 85
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n109_lit_integer_α
                        .size            n108_var_bx, .-n108_var_bx
                        .type            n109_lit_integer_bx, @function
n109_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:     mov              r11, 86
                        mov              qword ptr [rbp + 1792], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_220_0]
                        mov              qword ptr [rbp + 1800], rax;         jmp   n110_lit_string_α
.Llit_integer_α_220_0:  .quad            10
                        .size            n109_lit_integer_bx, .-n109_lit_integer_bx
                        .type            n110_lit_string_bx, @function
n110_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      mov              r11, 87
                        mov              qword ptr [rbp + 1872], 2            # result
                        mov              dword ptr [rbp + 1876], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_221_0]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n111_call_α
.Llit_string_α_221_0:   .quad            .Llit_string_α_221_0_s
.Llit_string_α_221_0_s: .string          "//"
                        .size            n110_lit_string_bx, .-n110_lit_string_bx
                        .type            n111_call_bx, @function
n111_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_call_α:            mov              r11, 88
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1832], rax
                        lea              rdi, [rbp + 1824]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n112_call_α
n111_call_β:            mov              r11, 88;                             jmp   mult$2F4_step
                        .size            n111_call_bx, .-n111_call_bx
                        .type            n112_call_bx, @function
n112_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_call_α:            mov              r11, 89
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
                        call             rt_pl_dop_ax_idiv@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n113_call_α
n112_call_β:            mov              r11, 89;                             jmp   mult$2F4_step
                        .size            n112_call_bx, .-n112_call_bx
                        .type            n113_call_bx, @function
n113_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_call_α:            mov              r11, 90
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        lea              rdi, [rbp + 1648]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   mult$2F4_γ
n113_call_β:            mov              r11, 90;                             jmp   mult$2F4_step
                        .size            n113_call_bx, .-n113_call_bx
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_ret0:
                        lea              rax, [rip + n81_call_proc_staged_β]
                        mov              qword ptr [rbp + 2912], rax
                                                                              jmp   mult$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_step:
                        mov              rdi, qword ptr [rbp + 2896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2912], 0
                        mov              qword ptr [rbp + 2768], 0
                        mov              qword ptr [rbp + 2776], 0
                        mov              qword ptr [rbp + 2864], 0
                        mov              qword ptr [rbp + 2872], 0
                        mov              qword ptr [rbp + 2848], 0
                        mov              qword ptr [rbp + 2856], 0
                        mov              qword ptr [rbp + 2752], 0
                        mov              qword ptr [rbp + 2760], 0
                        mov              qword ptr [rbp + 2832], 0
                        mov              qword ptr [rbp + 2840], 0
                        mov              qword ptr [rbp + 2800], 0
                        mov              qword ptr [rbp + 2808], 0
                        mov              qword ptr [rbp + 2816], 0
                        mov              qword ptr [rbp + 2824], 0
                        mov              qword ptr [rbp + 2784], 0
                        mov              qword ptr [rbp + 2792], 0
                        mov              rax, qword ptr [rbp + 2904]
                        test             rax, rax
                                                                              je    mult$2F4_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 2904], rax
                        mov              r13, qword ptr [rbp + 2920]
                                                                              jmp   n82_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_β:
                        test             r15, r15
                                                                              jne   mult$2F4_ω
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2912], 0
                        test             rax, rax
                                                                              jne   mult$2F4_βres
                                                                              jmp   mult$2F4_step
mult$2F4_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 2936]
                        mov              rax, qword ptr [rbp + 2920]
                        cmp              r13, rax;                            je    mult$2F4_altdet
                        lea              rdx, [rip + mult$2F4_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 2952];         jmp   rcx
mult$2F4_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 2960]
                        mov              rbp, qword ptr [rbp + 2952];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_ω:
                        mov              rcx, qword ptr [rbp + 2944]
                        mov              r13, qword ptr [rbp + 2920]
                        lea              rsp, [rbp + 2960]
                        mov              rbp, qword ptr [rbp + 2952];         jmp   rcx
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
                        .type            n225_var_ref_bx, @function
n225_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:         mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n226_lit_integer_α
                        .size            n225_var_ref_bx, .-n225_var_ref_bx
                        .type            n226_lit_integer_bx, @function
n226_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_integer_α:     mov              r11, 92
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_242_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n227_call_α
.Llit_integer_α_242_0:  .quad            1
                        .size            n226_lit_integer_bx, .-n226_lit_integer_bx
                        .type            n227_call_bx, @function
n227_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_call_α:            mov              r11, 93
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
n227_call_β:            mov              r11, 93;                             jmp   odd$2F1_step
                        .size            n227_call_bx, .-n227_call_bx
                        .type            n228_var_ref_bx, @function
n228_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:         mov              r11, 94
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n229_lit_integer_α
                        .size            n228_var_ref_bx, .-n228_var_ref_bx
                        .type            n229_lit_integer_bx, @function
n229_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_integer_α:     mov              r11, 95
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_246_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n230_call_α
.Llit_integer_α_246_0:  .quad            3
                        .size            n229_lit_integer_bx, .-n229_lit_integer_bx
                        .type            n230_call_bx, @function
n230_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_call_α:            mov              r11, 96
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
n230_call_β:            mov              r11, 96;                             jmp   odd$2F1_step
                        .size            n230_call_bx, .-n230_call_bx
                        .type            n231_var_ref_bx, @function
n231_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_var_ref_α:         mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n232_lit_integer_α
                        .size            n231_var_ref_bx, .-n231_var_ref_bx
                        .type            n232_lit_integer_bx, @function
n232_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_integer_α:     mov              r11, 98
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_250_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n233_call_α
.Llit_integer_α_250_0:  .quad            5
                        .size            n232_lit_integer_bx, .-n232_lit_integer_bx
                        .type            n233_call_bx, @function
n233_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_call_α:            mov              r11, 99
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
n233_call_β:            mov              r11, 99;                             jmp   odd$2F1_step
                        .size            n233_call_bx, .-n233_call_bx
                        .type            n234_var_ref_bx, @function
n234_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_var_ref_α:         mov              r11, 100
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n235_lit_integer_α
                        .size            n234_var_ref_bx, .-n234_var_ref_bx
                        .type            n235_lit_integer_bx, @function
n235_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_integer_α:     mov              r11, 101
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_254_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n236_call_α
.Llit_integer_α_254_0:  .quad            7
                        .size            n235_lit_integer_bx, .-n235_lit_integer_bx
                        .type            n236_call_bx, @function
n236_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_call_α:            mov              r11, 102
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
n236_call_β:            mov              r11, 102;                            jmp   odd$2F1_step
                        .size            n236_call_bx, .-n236_call_bx
                        .type            n237_var_ref_bx, @function
n237_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n238_lit_integer_α
                        .size            n237_var_ref_bx, .-n237_var_ref_bx
                        .type            n238_lit_integer_bx, @function
n238_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_integer_α:     mov              r11, 104
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_258_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n239_call_α
.Llit_integer_α_258_0:  .quad            9
                        .size            n238_lit_integer_bx, .-n238_lit_integer_bx
                        .type            n239_call_bx, @function
n239_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_call_α:            mov              r11, 105
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
n239_call_β:            mov              r11, 105;                            jmp   odd$2F1_step
                        .size            n239_call_bx, .-n239_call_bx
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
                                                                              jmp   n228_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
odd$2F1_alt2:
                        lea              rax, [rip + odd$2F1_alt3]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n231_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
odd$2F1_alt3:
                        lea              rax, [rip + odd$2F1_alt4]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n234_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
odd$2F1_alt4:
                        xor              eax, eax
                        mov              qword ptr [rbp + 536], rax
                        mov              r13, qword ptr [rbp + 552]
                                                                              jmp   n237_var_ref_α
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
                        .type            n260_var_ref_bx, @function
n260_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n261_var_ref_α
                        .size            n260_var_ref_bx, .-n260_var_ref_bx
                        .type            n261_var_ref_bx, @function
n261_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx;          jmp   n262_call_α
                        .size            n261_var_ref_bx, .-n261_var_ref_bx
                        .type            n262_call_bx, @function
n262_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_call_α:            mov              r11, 108
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
                                                                              jmp   n263_var_ref_α
n262_call_β:            mov              r11, 108;                            jmp   sum$2F3_step
                        .size            n262_call_bx, .-n262_call_bx
                        .type            n263_var_ref_bx, @function
n263_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n264_var_ref_α
                        .size            n263_var_ref_bx, .-n263_var_ref_bx
                        .type            n264_var_ref_bx, @function
n264_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_var_ref_α:         mov              r11, 110
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n265_call_α
                        .size            n264_var_ref_bx, .-n264_var_ref_bx
                        .type            n265_call_bx, @function
n265_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_call_α:            mov              r11, 111
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
                                                                              jmp   n266_var_ref_α
n265_call_β:            mov              r11, 111;                            jmp   sum$2F3_step
                        .size            n265_call_bx, .-n265_call_bx
                        .type            n266_var_ref_bx, @function
n266_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n267_var_ref_α
                        .size            n266_var_ref_bx, .-n266_var_ref_bx
                        .type            n267_var_ref_bx, @function
n267_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:         mov              r11, 113
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n268_call_α
                        .size            n267_var_ref_bx, .-n267_var_ref_bx
                        .type            n268_call_bx, @function
n268_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_call_α:            mov              r11, 114
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
                                                                              jmp   n269_var_ref_α
n268_call_β:            mov              r11, 114;                            jmp   sum$2F3_step
                        .size            n268_call_bx, .-n268_call_bx
                        .type            n269_var_ref_bx, @function
n269_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n270_var_ref_α
                        .size            n269_var_ref_bx, .-n269_var_ref_bx
                        .type            n270_var_ref_bx, @function
n270_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n271_lit_integer_α
                        .size            n270_var_ref_bx, .-n270_var_ref_bx
                        .type            n271_lit_integer_bx, @function
n271_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_integer_α:     mov              r11, 117
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_293_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n272_var_ref_α
.Llit_integer_α_293_0:  .quad            0
                        .size            n271_lit_integer_bx, .-n271_lit_integer_bx
                        .type            n272_var_ref_bx, @function
n272_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:         mov              r11, 118
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n273_call_proc_staged_α
                        .size            n272_var_ref_bx, .-n272_var_ref_bx
                        .type            n273_call_proc_staged_bx, @function
n273_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_call_proc_staged_α:
                        mov              r11, 119
                        mov              qword ptr [rbp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_297_200
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_297_201
.Lcall_proc_staged_α_297_200:
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
.Lcall_proc_staged_α_297_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_297_202
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_297_203
.Lcall_proc_staged_α_297_202:
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
.Lcall_proc_staged_α_297_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_297_204
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_297_205
.Lcall_proc_staged_α_297_204:
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
.Lcall_proc_staged_α_297_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_297_206
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_297_207
.Lcall_proc_staged_α_297_206:
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
.Lcall_proc_staged_α_297_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_297_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_297_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_297_99
                        mov              r10, qword ptr [rbp + 616]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_297_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_297_99
                        mov              rcx, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 640]
                        lea              rsp, [rbp + 656]
                        mov              rbp, qword ptr [rbp + 648];          jmp   rax
.Lcall_proc_staged_α_297_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_297_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_297_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_297_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_297_3:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_297_21
                        add              rsp, 32
.Lcall_proc_staged_α_297_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_297_2
.Lcall_proc_staged_α_297_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 144], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_297_2
.Lcall_proc_staged_α_297_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_297_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   sum$2F3_step
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
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
.Lcall_proc_staged_α_297_29:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    sum$2F3_step
                                                                              jmp   sum$2F3_ret0
n273_call_proc_staged_β:
                        mov              r11, 119
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_297_22
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_297_22
                        mov              rcx, qword ptr [rbp + 152]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_297_22:
                                                                              jmp   sum$2F3_step
.Lcall_proc_staged_α_297_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    sum$2F3_step
                                                                              jmp   sum$2F3_ret0
.Lcall_proc_staged_α_297_0:
                        .quad            .Lcall_proc_staged_α_297_0_s
.Lcall_proc_staged_α_297_0_s:
                        .string          "sum/4"
                        .size            n273_call_proc_staged_bx, .-n273_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
sum$2F3_ret0:
                        lea              rax, [rip + n273_call_proc_staged_β]
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
                        sub              rsp, 2864
                        mov              qword ptr [rsp + 2840], rcx
                        mov              qword ptr [rsp + 2848], rdx
                        mov              qword ptr [rsp + 2856], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 2864]
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2824], r13
                        mov              qword ptr [rsp + 2816], 0
                        mov              qword ptr [rsp + 2808], 0
                        mov              qword ptr [rsp + 2800], r12
                        lea              rax, [rip + sum$2F4_alt1]
                        mov              qword ptr [rsp + 2808], rax
                        lea              rdi, [rsp + 2800]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 2624
                        mov              edx, 2800
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
sum$2F4_α_body:
                        .type            n298_var_ref_bx, @function
n298_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx;         jmp   n299_lit_string_α
                        .size            n298_var_ref_bx, .-n298_var_ref_bx
                        .type            n299_lit_string_bx, @function
n299_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_string_α:      mov              r11, 121
                        mov              qword ptr [rbp + 1728], 2            # result
                        mov              dword ptr [rbp + 1732], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_376_0]
                        mov              qword ptr [rbp + 1736], rax;         jmp   n300_var_ref_α
.Llit_string_α_376_0:   .quad            .Llit_string_α_376_0_s
.Llit_string_α_376_0_s: .string          "."
                        .size            n299_lit_string_bx, .-n299_lit_string_bx
                        .type            n300_var_ref_bx, @function
n300_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2720]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx;         jmp   n301_var_ref_α
                        .size            n300_var_ref_bx, .-n300_var_ref_bx
                        .type            n301_var_ref_bx, @function
n301_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:         mov              r11, 123
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx;         jmp   n302_call_α
                        .size            n301_var_ref_bx, .-n301_var_ref_bx
                        .type            n302_call_bx, @function
n302_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_call_α:            mov              r11, 124
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1672], rax
                        lea              rdi, [rbp + 1664]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n303_call_α
n302_call_β:            mov              r11, 124;                            jmp   sum$2F4_step
                        .size            n302_call_bx, .-n302_call_bx
                        .type            n303_call_bx, @function
n303_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_call_α:            mov              r11, 125
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rdi, [rbp + 1552]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n304_var_ref_α
n303_call_β:            mov              r11, 125;                            jmp   sum$2F4_step
                        .size            n303_call_bx, .-n303_call_bx
                        .type            n304_var_ref_bx, @function
n304_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:         mov              r11, 126
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx;         jmp   n305_lit_string_α
                        .size            n304_var_ref_bx, .-n304_var_ref_bx
                        .type            n305_lit_string_bx, @function
n305_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:      mov              r11, 127
                        mov              qword ptr [rbp + 1520], 2            # result
                        mov              dword ptr [rbp + 1524], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_385_0]
                        mov              qword ptr [rbp + 1528], rax;         jmp   n306_var_ref_α
.Llit_string_α_385_0:   .quad            .Llit_string_α_385_0_s
.Llit_string_α_385_0_s: .string          "."
                        .size            n305_lit_string_bx, .-n305_lit_string_bx
                        .type            n306_var_ref_bx, @function
n306_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_var_ref_α:         mov              r11, 128
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2736]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n307_var_ref_α
                        .size            n306_var_ref_bx, .-n306_var_ref_bx
                        .type            n307_var_ref_bx, @function
n307_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_var_ref_α:         mov              r11, 129
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2640]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx;         jmp   n308_call_α
                        .size            n307_var_ref_bx, .-n307_var_ref_bx
                        .type            n308_call_bx, @function
n308_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_call_α:            mov              r11, 130
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1416]
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
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n309_call_α
n308_call_β:            mov              r11, 130;                            jmp   sum$2F4_step
                        .size            n308_call_bx, .-n308_call_bx
                        .type            n309_call_bx, @function
n309_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_call_α:            mov              r11, 131
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1344]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n310_var_ref_α
n309_call_β:            mov              r11, 131;                            jmp   sum$2F4_step
                        .size            n309_call_bx, .-n309_call_bx
                        .type            n310_var_ref_bx, @function
n310_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:         mov              r11, 132
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx;         jmp   n311_var_ref_α
                        .size            n310_var_ref_bx, .-n310_var_ref_bx
                        .type            n311_var_ref_bx, @function
n311_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:         mov              r11, 133
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2752]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx;         jmp   n312_call_α
                        .size            n311_var_ref_bx, .-n311_var_ref_bx
                        .type            n312_call_bx, @function
n312_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_call_α:            mov              r11, 134
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rdi, [rbp + 1248]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n313_var_ref_α
n312_call_β:            mov              r11, 134;                            jmp   sum$2F4_step
                        .size            n312_call_bx, .-n312_call_bx
                        .type            n313_var_ref_bx, @function
n313_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:         mov              r11, 135
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n314_lit_string_α
                        .size            n313_var_ref_bx, .-n313_var_ref_bx
                        .type            n314_lit_string_bx, @function
n314_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_lit_string_α:      mov              r11, 136
                        mov              qword ptr [rbp + 1216], 2            # result
                        mov              dword ptr [rbp + 1220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_399_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n315_var_ref_α
.Llit_string_α_399_0:   .quad            .Llit_string_α_399_0_s
.Llit_string_α_399_0_s: .string          "."
                        .size            n314_lit_string_bx, .-n314_lit_string_bx
                        .type            n315_var_ref_bx, @function
n315_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2704]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n316_var_ref_α
                        .size            n315_var_ref_bx, .-n315_var_ref_bx
                        .type            n316_var_ref_bx, @function
n316_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2672]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n317_call_α
                        .size            n316_var_ref_bx, .-n316_var_ref_bx
                        .type            n317_call_bx, @function
n317_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_call_α:            mov              r11, 139
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1112]
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
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n318_call_α
n317_call_β:            mov              r11, 139;                            jmp   sum$2F4_step
                        .size            n317_call_bx, .-n317_call_bx
                        .type            n318_call_bx, @function
n318_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_call_α:            mov              r11, 140
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n319_cut_α
n318_call_β:            mov              r11, 140;                            jmp   sum$2F4_step
                        .size            n318_call_bx, .-n318_call_bx
                        .type            n319_cut_bx, @function
n319_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_cut_α:             mov              r11, 141
                        mov              qword ptr [rbp + 2808], 0
                        mov              qword ptr [rbp + 2816], 0
                        lea              rdi, [rbp + 2800]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n320_var_ref_α
                        .size            n319_cut_bx, .-n319_cut_bx
                        .type            n320_var_ref_bx, @function
n320_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n321_var_α
                        .size            n320_var_ref_bx, .-n320_var_ref_bx
                        .type            n321_var_bx, @function
n321_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_var_α:             mov              r11, 143
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 984], rax;          jmp   n322_var_α
                        .size            n321_var_bx, .-n321_var_bx
                        .type            n322_var_bx, @function
n322_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_var_α:             mov              r11, 144
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n323_call_α
                        .size            n322_var_bx, .-n322_var_bx
                        .type            n323_call_bx, @function
n323_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_call_α:            mov              r11, 145
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n324_var_α
n323_call_β:            mov              r11, 145;                            jmp   sum$2F4_step
                        .size            n323_call_bx, .-n323_call_bx
                        .type            n324_var_bx, @function
n324_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_var_α:             mov              r11, 146
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n325_call_α
                        .size            n324_var_bx, .-n324_var_bx
                        .type            n325_call_bx, @function
n325_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_call_α:            mov              r11, 147
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n326_call_α
n325_call_β:            mov              r11, 147;                            jmp   sum$2F4_step
                        .size            n325_call_bx, .-n325_call_bx
                        .type            n326_call_bx, @function
n326_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_call_α:            mov              r11, 148
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              al, 104;                             je    sum$2F4_ω
                                                                              jmp   n327_var_ref_α
n326_call_β:            mov              r11, 148;                            jmp   sum$2F4_ω
                        .size            n326_call_bx, .-n326_call_bx
                        .type            n327_var_ref_bx, @function
n327_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2704]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n328_var_α
                        .size            n327_var_ref_bx, .-n327_var_ref_bx
                        .type            n328_var_bx, @function
n328_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_var_α:             mov              r11, 150
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 664], rax;          jmp   n329_lit_integer_α
                        .size            n328_var_bx, .-n328_var_bx
                        .type            n329_lit_integer_bx, @function
n329_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_integer_α:     mov              r11, 151
                        mov              qword ptr [rbp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_423_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n330_lit_string_α
.Llit_integer_α_423_0:  .quad            10
                        .size            n329_lit_integer_bx, .-n329_lit_integer_bx
                        .type            n330_lit_string_bx, @function
n330_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_string_α:      mov              r11, 152
                        mov              qword ptr [rbp + 752], 2             # result
                        mov              dword ptr [rbp + 756], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_424_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n331_call_α
.Llit_string_α_424_0:   .quad            .Llit_string_α_424_0_s
.Llit_string_α_424_0_s: .string          "mod"
                        .size            n330_lit_string_bx, .-n330_lit_string_bx
                        .type            n331_call_bx, @function
n331_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_call_α:            mov              r11, 153
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n332_call_α
n331_call_β:            mov              r11, 153;                            jmp   sum$2F4_step
                        .size            n331_call_bx, .-n331_call_bx
                        .type            n332_call_bx, @function
n332_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_call_α:            mov              r11, 154
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n333_call_α
n332_call_β:            mov              r11, 154;                            jmp   sum$2F4_step
                        .size            n332_call_bx, .-n332_call_bx
                        .type            n333_call_bx, @function
n333_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_call_α:            mov              r11, 155
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    sum$2F4_ω
                                                                              jmp   n334_var_ref_α
n333_call_β:            mov              r11, 155;                            jmp   sum$2F4_ω
                        .size            n333_call_bx, .-n333_call_bx
                        .type            n334_var_ref_bx, @function
n334_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_var_ref_α:         mov              r11, 156
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n335_var_α
                        .size            n334_var_ref_bx, .-n334_var_ref_bx
                        .type            n335_var_bx, @function
n335_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_var_α:             mov              r11, 157
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 408], rax;          jmp   n336_lit_integer_α
                        .size            n335_var_bx, .-n335_var_bx
                        .type            n336_lit_integer_bx, @function
n336_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_integer_α:     mov              r11, 158
                        mov              qword ptr [rbp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_432_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n337_lit_string_α
.Llit_integer_α_432_0:  .quad            10
                        .size            n336_lit_integer_bx, .-n336_lit_integer_bx
                        .type            n337_lit_string_bx, @function
n337_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_string_α:      mov              r11, 159
                        mov              qword ptr [rbp + 496], 2             # result
                        mov              dword ptr [rbp + 500], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_433_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n338_call_α
.Llit_string_α_433_0:   .quad            .Llit_string_α_433_0_s
.Llit_string_α_433_0_s: .string          "//"
                        .size            n337_lit_string_bx, .-n337_lit_string_bx
                        .type            n338_call_bx, @function
n338_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_call_α:            mov              r11, 160
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
                                                                              jmp   n339_call_α
n338_call_β:            mov              r11, 160;                            jmp   sum$2F4_step
                        .size            n338_call_bx, .-n338_call_bx
                        .type            n339_call_bx, @function
n339_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_call_α:            mov              r11, 161
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
                                                                              jmp   n340_call_α
n339_call_β:            mov              r11, 161;                            jmp   sum$2F4_step
                        .size            n339_call_bx, .-n339_call_bx
                        .type            n340_call_bx, @function
n340_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_call_α:            mov              r11, 162
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
                                                                              jmp   n341_var_ref_α
n340_call_β:            mov              r11, 162;                            jmp   sum$2F4_ω
                        .size            n340_call_bx, .-n340_call_bx
                        .type            n341_var_ref_bx, @function
n341_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:         mov              r11, 163
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n342_var_ref_α
                        .size            n341_var_ref_bx, .-n341_var_ref_bx
                        .type            n342_var_ref_bx, @function
n342_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:         mov              r11, 164
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2640]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n343_var_ref_α
                        .size            n342_var_ref_bx, .-n342_var_ref_bx
                        .type            n343_var_ref_bx, @function
n343_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_var_ref_α:         mov              r11, 165
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n344_var_ref_α
                        .size            n343_var_ref_bx, .-n343_var_ref_bx
                        .type            n344_var_ref_bx, @function
n344_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:         mov              r11, 166
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2672]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n345_call_proc_staged_α
                        .size            n344_var_ref_bx, .-n344_var_ref_bx
                        .type            n345_call_proc_staged_bx, @function
n345_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_call_proc_staged_α:
                        mov              r11, 167
                        mov              qword ptr [rbp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_446_200
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_446_201
.Lcall_proc_staged_α_446_200:
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
.Lcall_proc_staged_α_446_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_446_202
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_446_203
.Lcall_proc_staged_α_446_202:
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
.Lcall_proc_staged_α_446_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_446_204
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_446_205
.Lcall_proc_staged_α_446_204:
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
.Lcall_proc_staged_α_446_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_446_206
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_446_207
.Lcall_proc_staged_α_446_206:
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
.Lcall_proc_staged_α_446_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_446_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_446_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 4
                        mov              rsi, rbp
                        lea              rdx, [rbp + 2864]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_446_99
                        mov              r10, qword ptr [rbp + 2824]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_446_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_446_99
                        mov              rcx, qword ptr [rbp + 2840]
                        mov              rdx, qword ptr [rbp + 2848]
                        lea              rsp, [rbp + 2864]
                        mov              rbp, qword ptr [rbp + 2856];         jmp   rax
.Lcall_proc_staged_α_446_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_446_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_446_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_446_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_446_3:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_446_21
                        add              rsp, 32
.Lcall_proc_staged_α_446_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_446_2
.Lcall_proc_staged_α_446_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_446_2
.Lcall_proc_staged_α_446_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_446_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   sum$2F4_ω
.Lcall_proc_staged_α_446_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_446_29
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
.Lcall_proc_staged_α_446_29:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    sum$2F4_ω
                                                                              jmp   sum$2F4_ret0
n345_call_proc_staged_β:
                        mov              r11, 167
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_446_22
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_446_22
                        mov              rcx, qword ptr [rbp + 168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_446_22:
                                                                              jmp   sum$2F4_ω
.Lcall_proc_staged_α_446_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    sum$2F4_ω
                                                                              jmp   sum$2F4_ret0
.Lcall_proc_staged_α_446_0:
                        .quad            .Lcall_proc_staged_α_446_0_s
.Lcall_proc_staged_α_446_0_s:
                        .string          "sum/4"
                        .size            n345_call_proc_staged_bx, .-n345_call_proc_staged_bx
                        .type            n346_var_ref_bx, @function
n346_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:         mov              r11, 168
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx;         jmp   n347_lit_string_α
                        .size            n346_var_ref_bx, .-n346_var_ref_bx
                        .type            n347_lit_string_bx, @function
n347_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_string_α:      mov              r11, 169
                        mov              qword ptr [rbp + 2112], 2            # result
                        mov              dword ptr [rbp + 2116], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_449_0]
                        mov              qword ptr [rbp + 2120], rax;         jmp   n348_call_α
.Llit_string_α_449_0:   .quad            .Llit_string_α_449_0_s
.Llit_string_α_449_0_s: .string          "[]"
                        .size            n347_lit_string_bx, .-n347_lit_string_bx
                        .type            n348_call_bx, @function
n348_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_call_α:            mov              r11, 170
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2056], rax
                        lea              rdi, [rbp + 2048]
                        mov              rsi, qword ptr [rip + .Lcall_α_450_2]
                                                                              jmp   .Lcall_α_450_3
.Lcall_α_450_2:         .quad            .Lcall_α_450_2_s
.Lcall_α_450_2_s:       .string          "[]"
.Lcall_α_450_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n349_var_ref_α
n348_call_β:            mov              r11, 170;                            jmp   sum$2F4_step
                        .size            n348_call_bx, .-n348_call_bx
                        .type            n349_var_ref_bx, @function
n349_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:         mov              r11, 171
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx;         jmp   n350_var_ref_α
                        .size            n349_var_ref_bx, .-n349_var_ref_bx
                        .type            n350_var_ref_bx, @function
n350_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:         mov              r11, 172
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2768]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx;         jmp   n351_call_α
                        .size            n350_var_ref_bx, .-n350_var_ref_bx
                        .type            n351_call_bx, @function
n351_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_call_α:            mov              r11, 173
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1960], rax
                        lea              rdi, [rbp + 1952]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n352_var_ref_α
n351_call_β:            mov              r11, 173;                            jmp   sum$2F4_step
                        .size            n351_call_bx, .-n351_call_bx
                        .type            n352_var_ref_bx, @function
n352_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:         mov              r11, 174
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx;         jmp   n353_lit_integer_α
                        .size            n352_var_ref_bx, .-n352_var_ref_bx
                        .type            n353_lit_integer_bx, @function
n353_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_integer_α:     mov              r11, 175
                        mov              qword ptr [rbp + 1920], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_458_0]
                        mov              qword ptr [rbp + 1928], rax;         jmp   n354_call_α
.Llit_integer_α_458_0:  .quad            0
                        .size            n353_lit_integer_bx, .-n353_lit_integer_bx
                        .type            n354_call_bx, @function
n354_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_call_α:            mov              r11, 176
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1864], rax
                        lea              rdi, [rbp + 1856]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n355_var_ref_α
n354_call_β:            mov              r11, 176;                            jmp   sum$2F4_step
                        .size            n354_call_bx, .-n354_call_bx
                        .type            n355_var_ref_bx, @function
n355_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:         mov              r11, 177
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx;         jmp   n356_var_ref_α
                        .size            n355_var_ref_bx, .-n355_var_ref_bx
                        .type            n356_var_ref_bx, @function
n356_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:         mov              r11, 178
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2768]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx;         jmp   n357_call_α
                        .size            n356_var_ref_bx, .-n356_var_ref_bx
                        .type            n357_call_bx, @function
n357_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_call_α:            mov              r11, 179
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rdi, [rbp + 1760]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n358_cut_α
n357_call_β:            mov              r11, 179;                            jmp   sum$2F4_step
                        .size            n357_call_bx, .-n357_call_bx
                        .type            n358_cut_bx, @function
n358_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_cut_α:             mov              r11, 180
                        mov              qword ptr [rbp + 2808], 0
                        mov              qword ptr [rbp + 2816], 0
                        lea              rdi, [rbp + 2800]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   sum$2F4_γ
                        .size            n358_cut_bx, .-n358_cut_bx
                        .type            n359_var_ref_bx, @function
n359_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:         mov              r11, 181
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx;         jmp   n360_lit_string_α
                        .size            n359_var_ref_bx, .-n359_var_ref_bx
                        .type            n360_lit_string_bx, @function
n360_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_string_α:      mov              r11, 182
                        mov              qword ptr [rbp + 2608], 2            # result
                        mov              dword ptr [rbp + 2612], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_469_0]
                        mov              qword ptr [rbp + 2616], rax;         jmp   n361_call_α
.Llit_string_α_469_0:   .quad            .Llit_string_α_469_0_s
.Llit_string_α_469_0_s: .string          "[]"
                        .size            n360_lit_string_bx, .-n360_lit_string_bx
                        .type            n361_call_bx, @function
n361_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_call_α:            mov              r11, 183
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2552], rax
                        lea              rdi, [rbp + 2544]
                        mov              rsi, qword ptr [rip + .Lcall_α_470_2]
                                                                              jmp   .Lcall_α_470_3
.Lcall_α_470_2:         .quad            .Lcall_α_470_2_s
.Lcall_α_470_2_s:       .string          "[]"
.Lcall_α_470_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n362_var_ref_α
n361_call_β:            mov              r11, 183;                            jmp   sum$2F4_step
                        .size            n361_call_bx, .-n361_call_bx
                        .type            n362_var_ref_bx, @function
n362_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_var_ref_α:         mov              r11, 184
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx;         jmp   n363_lit_string_α
                        .size            n362_var_ref_bx, .-n362_var_ref_bx
                        .type            n363_lit_string_bx, @function
n363_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:      mov              r11, 185
                        mov              qword ptr [rbp + 2512], 2            # result
                        mov              dword ptr [rbp + 2516], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_473_0]
                        mov              qword ptr [rbp + 2520], rax;         jmp   n364_call_α
.Llit_string_α_473_0:   .quad            .Llit_string_α_473_0_s
.Llit_string_α_473_0_s: .string          "[]"
                        .size            n363_lit_string_bx, .-n363_lit_string_bx
                        .type            n364_call_bx, @function
n364_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_call_α:            mov              r11, 186
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2456], rax
                        lea              rdi, [rbp + 2448]
                        mov              rsi, qword ptr [rip + .Lcall_α_474_2]
                                                                              jmp   .Lcall_α_474_3
.Lcall_α_474_2:         .quad            .Lcall_α_474_2_s
.Lcall_α_474_2_s:       .string          "[]"
.Lcall_α_474_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n365_var_ref_α
n364_call_β:            mov              r11, 186;                            jmp   sum$2F4_step
                        .size            n364_call_bx, .-n364_call_bx
                        .type            n365_var_ref_bx, @function
n365_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_var_ref_α:         mov              r11, 187
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx;         jmp   n366_var_ref_α
                        .size            n365_var_ref_bx, .-n365_var_ref_bx
                        .type            n366_var_ref_bx, @function
n366_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2752]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx;         jmp   n367_call_α
                        .size            n366_var_ref_bx, .-n366_var_ref_bx
                        .type            n367_call_bx, @function
n367_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_call_α:            mov              r11, 189
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                        lea              rdi, [rbp + 2352]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n368_var_ref_α
n367_call_β:            mov              r11, 189;                            jmp   sum$2F4_step
                        .size            n367_call_bx, .-n367_call_bx
                        .type            n368_var_ref_bx, @function
n368_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_var_ref_α:         mov              r11, 190
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx;         jmp   n369_lit_string_α
                        .size            n368_var_ref_bx, .-n368_var_ref_bx
                        .type            n369_lit_string_bx, @function
n369_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:      mov              r11, 191
                        mov              qword ptr [rbp + 2320], 2            # result
                        mov              dword ptr [rbp + 2324], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_482_0]
                        mov              qword ptr [rbp + 2328], rax;         jmp   n370_var_ref_α
.Llit_string_α_482_0:   .quad            .Llit_string_α_482_0_s
.Llit_string_α_482_0_s: .string          "."
                        .size            n369_lit_string_bx, .-n369_lit_string_bx
                        .type            n370_var_ref_bx, @function
n370_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_var_ref_α:         mov              r11, 192
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2752]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n371_lit_string_α
                        .size            n370_var_ref_bx, .-n370_var_ref_bx
                        .type            n371_lit_string_bx, @function
n371_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:      mov              r11, 193
                        mov              qword ptr [rbp + 2208], 2            # result
                        mov              dword ptr [rbp + 2212], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_485_0]
                        mov              qword ptr [rbp + 2216], rax;         jmp   n372_call_α
.Llit_string_α_485_0:   .quad            .Llit_string_α_485_0_s
.Llit_string_α_485_0_s: .string          "[]"
                        .size            n371_lit_string_bx, .-n371_lit_string_bx
                        .type            n372_call_bx, @function
n372_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:            mov              r11, 194
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2296], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2264], rax
                        lea              rdi, [rbp + 2256]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n373_call_α
n372_call_β:            mov              r11, 194;                            jmp   sum$2F4_step
                        .size            n372_call_bx, .-n372_call_bx
                        .type            n373_call_bx, @function
n373_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_call_α:            mov              r11, 195
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2248]
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
                                                                              jmp   sum$2F4_γ
n373_call_β:            mov              r11, 195;                            jmp   sum$2F4_step
                        .size            n373_call_bx, .-n373_call_bx
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_ret0:
                        lea              rax, [rip + n345_call_proc_staged_β]
                        mov              qword ptr [rbp + 2816], rax
                                                                              jmp   sum$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_step:
                        mov              rdi, qword ptr [rbp + 2800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2816], 0
                        mov              qword ptr [rbp + 2768], 0
                        mov              qword ptr [rbp + 2776], 0
                        mov              qword ptr [rbp + 2752], 0
                        mov              qword ptr [rbp + 2760], 0
                        mov              qword ptr [rbp + 2720], 0
                        mov              qword ptr [rbp + 2728], 0
                        mov              qword ptr [rbp + 2624], 0
                        mov              qword ptr [rbp + 2632], 0
                        mov              qword ptr [rbp + 2736], 0
                        mov              qword ptr [rbp + 2744], 0
                        mov              qword ptr [rbp + 2640], 0
                        mov              qword ptr [rbp + 2648], 0
                        mov              qword ptr [rbp + 2704], 0
                        mov              qword ptr [rbp + 2712], 0
                        mov              qword ptr [rbp + 2672], 0
                        mov              qword ptr [rbp + 2680], 0
                        mov              qword ptr [rbp + 2688], 0
                        mov              qword ptr [rbp + 2696], 0
                        mov              qword ptr [rbp + 2656], 0
                        mov              qword ptr [rbp + 2664], 0
                        mov              rax, qword ptr [rbp + 2808]
                        test             rax, rax
                                                                              je    sum$2F4_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_alt1:
                        lea              rax, [rip + sum$2F4_alt2]
                        mov              qword ptr [rbp + 2808], rax
                                                                              jmp   n346_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_alt2:
                        xor              eax, eax
                        mov              qword ptr [rbp + 2808], rax
                        mov              r13, qword ptr [rbp + 2824]
                                                                              jmp   n359_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_β:
                        test             r15, r15
                                                                              jne   sum$2F4_ω
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2816], 0
                        test             rax, rax
                                                                              jne   sum$2F4_βres
                                                                              jmp   sum$2F4_step
sum$2F4_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 2840]
                        mov              rax, qword ptr [rbp + 2824]
                        cmp              r13, rax;                            je    sum$2F4_altdet
                        lea              rdx, [rip + sum$2F4_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 2856];         jmp   rcx
sum$2F4_altdet:         xor              eax, eax
                        lea              rsp, [rbp + 2864]
                        mov              rbp, qword ptr [rbp + 2856];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_ω:
                        mov              rcx, qword ptr [rbp + 2848]
                        mov              r13, qword ptr [rbp + 2824]
                        lea              rsp, [rbp + 2864]
                        mov              rbp, qword ptr [rbp + 2856];         jmp   rcx
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
                        .type            n488_var_ref_bx, @function
n488_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n488_var_ref_α:         mov              r11, 196
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n489_lit_integer_α
                        .size            n488_var_ref_bx, .-n488_var_ref_bx
                        .type            n489_lit_integer_bx, @function
n489_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_integer_α:     mov              r11, 197
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_505_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n490_call_α
.Llit_integer_α_505_0:  .quad            0
                        .size            n489_lit_integer_bx, .-n489_lit_integer_bx
                        .type            n490_call_bx, @function
n490_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n490_call_α:            mov              r11, 198
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
n490_call_β:            mov              r11, 198;                            jmp   even$2F1_step
                        .size            n490_call_bx, .-n490_call_bx
                        .type            n491_var_ref_bx, @function
n491_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n491_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n492_lit_integer_α
                        .size            n491_var_ref_bx, .-n491_var_ref_bx
                        .type            n492_lit_integer_bx, @function
n492_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_integer_α:     mov              r11, 200
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_509_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n493_call_α
.Llit_integer_α_509_0:  .quad            2
                        .size            n492_lit_integer_bx, .-n492_lit_integer_bx
                        .type            n493_call_bx, @function
n493_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n493_call_α:            mov              r11, 201
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
n493_call_β:            mov              r11, 201;                            jmp   even$2F1_step
                        .size            n493_call_bx, .-n493_call_bx
                        .type            n494_var_ref_bx, @function
n494_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n494_var_ref_α:         mov              r11, 202
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n495_lit_integer_α
                        .size            n494_var_ref_bx, .-n494_var_ref_bx
                        .type            n495_lit_integer_bx, @function
n495_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_integer_α:     mov              r11, 203
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_513_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n496_call_α
.Llit_integer_α_513_0:  .quad            4
                        .size            n495_lit_integer_bx, .-n495_lit_integer_bx
                        .type            n496_call_bx, @function
n496_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n496_call_α:            mov              r11, 204
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
n496_call_β:            mov              r11, 204;                            jmp   even$2F1_step
                        .size            n496_call_bx, .-n496_call_bx
                        .type            n497_var_ref_bx, @function
n497_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n497_var_ref_α:         mov              r11, 205
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n498_lit_integer_α
                        .size            n497_var_ref_bx, .-n497_var_ref_bx
                        .type            n498_lit_integer_bx, @function
n498_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_integer_α:     mov              r11, 206
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_517_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n499_call_α
.Llit_integer_α_517_0:  .quad            6
                        .size            n498_lit_integer_bx, .-n498_lit_integer_bx
                        .type            n499_call_bx, @function
n499_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n499_call_α:            mov              r11, 207
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
n499_call_β:            mov              r11, 207;                            jmp   even$2F1_step
                        .size            n499_call_bx, .-n499_call_bx
                        .type            n500_var_ref_bx, @function
n500_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n500_var_ref_α:         mov              r11, 208
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n501_lit_integer_α
                        .size            n500_var_ref_bx, .-n500_var_ref_bx
                        .type            n501_lit_integer_bx, @function
n501_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n501_lit_integer_α:     mov              r11, 209
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_521_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n502_call_α
.Llit_integer_α_521_0:  .quad            8
                        .size            n501_lit_integer_bx, .-n501_lit_integer_bx
                        .type            n502_call_bx, @function
n502_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n502_call_α:            mov              r11, 210
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
n502_call_β:            mov              r11, 210;                            jmp   even$2F1_step
                        .size            n502_call_bx, .-n502_call_bx
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
                                                                              jmp   n491_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
even$2F1_alt2:
                        lea              rax, [rip + even$2F1_alt3]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n494_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
even$2F1_alt3:
                        lea              rax, [rip + even$2F1_alt4]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n497_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
even$2F1_alt4:
                        xor              eax, eax
                        mov              qword ptr [rbp + 536], rax
                        mov              r13, qword ptr [rbp + 552]
                                                                              jmp   n500_var_ref_α
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
                        .type            n523_var_ref_bx, @function
n523_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n523_var_ref_α:         mov              r11, 211
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx;         jmp   n524_var_ref_α
                        .size            n523_var_ref_bx, .-n523_var_ref_bx
                        .type            n524_var_ref_bx, @function
n524_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n524_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6768]
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx;         jmp   n525_call_α
                        .size            n524_var_ref_bx, .-n524_var_ref_bx
                        .type            n525_call_bx, @function
n525_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n525_call_α:            mov              r11, 213
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
                                                                              jmp   n526_var_ref_α
n525_call_β:            mov              r11, 213;                            jmp   top$2F16_step
                        .size            n525_call_bx, .-n525_call_bx
                        .type            n526_var_ref_bx, @function
n526_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n526_var_ref_α:         mov              r11, 214
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx;         jmp   n527_var_ref_α
                        .size            n526_var_ref_bx, .-n526_var_ref_bx
                        .type            n527_var_ref_bx, @function
n527_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n527_var_ref_α:         mov              r11, 215
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6784]
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx;         jmp   n528_call_α
                        .size            n527_var_ref_bx, .-n527_var_ref_bx
                        .type            n528_call_bx, @function
n528_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n528_call_α:            mov              r11, 216
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
                                                                              jmp   n529_var_ref_α
n528_call_β:            mov              r11, 216;                            jmp   top$2F16_step
                        .size            n528_call_bx, .-n528_call_bx
                        .type            n529_var_ref_bx, @function
n529_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n529_var_ref_α:         mov              r11, 217
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx;         jmp   n530_var_ref_α
                        .size            n529_var_ref_bx, .-n529_var_ref_bx
                        .type            n530_var_ref_bx, @function
n530_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n530_var_ref_α:         mov              r11, 218
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6800]
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx;         jmp   n531_call_α
                        .size            n530_var_ref_bx, .-n530_var_ref_bx
                        .type            n531_call_bx, @function
n531_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n531_call_α:            mov              r11, 219
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
                                                                              jmp   n532_var_ref_α
n531_call_β:            mov              r11, 219;                            jmp   top$2F16_step
                        .size            n531_call_bx, .-n531_call_bx
                        .type            n532_var_ref_bx, @function
n532_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n532_var_ref_α:         mov              r11, 220
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 6240], rax
                        mov              qword ptr [rbp + 6248], rdx;         jmp   n533_var_ref_α
                        .size            n532_var_ref_bx, .-n532_var_ref_bx
                        .type            n533_var_ref_bx, @function
n533_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n533_var_ref_α:         mov              r11, 221
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6816]
                        mov              qword ptr [rbp + 6256], rax
                        mov              qword ptr [rbp + 6264], rdx;         jmp   n534_call_α
                        .size            n533_var_ref_bx, .-n533_var_ref_bx
                        .type            n534_call_bx, @function
n534_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n534_call_α:            mov              r11, 222
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
                                                                              jmp   n535_var_ref_α
n534_call_β:            mov              r11, 222;                            jmp   top$2F16_step
                        .size            n534_call_bx, .-n534_call_bx
                        .type            n535_var_ref_bx, @function
n535_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n535_var_ref_α:         mov              r11, 223
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 6144], rax
                        mov              qword ptr [rbp + 6152], rdx;         jmp   n536_var_ref_α
                        .size            n535_var_ref_bx, .-n535_var_ref_bx
                        .type            n536_var_ref_bx, @function
n536_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n536_var_ref_α:         mov              r11, 224
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6848]
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx;         jmp   n537_call_α
                        .size            n536_var_ref_bx, .-n536_var_ref_bx
                        .type            n537_call_bx, @function
n537_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n537_call_α:            mov              r11, 225
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
                                                                              jmp   n538_var_ref_α
n537_call_β:            mov              r11, 225;                            jmp   top$2F16_step
                        .size            n537_call_bx, .-n537_call_bx
                        .type            n538_var_ref_bx, @function
n538_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n538_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 96]
                        mov              qword ptr [rbp + 6048], rax
                        mov              qword ptr [rbp + 6056], rdx;         jmp   n539_var_ref_α
                        .size            n538_var_ref_bx, .-n538_var_ref_bx
                        .type            n539_var_ref_bx, @function
n539_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n539_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6640]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx;         jmp   n540_call_α
                        .size            n539_var_ref_bx, .-n539_var_ref_bx
                        .type            n540_call_bx, @function
n540_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n540_call_α:            mov              r11, 228
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
                                                                              jmp   n541_var_ref_α
n540_call_β:            mov              r11, 228;                            jmp   top$2F16_step
                        .size            n540_call_bx, .-n540_call_bx
                        .type            n541_var_ref_bx, @function
n541_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n541_var_ref_α:         mov              r11, 229
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 112]
                        mov              qword ptr [rbp + 5952], rax
                        mov              qword ptr [rbp + 5960], rdx;         jmp   n542_var_ref_α
                        .size            n541_var_ref_bx, .-n541_var_ref_bx
                        .type            n542_var_ref_bx, @function
n542_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n542_var_ref_α:         mov              r11, 230
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6656]
                        mov              qword ptr [rbp + 5968], rax
                        mov              qword ptr [rbp + 5976], rdx;         jmp   n543_call_α
                        .size            n542_var_ref_bx, .-n542_var_ref_bx
                        .type            n543_call_bx, @function
n543_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n543_call_α:            mov              r11, 231
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
                                                                              jmp   n544_var_ref_α
n543_call_β:            mov              r11, 231;                            jmp   top$2F16_step
                        .size            n543_call_bx, .-n543_call_bx
                        .type            n544_var_ref_bx, @function
n544_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n544_var_ref_α:         mov              r11, 232
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 128]
                        mov              qword ptr [rbp + 5856], rax
                        mov              qword ptr [rbp + 5864], rdx;         jmp   n545_var_ref_α
                        .size            n544_var_ref_bx, .-n544_var_ref_bx
                        .type            n545_var_ref_bx, @function
n545_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n545_var_ref_α:         mov              r11, 233
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6672]
                        mov              qword ptr [rbp + 5872], rax
                        mov              qword ptr [rbp + 5880], rdx;         jmp   n546_call_α
                        .size            n545_var_ref_bx, .-n545_var_ref_bx
                        .type            n546_call_bx, @function
n546_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n546_call_α:            mov              r11, 234
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
                                                                              jmp   n547_var_ref_α
n546_call_β:            mov              r11, 234;                            jmp   top$2F16_step
                        .size            n546_call_bx, .-n546_call_bx
                        .type            n547_var_ref_bx, @function
n547_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n547_var_ref_α:         mov              r11, 235
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 144]
                        mov              qword ptr [rbp + 5760], rax
                        mov              qword ptr [rbp + 5768], rdx;         jmp   n548_var_ref_α
                        .size            n547_var_ref_bx, .-n547_var_ref_bx
                        .type            n548_var_ref_bx, @function
n548_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n548_var_ref_α:         mov              r11, 236
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6688]
                        mov              qword ptr [rbp + 5776], rax
                        mov              qword ptr [rbp + 5784], rdx;         jmp   n549_call_α
                        .size            n548_var_ref_bx, .-n548_var_ref_bx
                        .type            n549_call_bx, @function
n549_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n549_call_α:            mov              r11, 237
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
                                                                              jmp   n550_var_ref_α
n549_call_β:            mov              r11, 237;                            jmp   top$2F16_step
                        .size            n549_call_bx, .-n549_call_bx
                        .type            n550_var_ref_bx, @function
n550_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n550_var_ref_α:         mov              r11, 238
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 160]
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx;         jmp   n551_var_ref_α
                        .size            n550_var_ref_bx, .-n550_var_ref_bx
                        .type            n551_var_ref_bx, @function
n551_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n551_var_ref_α:         mov              r11, 239
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6704]
                        mov              qword ptr [rbp + 5680], rax
                        mov              qword ptr [rbp + 5688], rdx;         jmp   n552_call_α
                        .size            n551_var_ref_bx, .-n551_var_ref_bx
                        .type            n552_call_bx, @function
n552_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n552_call_α:            mov              r11, 240
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
                                                                              jmp   n553_var_ref_α
n552_call_β:            mov              r11, 240;                            jmp   top$2F16_step
                        .size            n552_call_bx, .-n552_call_bx
                        .type            n553_var_ref_bx, @function
n553_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n553_var_ref_α:         mov              r11, 241
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 176]
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx;         jmp   n554_var_ref_α
                        .size            n553_var_ref_bx, .-n553_var_ref_bx
                        .type            n554_var_ref_bx, @function
n554_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n554_var_ref_α:         mov              r11, 242
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6720]
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx;         jmp   n555_call_α
                        .size            n554_var_ref_bx, .-n554_var_ref_bx
                        .type            n555_call_bx, @function
n555_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n555_call_α:            mov              r11, 243
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
                                                                              jmp   n556_var_ref_α
n555_call_β:            mov              r11, 243;                            jmp   top$2F16_step
                        .size            n555_call_bx, .-n555_call_bx
                        .type            n556_var_ref_bx, @function
n556_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n556_var_ref_α:         mov              r11, 244
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 192]
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx;         jmp   n557_var_ref_α
                        .size            n556_var_ref_bx, .-n556_var_ref_bx
                        .type            n557_var_ref_bx, @function
n557_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n557_var_ref_α:         mov              r11, 245
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6736]
                        mov              qword ptr [rbp + 5488], rax
                        mov              qword ptr [rbp + 5496], rdx;         jmp   n558_call_α
                        .size            n557_var_ref_bx, .-n557_var_ref_bx
                        .type            n558_call_bx, @function
n558_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n558_call_α:            mov              r11, 246
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
                                                                              jmp   n559_var_ref_α
n558_call_β:            mov              r11, 246;                            jmp   top$2F16_step
                        .size            n558_call_bx, .-n558_call_bx
                        .type            n559_var_ref_bx, @function
n559_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n559_var_ref_α:         mov              r11, 247
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 208]
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx;         jmp   n560_var_ref_α
                        .size            n559_var_ref_bx, .-n559_var_ref_bx
                        .type            n560_var_ref_bx, @function
n560_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n560_var_ref_α:         mov              r11, 248
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6624]
                        mov              qword ptr [rbp + 5392], rax
                        mov              qword ptr [rbp + 5400], rdx;         jmp   n561_call_α
                        .size            n560_var_ref_bx, .-n560_var_ref_bx
                        .type            n561_call_bx, @function
n561_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n561_call_α:            mov              r11, 249
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
                                                                              jmp   n562_var_ref_α
n561_call_β:            mov              r11, 249;                            jmp   top$2F16_step
                        .size            n561_call_bx, .-n561_call_bx
                        .type            n562_var_ref_bx, @function
n562_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n562_var_ref_α:         mov              r11, 250
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 224]
                        mov              qword ptr [rbp + 5280], rax
                        mov              qword ptr [rbp + 5288], rdx;         jmp   n563_var_ref_α
                        .size            n562_var_ref_bx, .-n562_var_ref_bx
                        .type            n563_var_ref_bx, @function
n563_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n563_var_ref_α:         mov              r11, 251
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6608]
                        mov              qword ptr [rbp + 5296], rax
                        mov              qword ptr [rbp + 5304], rdx;         jmp   n564_call_α
                        .size            n563_var_ref_bx, .-n563_var_ref_bx
                        .type            n564_call_bx, @function
n564_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n564_call_α:            mov              r11, 252
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
                                                                              jmp   n565_var_ref_α
n564_call_β:            mov              r11, 252;                            jmp   top$2F16_step
                        .size            n564_call_bx, .-n564_call_bx
                        .type            n565_var_ref_bx, @function
n565_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n565_var_ref_α:         mov              r11, 253
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 240]
                        mov              qword ptr [rbp + 5184], rax
                        mov              qword ptr [rbp + 5192], rdx;         jmp   n566_var_ref_α
                        .size            n565_var_ref_bx, .-n565_var_ref_bx
                        .type            n566_var_ref_bx, @function
n566_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n566_var_ref_α:         mov              r11, 254
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6592]
                        mov              qword ptr [rbp + 5200], rax
                        mov              qword ptr [rbp + 5208], rdx;         jmp   n567_call_α
                        .size            n566_var_ref_bx, .-n566_var_ref_bx
                        .type            n567_call_bx, @function
n567_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n567_call_α:            mov              r11, 255
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
                                                                              jmp   n568_var_ref_α
n567_call_β:            mov              r11, 255;                            jmp   top$2F16_step
                        .size            n567_call_bx, .-n567_call_bx
                        .type            n568_var_ref_bx, @function
n568_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n568_var_ref_α:         mov              r11, 256
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 256]
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx;         jmp   n569_var_ref_α
                        .size            n568_var_ref_bx, .-n568_var_ref_bx
                        .type            n569_var_ref_bx, @function
n569_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n569_var_ref_α:         mov              r11, 257
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6576]
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx;         jmp   n570_call_α
                        .size            n569_var_ref_bx, .-n569_var_ref_bx
                        .type            n570_call_bx, @function
n570_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n570_call_α:            mov              r11, 258
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
                                                                              jmp   n571_var_ref_α
n570_call_β:            mov              r11, 258;                            jmp   top$2F16_step
                        .size            n570_call_bx, .-n570_call_bx
                        .type            n571_var_ref_bx, @function
n571_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n571_var_ref_α:         mov              r11, 259
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6768]
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx;         jmp   n572_call_proc_staged_α
                        .size            n571_var_ref_bx, .-n571_var_ref_bx
                        .type            n572_call_proc_staged_bx, @function
n572_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n572_call_proc_staged_α:
                        mov              r11, 260
                        mov              qword ptr [rbp + 4976], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_779_200
                        mov              rax, qword ptr [rbp + 5008]
                        mov              rdx, qword ptr [rbp + 5016]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_779_201
.Lcall_proc_staged_α_779_200:
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
.Lcall_proc_staged_α_779_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_779_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_779_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_779_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_779_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_779_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_779_3:
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_779_21
                        add              rsp, 32
.Lcall_proc_staged_α_779_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_779_2
.Lcall_proc_staged_α_779_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4976], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_779_2
.Lcall_proc_staged_α_779_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_779_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   top$2F16_step
.Lcall_proc_staged_α_779_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_779_29
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
.Lcall_proc_staged_α_779_29:
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n573_var_ref_α
n572_call_proc_staged_β:
                        mov              r11, 260
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_779_22
                        mov              rax, qword ptr [rbp + 4976]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_779_22
                        mov              rcx, qword ptr [rbp + 4984]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_779_22:
                                                                              jmp   top$2F16_step
.Lcall_proc_staged_α_779_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n573_var_ref_α
.Lcall_proc_staged_α_779_0:
                        .quad            .Lcall_proc_staged_α_779_0_s
.Lcall_proc_staged_α_779_0_s:
                        .string          "odd/1"
                        .size            n572_call_proc_staged_bx, .-n572_call_proc_staged_bx
                        .type            n573_var_ref_bx, @function
n573_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n573_var_ref_α:         mov              r11, 261
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6784]
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx;         jmp   n574_call_proc_staged_α
                        .size            n573_var_ref_bx, .-n573_var_ref_bx
                        .type            n574_call_proc_staged_bx, @function
n574_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n574_call_proc_staged_α:
                        mov              r11, 262
                        mov              qword ptr [rbp + 4896], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_783_200
                        mov              rax, qword ptr [rbp + 4928]
                        mov              rdx, qword ptr [rbp + 4936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_783_201
.Lcall_proc_staged_α_783_200:
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
.Lcall_proc_staged_α_783_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_783_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_783_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_783_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_783_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_783_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_783_3:
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_783_21
                        add              rsp, 32
.Lcall_proc_staged_α_783_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_783_2
.Lcall_proc_staged_α_783_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4896], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_783_2
.Lcall_proc_staged_α_783_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_783_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n572_call_proc_staged_β
.Lcall_proc_staged_α_783_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_783_29
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
.Lcall_proc_staged_α_783_29:
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                        cmp              al, 104;                             je    n572_call_proc_staged_β
                                                                              jmp   n575_var_ref_α
n574_call_proc_staged_β:
                        mov              r11, 262
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_783_22
                        mov              rax, qword ptr [rbp + 4896]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_783_22
                        mov              rcx, qword ptr [rbp + 4904]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_783_22:
                                                                              jmp   n572_call_proc_staged_β
.Lcall_proc_staged_α_783_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                        cmp              al, 104;                             je    n572_call_proc_staged_β
                                                                              jmp   n575_var_ref_α
.Lcall_proc_staged_α_783_0:
                        .quad            .Lcall_proc_staged_α_783_0_s
.Lcall_proc_staged_α_783_0_s:
                        .string          "even/1"
                        .size            n574_call_proc_staged_bx, .-n574_call_proc_staged_bx
                        .type            n575_var_ref_bx, @function
n575_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n575_var_ref_α:         mov              r11, 263
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6800]
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx;         jmp   n576_call_proc_staged_α
                        .size            n575_var_ref_bx, .-n575_var_ref_bx
                        .type            n576_call_proc_staged_bx, @function
n576_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n576_call_proc_staged_α:
                        mov              r11, 264
                        mov              qword ptr [rbp + 4816], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_787_200
                        mov              rax, qword ptr [rbp + 4848]
                        mov              rdx, qword ptr [rbp + 4856]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_787_201
.Lcall_proc_staged_α_787_200:
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
.Lcall_proc_staged_α_787_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_787_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_787_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_787_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_787_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_787_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_787_3:
                        mov              qword ptr [rbp + 4816], rax
                        mov              qword ptr [rbp + 4824], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_787_21
                        add              rsp, 32
.Lcall_proc_staged_α_787_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_787_2
.Lcall_proc_staged_α_787_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4816], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_787_2
.Lcall_proc_staged_α_787_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_787_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n574_call_proc_staged_β
.Lcall_proc_staged_α_787_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_787_29
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
.Lcall_proc_staged_α_787_29:
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                        cmp              al, 104;                             je    n574_call_proc_staged_β
                                                                              jmp   n577_var_ref_α
n576_call_proc_staged_β:
                        mov              r11, 264
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_787_22
                        mov              rax, qword ptr [rbp + 4816]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_787_22
                        mov              rcx, qword ptr [rbp + 4824]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_787_22:
                                                                              jmp   n574_call_proc_staged_β
.Lcall_proc_staged_α_787_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                        cmp              al, 104;                             je    n574_call_proc_staged_β
                                                                              jmp   n577_var_ref_α
.Lcall_proc_staged_α_787_0:
                        .quad            .Lcall_proc_staged_α_787_0_s
.Lcall_proc_staged_α_787_0_s:
                        .string          "even/1"
                        .size            n576_call_proc_staged_bx, .-n576_call_proc_staged_bx
                        .type            n577_var_ref_bx, @function
n577_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n577_var_ref_α:         mov              r11, 265
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6848]
                        mov              qword ptr [rbp + 4768], rax
                        mov              qword ptr [rbp + 4776], rdx;         jmp   n578_call_proc_staged_α
                        .size            n577_var_ref_bx, .-n577_var_ref_bx
                        .type            n578_call_proc_staged_bx, @function
n578_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n578_call_proc_staged_α:
                        mov              r11, 266
                        mov              qword ptr [rbp + 4736], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_791_200
                        mov              rax, qword ptr [rbp + 4768]
                        mov              rdx, qword ptr [rbp + 4776]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_791_201
.Lcall_proc_staged_α_791_200:
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
.Lcall_proc_staged_α_791_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_791_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_791_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_791_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_791_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_791_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_791_3:
                        mov              qword ptr [rbp + 4736], rax
                        mov              qword ptr [rbp + 4744], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_791_21
                        add              rsp, 32
.Lcall_proc_staged_α_791_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_791_2
.Lcall_proc_staged_α_791_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4736], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_791_2
.Lcall_proc_staged_α_791_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_791_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n576_call_proc_staged_β
.Lcall_proc_staged_α_791_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_791_29
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
.Lcall_proc_staged_α_791_29:
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        cmp              al, 104;                             je    n576_call_proc_staged_β
                                                                              jmp   n579_lit_string_α
n578_call_proc_staged_β:
                        mov              r11, 266
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_791_22
                        mov              rax, qword ptr [rbp + 4736]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_791_22
                        mov              rcx, qword ptr [rbp + 4744]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_791_22:
                                                                              jmp   n576_call_proc_staged_β
.Lcall_proc_staged_α_791_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        cmp              al, 104;                             je    n576_call_proc_staged_β
                                                                              jmp   n579_lit_string_α
.Lcall_proc_staged_α_791_0:
                        .quad            .Lcall_proc_staged_α_791_0_s
.Lcall_proc_staged_α_791_0_s:
                        .string          "even/1"
                        .size            n578_call_proc_staged_bx, .-n578_call_proc_staged_bx
                        .type            n579_lit_string_bx, @function
n579_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n579_lit_string_α:      mov              r11, 267
                        mov              qword ptr [rbp + 4208], 2            # result
                        mov              dword ptr [rbp + 4212], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_792_0]
                        mov              qword ptr [rbp + 4216], rax;         jmp   n580_var_ref_α
.Llit_string_α_792_0:   .quad            .Llit_string_α_792_0_s
.Llit_string_α_792_0_s: .string          "."
                        .size            n579_lit_string_bx, .-n579_lit_string_bx
                        .type            n580_var_ref_bx, @function
n580_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n580_var_ref_α:         mov              r11, 268
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6800]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx;         jmp   n581_lit_string_α
                        .size            n580_var_ref_bx, .-n580_var_ref_bx
                        .type            n581_lit_string_bx, @function
n581_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n581_lit_string_α:      mov              r11, 269
                        mov              qword ptr [rbp + 4096], 2            # result
                        mov              dword ptr [rbp + 4100], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_795_0]
                        mov              qword ptr [rbp + 4104], rax;         jmp   n582_var_ref_α
.Llit_string_α_795_0:   .quad            .Llit_string_α_795_0_s
.Llit_string_α_795_0_s: .string          "."
                        .size            n581_lit_string_bx, .-n581_lit_string_bx
                        .type            n582_var_ref_bx, @function
n582_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n582_var_ref_α:         mov              r11, 270
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6784]
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx;         jmp   n583_lit_string_α
                        .size            n582_var_ref_bx, .-n582_var_ref_bx
                        .type            n583_lit_string_bx, @function
n583_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n583_lit_string_α:      mov              r11, 271
                        mov              qword ptr [rbp + 3984], 2            # result
                        mov              dword ptr [rbp + 3988], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_798_0]
                        mov              qword ptr [rbp + 3992], rax;         jmp   n584_var_ref_α
.Llit_string_α_798_0:   .quad            .Llit_string_α_798_0_s
.Llit_string_α_798_0_s: .string          "."
                        .size            n583_lit_string_bx, .-n583_lit_string_bx
                        .type            n584_var_ref_bx, @function
n584_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n584_var_ref_α:         mov              r11, 272
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6768]
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx;         jmp   n585_lit_string_α
                        .size            n584_var_ref_bx, .-n584_var_ref_bx
                        .type            n585_lit_string_bx, @function
n585_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n585_lit_string_α:      mov              r11, 273
                        mov              qword ptr [rbp + 3872], 2            # result
                        mov              dword ptr [rbp + 3876], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_801_0]
                        mov              qword ptr [rbp + 3880], rax;         jmp   n586_call_α
.Llit_string_α_801_0:   .quad            .Llit_string_α_801_0_s
.Llit_string_α_801_0_s: .string          "[]"
                        .size            n585_lit_string_bx, .-n585_lit_string_bx
                        .type            n586_call_bx, @function
n586_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n586_call_α:            mov              r11, 274
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
                                                                              jmp   n587_call_α
n586_call_β:            mov              r11, 274;                            jmp   top$2F16_ω
                        .size            n586_call_bx, .-n586_call_bx
                        .type            n587_call_bx, @function
n587_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n587_call_α:            mov              r11, 275
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
                                                                              jmp   n588_call_α
n587_call_β:            mov              r11, 275;                            jmp   top$2F16_ω
                        .size            n587_call_bx, .-n587_call_bx
                        .type            n588_call_bx, @function
n588_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n588_call_α:            mov              r11, 276
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
                                                                              jmp   n589_var_ref_α
n588_call_β:            mov              r11, 276;                            jmp   top$2F16_step
                        .size            n588_call_bx, .-n588_call_bx
                        .type            n589_var_ref_bx, @function
n589_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n589_var_ref_α:         mov              r11, 277
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6848]
                        mov              qword ptr [rbp + 4224], rax
                        mov              qword ptr [rbp + 4232], rdx;         jmp   n590_lit_string_α
                        .size            n589_var_ref_bx, .-n589_var_ref_bx
                        .type            n590_lit_string_bx, @function
n590_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n590_lit_string_α:      mov              r11, 278
                        mov              qword ptr [rbp + 4688], 2            # result
                        mov              dword ptr [rbp + 4692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_807_0]
                        mov              qword ptr [rbp + 4696], rax;         jmp   n591_var_ref_α
.Llit_string_α_807_0:   .quad            .Llit_string_α_807_0_s
.Llit_string_α_807_0_s: .string          "."
                        .size            n590_lit_string_bx, .-n590_lit_string_bx
                        .type            n591_var_ref_bx, @function
n591_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n591_var_ref_α:         mov              r11, 279
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6688]
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx;         jmp   n592_lit_string_α
                        .size            n591_var_ref_bx, .-n591_var_ref_bx
                        .type            n592_lit_string_bx, @function
n592_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n592_lit_string_α:      mov              r11, 280
                        mov              qword ptr [rbp + 4576], 2            # result
                        mov              dword ptr [rbp + 4580], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_810_0]
                        mov              qword ptr [rbp + 4584], rax;         jmp   n593_var_ref_α
.Llit_string_α_810_0:   .quad            .Llit_string_α_810_0_s
.Llit_string_α_810_0_s: .string          "."
                        .size            n592_lit_string_bx, .-n592_lit_string_bx
                        .type            n593_var_ref_bx, @function
n593_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n593_var_ref_α:         mov              r11, 281
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6672]
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx;         jmp   n594_lit_string_α
                        .size            n593_var_ref_bx, .-n593_var_ref_bx
                        .type            n594_lit_string_bx, @function
n594_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n594_lit_string_α:      mov              r11, 282
                        mov              qword ptr [rbp + 4464], 2            # result
                        mov              dword ptr [rbp + 4468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_813_0]
                        mov              qword ptr [rbp + 4472], rax;         jmp   n595_var_ref_α
.Llit_string_α_813_0:   .quad            .Llit_string_α_813_0_s
.Llit_string_α_813_0_s: .string          "."
                        .size            n594_lit_string_bx, .-n594_lit_string_bx
                        .type            n595_var_ref_bx, @function
n595_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n595_var_ref_α:         mov              r11, 283
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6656]
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx;         jmp   n596_lit_string_α
                        .size            n595_var_ref_bx, .-n595_var_ref_bx
                        .type            n596_lit_string_bx, @function
n596_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n596_lit_string_α:      mov              r11, 284
                        mov              qword ptr [rbp + 4352], 2            # result
                        mov              dword ptr [rbp + 4356], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_816_0]
                        mov              qword ptr [rbp + 4360], rax;         jmp   n597_var_ref_α
.Llit_string_α_816_0:   .quad            .Llit_string_α_816_0_s
.Llit_string_α_816_0_s: .string          "."
                        .size            n596_lit_string_bx, .-n596_lit_string_bx
                        .type            n597_var_ref_bx, @function
n597_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n597_var_ref_α:         mov              r11, 285
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6640]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx;         jmp   n598_var_ref_α
                        .size            n597_var_ref_bx, .-n597_var_ref_bx
                        .type            n598_var_ref_bx, @function
n598_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n598_var_ref_α:         mov              r11, 286
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6832]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx;         jmp   n599_call_α
                        .size            n598_var_ref_bx, .-n598_var_ref_bx
                        .type            n599_call_bx, @function
n599_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n599_call_α:            mov              r11, 287
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
                                                                              jmp   n600_call_α
n599_call_β:            mov              r11, 287;                            jmp   top$2F16_ω
                        .size            n599_call_bx, .-n599_call_bx
                        .type            n600_call_bx, @function
n600_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n600_call_α:            mov              r11, 288
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
                                                                              jmp   n601_call_α
n600_call_β:            mov              r11, 288;                            jmp   top$2F16_ω
                        .size            n600_call_bx, .-n600_call_bx
                        .type            n601_call_bx, @function
n601_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n601_call_α:            mov              r11, 289
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
                                                                              jmp   n602_call_α
n601_call_β:            mov              r11, 289;                            jmp   top$2F16_ω
                        .size            n601_call_bx, .-n601_call_bx
                        .type            n602_call_bx, @function
n602_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n602_call_α:            mov              r11, 290
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
                                                                              jmp   n603_call_proc_staged_α
n602_call_β:            mov              r11, 290;                            jmp   top$2F16_step
                        .size            n602_call_bx, .-n602_call_bx
                        .type            n603_call_proc_staged_bx, @function
n603_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n603_call_proc_staged_α:
                        mov              r11, 291
                        mov              qword ptr [rbp + 3840], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_826_200
                        mov              rax, qword ptr [rbp + 4128]
                        mov              rdx, qword ptr [rbp + 4136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_826_201
.Lcall_proc_staged_α_826_200:
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
.Lcall_proc_staged_α_826_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_826_202
                        mov              rax, qword ptr [rbp + 4224]
                        mov              rdx, qword ptr [rbp + 4232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_826_203
.Lcall_proc_staged_α_826_202:
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
.Lcall_proc_staged_α_826_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_826_204
                        mov              rax, qword ptr [rbp + 4608]
                        mov              rdx, qword ptr [rbp + 4616]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_826_205
.Lcall_proc_staged_α_826_204:
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
.Lcall_proc_staged_α_826_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_826_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_826_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_826_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_826_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_826_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_826_3:
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_826_21
                        add              rsp, 32
.Lcall_proc_staged_α_826_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_826_2
.Lcall_proc_staged_α_826_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3840], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_826_2
.Lcall_proc_staged_α_826_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_826_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n578_call_proc_staged_β
.Lcall_proc_staged_α_826_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_826_29
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
.Lcall_proc_staged_α_826_29:
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              al, 104;                             je    n578_call_proc_staged_β
                                                                              jmp   n604_var_ref_α
n603_call_proc_staged_β:
                        mov              r11, 291
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_826_22
                        mov              rax, qword ptr [rbp + 3840]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_826_22
                        mov              rcx, qword ptr [rbp + 3848]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_826_22:
                                                                              jmp   n578_call_proc_staged_β
.Lcall_proc_staged_α_826_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              al, 104;                             je    n578_call_proc_staged_β
                                                                              jmp   n604_var_ref_α
.Lcall_proc_staged_α_826_0:
                        .quad            .Lcall_proc_staged_α_826_0_s
.Lcall_proc_staged_α_826_0_s:
                        .string          "mult/3"
                        .size            n603_call_proc_staged_bx, .-n603_call_proc_staged_bx
                        .type            n604_var_ref_bx, @function
n604_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n604_var_ref_α:         mov              r11, 292
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6640]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx;         jmp   n605_call_proc_staged_α
                        .size            n604_var_ref_bx, .-n604_var_ref_bx
                        .type            n605_call_proc_staged_bx, @function
n605_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n605_call_proc_staged_α:
                        mov              r11, 293
                        mov              qword ptr [rbp + 3728], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_830_200
                        mov              rax, qword ptr [rbp + 3760]
                        mov              rdx, qword ptr [rbp + 3768]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_830_201
.Lcall_proc_staged_α_830_200:
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
.Lcall_proc_staged_α_830_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_830_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_830_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_830_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_830_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_830_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_830_3:
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_830_21
                        add              rsp, 32
.Lcall_proc_staged_α_830_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_830_2
.Lcall_proc_staged_α_830_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3728], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_830_2
.Lcall_proc_staged_α_830_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_830_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n603_call_proc_staged_β
.Lcall_proc_staged_α_830_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_830_29
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
.Lcall_proc_staged_α_830_29:
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              al, 104;                             je    n603_call_proc_staged_β
                                                                              jmp   n606_var_ref_α
n605_call_proc_staged_β:
                        mov              r11, 293
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_830_22
                        mov              rax, qword ptr [rbp + 3728]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_830_22
                        mov              rcx, qword ptr [rbp + 3736]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_830_22:
                                                                              jmp   n603_call_proc_staged_β
.Lcall_proc_staged_α_830_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              al, 104;                             je    n603_call_proc_staged_β
                                                                              jmp   n606_var_ref_α
.Lcall_proc_staged_α_830_0:
                        .quad            .Lcall_proc_staged_α_830_0_s
.Lcall_proc_staged_α_830_0_s:
                        .string          "lefteven/1"
                        .size            n605_call_proc_staged_bx, .-n605_call_proc_staged_bx
                        .type            n606_var_ref_bx, @function
n606_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n606_var_ref_α:         mov              r11, 294
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6656]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx;         jmp   n607_call_proc_staged_α
                        .size            n606_var_ref_bx, .-n606_var_ref_bx
                        .type            n607_call_proc_staged_bx, @function
n607_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n607_call_proc_staged_α:
                        mov              r11, 295
                        mov              qword ptr [rbp + 3648], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_834_200
                        mov              rax, qword ptr [rbp + 3680]
                        mov              rdx, qword ptr [rbp + 3688]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_834_201
.Lcall_proc_staged_α_834_200:
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
.Lcall_proc_staged_α_834_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_834_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_834_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_834_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_834_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_834_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_834_3:
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_834_21
                        add              rsp, 32
.Lcall_proc_staged_α_834_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_834_2
.Lcall_proc_staged_α_834_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3648], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_834_2
.Lcall_proc_staged_α_834_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_834_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n605_call_proc_staged_β
.Lcall_proc_staged_α_834_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_834_29
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
.Lcall_proc_staged_α_834_29:
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              al, 104;                             je    n605_call_proc_staged_β
                                                                              jmp   n608_var_ref_α
n607_call_proc_staged_β:
                        mov              r11, 295
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_834_22
                        mov              rax, qword ptr [rbp + 3648]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_834_22
                        mov              rcx, qword ptr [rbp + 3656]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_834_22:
                                                                              jmp   n605_call_proc_staged_β
.Lcall_proc_staged_α_834_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              al, 104;                             je    n605_call_proc_staged_β
                                                                              jmp   n608_var_ref_α
.Lcall_proc_staged_α_834_0:
                        .quad            .Lcall_proc_staged_α_834_0_s
.Lcall_proc_staged_α_834_0_s:
                        .string          "odd/1"
                        .size            n607_call_proc_staged_bx, .-n607_call_proc_staged_bx
                        .type            n608_var_ref_bx, @function
n608_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n608_var_ref_α:         mov              r11, 296
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6672]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx;         jmp   n609_call_proc_staged_α
                        .size            n608_var_ref_bx, .-n608_var_ref_bx
                        .type            n609_call_proc_staged_bx, @function
n609_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n609_call_proc_staged_α:
                        mov              r11, 297
                        mov              qword ptr [rbp + 3568], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_838_200
                        mov              rax, qword ptr [rbp + 3600]
                        mov              rdx, qword ptr [rbp + 3608]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_838_201
.Lcall_proc_staged_α_838_200:
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
.Lcall_proc_staged_α_838_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_838_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_838_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_838_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_838_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_838_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_838_3:
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_838_21
                        add              rsp, 32
.Lcall_proc_staged_α_838_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_838_2
.Lcall_proc_staged_α_838_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3568], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_838_2
.Lcall_proc_staged_α_838_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_838_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n607_call_proc_staged_β
.Lcall_proc_staged_α_838_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_838_29
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
.Lcall_proc_staged_α_838_29:
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              al, 104;                             je    n607_call_proc_staged_β
                                                                              jmp   n610_var_ref_α
n609_call_proc_staged_β:
                        mov              r11, 297
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_838_22
                        mov              rax, qword ptr [rbp + 3568]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_838_22
                        mov              rcx, qword ptr [rbp + 3576]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_838_22:
                                                                              jmp   n607_call_proc_staged_β
.Lcall_proc_staged_α_838_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              al, 104;                             je    n607_call_proc_staged_β
                                                                              jmp   n610_var_ref_α
.Lcall_proc_staged_α_838_0:
                        .quad            .Lcall_proc_staged_α_838_0_s
.Lcall_proc_staged_α_838_0_s:
                        .string          "even/1"
                        .size            n609_call_proc_staged_bx, .-n609_call_proc_staged_bx
                        .type            n610_var_ref_bx, @function
n610_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n610_var_ref_α:         mov              r11, 298
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6688]
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx;         jmp   n611_call_proc_staged_α
                        .size            n610_var_ref_bx, .-n610_var_ref_bx
                        .type            n611_call_proc_staged_bx, @function
n611_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n611_call_proc_staged_α:
                        mov              r11, 299
                        mov              qword ptr [rbp + 3488], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_842_200
                        mov              rax, qword ptr [rbp + 3520]
                        mov              rdx, qword ptr [rbp + 3528]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_842_201
.Lcall_proc_staged_α_842_200:
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
.Lcall_proc_staged_α_842_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_842_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_842_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_842_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_842_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_842_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_842_3:
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_842_21
                        add              rsp, 32
.Lcall_proc_staged_α_842_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_842_2
.Lcall_proc_staged_α_842_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3488], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_842_2
.Lcall_proc_staged_α_842_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_842_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n609_call_proc_staged_β
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
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3456]
                        mov              rdx, qword ptr [rbp + 3464]
.Lcall_proc_staged_α_842_29:
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              al, 104;                             je    n609_call_proc_staged_β
                                                                              jmp   n612_var_ref_α
n611_call_proc_staged_β:
                        mov              r11, 299
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_842_22
                        mov              rax, qword ptr [rbp + 3488]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_842_22
                        mov              rcx, qword ptr [rbp + 3496]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_842_22:
                                                                              jmp   n609_call_proc_staged_β
.Lcall_proc_staged_α_842_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              al, 104;                             je    n609_call_proc_staged_β
                                                                              jmp   n612_var_ref_α
.Lcall_proc_staged_α_842_0:
                        .quad            .Lcall_proc_staged_α_842_0_s
.Lcall_proc_staged_α_842_0_s:
                        .string          "even/1"
                        .size            n611_call_proc_staged_bx, .-n611_call_proc_staged_bx
                        .type            n612_var_ref_bx, @function
n612_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n612_var_ref_α:         mov              r11, 300
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6832]
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx;         jmp   n613_call_proc_staged_α
                        .size            n612_var_ref_bx, .-n612_var_ref_bx
                        .type            n613_call_proc_staged_bx, @function
n613_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n613_call_proc_staged_α:
                        mov              r11, 301
                        mov              qword ptr [rbp + 3408], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_846_200
                        mov              rax, qword ptr [rbp + 3440]
                        mov              rdx, qword ptr [rbp + 3448]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_846_201
.Lcall_proc_staged_α_846_200:
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
.Lcall_proc_staged_α_846_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_846_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_846_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_846_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_846_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_846_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_846_3:
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_846_21
                        add              rsp, 32
.Lcall_proc_staged_α_846_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_846_2
.Lcall_proc_staged_α_846_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3408], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_846_2
.Lcall_proc_staged_α_846_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_846_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n611_call_proc_staged_β
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
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3376]
                        mov              rdx, qword ptr [rbp + 3384]
.Lcall_proc_staged_α_846_29:
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              al, 104;                             je    n611_call_proc_staged_β
                                                                              jmp   n614_var_ref_α
n613_call_proc_staged_β:
                        mov              r11, 301
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_846_22
                        mov              rax, qword ptr [rbp + 3408]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_846_22
                        mov              rcx, qword ptr [rbp + 3416]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_846_22:
                                                                              jmp   n611_call_proc_staged_β
.Lcall_proc_staged_α_846_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              al, 104;                             je    n611_call_proc_staged_β
                                                                              jmp   n614_var_ref_α
.Lcall_proc_staged_α_846_0:
                        .quad            .Lcall_proc_staged_α_846_0_s
.Lcall_proc_staged_α_846_0_s:
                        .string          "zero/1"
                        .size            n613_call_proc_staged_bx, .-n613_call_proc_staged_bx
                        .type            n614_var_ref_bx, @function
n614_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n614_var_ref_α:         mov              r11, 302
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6816]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx;         jmp   n615_call_proc_staged_α
                        .size            n614_var_ref_bx, .-n614_var_ref_bx
                        .type            n615_call_proc_staged_bx, @function
n615_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n615_call_proc_staged_α:
                        mov              r11, 303
                        mov              qword ptr [rbp + 3328], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_850_200
                        mov              rax, qword ptr [rbp + 3360]
                        mov              rdx, qword ptr [rbp + 3368]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_850_201
.Lcall_proc_staged_α_850_200:
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
.Lcall_proc_staged_α_850_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_850_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_850_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_850_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_850_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_850_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_850_3:
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_850_21
                        add              rsp, 32
.Lcall_proc_staged_α_850_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_850_2
.Lcall_proc_staged_α_850_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3328], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_850_2
.Lcall_proc_staged_α_850_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_850_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n613_call_proc_staged_β
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
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3296]
                        mov              rdx, qword ptr [rbp + 3304]
.Lcall_proc_staged_α_850_29:
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              al, 104;                             je    n613_call_proc_staged_β
                                                                              jmp   n616_lit_string_α
n615_call_proc_staged_β:
                        mov              r11, 303
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_850_22
                        mov              rax, qword ptr [rbp + 3328]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_850_22
                        mov              rcx, qword ptr [rbp + 3336]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_850_22:
                                                                              jmp   n613_call_proc_staged_β
.Lcall_proc_staged_α_850_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              al, 104;                             je    n613_call_proc_staged_β
                                                                              jmp   n616_lit_string_α
.Lcall_proc_staged_α_850_0:
                        .quad            .Lcall_proc_staged_α_850_0_s
.Lcall_proc_staged_α_850_0_s:
                        .string          "lefteven/1"
                        .size            n615_call_proc_staged_bx, .-n615_call_proc_staged_bx
                        .type            n616_lit_string_bx, @function
n616_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n616_lit_string_α:      mov              r11, 304
                        mov              qword ptr [rbp + 2912], 2            # result
                        mov              dword ptr [rbp + 2916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_851_0]
                        mov              qword ptr [rbp + 2920], rax;         jmp   n617_var_ref_α
.Llit_string_α_851_0:   .quad            .Llit_string_α_851_0_s
.Llit_string_α_851_0_s: .string          "."
                        .size            n616_lit_string_bx, .-n616_lit_string_bx
                        .type            n617_var_ref_bx, @function
n617_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n617_var_ref_α:         mov              r11, 305
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6800]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx;         jmp   n618_lit_string_α
                        .size            n617_var_ref_bx, .-n617_var_ref_bx
                        .type            n618_lit_string_bx, @function
n618_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n618_lit_string_α:      mov              r11, 306
                        mov              qword ptr [rbp + 2800], 2            # result
                        mov              dword ptr [rbp + 2804], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_854_0]
                        mov              qword ptr [rbp + 2808], rax;         jmp   n619_var_ref_α
.Llit_string_α_854_0:   .quad            .Llit_string_α_854_0_s
.Llit_string_α_854_0_s: .string          "."
                        .size            n618_lit_string_bx, .-n618_lit_string_bx
                        .type            n619_var_ref_bx, @function
n619_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n619_var_ref_α:         mov              r11, 307
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6784]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx;         jmp   n620_lit_string_α
                        .size            n619_var_ref_bx, .-n619_var_ref_bx
                        .type            n620_lit_string_bx, @function
n620_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n620_lit_string_α:      mov              r11, 308
                        mov              qword ptr [rbp + 2688], 2            # result
                        mov              dword ptr [rbp + 2692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_857_0]
                        mov              qword ptr [rbp + 2696], rax;         jmp   n621_var_ref_α
.Llit_string_α_857_0:   .quad            .Llit_string_α_857_0_s
.Llit_string_α_857_0_s: .string          "."
                        .size            n620_lit_string_bx, .-n620_lit_string_bx
                        .type            n621_var_ref_bx, @function
n621_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n621_var_ref_α:         mov              r11, 309
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6768]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx;         jmp   n622_lit_string_α
                        .size            n621_var_ref_bx, .-n621_var_ref_bx
                        .type            n622_lit_string_bx, @function
n622_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n622_lit_string_α:      mov              r11, 310
                        mov              qword ptr [rbp + 2576], 2            # result
                        mov              dword ptr [rbp + 2580], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_860_0]
                        mov              qword ptr [rbp + 2584], rax;         jmp   n623_call_α
.Llit_string_α_860_0:   .quad            .Llit_string_α_860_0_s
.Llit_string_α_860_0_s: .string          "[]"
                        .size            n622_lit_string_bx, .-n622_lit_string_bx
                        .type            n623_call_bx, @function
n623_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n623_call_α:            mov              r11, 311
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
                                                                              jmp   n624_call_α
n623_call_β:            mov              r11, 311;                            jmp   top$2F16_ω
                        .size            n623_call_bx, .-n623_call_bx
                        .type            n624_call_bx, @function
n624_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n624_call_α:            mov              r11, 312
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
                                                                              jmp   n625_call_α
n624_call_β:            mov              r11, 312;                            jmp   top$2F16_ω
                        .size            n624_call_bx, .-n624_call_bx
                        .type            n625_call_bx, @function
n625_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n625_call_α:            mov              r11, 313
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
                                                                              jmp   n626_var_ref_α
n625_call_β:            mov              r11, 313;                            jmp   top$2F16_step
                        .size            n625_call_bx, .-n625_call_bx
                        .type            n626_var_ref_bx, @function
n626_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n626_var_ref_α:         mov              r11, 314
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6816]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx;         jmp   n627_lit_string_α
                        .size            n626_var_ref_bx, .-n626_var_ref_bx
                        .type            n627_lit_string_bx, @function
n627_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n627_lit_string_α:      mov              r11, 315
                        mov              qword ptr [rbp + 3280], 2            # result
                        mov              dword ptr [rbp + 3284], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_866_0]
                        mov              qword ptr [rbp + 3288], rax;         jmp   n628_var_ref_α
.Llit_string_α_866_0:   .quad            .Llit_string_α_866_0_s
.Llit_string_α_866_0_s: .string          "."
                        .size            n627_lit_string_bx, .-n627_lit_string_bx
                        .type            n628_var_ref_bx, @function
n628_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n628_var_ref_α:         mov              r11, 316
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6736]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n629_lit_string_α
                        .size            n628_var_ref_bx, .-n628_var_ref_bx
                        .type            n629_lit_string_bx, @function
n629_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n629_lit_string_α:      mov              r11, 317
                        mov              qword ptr [rbp + 3168], 2            # result
                        mov              dword ptr [rbp + 3172], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_869_0]
                        mov              qword ptr [rbp + 3176], rax;         jmp   n630_var_ref_α
.Llit_string_α_869_0:   .quad            .Llit_string_α_869_0_s
.Llit_string_α_869_0_s: .string          "."
                        .size            n629_lit_string_bx, .-n629_lit_string_bx
                        .type            n630_var_ref_bx, @function
n630_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n630_var_ref_α:         mov              r11, 318
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6720]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx;         jmp   n631_lit_string_α
                        .size            n630_var_ref_bx, .-n630_var_ref_bx
                        .type            n631_lit_string_bx, @function
n631_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n631_lit_string_α:      mov              r11, 319
                        mov              qword ptr [rbp + 3056], 2            # result
                        mov              dword ptr [rbp + 3060], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_872_0]
                        mov              qword ptr [rbp + 3064], rax;         jmp   n632_var_ref_α
.Llit_string_α_872_0:   .quad            .Llit_string_α_872_0_s
.Llit_string_α_872_0_s: .string          "."
                        .size            n631_lit_string_bx, .-n631_lit_string_bx
                        .type            n632_var_ref_bx, @function
n632_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n632_var_ref_α:         mov              r11, 320
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6704]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx;         jmp   n633_var_ref_α
                        .size            n632_var_ref_bx, .-n632_var_ref_bx
                        .type            n633_var_ref_bx, @function
n633_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n633_var_ref_α:         mov              r11, 321
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6752]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx;         jmp   n634_call_α
                        .size            n633_var_ref_bx, .-n633_var_ref_bx
                        .type            n634_call_bx, @function
n634_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n634_call_α:            mov              r11, 322
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
                                                                              jmp   n635_call_α
n634_call_β:            mov              r11, 322;                            jmp   top$2F16_ω
                        .size            n634_call_bx, .-n634_call_bx
                        .type            n635_call_bx, @function
n635_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n635_call_α:            mov              r11, 323
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
                                                                              jmp   n636_call_α
n635_call_β:            mov              r11, 323;                            jmp   top$2F16_ω
                        .size            n635_call_bx, .-n635_call_bx
                        .type            n636_call_bx, @function
n636_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n636_call_α:            mov              r11, 324
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
                                                                              jmp   n637_call_proc_staged_α
n636_call_β:            mov              r11, 324;                            jmp   top$2F16_step
                        .size            n636_call_bx, .-n636_call_bx
                        .type            n637_call_proc_staged_bx, @function
n637_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n637_call_proc_staged_α:
                        mov              r11, 325
                        mov              qword ptr [rbp + 2544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_881_200
                        mov              rax, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_881_201
.Lcall_proc_staged_α_881_200:
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
.Lcall_proc_staged_α_881_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_881_202
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_881_203
.Lcall_proc_staged_α_881_202:
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
.Lcall_proc_staged_α_881_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_881_204
                        mov              rax, qword ptr [rbp + 3200]
                        mov              rdx, qword ptr [rbp + 3208]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_881_205
.Lcall_proc_staged_α_881_204:
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
.Lcall_proc_staged_α_881_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_881_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_881_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_881_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_881_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_881_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_881_3:
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_881_21
                        add              rsp, 32
.Lcall_proc_staged_α_881_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_881_2
.Lcall_proc_staged_α_881_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2544], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_881_2
.Lcall_proc_staged_α_881_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_881_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n615_call_proc_staged_β
.Lcall_proc_staged_α_881_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_881_29
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
.Lcall_proc_staged_α_881_29:
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              al, 104;                             je    n615_call_proc_staged_β
                                                                              jmp   n638_var_ref_α
n637_call_proc_staged_β:
                        mov              r11, 325
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_881_22
                        mov              rax, qword ptr [rbp + 2544]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_881_22
                        mov              rcx, qword ptr [rbp + 2552]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_881_22:
                                                                              jmp   n615_call_proc_staged_β
.Lcall_proc_staged_α_881_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              al, 104;                             je    n615_call_proc_staged_β
                                                                              jmp   n638_var_ref_α
.Lcall_proc_staged_α_881_0:
                        .quad            .Lcall_proc_staged_α_881_0_s
.Lcall_proc_staged_α_881_0_s:
                        .string          "mult/3"
                        .size            n637_call_proc_staged_bx, .-n637_call_proc_staged_bx
                        .type            n638_var_ref_bx, @function
n638_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n638_var_ref_α:         mov              r11, 326
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6704]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx;         jmp   n639_call_proc_staged_α
                        .size            n638_var_ref_bx, .-n638_var_ref_bx
                        .type            n639_call_proc_staged_bx, @function
n639_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n639_call_proc_staged_α:
                        mov              r11, 327
                        mov              qword ptr [rbp + 2432], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_885_200
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_885_201
.Lcall_proc_staged_α_885_200:
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
.Lcall_proc_staged_α_885_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_885_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_885_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_885_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_885_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_885_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_885_3:
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_885_21
                        add              rsp, 32
.Lcall_proc_staged_α_885_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_885_2
.Lcall_proc_staged_α_885_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2432], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_885_2
.Lcall_proc_staged_α_885_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_885_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n637_call_proc_staged_β
.Lcall_proc_staged_α_885_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_885_29
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
.Lcall_proc_staged_α_885_29:
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              al, 104;                             je    n637_call_proc_staged_β
                                                                              jmp   n640_var_ref_α
n639_call_proc_staged_β:
                        mov              r11, 327
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_885_22
                        mov              rax, qword ptr [rbp + 2432]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_885_22
                        mov              rcx, qword ptr [rbp + 2440]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_885_22:
                                                                              jmp   n637_call_proc_staged_β
.Lcall_proc_staged_α_885_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              al, 104;                             je    n637_call_proc_staged_β
                                                                              jmp   n640_var_ref_α
.Lcall_proc_staged_α_885_0:
                        .quad            .Lcall_proc_staged_α_885_0_s
.Lcall_proc_staged_α_885_0_s:
                        .string          "lefteven/1"
                        .size            n639_call_proc_staged_bx, .-n639_call_proc_staged_bx
                        .type            n640_var_ref_bx, @function
n640_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n640_var_ref_α:         mov              r11, 328
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6720]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx;         jmp   n641_call_proc_staged_α
                        .size            n640_var_ref_bx, .-n640_var_ref_bx
                        .type            n641_call_proc_staged_bx, @function
n641_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n641_call_proc_staged_α:
                        mov              r11, 329
                        mov              qword ptr [rbp + 2352], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_889_200
                        mov              rax, qword ptr [rbp + 2384]
                        mov              rdx, qword ptr [rbp + 2392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_889_201
.Lcall_proc_staged_α_889_200:
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
.Lcall_proc_staged_α_889_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_889_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_889_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_889_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_889_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_889_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_889_3:
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_889_21
                        add              rsp, 32
.Lcall_proc_staged_α_889_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_889_2
.Lcall_proc_staged_α_889_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2352], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_889_2
.Lcall_proc_staged_α_889_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_889_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n639_call_proc_staged_β
.Lcall_proc_staged_α_889_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_889_29
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
.Lcall_proc_staged_α_889_29:
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              al, 104;                             je    n639_call_proc_staged_β
                                                                              jmp   n642_var_ref_α
n641_call_proc_staged_β:
                        mov              r11, 329
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_889_22
                        mov              rax, qword ptr [rbp + 2352]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_889_22
                        mov              rcx, qword ptr [rbp + 2360]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_889_22:
                                                                              jmp   n639_call_proc_staged_β
.Lcall_proc_staged_α_889_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              al, 104;                             je    n639_call_proc_staged_β
                                                                              jmp   n642_var_ref_α
.Lcall_proc_staged_α_889_0:
                        .quad            .Lcall_proc_staged_α_889_0_s
.Lcall_proc_staged_α_889_0_s:
                        .string          "odd/1"
                        .size            n641_call_proc_staged_bx, .-n641_call_proc_staged_bx
                        .type            n642_var_ref_bx, @function
n642_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n642_var_ref_α:         mov              r11, 330
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6736]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n643_call_proc_staged_α
                        .size            n642_var_ref_bx, .-n642_var_ref_bx
                        .type            n643_call_proc_staged_bx, @function
n643_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n643_call_proc_staged_α:
                        mov              r11, 331
                        mov              qword ptr [rbp + 2272], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_893_200
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_893_201
.Lcall_proc_staged_α_893_200:
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
.Lcall_proc_staged_α_893_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_893_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_893_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_893_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_893_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_893_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_893_3:
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_893_21
                        add              rsp, 32
.Lcall_proc_staged_α_893_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_893_2
.Lcall_proc_staged_α_893_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2272], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_893_2
.Lcall_proc_staged_α_893_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_893_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n641_call_proc_staged_β
.Lcall_proc_staged_α_893_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_893_29
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
.Lcall_proc_staged_α_893_29:
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              al, 104;                             je    n641_call_proc_staged_β
                                                                              jmp   n644_var_ref_α
n643_call_proc_staged_β:
                        mov              r11, 331
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_893_22
                        mov              rax, qword ptr [rbp + 2272]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_893_22
                        mov              rcx, qword ptr [rbp + 2280]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_893_22:
                                                                              jmp   n641_call_proc_staged_β
.Lcall_proc_staged_α_893_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              al, 104;                             je    n641_call_proc_staged_β
                                                                              jmp   n644_var_ref_α
.Lcall_proc_staged_α_893_0:
                        .quad            .Lcall_proc_staged_α_893_0_s
.Lcall_proc_staged_α_893_0_s:
                        .string          "even/1"
                        .size            n643_call_proc_staged_bx, .-n643_call_proc_staged_bx
                        .type            n644_var_ref_bx, @function
n644_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n644_var_ref_α:         mov              r11, 332
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6752]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n645_call_proc_staged_α
                        .size            n644_var_ref_bx, .-n644_var_ref_bx
                        .type            n645_call_proc_staged_bx, @function
n645_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n645_call_proc_staged_α:
                        mov              r11, 333
                        mov              qword ptr [rbp + 2192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_897_200
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_897_201
.Lcall_proc_staged_α_897_200:
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
.Lcall_proc_staged_α_897_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_897_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_897_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_897_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_897_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_897_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_897_3:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_897_21
                        add              rsp, 32
.Lcall_proc_staged_α_897_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_897_2
.Lcall_proc_staged_α_897_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2192], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_897_2
.Lcall_proc_staged_α_897_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_897_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n643_call_proc_staged_β
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
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2160]
                        mov              rdx, qword ptr [rbp + 2168]
.Lcall_proc_staged_α_897_29:
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              al, 104;                             je    n643_call_proc_staged_β
                                                                              jmp   n646_lit_string_α
n645_call_proc_staged_β:
                        mov              r11, 333
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_897_22
                        mov              rax, qword ptr [rbp + 2192]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_897_22
                        mov              rcx, qword ptr [rbp + 2200]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_897_22:
                                                                              jmp   n643_call_proc_staged_β
.Lcall_proc_staged_α_897_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              al, 104;                             je    n643_call_proc_staged_β
                                                                              jmp   n646_lit_string_α
.Lcall_proc_staged_α_897_0:
                        .quad            .Lcall_proc_staged_α_897_0_s
.Lcall_proc_staged_α_897_0_s:
                        .string          "zero/1"
                        .size            n645_call_proc_staged_bx, .-n645_call_proc_staged_bx
                        .type            n646_lit_string_bx, @function
n646_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n646_lit_string_α:      mov              r11, 334
                        mov              qword ptr [rbp + 1216], 2            # result
                        mov              dword ptr [rbp + 1220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_898_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n647_var_ref_α
.Llit_string_α_898_0:   .quad            .Llit_string_α_898_0_s
.Llit_string_α_898_0_s: .string          "."
                        .size            n646_lit_string_bx, .-n646_lit_string_bx
                        .type            n647_var_ref_bx, @function
n647_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n647_var_ref_α:         mov              r11, 335
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6688]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n648_lit_string_α
                        .size            n647_var_ref_bx, .-n647_var_ref_bx
                        .type            n648_lit_string_bx, @function
n648_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n648_lit_string_α:      mov              r11, 336
                        mov              qword ptr [rbp + 1104], 2            # result
                        mov              dword ptr [rbp + 1108], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_901_0]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n649_var_ref_α
.Llit_string_α_901_0:   .quad            .Llit_string_α_901_0_s
.Llit_string_α_901_0_s: .string          "."
                        .size            n648_lit_string_bx, .-n648_lit_string_bx
                        .type            n649_var_ref_bx, @function
n649_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n649_var_ref_α:         mov              r11, 337
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6672]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n650_lit_string_α
                        .size            n649_var_ref_bx, .-n649_var_ref_bx
                        .type            n650_lit_string_bx, @function
n650_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n650_lit_string_α:      mov              r11, 338
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_904_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n651_var_ref_α
.Llit_string_α_904_0:   .quad            .Llit_string_α_904_0_s
.Llit_string_α_904_0_s: .string          "."
                        .size            n650_lit_string_bx, .-n650_lit_string_bx
                        .type            n651_var_ref_bx, @function
n651_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n651_var_ref_α:         mov              r11, 339
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6656]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n652_lit_string_α
                        .size            n651_var_ref_bx, .-n651_var_ref_bx
                        .type            n652_lit_string_bx, @function
n652_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n652_lit_string_α:      mov              r11, 340
                        mov              qword ptr [rbp + 880], 2             # result
                        mov              dword ptr [rbp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_907_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n653_var_ref_α
.Llit_string_α_907_0:   .quad            .Llit_string_α_907_0_s
.Llit_string_α_907_0_s: .string          "."
                        .size            n652_lit_string_bx, .-n652_lit_string_bx
                        .type            n653_var_ref_bx, @function
n653_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n653_var_ref_α:         mov              r11, 341
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6640]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n654_lit_string_α
                        .size            n653_var_ref_bx, .-n653_var_ref_bx
                        .type            n654_lit_string_bx, @function
n654_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n654_lit_string_α:      mov              r11, 342
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_910_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n655_call_α
.Llit_string_α_910_0:   .quad            .Llit_string_α_910_0_s
.Llit_string_α_910_0_s: .string          "[]"
                        .size            n654_lit_string_bx, .-n654_lit_string_bx
                        .type            n655_call_bx, @function
n655_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n655_call_α:            mov              r11, 343
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
                                                                              jmp   n656_call_α
n655_call_β:            mov              r11, 343;                            jmp   top$2F16_ω
                        .size            n655_call_bx, .-n655_call_bx
                        .type            n656_call_bx, @function
n656_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n656_call_α:            mov              r11, 344
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
                                                                              jmp   n657_call_α
n656_call_β:            mov              r11, 344;                            jmp   top$2F16_ω
                        .size            n656_call_bx, .-n656_call_bx
                        .type            n657_call_bx, @function
n657_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n657_call_α:            mov              r11, 345
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
                                                                              jmp   n658_call_α
n657_call_β:            mov              r11, 345;                            jmp   top$2F16_ω
                        .size            n657_call_bx, .-n657_call_bx
                        .type            n658_call_bx, @function
n658_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n658_call_α:            mov              r11, 346
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
                                                                              jmp   n659_lit_string_α
n658_call_β:            mov              r11, 346;                            jmp   top$2F16_step
                        .size            n658_call_bx, .-n658_call_bx
                        .type            n659_lit_string_bx, @function
n659_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n659_lit_string_α:      mov              r11, 347
                        mov              qword ptr [rbp + 1680], 2            # result
                        mov              dword ptr [rbp + 1684], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_915_0]
                        mov              qword ptr [rbp + 1688], rax;         jmp   n660_lit_integer_α
.Llit_string_α_915_0:   .quad            .Llit_string_α_915_0_s
.Llit_string_α_915_0_s: .string          "."
                        .size            n659_lit_string_bx, .-n659_lit_string_bx
                        .type            n660_lit_integer_bx, @function
n660_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n660_lit_integer_α:     mov              r11, 348
                        mov              qword ptr [rbp + 1584], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_916_0]
                        mov              qword ptr [rbp + 1592], rax;         jmp   n661_lit_string_α
.Llit_integer_α_916_0:  .quad            0
                        .size            n660_lit_integer_bx, .-n660_lit_integer_bx
                        .type            n661_lit_string_bx, @function
n661_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n661_lit_string_α:      mov              r11, 349
                        mov              qword ptr [rbp + 1568], 2            # result
                        mov              dword ptr [rbp + 1572], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_917_0]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n662_var_ref_α
.Llit_string_α_917_0:   .quad            .Llit_string_α_917_0_s
.Llit_string_α_917_0_s: .string          "."
                        .size            n661_lit_string_bx, .-n661_lit_string_bx
                        .type            n662_var_ref_bx, @function
n662_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n662_var_ref_α:         mov              r11, 350
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6736]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n663_lit_string_α
                        .size            n662_var_ref_bx, .-n662_var_ref_bx
                        .type            n663_lit_string_bx, @function
n663_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n663_lit_string_α:      mov              r11, 351
                        mov              qword ptr [rbp + 1456], 2            # result
                        mov              dword ptr [rbp + 1460], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_920_0]
                        mov              qword ptr [rbp + 1464], rax;         jmp   n664_var_ref_α
.Llit_string_α_920_0:   .quad            .Llit_string_α_920_0_s
.Llit_string_α_920_0_s: .string          "."
                        .size            n663_lit_string_bx, .-n663_lit_string_bx
                        .type            n664_var_ref_bx, @function
n664_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n664_var_ref_α:         mov              r11, 352
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6720]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n665_lit_string_α
                        .size            n664_var_ref_bx, .-n664_var_ref_bx
                        .type            n665_lit_string_bx, @function
n665_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n665_lit_string_α:      mov              r11, 353
                        mov              qword ptr [rbp + 1344], 2            # result
                        mov              dword ptr [rbp + 1348], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_923_0]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n666_var_ref_α
.Llit_string_α_923_0:   .quad            .Llit_string_α_923_0_s
.Llit_string_α_923_0_s: .string          "."
                        .size            n665_lit_string_bx, .-n665_lit_string_bx
                        .type            n666_var_ref_bx, @function
n666_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n666_var_ref_α:         mov              r11, 354
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6704]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n667_lit_string_α
                        .size            n666_var_ref_bx, .-n666_var_ref_bx
                        .type            n667_lit_string_bx, @function
n667_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n667_lit_string_α:      mov              r11, 355
                        mov              qword ptr [rbp + 1232], 2            # result
                        mov              dword ptr [rbp + 1236], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_926_0]
                        mov              qword ptr [rbp + 1240], rax;         jmp   n668_call_α
.Llit_string_α_926_0:   .quad            .Llit_string_α_926_0_s
.Llit_string_α_926_0_s: .string          "[]"
                        .size            n667_lit_string_bx, .-n667_lit_string_bx
                        .type            n668_call_bx, @function
n668_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n668_call_α:            mov              r11, 356
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
                                                                              jmp   n669_call_α
n668_call_β:            mov              r11, 356;                            jmp   top$2F16_ω
                        .size            n668_call_bx, .-n668_call_bx
                        .type            n669_call_bx, @function
n669_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n669_call_α:            mov              r11, 357
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
                                                                              jmp   n670_call_α
n669_call_β:            mov              r11, 357;                            jmp   top$2F16_ω
                        .size            n669_call_bx, .-n669_call_bx
                        .type            n670_call_bx, @function
n670_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n670_call_α:            mov              r11, 358
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
                                                                              jmp   n671_call_α
n670_call_β:            mov              r11, 358;                            jmp   top$2F16_ω
                        .size            n670_call_bx, .-n670_call_bx
                        .type            n671_call_bx, @function
n671_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n671_call_α:            mov              r11, 359
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
                                                                              jmp   n672_lit_string_α
n671_call_β:            mov              r11, 359;                            jmp   top$2F16_step
                        .size            n671_call_bx, .-n671_call_bx
                        .type            n672_lit_string_bx, @function
n672_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n672_lit_string_α:      mov              r11, 360
                        mov              qword ptr [rbp + 2144], 2            # result
                        mov              dword ptr [rbp + 2148], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_931_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n673_var_ref_α
.Llit_string_α_931_0:   .quad            .Llit_string_α_931_0_s
.Llit_string_α_931_0_s: .string          "."
                        .size            n672_lit_string_bx, .-n672_lit_string_bx
                        .type            n673_var_ref_bx, @function
n673_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n673_var_ref_α:         mov              r11, 361
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6576]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx;         jmp   n674_lit_string_α
                        .size            n673_var_ref_bx, .-n673_var_ref_bx
                        .type            n674_lit_string_bx, @function
n674_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n674_lit_string_α:      mov              r11, 362
                        mov              qword ptr [rbp + 2032], 2            # result
                        mov              dword ptr [rbp + 2036], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_934_0]
                        mov              qword ptr [rbp + 2040], rax;         jmp   n675_var_ref_α
.Llit_string_α_934_0:   .quad            .Llit_string_α_934_0_s
.Llit_string_α_934_0_s: .string          "."
                        .size            n674_lit_string_bx, .-n674_lit_string_bx
                        .type            n675_var_ref_bx, @function
n675_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n675_var_ref_α:         mov              r11, 363
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6592]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n676_lit_string_α
                        .size            n675_var_ref_bx, .-n675_var_ref_bx
                        .type            n676_lit_string_bx, @function
n676_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n676_lit_string_α:      mov              r11, 364
                        mov              qword ptr [rbp + 1920], 2            # result
                        mov              dword ptr [rbp + 1924], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_937_0]
                        mov              qword ptr [rbp + 1928], rax;         jmp   n677_var_ref_α
.Llit_string_α_937_0:   .quad            .Llit_string_α_937_0_s
.Llit_string_α_937_0_s: .string          "."
                        .size            n676_lit_string_bx, .-n676_lit_string_bx
                        .type            n677_var_ref_bx, @function
n677_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n677_var_ref_α:         mov              r11, 365
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6608]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx;         jmp   n678_lit_string_α
                        .size            n677_var_ref_bx, .-n677_var_ref_bx
                        .type            n678_lit_string_bx, @function
n678_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n678_lit_string_α:      mov              r11, 366
                        mov              qword ptr [rbp + 1808], 2            # result
                        mov              dword ptr [rbp + 1812], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_940_0]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n679_var_ref_α
.Llit_string_α_940_0:   .quad            .Llit_string_α_940_0_s
.Llit_string_α_940_0_s: .string          "."
                        .size            n678_lit_string_bx, .-n678_lit_string_bx
                        .type            n679_var_ref_bx, @function
n679_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n679_var_ref_α:         mov              r11, 367
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6624]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx;         jmp   n680_var_ref_α
                        .size            n679_var_ref_bx, .-n679_var_ref_bx
                        .type            n680_var_ref_bx, @function
n680_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n680_var_ref_α:         mov              r11, 368
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6560]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx;         jmp   n681_call_α
                        .size            n680_var_ref_bx, .-n680_var_ref_bx
                        .type            n681_call_bx, @function
n681_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n681_call_α:            mov              r11, 369
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
                                                                              jmp   n682_call_α
n681_call_β:            mov              r11, 369;                            jmp   top$2F16_ω
                        .size            n681_call_bx, .-n681_call_bx
                        .type            n682_call_bx, @function
n682_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n682_call_α:            mov              r11, 370
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
                                                                              jmp   n683_call_α
n682_call_β:            mov              r11, 370;                            jmp   top$2F16_ω
                        .size            n682_call_bx, .-n682_call_bx
                        .type            n683_call_bx, @function
n683_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n683_call_α:            mov              r11, 371
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
                                                                              jmp   n684_call_α
n683_call_β:            mov              r11, 371;                            jmp   top$2F16_ω
                        .size            n683_call_bx, .-n683_call_bx
                        .type            n684_call_bx, @function
n684_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n684_call_α:            mov              r11, 372
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
                                                                              jmp   n685_call_proc_staged_α
n684_call_β:            mov              r11, 372;                            jmp   top$2F16_step
                        .size            n684_call_bx, .-n684_call_bx
                        .type            n685_call_proc_staged_bx, @function
n685_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n685_call_proc_staged_α:
                        mov              r11, 373
                        mov              qword ptr [rbp + 736], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_950_200
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_950_201
.Lcall_proc_staged_α_950_200:
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
.Lcall_proc_staged_α_950_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_950_202
                        mov              rax, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_950_203
.Lcall_proc_staged_α_950_202:
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
.Lcall_proc_staged_α_950_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_950_204
                        mov              rax, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_950_205
.Lcall_proc_staged_α_950_204:
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
.Lcall_proc_staged_α_950_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_950_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_950_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_950_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_950_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_950_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_950_3:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_950_21
                        add              rsp, 32
.Lcall_proc_staged_α_950_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_950_2
.Lcall_proc_staged_α_950_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 736], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_950_2
.Lcall_proc_staged_α_950_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_950_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n645_call_proc_staged_β
.Lcall_proc_staged_α_950_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_950_29
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
.Lcall_proc_staged_α_950_29:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    n645_call_proc_staged_β
                                                                              jmp   n686_var_ref_α
n685_call_proc_staged_β:
                        mov              r11, 373
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_950_22
                        mov              rax, qword ptr [rbp + 736]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_950_22
                        mov              rcx, qword ptr [rbp + 744]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_950_22:
                                                                              jmp   n645_call_proc_staged_β
.Lcall_proc_staged_α_950_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    n645_call_proc_staged_β
                                                                              jmp   n686_var_ref_α
.Lcall_proc_staged_α_950_0:
                        .quad            .Lcall_proc_staged_α_950_0_s
.Lcall_proc_staged_α_950_0_s:
                        .string          "sum/3"
                        .size            n685_call_proc_staged_bx, .-n685_call_proc_staged_bx
                        .type            n686_var_ref_bx, @function
n686_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n686_var_ref_α:         mov              r11, 374
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6624]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n687_call_proc_staged_α
                        .size            n686_var_ref_bx, .-n686_var_ref_bx
                        .type            n687_call_proc_staged_bx, @function
n687_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n687_call_proc_staged_α:
                        mov              r11, 375
                        mov              qword ptr [rbp + 624], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_954_200
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_954_201
.Lcall_proc_staged_α_954_200:
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
.Lcall_proc_staged_α_954_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_954_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_954_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_954_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_954_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_954_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_954_3:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_954_21
                        add              rsp, 32
.Lcall_proc_staged_α_954_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_954_2
.Lcall_proc_staged_α_954_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 624], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_954_2
.Lcall_proc_staged_α_954_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_954_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n685_call_proc_staged_β
.Lcall_proc_staged_α_954_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_954_29
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
.Lcall_proc_staged_α_954_29:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    n685_call_proc_staged_β
                                                                              jmp   n688_var_ref_α
n687_call_proc_staged_β:
                        mov              r11, 375
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_954_22
                        mov              rax, qword ptr [rbp + 624]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_954_22
                        mov              rcx, qword ptr [rbp + 632]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_954_22:
                                                                              jmp   n685_call_proc_staged_β
.Lcall_proc_staged_α_954_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    n685_call_proc_staged_β
                                                                              jmp   n688_var_ref_α
.Lcall_proc_staged_α_954_0:
                        .quad            .Lcall_proc_staged_α_954_0_s
.Lcall_proc_staged_α_954_0_s:
                        .string          "odd/1"
                        .size            n687_call_proc_staged_bx, .-n687_call_proc_staged_bx
                        .type            n688_var_ref_bx, @function
n688_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n688_var_ref_α:         mov              r11, 376
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6608]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n689_call_proc_staged_α
                        .size            n688_var_ref_bx, .-n688_var_ref_bx
                        .type            n689_call_proc_staged_bx, @function
n689_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n689_call_proc_staged_α:
                        mov              r11, 377
                        mov              qword ptr [rbp + 544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_958_200
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_958_201
.Lcall_proc_staged_α_958_200:
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
.Lcall_proc_staged_α_958_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_958_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_958_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_958_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_958_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_958_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_958_3:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_958_21
                        add              rsp, 32
.Lcall_proc_staged_α_958_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_958_2
.Lcall_proc_staged_α_958_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 544], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_958_2
.Lcall_proc_staged_α_958_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_958_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n687_call_proc_staged_β
.Lcall_proc_staged_α_958_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_958_29
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
.Lcall_proc_staged_α_958_29:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n687_call_proc_staged_β
                                                                              jmp   n690_var_ref_α
n689_call_proc_staged_β:
                        mov              r11, 377
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_958_22
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_958_22
                        mov              rcx, qword ptr [rbp + 552]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_958_22:
                                                                              jmp   n687_call_proc_staged_β
.Lcall_proc_staged_α_958_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n687_call_proc_staged_β
                                                                              jmp   n690_var_ref_α
.Lcall_proc_staged_α_958_0:
                        .quad            .Lcall_proc_staged_α_958_0_s
.Lcall_proc_staged_α_958_0_s:
                        .string          "odd/1"
                        .size            n689_call_proc_staged_bx, .-n689_call_proc_staged_bx
                        .type            n690_var_ref_bx, @function
n690_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n690_var_ref_α:         mov              r11, 378
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6592]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n691_call_proc_staged_α
                        .size            n690_var_ref_bx, .-n690_var_ref_bx
                        .type            n691_call_proc_staged_bx, @function
n691_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n691_call_proc_staged_α:
                        mov              r11, 379
                        mov              qword ptr [rbp + 464], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_962_200
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_962_201
.Lcall_proc_staged_α_962_200:
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
.Lcall_proc_staged_α_962_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_962_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_962_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_962_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_962_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_962_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_962_3:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_962_21
                        add              rsp, 32
.Lcall_proc_staged_α_962_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_962_2
.Lcall_proc_staged_α_962_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 464], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_962_2
.Lcall_proc_staged_α_962_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_962_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n689_call_proc_staged_β
.Lcall_proc_staged_α_962_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_962_29
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
.Lcall_proc_staged_α_962_29:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n689_call_proc_staged_β
                                                                              jmp   n692_var_ref_α
n691_call_proc_staged_β:
                        mov              r11, 379
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_962_22
                        mov              rax, qword ptr [rbp + 464]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_962_22
                        mov              rcx, qword ptr [rbp + 472]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_962_22:
                                                                              jmp   n689_call_proc_staged_β
.Lcall_proc_staged_α_962_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n689_call_proc_staged_β
                                                                              jmp   n692_var_ref_α
.Lcall_proc_staged_α_962_0:
                        .quad            .Lcall_proc_staged_α_962_0_s
.Lcall_proc_staged_α_962_0_s:
                        .string          "even/1"
                        .size            n691_call_proc_staged_bx, .-n691_call_proc_staged_bx
                        .type            n692_var_ref_bx, @function
n692_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n692_var_ref_α:         mov              r11, 380
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6576]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n693_call_proc_staged_α
                        .size            n692_var_ref_bx, .-n692_var_ref_bx
                        .type            n693_call_proc_staged_bx, @function
n693_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n693_call_proc_staged_α:
                        mov              r11, 381
                        mov              qword ptr [rbp + 384], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_966_200
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_966_201
.Lcall_proc_staged_α_966_200:
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
.Lcall_proc_staged_α_966_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_966_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_966_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_966_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_966_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_966_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_966_3:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_966_21
                        add              rsp, 32
.Lcall_proc_staged_α_966_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_966_2
.Lcall_proc_staged_α_966_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 384], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_966_2
.Lcall_proc_staged_α_966_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_966_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n691_call_proc_staged_β
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
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
.Lcall_proc_staged_α_966_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n691_call_proc_staged_β
                                                                              jmp   n694_var_ref_α
n693_call_proc_staged_β:
                        mov              r11, 381
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_966_22
                        mov              rax, qword ptr [rbp + 384]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_966_22
                        mov              rcx, qword ptr [rbp + 392]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_966_22:
                                                                              jmp   n691_call_proc_staged_β
.Lcall_proc_staged_α_966_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n691_call_proc_staged_β
                                                                              jmp   n694_var_ref_α
.Lcall_proc_staged_α_966_0:
                        .quad            .Lcall_proc_staged_α_966_0_s
.Lcall_proc_staged_α_966_0_s:
                        .string          "even/1"
                        .size            n693_call_proc_staged_bx, .-n693_call_proc_staged_bx
                        .type            n694_var_ref_bx, @function
n694_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n694_var_ref_α:         mov              r11, 382
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6560]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n695_call_proc_staged_α
                        .size            n694_var_ref_bx, .-n694_var_ref_bx
                        .type            n695_call_proc_staged_bx, @function
n695_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n695_call_proc_staged_α:
                        mov              r11, 383
                        mov              qword ptr [rbp + 304], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_970_200
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_970_201
.Lcall_proc_staged_α_970_200:
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
.Lcall_proc_staged_α_970_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_970_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_970_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_970_99
                        mov              r10, qword ptr [rbp + 6904]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_970_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_970_99
                        mov              rcx, qword ptr [rbp + 6920]
                        mov              rdx, qword ptr [rbp + 6928]
                        lea              rsp, [rbp + 6944]
                        mov              rbp, qword ptr [rbp + 6936];         jmp   rax
.Lcall_proc_staged_α_970_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_970_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_970_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_970_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_970_3:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_970_21
                        add              rsp, 32
.Lcall_proc_staged_α_970_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_970_2
.Lcall_proc_staged_α_970_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 304], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_970_2
.Lcall_proc_staged_α_970_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_970_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n693_call_proc_staged_β
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
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
.Lcall_proc_staged_α_970_29:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n693_call_proc_staged_β
                                                                              jmp   top$2F16_ret0
n695_call_proc_staged_β:
                        mov              r11, 383
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_970_22
                        mov              rax, qword ptr [rbp + 304]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_970_22
                        mov              rcx, qword ptr [rbp + 312]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_970_22:
                                                                              jmp   n693_call_proc_staged_β
.Lcall_proc_staged_α_970_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n693_call_proc_staged_β
                                                                              jmp   top$2F16_ret0
.Lcall_proc_staged_α_970_0:
                        .quad            .Lcall_proc_staged_α_970_0_s
.Lcall_proc_staged_α_970_0_s:
                        .string          "zero/1"
                        .size            n695_call_proc_staged_bx, .-n695_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
top$2F16_ret0:
                        lea              rax, [rip + n695_call_proc_staged_β]
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
                        .type            n971_var_ref_bx, @function
n971_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n971_var_ref_α:         mov              r11, 384
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx;         jmp   n972_var_ref_α
                        .size            n971_var_ref_bx, .-n971_var_ref_bx
                        .type            n972_var_ref_bx, @function
n972_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n972_var_ref_α:         mov              r11, 385
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2672]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx;         jmp   n973_var_ref_α
                        .size            n972_var_ref_bx, .-n972_var_ref_bx
                        .type            n973_var_ref_bx, @function
n973_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n973_var_ref_α:         mov              r11, 386
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n974_var_ref_α
                        .size            n973_var_ref_bx, .-n973_var_ref_bx
                        .type            n974_var_ref_bx, @function
n974_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n974_var_ref_α:         mov              r11, 387
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2640]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n975_var_ref_α
                        .size            n974_var_ref_bx, .-n974_var_ref_bx
                        .type            n975_var_ref_bx, @function
n975_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n975_var_ref_α:         mov              r11, 388
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx;         jmp   n976_var_ref_α
                        .size            n975_var_ref_bx, .-n975_var_ref_bx
                        .type            n976_var_ref_bx, @function
n976_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n976_var_ref_α:         mov              r11, 389
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx;         jmp   n977_var_ref_α
                        .size            n976_var_ref_bx, .-n976_var_ref_bx
                        .type            n977_var_ref_bx, @function
n977_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n977_var_ref_α:         mov              r11, 390
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx;         jmp   n978_var_ref_α
                        .size            n977_var_ref_bx, .-n977_var_ref_bx
                        .type            n978_var_ref_bx, @function
n978_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n978_var_ref_α:         mov              r11, 391
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2576]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n979_var_ref_α
                        .size            n978_var_ref_bx, .-n978_var_ref_bx
                        .type            n979_var_ref_bx, @function
n979_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n979_var_ref_α:         mov              r11, 392
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2560]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx;         jmp   n980_var_ref_α
                        .size            n979_var_ref_bx, .-n979_var_ref_bx
                        .type            n980_var_ref_bx, @function
n980_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n980_var_ref_α:         mov              r11, 393
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx;         jmp   n981_var_ref_α
                        .size            n980_var_ref_bx, .-n980_var_ref_bx
                        .type            n981_var_ref_bx, @function
n981_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n981_var_ref_α:         mov              r11, 394
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx;         jmp   n982_var_ref_α
                        .size            n981_var_ref_bx, .-n981_var_ref_bx
                        .type            n982_var_ref_bx, @function
n982_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n982_var_ref_α:         mov              r11, 395
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx;         jmp   n983_var_ref_α
                        .size            n982_var_ref_bx, .-n982_var_ref_bx
                        .type            n983_var_ref_bx, @function
n983_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n983_var_ref_α:         mov              r11, 396
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx;         jmp   n984_var_ref_α
                        .size            n983_var_ref_bx, .-n983_var_ref_bx
                        .type            n984_var_ref_bx, @function
n984_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n984_var_ref_α:         mov              r11, 397
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx;         jmp   n985_var_ref_α
                        .size            n984_var_ref_bx, .-n984_var_ref_bx
                        .type            n985_var_ref_bx, @function
n985_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n985_var_ref_α:         mov              r11, 398
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx;         jmp   n986_var_ref_α
                        .size            n985_var_ref_bx, .-n985_var_ref_bx
                        .type            n986_var_ref_bx, @function
n986_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n986_var_ref_α:         mov              r11, 399
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2448]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx;         jmp   n987_call_proc_staged_α
                        .size            n986_var_ref_bx, .-n986_var_ref_bx
                        .type            n987_call_proc_staged_bx, @function
n987_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n987_call_proc_staged_α:
                        mov              r11, 400
                        mov              qword ptr [rbp + 2160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1072_200
                        mov              rax, qword ptr [rbp + 2192]
                        mov              rdx, qword ptr [rbp + 2200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1072_201
.Lcall_proc_staged_α_1072_200:
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
.Lcall_proc_staged_α_1072_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1072_202
                        mov              rax, qword ptr [rbp + 2208]
                        mov              rdx, qword ptr [rbp + 2216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1072_203
.Lcall_proc_staged_α_1072_202:
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
.Lcall_proc_staged_α_1072_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1072_204
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_1072_205
.Lcall_proc_staged_α_1072_204:
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
.Lcall_proc_staged_α_1072_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1072_206
                        mov              rax, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_1072_207
.Lcall_proc_staged_α_1072_206:
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
.Lcall_proc_staged_α_1072_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1072_208
                        mov              rax, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_1072_209
.Lcall_proc_staged_α_1072_208:
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
.Lcall_proc_staged_α_1072_209:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1072_210
                        mov              rax, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 80], rax
                        mov              qword ptr [r8 + 88], rdx;            jmp   .Lcall_proc_staged_α_1072_211
.Lcall_proc_staged_α_1072_210:
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
.Lcall_proc_staged_α_1072_211:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1072_212
                        mov              rax, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 96], rax
                        mov              qword ptr [r8 + 104], rdx;           jmp   .Lcall_proc_staged_α_1072_213
.Lcall_proc_staged_α_1072_212:
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
.Lcall_proc_staged_α_1072_213:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1072_214
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 112], rax
                        mov              qword ptr [r8 + 120], rdx;           jmp   .Lcall_proc_staged_α_1072_215
.Lcall_proc_staged_α_1072_214:
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
.Lcall_proc_staged_α_1072_215:
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
                        lea              rax, [rip + .Lcall_proc_staged_α_1072_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1072_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1072_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1072_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1072_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1072_3:
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1072_21
                        add              rsp, 32
.Lcall_proc_staged_α_1072_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1072_2
.Lcall_proc_staged_α_1072_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1072_2
.Lcall_proc_staged_α_1072_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1072_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main$2F0_step
.Lcall_proc_staged_α_1072_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1072_29
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
.Lcall_proc_staged_α_1072_29:
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n988_lit_string_α
n987_call_proc_staged_β:
                        mov              r11, 400
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1072_22
                        mov              rax, qword ptr [rbp + 2160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1072_22
                        mov              rcx, qword ptr [rbp + 2168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1072_22:
                                                                              jmp   main$2F0_step
.Lcall_proc_staged_α_1072_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n988_lit_string_α
.Lcall_proc_staged_α_1072_0:
                        .quad            .Lcall_proc_staged_α_1072_0_s
.Lcall_proc_staged_α_1072_0_s:
                        .string          "top/16"
                        .size            n987_call_proc_staged_bx, .-n987_call_proc_staged_bx
                        .type            n988_lit_string_bx, @function
n988_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n988_lit_string_α:      mov              r11, 401
                        mov              qword ptr [rbp + 1872], 2            # result
                        mov              dword ptr [rbp + 1876], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1073_0]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n989_var_ref_α
.Llit_string_α_1073_0:  .quad            .Llit_string_α_1073_0_s
.Llit_string_α_1073_0_s:
                        .string          "."
                        .size            n988_lit_string_bx, .-n988_lit_string_bx
                        .type            n989_var_ref_bx, @function
n989_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n989_var_ref_α:         mov              r11, 402
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx;         jmp   n990_lit_string_α
                        .size            n989_var_ref_bx, .-n989_var_ref_bx
                        .type            n990_lit_string_bx, @function
n990_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n990_lit_string_α:      mov              r11, 403
                        mov              qword ptr [rbp + 1760], 2            # result
                        mov              dword ptr [rbp + 1764], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1076_0]
                        mov              qword ptr [rbp + 1768], rax;         jmp   n991_var_ref_α
.Llit_string_α_1076_0:  .quad            .Llit_string_α_1076_0_s
.Llit_string_α_1076_0_s:
                        .string          "."
                        .size            n990_lit_string_bx, .-n990_lit_string_bx
                        .type            n991_var_ref_bx, @function
n991_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n991_var_ref_α:         mov              r11, 404
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2672]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx;         jmp   n992_lit_string_α
                        .size            n991_var_ref_bx, .-n991_var_ref_bx
                        .type            n992_lit_string_bx, @function
n992_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n992_lit_string_α:      mov              r11, 405
                        mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1079_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n993_var_ref_α
.Llit_string_α_1079_0:  .quad            .Llit_string_α_1079_0_s
.Llit_string_α_1079_0_s:
                        .string          "."
                        .size            n992_lit_string_bx, .-n992_lit_string_bx
                        .type            n993_var_ref_bx, @function
n993_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n993_var_ref_α:         mov              r11, 406
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n994_lit_string_α
                        .size            n993_var_ref_bx, .-n993_var_ref_bx
                        .type            n994_lit_string_bx, @function
n994_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n994_lit_string_α:      mov              r11, 407
                        mov              qword ptr [rbp + 1536], 2            # result
                        mov              dword ptr [rbp + 1540], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1082_0]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n995_var_ref_α
.Llit_string_α_1082_0:  .quad            .Llit_string_α_1082_0_s
.Llit_string_α_1082_0_s:
                        .string          "."
                        .size            n994_lit_string_bx, .-n994_lit_string_bx
                        .type            n995_var_ref_bx, @function
n995_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n995_var_ref_α:         mov              r11, 408
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2640]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n996_lit_string_α
                        .size            n995_var_ref_bx, .-n995_var_ref_bx
                        .type            n996_lit_string_bx, @function
n996_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n996_lit_string_α:      mov              r11, 409
                        mov              qword ptr [rbp + 1424], 2            # result
                        mov              dword ptr [rbp + 1428], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1085_0]
                        mov              qword ptr [rbp + 1432], rax;         jmp   n997_var_ref_α
.Llit_string_α_1085_0:  .quad            .Llit_string_α_1085_0_s
.Llit_string_α_1085_0_s:
                        .string          "."
                        .size            n996_lit_string_bx, .-n996_lit_string_bx
                        .type            n997_var_ref_bx, @function
n997_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n997_var_ref_α:         mov              r11, 410
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n998_lit_string_α
                        .size            n997_var_ref_bx, .-n997_var_ref_bx
                        .type            n998_lit_string_bx, @function
n998_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n998_lit_string_α:      mov              r11, 411
                        mov              qword ptr [rbp + 1312], 2            # result
                        mov              dword ptr [rbp + 1316], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1088_0]
                        mov              qword ptr [rbp + 1320], rax;         jmp   n999_var_ref_α
.Llit_string_α_1088_0:  .quad            .Llit_string_α_1088_0_s
.Llit_string_α_1088_0_s:
                        .string          "."
                        .size            n998_lit_string_bx, .-n998_lit_string_bx
                        .type            n999_var_ref_bx, @function
n999_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n999_var_ref_α:         mov              r11, 412
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n1000_lit_string_α
                        .size            n999_var_ref_bx, .-n999_var_ref_bx
                        .type            n1000_lit_string_bx, @function
n1000_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1000_lit_string_α:     mov              r11, 413
                        mov              qword ptr [rbp + 1200], 2            # result
                        mov              dword ptr [rbp + 1204], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1091_0]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n1001_var_ref_α
.Llit_string_α_1091_0:  .quad            .Llit_string_α_1091_0_s
.Llit_string_α_1091_0_s:
                        .string          "."
                        .size            n1000_lit_string_bx, .-n1000_lit_string_bx
                        .type            n1001_var_ref_bx, @function
n1001_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1001_var_ref_α:        mov              r11, 414
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n1002_lit_string_α
                        .size            n1001_var_ref_bx, .-n1001_var_ref_bx
                        .type            n1002_lit_string_bx, @function
n1002_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1002_lit_string_α:     mov              r11, 415
                        mov              qword ptr [rbp + 1088], 2            # result
                        mov              dword ptr [rbp + 1092], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1094_0]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n1003_var_ref_α
.Llit_string_α_1094_0:  .quad            .Llit_string_α_1094_0_s
.Llit_string_α_1094_0_s:
                        .string          "."
                        .size            n1002_lit_string_bx, .-n1002_lit_string_bx
                        .type            n1003_var_ref_bx, @function
n1003_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1003_var_ref_α:        mov              r11, 416
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2576]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n1004_lit_string_α
                        .size            n1003_var_ref_bx, .-n1003_var_ref_bx
                        .type            n1004_lit_string_bx, @function
n1004_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1004_lit_string_α:     mov              r11, 417
                        mov              qword ptr [rbp + 976], 2             # result
                        mov              dword ptr [rbp + 980], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1097_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n1005_var_ref_α
.Llit_string_α_1097_0:  .quad            .Llit_string_α_1097_0_s
.Llit_string_α_1097_0_s:
                        .string          "."
                        .size            n1004_lit_string_bx, .-n1004_lit_string_bx
                        .type            n1005_var_ref_bx, @function
n1005_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1005_var_ref_α:        mov              r11, 418
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2560]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n1006_lit_string_α
                        .size            n1005_var_ref_bx, .-n1005_var_ref_bx
                        .type            n1006_lit_string_bx, @function
n1006_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1006_lit_string_α:     mov              r11, 419
                        mov              qword ptr [rbp + 864], 2             # result
                        mov              dword ptr [rbp + 868], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1100_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n1007_var_ref_α
.Llit_string_α_1100_0:  .quad            .Llit_string_α_1100_0_s
.Llit_string_α_1100_0_s:
                        .string          "."
                        .size            n1006_lit_string_bx, .-n1006_lit_string_bx
                        .type            n1007_var_ref_bx, @function
n1007_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1007_var_ref_α:        mov              r11, 420
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n1008_lit_string_α
                        .size            n1007_var_ref_bx, .-n1007_var_ref_bx
                        .type            n1008_lit_string_bx, @function
n1008_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1008_lit_string_α:     mov              r11, 421
                        mov              qword ptr [rbp + 752], 2             # result
                        mov              dword ptr [rbp + 756], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1103_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n1009_var_ref_α
.Llit_string_α_1103_0:  .quad            .Llit_string_α_1103_0_s
.Llit_string_α_1103_0_s:
                        .string          "."
                        .size            n1008_lit_string_bx, .-n1008_lit_string_bx
                        .type            n1009_var_ref_bx, @function
n1009_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1009_var_ref_α:        mov              r11, 422
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n1010_lit_string_α
                        .size            n1009_var_ref_bx, .-n1009_var_ref_bx
                        .type            n1010_lit_string_bx, @function
n1010_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1010_lit_string_α:     mov              r11, 423
                        mov              qword ptr [rbp + 640], 2             # result
                        mov              dword ptr [rbp + 644], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1106_0]
                        mov              qword ptr [rbp + 648], rax;          jmp   n1011_var_ref_α
.Llit_string_α_1106_0:  .quad            .Llit_string_α_1106_0_s
.Llit_string_α_1106_0_s:
                        .string          "."
                        .size            n1010_lit_string_bx, .-n1010_lit_string_bx
                        .type            n1011_var_ref_bx, @function
n1011_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1011_var_ref_α:        mov              r11, 424
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n1012_lit_string_α
                        .size            n1011_var_ref_bx, .-n1011_var_ref_bx
                        .type            n1012_lit_string_bx, @function
n1012_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1012_lit_string_α:     mov              r11, 425
                        mov              qword ptr [rbp + 528], 2             # result
                        mov              dword ptr [rbp + 532], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1109_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n1013_var_ref_α
.Llit_string_α_1109_0:  .quad            .Llit_string_α_1109_0_s
.Llit_string_α_1109_0_s:
                        .string          "."
                        .size            n1012_lit_string_bx, .-n1012_lit_string_bx
                        .type            n1013_var_ref_bx, @function
n1013_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1013_var_ref_α:        mov              r11, 426
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n1014_lit_string_α
                        .size            n1013_var_ref_bx, .-n1013_var_ref_bx
                        .type            n1014_lit_string_bx, @function
n1014_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1014_lit_string_α:     mov              r11, 427
                        mov              qword ptr [rbp + 416], 2             # result
                        mov              dword ptr [rbp + 420], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1112_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n1015_var_ref_α
.Llit_string_α_1112_0:  .quad            .Llit_string_α_1112_0_s
.Llit_string_α_1112_0_s:
                        .string          "."
                        .size            n1014_lit_string_bx, .-n1014_lit_string_bx
                        .type            n1015_var_ref_bx, @function
n1015_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1015_var_ref_α:        mov              r11, 428
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n1016_lit_string_α
                        .size            n1015_var_ref_bx, .-n1015_var_ref_bx
                        .type            n1016_lit_string_bx, @function
n1016_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1016_lit_string_α:     mov              r11, 429
                        mov              qword ptr [rbp + 304], 2             # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1115_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n1017_var_ref_α
.Llit_string_α_1115_0:  .quad            .Llit_string_α_1115_0_s
.Llit_string_α_1115_0_s:
                        .string          "."
                        .size            n1016_lit_string_bx, .-n1016_lit_string_bx
                        .type            n1017_var_ref_bx, @function
n1017_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1017_var_ref_α:        mov              r11, 430
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2464]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n1018_lit_string_α
                        .size            n1017_var_ref_bx, .-n1017_var_ref_bx
                        .type            n1018_lit_string_bx, @function
n1018_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1018_lit_string_α:     mov              r11, 431
                        mov              qword ptr [rbp + 192], 2             # result
                        mov              dword ptr [rbp + 196], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1118_0]
                        mov              qword ptr [rbp + 200], rax;          jmp   n1019_var_ref_α
.Llit_string_α_1118_0:  .quad            .Llit_string_α_1118_0_s
.Llit_string_α_1118_0_s:
                        .string          "."
                        .size            n1018_lit_string_bx, .-n1018_lit_string_bx
                        .type            n1019_var_ref_bx, @function
n1019_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1019_var_ref_α:        mov              r11, 432
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2448]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n1020_lit_string_α
                        .size            n1019_var_ref_bx, .-n1019_var_ref_bx
                        .type            n1020_lit_string_bx, @function
n1020_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1020_lit_string_α:     mov              r11, 433
                        mov              qword ptr [rbp + 80], 2              # result
                        mov              dword ptr [rbp + 84], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1121_0]
                        mov              qword ptr [rbp + 88], rax;           jmp   n1021_call_α
.Llit_string_α_1121_0:  .quad            .Llit_string_α_1121_0_s
.Llit_string_α_1121_0_s:
                        .string          "[]"
                        .size            n1020_lit_string_bx, .-n1020_lit_string_bx
                        .type            n1021_call_bx, @function
n1021_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1021_call_α:           mov              r11, 434
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
                                                                              jmp   n1022_call_α
n1021_call_β:           mov              r11, 434;                            jmp   main$2F0_ω
                        .size            n1021_call_bx, .-n1021_call_bx
                        .type            n1022_call_bx, @function
n1022_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1022_call_α:           mov              r11, 435
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
                                                                              jmp   n1023_call_α
n1022_call_β:           mov              r11, 435;                            jmp   main$2F0_ω
                        .size            n1022_call_bx, .-n1022_call_bx
                        .type            n1023_call_bx, @function
n1023_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1023_call_α:           mov              r11, 436
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
                                                                              jmp   n1024_call_α
n1023_call_β:           mov              r11, 436;                            jmp   main$2F0_ω
                        .size            n1023_call_bx, .-n1023_call_bx
                        .type            n1024_call_bx, @function
n1024_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1024_call_α:           mov              r11, 437
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
                                                                              jmp   n1025_call_α
n1024_call_β:           mov              r11, 437;                            jmp   main$2F0_ω
                        .size            n1024_call_bx, .-n1024_call_bx
                        .type            n1025_call_bx, @function
n1025_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1025_call_α:           mov              r11, 438
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
                                                                              jmp   n1026_call_α
n1025_call_β:           mov              r11, 438;                            jmp   main$2F0_ω
                        .size            n1025_call_bx, .-n1025_call_bx
                        .type            n1026_call_bx, @function
n1026_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1026_call_α:           mov              r11, 439
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
                                                                              jmp   n1027_call_α
n1026_call_β:           mov              r11, 439;                            jmp   main$2F0_ω
                        .size            n1026_call_bx, .-n1026_call_bx
                        .type            n1027_call_bx, @function
n1027_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1027_call_α:           mov              r11, 440
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
                                                                              jmp   n1028_call_α
n1027_call_β:           mov              r11, 440;                            jmp   main$2F0_ω
                        .size            n1027_call_bx, .-n1027_call_bx
                        .type            n1028_call_bx, @function
n1028_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1028_call_α:           mov              r11, 441
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
                                                                              jmp   n1029_call_α
n1028_call_β:           mov              r11, 441;                            jmp   main$2F0_ω
                        .size            n1028_call_bx, .-n1028_call_bx
                        .type            n1029_call_bx, @function
n1029_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1029_call_α:           mov              r11, 442
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
                                                                              jmp   n1030_call_α
n1029_call_β:           mov              r11, 442;                            jmp   main$2F0_ω
                        .size            n1029_call_bx, .-n1029_call_bx
                        .type            n1030_call_bx, @function
n1030_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1030_call_α:           mov              r11, 443
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
                                                                              jmp   n1031_call_α
n1030_call_β:           mov              r11, 443;                            jmp   main$2F0_ω
                        .size            n1030_call_bx, .-n1030_call_bx
                        .type            n1031_call_bx, @function
n1031_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1031_call_α:           mov              r11, 444
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
                                                                              jmp   n1032_call_α
n1031_call_β:           mov              r11, 444;                            jmp   main$2F0_ω
                        .size            n1031_call_bx, .-n1031_call_bx
                        .type            n1032_call_bx, @function
n1032_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1032_call_α:           mov              r11, 445
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
                                                                              jmp   n1033_call_α
n1032_call_β:           mov              r11, 445;                            jmp   main$2F0_ω
                        .size            n1032_call_bx, .-n1032_call_bx
                        .type            n1033_call_bx, @function
n1033_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1033_call_α:           mov              r11, 446
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
                                                                              jmp   n1034_call_α
n1033_call_β:           mov              r11, 446;                            jmp   main$2F0_ω
                        .size            n1033_call_bx, .-n1033_call_bx
                        .type            n1034_call_bx, @function
n1034_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1034_call_α:           mov              r11, 447
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
                                                                              jmp   n1035_call_α
n1034_call_β:           mov              r11, 447;                            jmp   main$2F0_ω
                        .size            n1034_call_bx, .-n1034_call_bx
                        .type            n1035_call_bx, @function
n1035_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1035_call_α:           mov              r11, 448
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
                                                                              jmp   n1036_call_α
n1035_call_β:           mov              r11, 448;                            jmp   main$2F0_ω
                        .size            n1035_call_bx, .-n1035_call_bx
                        .type            n1036_call_bx, @function
n1036_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1036_call_α:           mov              r11, 449
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
                                                                              jmp   n1037_call_α
n1036_call_β:           mov              r11, 449;                            jmp   main$2F0_step
                        .size            n1036_call_bx, .-n1036_call_bx
                        .type            n1037_call_bx, @function
n1037_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1037_call_α:           mov              r11, 450
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
                        cmp              al, 104;                             je    n987_call_proc_staged_β
                                                                              jmp   n1038_call_α
n1037_call_β:           mov              r11, 450;                            jmp   n987_call_proc_staged_β
                        .size            n1037_call_bx, .-n1037_call_bx
                        .type            n1038_call_bx, @function
n1038_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1038_call_α:           mov              r11, 451
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
                        cmp              al, 104;                             je    n987_call_proc_staged_β
                                                                              jmp   main$2F0_ret0
n1038_call_β:           mov              r11, 451;                            jmp   n987_call_proc_staged_β
                        .size            n1038_call_bx, .-n1038_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ret0:
                        lea              rax, [rip + n987_call_proc_staged_β]
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
                        .type            n1140_var_ref_bx, @function
n1140_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1140_var_ref_α:        mov              r11, 452
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n1141_lit_integer_α
                        .size            n1140_var_ref_bx, .-n1140_var_ref_bx
                        .type            n1141_lit_integer_bx, @function
n1141_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1141_lit_integer_α:    mov              r11, 453
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1154_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n1142_call_α
.Llit_integer_α_1154_0: .quad            2
                        .size            n1141_lit_integer_bx, .-n1141_lit_integer_bx
                        .type            n1142_call_bx, @function
n1142_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1142_call_α:           mov              r11, 454
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
n1142_call_β:           mov              r11, 454;                            jmp   lefteven$2F1_step
                        .size            n1142_call_bx, .-n1142_call_bx
                        .type            n1143_var_ref_bx, @function
n1143_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1143_var_ref_α:        mov              r11, 455
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n1144_lit_integer_α
                        .size            n1143_var_ref_bx, .-n1143_var_ref_bx
                        .type            n1144_lit_integer_bx, @function
n1144_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1144_lit_integer_α:    mov              r11, 456
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1158_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n1145_call_α
.Llit_integer_α_1158_0: .quad            4
                        .size            n1144_lit_integer_bx, .-n1144_lit_integer_bx
                        .type            n1145_call_bx, @function
n1145_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1145_call_α:           mov              r11, 457
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
n1145_call_β:           mov              r11, 457;                            jmp   lefteven$2F1_step
                        .size            n1145_call_bx, .-n1145_call_bx
                        .type            n1146_var_ref_bx, @function
n1146_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1146_var_ref_α:        mov              r11, 458
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n1147_lit_integer_α
                        .size            n1146_var_ref_bx, .-n1146_var_ref_bx
                        .type            n1147_lit_integer_bx, @function
n1147_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1147_lit_integer_α:    mov              r11, 459
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1162_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n1148_call_α
.Llit_integer_α_1162_0: .quad            6
                        .size            n1147_lit_integer_bx, .-n1147_lit_integer_bx
                        .type            n1148_call_bx, @function
n1148_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1148_call_α:           mov              r11, 460
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
n1148_call_β:           mov              r11, 460;                            jmp   lefteven$2F1_step
                        .size            n1148_call_bx, .-n1148_call_bx
                        .type            n1149_var_ref_bx, @function
n1149_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1149_var_ref_α:        mov              r11, 461
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n1150_lit_integer_α
                        .size            n1149_var_ref_bx, .-n1149_var_ref_bx
                        .type            n1150_lit_integer_bx, @function
n1150_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1150_lit_integer_α:    mov              r11, 462
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1166_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n1151_call_α
.Llit_integer_α_1166_0: .quad            8
                        .size            n1150_lit_integer_bx, .-n1150_lit_integer_bx
                        .type            n1151_call_bx, @function
n1151_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1151_call_α:           mov              r11, 463
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
n1151_call_β:           mov              r11, 463;                            jmp   lefteven$2F1_step
                        .size            n1151_call_bx, .-n1151_call_bx
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
                                                                              jmp   n1143_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
lefteven$2F1_alt2:
                        lea              rax, [rip + lefteven$2F1_alt3]
                        mov              qword ptr [rbp + 440], rax
                                                                              jmp   n1146_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
lefteven$2F1_alt3:
                        xor              eax, eax
                        mov              qword ptr [rbp + 440], rax
                        mov              r13, qword ptr [rbp + 456]
                                                                              jmp   n1149_var_ref_α
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
                        .type            n1168_var_ref_bx, @function
n1168_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1168_var_ref_α:        mov              r11, 464
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n1169_lit_string_α
                        .size            n1168_var_ref_bx, .-n1168_var_ref_bx
                        .type            n1169_lit_string_bx, @function
n1169_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1169_lit_string_α:     mov              r11, 465
                        mov              qword ptr [rbp + 112], 2             # result
                        mov              dword ptr [rbp + 116], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1181_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n1170_call_α
.Llit_string_α_1181_0:  .quad            .Llit_string_α_1181_0_s
.Llit_string_α_1181_0_s:
                        .string          "[]"
                        .size            n1169_lit_string_bx, .-n1169_lit_string_bx
                        .type            n1170_call_bx, @function
n1170_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1170_call_α:           mov              r11, 466
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        mov              rsi, qword ptr [rip + .Lcall_α_1182_2]
                                                                              jmp   .Lcall_α_1182_3
.Lcall_α_1182_2:        .quad            .Lcall_α_1182_2_s
.Lcall_α_1182_2_s:      .string          "[]"
.Lcall_α_1182_3:        mov              qword ptr [rip + rtccb+40], r8
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
n1170_call_β:           mov              r11, 466;                            jmp   zero$2F1_step
                        .size            n1170_call_bx, .-n1170_call_bx
                        .type            n1171_var_ref_bx, @function
n1171_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1171_var_ref_α:        mov              r11, 467
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n1172_lit_string_α
                        .size            n1171_var_ref_bx, .-n1171_var_ref_bx
                        .type            n1172_lit_string_bx, @function
n1172_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1172_lit_string_α:     mov              r11, 468
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1185_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n1173_lit_integer_α
.Llit_string_α_1185_0:  .quad            .Llit_string_α_1185_0_s
.Llit_string_α_1185_0_s:
                        .string          "."
                        .size            n1172_lit_string_bx, .-n1172_lit_string_bx
                        .type            n1173_lit_integer_bx, @function
n1173_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1173_lit_integer_α:    mov              r11, 469
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1186_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n1174_var_ref_α
.Llit_integer_α_1186_0: .quad            0
                        .size            n1173_lit_integer_bx, .-n1173_lit_integer_bx
                        .type            n1174_var_ref_bx, @function
n1174_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1174_var_ref_α:        mov              r11, 470
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n1175_call_α
                        .size            n1174_var_ref_bx, .-n1174_var_ref_bx
                        .type            n1175_call_bx, @function
n1175_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1175_call_α:           mov              r11, 471
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
                                                                              jmp   n1176_call_α
n1175_call_β:           mov              r11, 471;                            jmp   zero$2F1_step
                        .size            n1175_call_bx, .-n1175_call_bx
                        .type            n1176_call_bx, @function
n1176_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1176_call_α:           mov              r11, 472
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
                                                                              jmp   n1177_var_ref_α
n1176_call_β:           mov              r11, 472;                            jmp   zero$2F1_step
                        .size            n1176_call_bx, .-n1176_call_bx
                        .type            n1177_var_ref_bx, @function
n1177_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1177_var_ref_α:        mov              r11, 473
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n1178_call_proc_staged_α
                        .size            n1177_var_ref_bx, .-n1177_var_ref_bx
                        .type            n1178_call_proc_staged_bx, @function
n1178_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1178_call_proc_staged_α:
                        mov              r11, 474
                        mov              qword ptr [rbp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1194_200
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1194_201
.Lcall_proc_staged_α_1194_200:
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
.Lcall_proc_staged_α_1194_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1194_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1194_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_1194_99
                        mov              r10, qword ptr [rbp + 472]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_1194_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_1194_99
                        mov              rcx, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, qword ptr [rbp + 504];          jmp   rax
.Lcall_proc_staged_α_1194_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1194_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1194_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1194_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1194_3:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1194_21
                        add              rsp, 32
.Lcall_proc_staged_α_1194_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1194_2
.Lcall_proc_staged_α_1194_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1194_2
.Lcall_proc_staged_α_1194_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1194_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   zero$2F1_step
.Lcall_proc_staged_α_1194_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1194_29
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
.Lcall_proc_staged_α_1194_29:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    zero$2F1_step
                                                                              jmp   zero$2F1_ret1
n1178_call_proc_staged_β:
                        mov              r11, 474
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1194_22
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1194_22
                        mov              rcx, qword ptr [rbp + 168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1194_22:
                                                                              jmp   zero$2F1_step
.Lcall_proc_staged_α_1194_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    zero$2F1_step
                                                                              jmp   zero$2F1_ret1
.Lcall_proc_staged_α_1194_0:
                        .quad            .Lcall_proc_staged_α_1194_0_s
.Lcall_proc_staged_α_1194_0_s:
                        .string          "zero/1"
                        .size            n1178_call_proc_staged_bx, .-n1178_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
zero$2F1_ret1:
                        lea              rax, [rip + n1178_call_proc_staged_β]
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
                                                                              jmp   n1171_var_ref_α
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
                        .type            n1195_call_proc_staged_bx, @function
n1195_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1195_call_proc_staged_α:
                        mov              r11, 475
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1197_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1197_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1197_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1197_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1197_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1197_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1197_21
                        add              rsp, 32
.Lcall_proc_staged_α_1197_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1197_2
.Lcall_proc_staged_α_1197_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1197_2
.Lcall_proc_staged_α_1197_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1197_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_1197_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1197_29
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
.Lcall_proc_staged_α_1197_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n1195_call_proc_staged_β:
                        mov              r11, 475
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1197_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1197_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1197_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_1197_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_1197_0:
                        .quad            .Lcall_proc_staged_α_1197_0_s
.Lcall_proc_staged_α_1197_0_s:
                        .string          "main/0"
                        .size            n1195_call_proc_staged_bx, .-n1195_call_proc_staged_bx
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
                        .long            2880
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
                        .long            2784
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
