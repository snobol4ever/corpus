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
                        sub              rsp, 2640
                        mov              qword ptr [rsp + 2616], rcx
                        mov              qword ptr [rsp + 2624], rdx
                        mov              qword ptr [rsp + 2632], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 2640]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2600], r13
                        mov              qword ptr [rsp + 2592], 0
                        mov              qword ptr [rsp + 2584], 0
                        mov              qword ptr [rsp + 2576], r12
                        lea              rax, [rip + mult$2F4_alt1]
                        mov              qword ptr [rsp + 2584], rax
                        lea              rdi, [rsp + 2576]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 2432
                        mov              edx, 2576
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
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n39_lit_string_α
                        .size            n38_var_ref_bx, .-n38_var_ref_bx
                        .type            n39_lit_string_bx, @function
n39_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rbp + 1456], 2            # result
                        mov              dword ptr [rbp + 1460], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_108_0]
                        mov              qword ptr [rbp + 1464], rax;         jmp   n40_var_ref_α
.Llit_string_α_108_0:   .quad            .Llit_string_α_108_0_s
.Llit_string_α_108_0_s: .string          "."
                        .size            n39_lit_string_bx, .-n39_lit_string_bx
                        .type            n40_var_ref_bx, @function
n40_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n41_var_ref_α
                        .size            n40_var_ref_bx, .-n40_var_ref_bx
                        .type            n41_var_ref_bx, @function
n41_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2432]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx;         jmp   n42_call_α
                        .size            n41_var_ref_bx, .-n41_var_ref_bx
                        .type            n42_call_bx, @function
n42_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_call_α:             mov              r11, 19
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1352]
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
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n43_call_α
n42_call_β:             mov              r11, 19;                             jmp   mult$2F4_step
                        .size            n42_call_bx, .-n42_call_bx
                        .type            n43_call_bx, @function
n43_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_call_α:             mov              r11, 20
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1280]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
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
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n45_var_ref_α
                        .size            n44_var_ref_bx, .-n44_var_ref_bx
                        .type            n45_var_ref_bx, @function
n45_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2448]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n46_call_α
                        .size            n45_var_ref_bx, .-n45_var_ref_bx
                        .type            n46_call_bx, @function
n46_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:             mov              r11, 23
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
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
                                                                              jmp   n47_var_ref_α
n46_call_β:             mov              r11, 23;                             jmp   mult$2F4_step
                        .size            n46_call_bx, .-n46_call_bx
                        .type            n47_var_ref_bx, @function
n47_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:          mov              r11, 24
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n48_var_ref_α
                        .size            n47_var_ref_bx, .-n47_var_ref_bx
                        .type            n48_var_ref_bx, @function
n48_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx;         jmp   n49_call_α
                        .size            n48_var_ref_bx, .-n48_var_ref_bx
                        .type            n49_call_bx, @function
n49_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_call_α:             mov              r11, 26
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1088]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
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
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n51_lit_string_α
                        .size            n50_var_ref_bx, .-n50_var_ref_bx
                        .type            n51_lit_string_bx, @function
n51_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rbp + 1056], 2            # result
                        mov              dword ptr [rbp + 1060], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_127_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n52_var_ref_α
.Llit_string_α_127_0:   .quad            .Llit_string_α_127_0_s
.Llit_string_α_127_0_s: .string          "."
                        .size            n51_lit_string_bx, .-n51_lit_string_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n53_var_ref_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_var_ref_bx, @function
n53_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n54_call_α
                        .size            n53_var_ref_bx, .-n53_var_ref_bx
                        .type            n54_call_bx, @function
n54_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:             mov              r11, 31
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 992]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n55_call_α
n54_call_β:             mov              r11, 31;                             jmp   mult$2F4_step
                        .size            n54_call_bx, .-n54_call_bx
                        .type            n55_call_bx, @function
n55_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_call_α:             mov              r11, 32
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 984]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n56_var_ref_α
n55_call_β:             mov              r11, 32;                             jmp   mult$2F4_step
                        .size            n55_call_bx, .-n55_call_bx
                        .type            n56_var_ref_bx, @function
n56_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n57_var_α
                        .size            n56_var_ref_bx, .-n56_var_ref_bx
                        .type            n57_var_bx, @function
n57_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 824], rax;          jmp   n58_var_α
                        .size            n57_var_bx, .-n57_var_bx
                        .type            n58_var_bx, @function
n58_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              mov              r11, 35
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 840], rax;          jmp   n59_call_α
                        .size            n58_var_bx, .-n58_var_bx
                        .type            n59_call_bx, @function
n59_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_call_α:             mov              r11, 36
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n60_var_α
n59_call_β:             mov              r11, 36;                             jmp   mult$2F4_step
                        .size            n59_call_bx, .-n59_call_bx
                        .type            n60_var_bx, @function
n60_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              mov              r11, 37
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 856], rax;          jmp   n61_call_α
                        .size            n60_var_bx, .-n60_var_bx
                        .type            n61_call_bx, @function
n61_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_call_α:             mov              r11, 38
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 856]
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
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n62_call_α
n61_call_β:             mov              r11, 38;                             jmp   mult$2F4_step
                        .size            n61_call_bx, .-n61_call_bx
                        .type            n62_call_bx, @function
n62_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_call_α:             mov              r11, 39
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
                                                                              jmp   n63_var_ref_α
n62_call_β:             mov              r11, 39;                             jmp   mult$2F4_step
                        .size            n62_call_bx, .-n62_call_bx
                        .type            n63_var_ref_bx, @function
n63_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n64_var_α
                        .size            n63_var_ref_bx, .-n63_var_ref_bx
                        .type            n64_var_bx, @function
n64_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:              mov              r11, 41
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 584], rax;          jmp   n65_lit_integer_α
                        .size            n64_var_bx, .-n64_var_bx
                        .type            n65_lit_integer_bx, @function
n65_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:      mov              r11, 42
                        mov              qword ptr [rbp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_149_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n66_call_α
.Llit_integer_α_149_0:  .quad            10
                        .size            n65_lit_integer_bx, .-n65_lit_integer_bx
                        .type            n66_call_bx, @function
n66_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:             mov              r11, 43
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
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n67_call_α
n66_call_β:             mov              r11, 43;                             jmp   mult$2F4_step
                        .size            n66_call_bx, .-n66_call_bx
                        .type            n67_call_bx, @function
n67_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:             mov              r11, 44
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n68_var_ref_α
n67_call_β:             mov              r11, 44;                             jmp   mult$2F4_step
                        .size            n67_call_bx, .-n67_call_bx
                        .type            n68_var_ref_bx, @function
n68_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2464]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n69_var_α
                        .size            n68_var_ref_bx, .-n68_var_ref_bx
                        .type            n69_var_bx, @function
n69_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              mov              r11, 46
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 408], rax;          jmp   n70_lit_integer_α
                        .size            n69_var_bx, .-n69_var_bx
                        .type            n70_lit_integer_bx, @function
n70_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:      mov              r11, 47
                        mov              qword ptr [rbp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_156_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n71_call_α
.Llit_integer_α_156_0:  .quad            10
                        .size            n70_lit_integer_bx, .-n70_lit_integer_bx
                        .type            n71_call_bx, @function
n71_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:             mov              r11, 48
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
                                                                              jmp   n72_call_α
n71_call_β:             mov              r11, 48;                             jmp   mult$2F4_step
                        .size            n71_call_bx, .-n71_call_bx
                        .type            n72_call_bx, @function
n72_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_call_α:             mov              r11, 49
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
                                                                              jmp   n73_var_ref_α
n72_call_β:             mov              r11, 49;                             jmp   mult$2F4_step
                        .size            n72_call_bx, .-n72_call_bx
                        .type            n73_var_ref_bx, @function
n73_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2432]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n74_var_ref_α
                        .size            n73_var_ref_bx, .-n73_var_ref_bx
                        .type            n74_var_ref_bx, @function
n74_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:          mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2448]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n75_var_ref_α
                        .size            n74_var_ref_bx, .-n74_var_ref_bx
                        .type            n75_var_ref_bx, @function
n75_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2464]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n76_var_ref_α
                        .size            n75_var_ref_bx, .-n75_var_ref_bx
                        .type            n76_var_ref_bx, @function
n76_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n77_call_proc_staged_α
                        .size            n76_var_ref_bx, .-n76_var_ref_bx
                        .type            n77_call_proc_staged_bx, @function
n77_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_call_proc_staged_α: mov              r11, 54
                        mov              qword ptr [rbp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_168_200
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_168_201
.Lcall_proc_staged_α_168_200:
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
.Lcall_proc_staged_α_168_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_168_202
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_168_203
.Lcall_proc_staged_α_168_202:
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
.Lcall_proc_staged_α_168_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_168_204
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_168_205
.Lcall_proc_staged_α_168_204:
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
.Lcall_proc_staged_α_168_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_168_206
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_168_207
.Lcall_proc_staged_α_168_206:
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
.Lcall_proc_staged_α_168_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_168_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_168_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_168_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_168_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_168_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_168_3:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_168_21
                        add              rsp, 32
.Lcall_proc_staged_α_168_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_168_2
.Lcall_proc_staged_α_168_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_168_2
.Lcall_proc_staged_α_168_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_168_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   mult$2F4_step
.Lcall_proc_staged_α_168_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_168_29
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
.Lcall_proc_staged_α_168_29:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   mult$2F4_ret0
n77_call_proc_staged_β: mov              r11, 54
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_168_22
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_168_22
                        mov              rcx, qword ptr [rbp + 168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_168_22:
                                                                              jmp   mult$2F4_step
.Lcall_proc_staged_α_168_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   mult$2F4_ret0
.Lcall_proc_staged_α_168_0:
                        .quad            .Lcall_proc_staged_α_168_0_s
.Lcall_proc_staged_α_168_0_s:
                        .string          "mult/4"
                        .size            n77_call_proc_staged_bx, .-n77_call_proc_staged_bx
                        .type            n78_var_ref_bx, @function
n78_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx;         jmp   n79_lit_string_α
                        .size            n78_var_ref_bx, .-n78_var_ref_bx
                        .type            n79_lit_string_bx, @function
n79_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              r11, 56
                        mov              qword ptr [rbp + 2416], 2            # result
                        mov              dword ptr [rbp + 2420], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_171_0]
                        mov              qword ptr [rbp + 2424], rax;         jmp   n80_call_α
.Llit_string_α_171_0:   .quad            .Llit_string_α_171_0_s
.Llit_string_α_171_0_s: .string          "[]"
                        .size            n79_lit_string_bx, .-n79_lit_string_bx
                        .type            n80_call_bx, @function
n80_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_call_α:             mov              r11, 57
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                        lea              rdi, [rbp + 2352]
                        mov              rsi, qword ptr [rip + .Lcall_α_172_2]
                                                                              jmp   .Lcall_α_172_3
.Lcall_α_172_2:         .quad            .Lcall_α_172_2_s
.Lcall_α_172_2_s:       .string          "[]"
.Lcall_α_172_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n81_var_ref_α
n80_call_β:             mov              r11, 57;                             jmp   mult$2F4_step
                        .size            n80_call_bx, .-n80_call_bx
                        .type            n81_var_ref_bx, @function
n81_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n82_var_ref_α
                        .size            n81_var_ref_bx, .-n81_var_ref_bx
                        .type            n82_var_ref_bx, @function
n82_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx;         jmp   n83_call_α
                        .size            n82_var_ref_bx, .-n82_var_ref_bx
                        .type            n83_call_bx, @function
n83_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:             mov              r11, 60
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2328]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n84_var_ref_α
n83_call_β:             mov              r11, 60;                             jmp   mult$2F4_step
                        .size            n83_call_bx, .-n83_call_bx
                        .type            n84_var_ref_bx, @function
n84_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx;         jmp   n85_var_ref_α
                        .size            n84_var_ref_bx, .-n84_var_ref_bx
                        .type            n85_var_ref_bx, @function
n85_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:          mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n86_call_α
                        .size            n85_var_ref_bx, .-n85_var_ref_bx
                        .type            n86_call_bx, @function
n86_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_call_α:             mov              r11, 63
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2232]
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
                                                                              jmp   n87_var_ref_α
n86_call_β:             mov              r11, 63;                             jmp   mult$2F4_step
                        .size            n86_call_bx, .-n86_call_bx
                        .type            n87_var_ref_bx, @function
n87_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:          mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx;         jmp   n88_lit_string_α
                        .size            n87_var_ref_bx, .-n87_var_ref_bx
                        .type            n88_lit_string_bx, @function
n88_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       mov              r11, 65
                        mov              qword ptr [rbp + 2128], 2            # result
                        mov              dword ptr [rbp + 2132], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_185_0]
                        mov              qword ptr [rbp + 2136], rax;         jmp   n89_var_ref_α
.Llit_string_α_185_0:   .quad            .Llit_string_α_185_0_s
.Llit_string_α_185_0_s: .string          "."
                        .size            n88_lit_string_bx, .-n88_lit_string_bx
                        .type            n89_var_ref_bx, @function
n89_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2432]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n90_lit_string_α
                        .size            n89_var_ref_bx, .-n89_var_ref_bx
                        .type            n90_lit_string_bx, @function
n90_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       mov              r11, 67
                        mov              qword ptr [rbp + 2016], 2            # result
                        mov              dword ptr [rbp + 2020], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_188_0]
                        mov              qword ptr [rbp + 2024], rax;         jmp   n91_var_ref_α
.Llit_string_α_188_0:   .quad            .Llit_string_α_188_0_s
.Llit_string_α_188_0_s: .string          "."
                        .size            n90_lit_string_bx, .-n90_lit_string_bx
                        .type            n91_var_ref_bx, @function
n91_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx;         jmp   n92_lit_string_α
                        .size            n91_var_ref_bx, .-n91_var_ref_bx
                        .type            n92_lit_string_bx, @function
n92_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:       mov              r11, 69
                        mov              qword ptr [rbp + 1904], 2            # result
                        mov              dword ptr [rbp + 1908], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_191_0]
                        mov              qword ptr [rbp + 1912], rax;         jmp   n93_call_α
.Llit_string_α_191_0:   .quad            .Llit_string_α_191_0_s
.Llit_string_α_191_0_s: .string          "[]"
                        .size            n92_lit_string_bx, .-n92_lit_string_bx
                        .type            n93_call_bx, @function
n93_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_call_α:             mov              r11, 70
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1960], rax
                        lea              rdi, [rbp + 1952]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              al, 104;                             je    mult$2F4_ω
                                                                              jmp   n94_call_α
n93_call_β:             mov              r11, 70;                             jmp   mult$2F4_ω
                        .size            n93_call_bx, .-n93_call_bx
                        .type            n94_call_bx, @function
n94_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_call_α:             mov              r11, 71
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2072], rax
                        lea              rdi, [rbp + 2064]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n95_call_α
n94_call_β:             mov              r11, 71;                             jmp   mult$2F4_step
                        .size            n94_call_bx, .-n94_call_bx
                        .type            n95_call_bx, @function
n95_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_call_α:             mov              r11, 72
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1848], rax
                        lea              rdi, [rbp + 1840]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n96_var_ref_α
n95_call_β:             mov              r11, 72;                             jmp   mult$2F4_step
                        .size            n95_call_bx, .-n95_call_bx
                        .type            n96_var_ref_bx, @function
n96_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2432]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx;         jmp   n97_var_α
                        .size            n96_var_ref_bx, .-n96_var_ref_bx
                        .type            n97_var_bx, @function
n97_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              mov              r11, 74
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 1800], rax;         jmp   n98_lit_integer_α
                        .size            n97_var_bx, .-n97_var_bx
                        .type            n98_lit_integer_bx, @function
n98_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:      mov              r11, 75
                        mov              qword ptr [rbp + 1808], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_199_0]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n99_call_α
.Llit_integer_α_199_0:  .quad            10
                        .size            n98_lit_integer_bx, .-n98_lit_integer_bx
                        .type            n99_call_bx, @function
n99_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_call_α:             mov              r11, 76
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1752], rax
                        lea              rdi, [rbp + 1744]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n100_call_α
n99_call_β:             mov              r11, 76;                             jmp   mult$2F4_step
                        .size            n99_call_bx, .-n99_call_bx
                        .type            n100_call_bx, @function
n100_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_call_α:            mov              r11, 77
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1672], rax
                        lea              rdi, [rbp + 1664]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n101_var_ref_α
n100_call_β:            mov              r11, 77;                             jmp   mult$2F4_step
                        .size            n100_call_bx, .-n100_call_bx
                        .type            n101_var_ref_bx, @function
n101_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:         mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx;         jmp   n102_var_α
                        .size            n101_var_ref_bx, .-n101_var_ref_bx
                        .type            n102_var_bx, @function
n102_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             mov              r11, 79
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n103_lit_integer_α
                        .size            n102_var_bx, .-n102_var_bx
                        .type            n103_lit_integer_bx, @function
n103_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:     mov              r11, 80
                        mov              qword ptr [rbp + 1632], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_206_0]
                        mov              qword ptr [rbp + 1640], rax;         jmp   n104_call_α
.Llit_integer_α_206_0:  .quad            10
                        .size            n103_lit_integer_bx, .-n103_lit_integer_bx
                        .type            n104_call_bx, @function
n104_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_call_α:            mov              r11, 81
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1640]
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
                        call             rt_pl_dop_ax_idiv@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n105_call_α
n104_call_β:            mov              r11, 81;                             jmp   mult$2F4_step
                        .size            n104_call_bx, .-n104_call_bx
                        .type            n105_call_bx, @function
n105_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_call_α:            mov              r11, 82
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   mult$2F4_γ
n105_call_β:            mov              r11, 82;                             jmp   mult$2F4_step
                        .size            n105_call_bx, .-n105_call_bx
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_ret0:
                        lea              rax, [rip + n77_call_proc_staged_β]
                        mov              qword ptr [rbp + 2592], rax
                                                                              jmp   mult$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_step:
                        mov              rdi, qword ptr [rbp + 2576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2592], 0
                        mov              qword ptr [rbp + 2448], 0
                        mov              qword ptr [rbp + 2456], 0
                        mov              qword ptr [rbp + 2544], 0
                        mov              qword ptr [rbp + 2552], 0
                        mov              qword ptr [rbp + 2528], 0
                        mov              qword ptr [rbp + 2536], 0
                        mov              qword ptr [rbp + 2432], 0
                        mov              qword ptr [rbp + 2440], 0
                        mov              qword ptr [rbp + 2512], 0
                        mov              qword ptr [rbp + 2520], 0
                        mov              qword ptr [rbp + 2480], 0
                        mov              qword ptr [rbp + 2488], 0
                        mov              qword ptr [rbp + 2496], 0
                        mov              qword ptr [rbp + 2504], 0
                        mov              qword ptr [rbp + 2464], 0
                        mov              qword ptr [rbp + 2472], 0
                        mov              rax, qword ptr [rbp + 2584]
                        test             rax, rax
                                                                              je    mult$2F4_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 2584], rax
                                                                              jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_β:
                        test             r15, r15
                                                                              jne   mult$2F4_ω
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2592], 0
                        test             rax, rax
                                                                              jne   mult$2F4_βres
                                                                              jmp   mult$2F4_step
mult$2F4_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 2616]
                        mov              rax, qword ptr [rbp + 2600]
                        cmp              r13, rax;                            je    mult$2F4_altdet
                        lea              rdx, [rip + mult$2F4_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 2632];         jmp   rcx
mult$2F4_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 2640]
                        mov              rbp, qword ptr [rbp + 2632];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_ω:
                        mov              rcx, qword ptr [rbp + 2624]
                        mov              r13, qword ptr [rbp + 2600]
                        lea              rsp, [rbp + 2640]
                        mov              rbp, qword ptr [rbp + 2632];         jmp   rcx
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
                        .type            n209_var_ref_bx, @function
n209_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n210_lit_integer_α
                        .size            n209_var_ref_bx, .-n209_var_ref_bx
                        .type            n210_lit_integer_bx, @function
n210_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_integer_α:     mov              r11, 84
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_226_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n211_call_α
.Llit_integer_α_226_0:  .quad            1
                        .size            n210_lit_integer_bx, .-n210_lit_integer_bx
                        .type            n211_call_bx, @function
n211_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_call_α:            mov              r11, 85
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
n211_call_β:            mov              r11, 85;                             jmp   odd$2F1_step
                        .size            n211_call_bx, .-n211_call_bx
                        .type            n212_var_ref_bx, @function
n212_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n213_lit_integer_α
                        .size            n212_var_ref_bx, .-n212_var_ref_bx
                        .type            n213_lit_integer_bx, @function
n213_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_integer_α:     mov              r11, 87
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_230_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n214_call_α
.Llit_integer_α_230_0:  .quad            3
                        .size            n213_lit_integer_bx, .-n213_lit_integer_bx
                        .type            n214_call_bx, @function
n214_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_call_α:            mov              r11, 88
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
n214_call_β:            mov              r11, 88;                             jmp   odd$2F1_step
                        .size            n214_call_bx, .-n214_call_bx
                        .type            n215_var_ref_bx, @function
n215_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n216_lit_integer_α
                        .size            n215_var_ref_bx, .-n215_var_ref_bx
                        .type            n216_lit_integer_bx, @function
n216_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_integer_α:     mov              r11, 90
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_234_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n217_call_α
.Llit_integer_α_234_0:  .quad            5
                        .size            n216_lit_integer_bx, .-n216_lit_integer_bx
                        .type            n217_call_bx, @function
n217_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_call_α:            mov              r11, 91
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
n217_call_β:            mov              r11, 91;                             jmp   odd$2F1_step
                        .size            n217_call_bx, .-n217_call_bx
                        .type            n218_var_ref_bx, @function
n218_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:         mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n219_lit_integer_α
                        .size            n218_var_ref_bx, .-n218_var_ref_bx
                        .type            n219_lit_integer_bx, @function
n219_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_integer_α:     mov              r11, 93
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_238_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n220_call_α
.Llit_integer_α_238_0:  .quad            7
                        .size            n219_lit_integer_bx, .-n219_lit_integer_bx
                        .type            n220_call_bx, @function
n220_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_call_α:            mov              r11, 94
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
n220_call_β:            mov              r11, 94;                             jmp   odd$2F1_step
                        .size            n220_call_bx, .-n220_call_bx
                        .type            n221_var_ref_bx, @function
n221_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:         mov              r11, 95
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n222_lit_integer_α
                        .size            n221_var_ref_bx, .-n221_var_ref_bx
                        .type            n222_lit_integer_bx, @function
n222_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_integer_α:     mov              r11, 96
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_242_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n223_call_α
.Llit_integer_α_242_0:  .quad            9
                        .size            n222_lit_integer_bx, .-n222_lit_integer_bx
                        .type            n223_call_bx, @function
n223_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_call_α:            mov              r11, 97
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
n223_call_β:            mov              r11, 97;                             jmp   odd$2F1_step
                        .size            n223_call_bx, .-n223_call_bx
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
                                                                              jmp   n212_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
odd$2F1_alt2:
                        lea              rax, [rip + odd$2F1_alt3]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n215_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
odd$2F1_alt3:
                        lea              rax, [rip + odd$2F1_alt4]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n218_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
odd$2F1_alt4:
                        xor              eax, eax
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n221_var_ref_α
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
                        .type            n244_var_ref_bx, @function
n244_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n245_var_ref_α
                        .size            n244_var_ref_bx, .-n244_var_ref_bx
                        .type            n245_var_ref_bx, @function
n245_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx;          jmp   n246_call_α
                        .size            n245_var_ref_bx, .-n245_var_ref_bx
                        .type            n246_call_bx, @function
n246_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_call_α:            mov              r11, 100
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
                                                                              jmp   n247_var_ref_α
n246_call_β:            mov              r11, 100;                            jmp   sum$2F3_step
                        .size            n246_call_bx, .-n246_call_bx
                        .type            n247_var_ref_bx, @function
n247_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n248_var_ref_α
                        .size            n247_var_ref_bx, .-n247_var_ref_bx
                        .type            n248_var_ref_bx, @function
n248_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n249_call_α
                        .size            n248_var_ref_bx, .-n248_var_ref_bx
                        .type            n249_call_bx, @function
n249_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_call_α:            mov              r11, 103
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
                                                                              jmp   n250_var_ref_α
n249_call_β:            mov              r11, 103;                            jmp   sum$2F3_step
                        .size            n249_call_bx, .-n249_call_bx
                        .type            n250_var_ref_bx, @function
n250_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n251_var_ref_α
                        .size            n250_var_ref_bx, .-n250_var_ref_bx
                        .type            n251_var_ref_bx, @function
n251_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_var_ref_α:         mov              r11, 105
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n252_call_α
                        .size            n251_var_ref_bx, .-n251_var_ref_bx
                        .type            n252_call_bx, @function
n252_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_call_α:            mov              r11, 106
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
                                                                              jmp   n253_var_ref_α
n252_call_β:            mov              r11, 106;                            jmp   sum$2F3_step
                        .size            n252_call_bx, .-n252_call_bx
                        .type            n253_var_ref_bx, @function
n253_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n254_var_ref_α
                        .size            n253_var_ref_bx, .-n253_var_ref_bx
                        .type            n254_var_ref_bx, @function
n254_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_var_ref_α:         mov              r11, 108
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n255_lit_integer_α
                        .size            n254_var_ref_bx, .-n254_var_ref_bx
                        .type            n255_lit_integer_bx, @function
n255_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_integer_α:     mov              r11, 109
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_277_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n256_var_ref_α
.Llit_integer_α_277_0:  .quad            0
                        .size            n255_lit_integer_bx, .-n255_lit_integer_bx
                        .type            n256_var_ref_bx, @function
n256_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:         mov              r11, 110
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n257_call_proc_staged_α
                        .size            n256_var_ref_bx, .-n256_var_ref_bx
                        .type            n257_call_proc_staged_bx, @function
n257_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_call_proc_staged_α:
                        mov              r11, 111
                        mov              qword ptr [rbp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_281_200
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_281_201
.Lcall_proc_staged_α_281_200:
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
.Lcall_proc_staged_α_281_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_281_202
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_281_203
.Lcall_proc_staged_α_281_202:
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
.Lcall_proc_staged_α_281_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_281_204
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_281_205
.Lcall_proc_staged_α_281_204:
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
.Lcall_proc_staged_α_281_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_281_206
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_281_207
.Lcall_proc_staged_α_281_206:
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
.Lcall_proc_staged_α_281_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_281_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_281_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_281_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_281_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_281_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_281_3:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_281_21
                        add              rsp, 32
.Lcall_proc_staged_α_281_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_281_2
.Lcall_proc_staged_α_281_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 144], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_281_2
.Lcall_proc_staged_α_281_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_281_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   sum$2F3_step
.Lcall_proc_staged_α_281_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_281_29
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
.Lcall_proc_staged_α_281_29:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    sum$2F3_step
                                                                              jmp   sum$2F3_ret0
n257_call_proc_staged_β:
                        mov              r11, 111
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_281_22
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_281_22
                        mov              rcx, qword ptr [rbp + 152]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_281_22:
                                                                              jmp   sum$2F3_step
.Lcall_proc_staged_α_281_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    sum$2F3_step
                                                                              jmp   sum$2F3_ret0
.Lcall_proc_staged_α_281_0:
                        .quad            .Lcall_proc_staged_α_281_0_s
.Lcall_proc_staged_α_281_0_s:
                        .string          "sum/4"
                        .size            n257_call_proc_staged_bx, .-n257_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
sum$2F3_ret0:
                        lea              rax, [rip + n257_call_proc_staged_β]
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
                        sub              rsp, 2704
                        mov              qword ptr [rsp + 2680], rcx
                        mov              qword ptr [rsp + 2688], rdx
                        mov              qword ptr [rsp + 2696], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 2704]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2664], r13
                        mov              qword ptr [rsp + 2656], 0
                        mov              qword ptr [rsp + 2648], 0
                        mov              qword ptr [rsp + 2640], r12
                        lea              rax, [rip + sum$2F4_alt1]
                        mov              qword ptr [rsp + 2648], rax
                        lea              rdi, [rsp + 2640]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 2464
                        mov              edx, 2640
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
sum$2F4_α_body:
                        .type            n282_var_ref_bx, @function
n282_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n283_lit_string_α
                        .size            n282_var_ref_bx, .-n282_var_ref_bx
                        .type            n283_lit_string_bx, @function
n283_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:      mov              r11, 113
                        mov              qword ptr [rbp + 1568], 2            # result
                        mov              dword ptr [rbp + 1572], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_356_0]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n284_var_ref_α
.Llit_string_α_356_0:   .quad            .Llit_string_α_356_0_s
.Llit_string_α_356_0_s: .string          "."
                        .size            n283_lit_string_bx, .-n283_lit_string_bx
                        .type            n284_var_ref_bx, @function
n284_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2560]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n285_var_ref_α
                        .size            n284_var_ref_bx, .-n284_var_ref_bx
                        .type            n285_var_ref_bx, @function
n285_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2464]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n286_call_α
                        .size            n285_var_ref_bx, .-n285_var_ref_bx
                        .type            n286_call_bx, @function
n286_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_call_α:            mov              r11, 116
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1464]
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
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n287_call_α
n286_call_β:            mov              r11, 116;                            jmp   sum$2F4_step
                        .size            n286_call_bx, .-n286_call_bx
                        .type            n287_call_bx, @function
n287_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_call_α:            mov              r11, 117
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1496]
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
                                                                              jmp   n288_var_ref_α
n287_call_β:            mov              r11, 117;                            jmp   sum$2F4_step
                        .size            n287_call_bx, .-n287_call_bx
                        .type            n288_var_ref_bx, @function
n288_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_var_ref_α:         mov              r11, 118
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n289_lit_string_α
                        .size            n288_var_ref_bx, .-n288_var_ref_bx
                        .type            n289_lit_string_bx, @function
n289_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_string_α:      mov              r11, 119
                        mov              qword ptr [rbp + 1360], 2            # result
                        mov              dword ptr [rbp + 1364], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_365_0]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n290_var_ref_α
.Llit_string_α_365_0:   .quad            .Llit_string_α_365_0_s
.Llit_string_α_365_0_s: .string          "."
                        .size            n289_lit_string_bx, .-n289_lit_string_bx
                        .type            n290_var_ref_bx, @function
n290_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2576]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx;         jmp   n291_var_ref_α
                        .size            n290_var_ref_bx, .-n290_var_ref_bx
                        .type            n291_var_ref_bx, @function
n291_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n292_call_α
                        .size            n291_var_ref_bx, .-n291_var_ref_bx
                        .type            n292_call_bx, @function
n292_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_call_α:            mov              r11, 122
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
                                                                              jmp   n293_call_α
n292_call_β:            mov              r11, 122;                            jmp   sum$2F4_step
                        .size            n292_call_bx, .-n292_call_bx
                        .type            n293_call_bx, @function
n293_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_call_α:            mov              r11, 123
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
                                                                              jmp   n294_var_ref_α
n293_call_β:            mov              r11, 123;                            jmp   sum$2F4_step
                        .size            n293_call_bx, .-n293_call_bx
                        .type            n294_var_ref_bx, @function
n294_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n295_var_ref_α
                        .size            n294_var_ref_bx, .-n294_var_ref_bx
                        .type            n295_var_ref_bx, @function
n295_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_var_ref_α:         mov              r11, 125
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx;         jmp   n296_call_α
                        .size            n295_var_ref_bx, .-n295_var_ref_bx
                        .type            n296_call_bx, @function
n296_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_call_α:            mov              r11, 126
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1088]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n297_var_ref_α
n296_call_β:            mov              r11, 126;                            jmp   sum$2F4_step
                        .size            n296_call_bx, .-n296_call_bx
                        .type            n297_var_ref_bx, @function
n297_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n298_lit_string_α
                        .size            n297_var_ref_bx, .-n297_var_ref_bx
                        .type            n298_lit_string_bx, @function
n298_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rbp + 1056], 2            # result
                        mov              dword ptr [rbp + 1060], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_379_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n299_var_ref_α
.Llit_string_α_379_0:   .quad            .Llit_string_α_379_0_s
.Llit_string_α_379_0_s: .string          "."
                        .size            n298_lit_string_bx, .-n298_lit_string_bx
                        .type            n299_var_ref_bx, @function
n299_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_var_ref_α:         mov              r11, 129
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n300_var_ref_α
                        .size            n299_var_ref_bx, .-n299_var_ref_bx
                        .type            n300_var_ref_bx, @function
n300_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:         mov              r11, 130
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n301_call_α
                        .size            n300_var_ref_bx, .-n300_var_ref_bx
                        .type            n301_call_bx, @function
n301_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_call_α:            mov              r11, 131
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 992]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n302_call_α
n301_call_β:            mov              r11, 131;                            jmp   sum$2F4_step
                        .size            n301_call_bx, .-n301_call_bx
                        .type            n302_call_bx, @function
n302_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_call_α:            mov              r11, 132
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 984]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n303_cut_α
n302_call_β:            mov              r11, 132;                            jmp   sum$2F4_step
                        .size            n302_call_bx, .-n302_call_bx
                        .type            n303_cut_bx, @function
n303_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_cut_α:             mov              r11, 133
                        mov              qword ptr [rbp + 2648], 0
                        mov              qword ptr [rbp + 2656], 0
                        lea              rdi, [rbp + 2640]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n304_var_ref_α
                        .size            n303_cut_bx, .-n303_cut_bx
                        .type            n304_var_ref_bx, @function
n304_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:         mov              r11, 134
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n305_var_α
                        .size            n304_var_ref_bx, .-n304_var_ref_bx
                        .type            n305_var_bx, @function
n305_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:             mov              r11, 135
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 824], rax;          jmp   n306_var_α
                        .size            n305_var_bx, .-n305_var_bx
                        .type            n306_var_bx, @function
n306_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:             mov              r11, 136
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 840], rax;          jmp   n307_call_α
                        .size            n306_var_bx, .-n306_var_bx
                        .type            n307_call_bx, @function
n307_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_call_α:            mov              r11, 137
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n308_var_α
n307_call_β:            mov              r11, 137;                            jmp   sum$2F4_step
                        .size            n307_call_bx, .-n307_call_bx
                        .type            n308_var_bx, @function
n308_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:             mov              r11, 138
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 856], rax;          jmp   n309_call_α
                        .size            n308_var_bx, .-n308_var_bx
                        .type            n309_call_bx, @function
n309_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_call_α:            mov              r11, 139
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 856]
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
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n310_call_α
n309_call_β:            mov              r11, 139;                            jmp   sum$2F4_step
                        .size            n309_call_bx, .-n309_call_bx
                        .type            n310_call_bx, @function
n310_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_call_α:            mov              r11, 140
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
                                                                              jmp   n311_var_ref_α
n310_call_β:            mov              r11, 140;                            jmp   sum$2F4_ω
                        .size            n310_call_bx, .-n310_call_bx
                        .type            n311_var_ref_bx, @function
n311_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n312_var_α
                        .size            n311_var_ref_bx, .-n311_var_ref_bx
                        .type            n312_var_bx, @function
n312_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:             mov              r11, 142
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 584], rax;          jmp   n313_lit_integer_α
                        .size            n312_var_bx, .-n312_var_bx
                        .type            n313_lit_integer_bx, @function
n313_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_integer_α:     mov              r11, 143
                        mov              qword ptr [rbp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_403_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n314_call_α
.Llit_integer_α_403_0:  .quad            10
                        .size            n313_lit_integer_bx, .-n313_lit_integer_bx
                        .type            n314_call_bx, @function
n314_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_call_α:            mov              r11, 144
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
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n315_call_α
n314_call_β:            mov              r11, 144;                            jmp   sum$2F4_step
                        .size            n314_call_bx, .-n314_call_bx
                        .type            n315_call_bx, @function
n315_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_call_α:            mov              r11, 145
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    sum$2F4_ω
                                                                              jmp   n316_var_ref_α
n315_call_β:            mov              r11, 145;                            jmp   sum$2F4_ω
                        .size            n315_call_bx, .-n315_call_bx
                        .type            n316_var_ref_bx, @function
n316_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n317_var_α
                        .size            n316_var_ref_bx, .-n316_var_ref_bx
                        .type            n317_var_bx, @function
n317_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_var_α:             mov              r11, 147
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 408], rax;          jmp   n318_lit_integer_α
                        .size            n317_var_bx, .-n317_var_bx
                        .type            n318_lit_integer_bx, @function
n318_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_integer_α:     mov              r11, 148
                        mov              qword ptr [rbp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_410_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n319_call_α
.Llit_integer_α_410_0:  .quad            10
                        .size            n318_lit_integer_bx, .-n318_lit_integer_bx
                        .type            n319_call_bx, @function
n319_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_call_α:            mov              r11, 149
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
                                                                              jmp   n320_call_α
n319_call_β:            mov              r11, 149;                            jmp   sum$2F4_step
                        .size            n319_call_bx, .-n319_call_bx
                        .type            n320_call_bx, @function
n320_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_call_α:            mov              r11, 150
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
                                                                              jmp   n321_var_ref_α
n320_call_β:            mov              r11, 150;                            jmp   sum$2F4_ω
                        .size            n320_call_bx, .-n320_call_bx
                        .type            n321_var_ref_bx, @function
n321_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2464]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n322_var_ref_α
                        .size            n321_var_ref_bx, .-n321_var_ref_bx
                        .type            n322_var_ref_bx, @function
n322_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:         mov              r11, 152
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n323_var_ref_α
                        .size            n322_var_ref_bx, .-n322_var_ref_bx
                        .type            n323_var_ref_bx, @function
n323_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:         mov              r11, 153
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n324_var_ref_α
                        .size            n323_var_ref_bx, .-n323_var_ref_bx
                        .type            n324_var_ref_bx, @function
n324_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_var_ref_α:         mov              r11, 154
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n325_call_proc_staged_α
                        .size            n324_var_ref_bx, .-n324_var_ref_bx
                        .type            n325_call_proc_staged_bx, @function
n325_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_call_proc_staged_α:
                        mov              r11, 155
                        mov              qword ptr [rbp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_422_200
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_422_201
.Lcall_proc_staged_α_422_200:
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
.Lcall_proc_staged_α_422_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_422_202
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_422_203
.Lcall_proc_staged_α_422_202:
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
.Lcall_proc_staged_α_422_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_422_204
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_422_205
.Lcall_proc_staged_α_422_204:
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
.Lcall_proc_staged_α_422_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_422_206
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_422_207
.Lcall_proc_staged_α_422_206:
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
.Lcall_proc_staged_α_422_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_422_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_422_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_422_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_422_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_422_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_422_3:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_422_21
                        add              rsp, 32
.Lcall_proc_staged_α_422_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_422_2
.Lcall_proc_staged_α_422_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_422_2
.Lcall_proc_staged_α_422_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_422_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   sum$2F4_ω
.Lcall_proc_staged_α_422_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_422_29
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
.Lcall_proc_staged_α_422_29:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    sum$2F4_ω
                                                                              jmp   sum$2F4_ret0
n325_call_proc_staged_β:
                        mov              r11, 155
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_422_22
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_422_22
                        mov              rcx, qword ptr [rbp + 168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_422_22:
                                                                              jmp   sum$2F4_ω
.Lcall_proc_staged_α_422_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    sum$2F4_ω
                                                                              jmp   sum$2F4_ret0
.Lcall_proc_staged_α_422_0:
                        .quad            .Lcall_proc_staged_α_422_0_s
.Lcall_proc_staged_α_422_0_s:
                        .string          "sum/4"
                        .size            n325_call_proc_staged_bx, .-n325_call_proc_staged_bx
                        .type            n326_var_ref_bx, @function
n326_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_var_ref_α:         mov              r11, 156
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n327_lit_string_α
                        .size            n326_var_ref_bx, .-n326_var_ref_bx
                        .type            n327_lit_string_bx, @function
n327_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_string_α:      mov              r11, 157
                        mov              qword ptr [rbp + 1952], 2            # result
                        mov              dword ptr [rbp + 1956], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_425_0]
                        mov              qword ptr [rbp + 1960], rax;         jmp   n328_call_α
.Llit_string_α_425_0:   .quad            .Llit_string_α_425_0_s
.Llit_string_α_425_0_s: .string          "[]"
                        .size            n327_lit_string_bx, .-n327_lit_string_bx
                        .type            n328_call_bx, @function
n328_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_call_α:            mov              r11, 158
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1888]
                        mov              rsi, qword ptr [rip + .Lcall_α_426_2]
                                                                              jmp   .Lcall_α_426_3
.Lcall_α_426_2:         .quad            .Lcall_α_426_2_s
.Lcall_α_426_2_s:       .string          "[]"
.Lcall_α_426_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n329_var_ref_α
n328_call_β:            mov              r11, 158;                            jmp   sum$2F4_step
                        .size            n328_call_bx, .-n328_call_bx
                        .type            n329_var_ref_bx, @function
n329_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx;         jmp   n330_var_ref_α
                        .size            n329_var_ref_bx, .-n329_var_ref_bx
                        .type            n330_var_ref_bx, @function
n330_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:         mov              r11, 160
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx;         jmp   n331_call_α
                        .size            n330_var_ref_bx, .-n330_var_ref_bx
                        .type            n331_call_bx, @function
n331_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_call_α:            mov              r11, 161
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n332_var_ref_α
n331_call_β:            mov              r11, 161;                            jmp   sum$2F4_step
                        .size            n331_call_bx, .-n331_call_bx
                        .type            n332_var_ref_bx, @function
n332_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx;         jmp   n333_lit_integer_α
                        .size            n332_var_ref_bx, .-n332_var_ref_bx
                        .type            n333_lit_integer_bx, @function
n333_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_integer_α:     mov              r11, 163
                        mov              qword ptr [rbp + 1760], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_434_0]
                        mov              qword ptr [rbp + 1768], rax;         jmp   n334_call_α
.Llit_integer_α_434_0:  .quad            0
                        .size            n333_lit_integer_bx, .-n333_lit_integer_bx
                        .type            n334_call_bx, @function
n334_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_call_α:            mov              r11, 164
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1696]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n335_var_ref_α
n334_call_β:            mov              r11, 164;                            jmp   sum$2F4_step
                        .size            n334_call_bx, .-n334_call_bx
                        .type            n335_var_ref_bx, @function
n335_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:         mov              r11, 165
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx;         jmp   n336_var_ref_α
                        .size            n335_var_ref_bx, .-n335_var_ref_bx
                        .type            n336_var_ref_bx, @function
n336_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_var_ref_α:         mov              r11, 166
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx;         jmp   n337_call_α
                        .size            n336_var_ref_bx, .-n336_var_ref_bx
                        .type            n337_call_bx, @function
n337_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_call_α:            mov              r11, 167
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1600]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n338_cut_α
n337_call_β:            mov              r11, 167;                            jmp   sum$2F4_step
                        .size            n337_call_bx, .-n337_call_bx
                        .type            n338_cut_bx, @function
n338_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_cut_α:             mov              r11, 168
                        mov              qword ptr [rbp + 2648], 0
                        mov              qword ptr [rbp + 2656], 0
                        lea              rdi, [rbp + 2640]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   sum$2F4_γ
                        .size            n338_cut_bx, .-n338_cut_bx
                        .type            n339_var_ref_bx, @function
n339_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_var_ref_α:         mov              r11, 169
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx;         jmp   n340_lit_string_α
                        .size            n339_var_ref_bx, .-n339_var_ref_bx
                        .type            n340_lit_string_bx, @function
n340_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_string_α:      mov              r11, 170
                        mov              qword ptr [rbp + 2448], 2            # result
                        mov              dword ptr [rbp + 2452], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_445_0]
                        mov              qword ptr [rbp + 2456], rax;         jmp   n341_call_α
.Llit_string_α_445_0:   .quad            .Llit_string_α_445_0_s
.Llit_string_α_445_0_s: .string          "[]"
                        .size            n340_lit_string_bx, .-n340_lit_string_bx
                        .type            n341_call_bx, @function
n341_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_call_α:            mov              r11, 171
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2392], rax
                        lea              rdi, [rbp + 2384]
                        mov              rsi, qword ptr [rip + .Lcall_α_446_2]
                                                                              jmp   .Lcall_α_446_3
.Lcall_α_446_2:         .quad            .Lcall_α_446_2_s
.Lcall_α_446_2_s:       .string          "[]"
.Lcall_α_446_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n342_var_ref_α
n341_call_β:            mov              r11, 171;                            jmp   sum$2F4_step
                        .size            n341_call_bx, .-n341_call_bx
                        .type            n342_var_ref_bx, @function
n342_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:         mov              r11, 172
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx;         jmp   n343_lit_string_α
                        .size            n342_var_ref_bx, .-n342_var_ref_bx
                        .type            n343_lit_string_bx, @function
n343_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_string_α:      mov              r11, 173
                        mov              qword ptr [rbp + 2352], 2            # result
                        mov              dword ptr [rbp + 2356], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_449_0]
                        mov              qword ptr [rbp + 2360], rax;         jmp   n344_call_α
.Llit_string_α_449_0:   .quad            .Llit_string_α_449_0_s
.Llit_string_α_449_0_s: .string          "[]"
                        .size            n343_lit_string_bx, .-n343_lit_string_bx
                        .type            n344_call_bx, @function
n344_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_call_α:            mov              r11, 174
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2296], rax
                        lea              rdi, [rbp + 2288]
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
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n345_var_ref_α
n344_call_β:            mov              r11, 174;                            jmp   sum$2F4_step
                        .size            n344_call_bx, .-n344_call_bx
                        .type            n345_var_ref_bx, @function
n345_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:         mov              r11, 175
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n346_var_ref_α
                        .size            n345_var_ref_bx, .-n345_var_ref_bx
                        .type            n346_var_ref_bx, @function
n346_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:         mov              r11, 176
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx;         jmp   n347_call_α
                        .size            n346_var_ref_bx, .-n346_var_ref_bx
                        .type            n347_call_bx, @function
n347_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_call_α:            mov              r11, 177
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2216], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2200], rax
                        lea              rdi, [rbp + 2192]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n348_var_ref_α
n347_call_β:            mov              r11, 177;                            jmp   sum$2F4_step
                        .size            n347_call_bx, .-n347_call_bx
                        .type            n348_var_ref_bx, @function
n348_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_var_ref_α:         mov              r11, 178
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n349_lit_string_α
                        .size            n348_var_ref_bx, .-n348_var_ref_bx
                        .type            n349_lit_string_bx, @function
n349_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_string_α:      mov              r11, 179
                        mov              qword ptr [rbp + 2160], 2            # result
                        mov              dword ptr [rbp + 2164], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_458_0]
                        mov              qword ptr [rbp + 2168], rax;         jmp   n350_var_ref_α
.Llit_string_α_458_0:   .quad            .Llit_string_α_458_0_s
.Llit_string_α_458_0_s: .string          "."
                        .size            n349_lit_string_bx, .-n349_lit_string_bx
                        .type            n350_var_ref_bx, @function
n350_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:         mov              r11, 180
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx;         jmp   n351_lit_string_α
                        .size            n350_var_ref_bx, .-n350_var_ref_bx
                        .type            n351_lit_string_bx, @function
n351_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_string_α:      mov              r11, 181
                        mov              qword ptr [rbp + 2048], 2            # result
                        mov              dword ptr [rbp + 2052], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_461_0]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n352_call_α
.Llit_string_α_461_0:   .quad            .Llit_string_α_461_0_s
.Llit_string_α_461_0_s: .string          "[]"
                        .size            n351_lit_string_bx, .-n351_lit_string_bx
                        .type            n352_call_bx, @function
n352_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_call_α:            mov              r11, 182
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2104], rax
                        lea              rdi, [rbp + 2096]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n353_call_α
n352_call_β:            mov              r11, 182;                            jmp   sum$2F4_step
                        .size            n352_call_bx, .-n352_call_bx
                        .type            n353_call_bx, @function
n353_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_call_α:            mov              r11, 183
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2088]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   sum$2F4_γ
n353_call_β:            mov              r11, 183;                            jmp   sum$2F4_step
                        .size            n353_call_bx, .-n353_call_bx
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_ret0:
                        lea              rax, [rip + n325_call_proc_staged_β]
                        mov              qword ptr [rbp + 2656], rax
                                                                              jmp   sum$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_step:
                        mov              rdi, qword ptr [rbp + 2640]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2656], 0
                        mov              qword ptr [rbp + 2608], 0
                        mov              qword ptr [rbp + 2616], 0
                        mov              qword ptr [rbp + 2592], 0
                        mov              qword ptr [rbp + 2600], 0
                        mov              qword ptr [rbp + 2560], 0
                        mov              qword ptr [rbp + 2568], 0
                        mov              qword ptr [rbp + 2464], 0
                        mov              qword ptr [rbp + 2472], 0
                        mov              qword ptr [rbp + 2576], 0
                        mov              qword ptr [rbp + 2584], 0
                        mov              qword ptr [rbp + 2480], 0
                        mov              qword ptr [rbp + 2488], 0
                        mov              qword ptr [rbp + 2544], 0
                        mov              qword ptr [rbp + 2552], 0
                        mov              qword ptr [rbp + 2512], 0
                        mov              qword ptr [rbp + 2520], 0
                        mov              qword ptr [rbp + 2528], 0
                        mov              qword ptr [rbp + 2536], 0
                        mov              qword ptr [rbp + 2496], 0
                        mov              qword ptr [rbp + 2504], 0
                        mov              rax, qword ptr [rbp + 2648]
                        test             rax, rax
                                                                              je    sum$2F4_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_alt1:
                        lea              rax, [rip + sum$2F4_alt2]
                        mov              qword ptr [rbp + 2648], rax
                                                                              jmp   n326_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_alt2:
                        xor              eax, eax
                        mov              qword ptr [rbp + 2648], rax
                                                                              jmp   n339_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_β:
                        test             r15, r15
                                                                              jne   sum$2F4_ω
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2656], 0
                        test             rax, rax
                                                                              jne   sum$2F4_βres
                                                                              jmp   sum$2F4_step
sum$2F4_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 2680]
                        mov              rax, qword ptr [rbp + 2664]
                        cmp              r13, rax;                            je    sum$2F4_altdet
                        lea              rdx, [rip + sum$2F4_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 2696];         jmp   rcx
sum$2F4_altdet:         xor              eax, eax
                        lea              rsp, [rbp + 2704]
                        mov              rbp, qword ptr [rbp + 2696];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_ω:
                        mov              rcx, qword ptr [rbp + 2688]
                        mov              r13, qword ptr [rbp + 2664]
                        lea              rsp, [rbp + 2704]
                        mov              rbp, qword ptr [rbp + 2696];         jmp   rcx
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
                        .type            n464_var_ref_bx, @function
n464_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n464_var_ref_α:         mov              r11, 184
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n465_lit_integer_α
                        .size            n464_var_ref_bx, .-n464_var_ref_bx
                        .type            n465_lit_integer_bx, @function
n465_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n465_lit_integer_α:     mov              r11, 185
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_481_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n466_call_α
.Llit_integer_α_481_0:  .quad            0
                        .size            n465_lit_integer_bx, .-n465_lit_integer_bx
                        .type            n466_call_bx, @function
n466_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n466_call_α:            mov              r11, 186
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
n466_call_β:            mov              r11, 186;                            jmp   even$2F1_step
                        .size            n466_call_bx, .-n466_call_bx
                        .type            n467_var_ref_bx, @function
n467_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n467_var_ref_α:         mov              r11, 187
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n468_lit_integer_α
                        .size            n467_var_ref_bx, .-n467_var_ref_bx
                        .type            n468_lit_integer_bx, @function
n468_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_integer_α:     mov              r11, 188
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_485_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n469_call_α
.Llit_integer_α_485_0:  .quad            2
                        .size            n468_lit_integer_bx, .-n468_lit_integer_bx
                        .type            n469_call_bx, @function
n469_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n469_call_α:            mov              r11, 189
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
n469_call_β:            mov              r11, 189;                            jmp   even$2F1_step
                        .size            n469_call_bx, .-n469_call_bx
                        .type            n470_var_ref_bx, @function
n470_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n470_var_ref_α:         mov              r11, 190
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n471_lit_integer_α
                        .size            n470_var_ref_bx, .-n470_var_ref_bx
                        .type            n471_lit_integer_bx, @function
n471_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_integer_α:     mov              r11, 191
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_489_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n472_call_α
.Llit_integer_α_489_0:  .quad            4
                        .size            n471_lit_integer_bx, .-n471_lit_integer_bx
                        .type            n472_call_bx, @function
n472_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n472_call_α:            mov              r11, 192
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
n472_call_β:            mov              r11, 192;                            jmp   even$2F1_step
                        .size            n472_call_bx, .-n472_call_bx
                        .type            n473_var_ref_bx, @function
n473_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n473_var_ref_α:         mov              r11, 193
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n474_lit_integer_α
                        .size            n473_var_ref_bx, .-n473_var_ref_bx
                        .type            n474_lit_integer_bx, @function
n474_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_integer_α:     mov              r11, 194
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_493_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n475_call_α
.Llit_integer_α_493_0:  .quad            6
                        .size            n474_lit_integer_bx, .-n474_lit_integer_bx
                        .type            n475_call_bx, @function
n475_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n475_call_α:            mov              r11, 195
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
n475_call_β:            mov              r11, 195;                            jmp   even$2F1_step
                        .size            n475_call_bx, .-n475_call_bx
                        .type            n476_var_ref_bx, @function
n476_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n476_var_ref_α:         mov              r11, 196
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n477_lit_integer_α
                        .size            n476_var_ref_bx, .-n476_var_ref_bx
                        .type            n477_lit_integer_bx, @function
n477_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n477_lit_integer_α:     mov              r11, 197
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_497_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n478_call_α
.Llit_integer_α_497_0:  .quad            8
                        .size            n477_lit_integer_bx, .-n477_lit_integer_bx
                        .type            n478_call_bx, @function
n478_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n478_call_α:            mov              r11, 198
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
n478_call_β:            mov              r11, 198;                            jmp   even$2F1_step
                        .size            n478_call_bx, .-n478_call_bx
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
                                                                              jmp   n467_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
even$2F1_alt2:
                        lea              rax, [rip + even$2F1_alt3]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n470_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
even$2F1_alt3:
                        lea              rax, [rip + even$2F1_alt4]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n473_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
even$2F1_alt4:
                        xor              eax, eax
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n476_var_ref_α
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
                        .type            n499_var_ref_bx, @function
n499_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n499_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx;         jmp   n500_var_ref_α
                        .size            n499_var_ref_bx, .-n499_var_ref_bx
                        .type            n500_var_ref_bx, @function
n500_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n500_var_ref_α:         mov              r11, 200
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6768]
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx;         jmp   n501_call_α
                        .size            n500_var_ref_bx, .-n500_var_ref_bx
                        .type            n501_call_bx, @function
n501_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n501_call_α:            mov              r11, 201
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
                                                                              jmp   n502_var_ref_α
n501_call_β:            mov              r11, 201;                            jmp   top$2F16_step
                        .size            n501_call_bx, .-n501_call_bx
                        .type            n502_var_ref_bx, @function
n502_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n502_var_ref_α:         mov              r11, 202
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx;         jmp   n503_var_ref_α
                        .size            n502_var_ref_bx, .-n502_var_ref_bx
                        .type            n503_var_ref_bx, @function
n503_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n503_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6784]
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx;         jmp   n504_call_α
                        .size            n503_var_ref_bx, .-n503_var_ref_bx
                        .type            n504_call_bx, @function
n504_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n504_call_α:            mov              r11, 204
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
                                                                              jmp   n505_var_ref_α
n504_call_β:            mov              r11, 204;                            jmp   top$2F16_step
                        .size            n504_call_bx, .-n504_call_bx
                        .type            n505_var_ref_bx, @function
n505_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n505_var_ref_α:         mov              r11, 205
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx;         jmp   n506_var_ref_α
                        .size            n505_var_ref_bx, .-n505_var_ref_bx
                        .type            n506_var_ref_bx, @function
n506_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n506_var_ref_α:         mov              r11, 206
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6800]
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx;         jmp   n507_call_α
                        .size            n506_var_ref_bx, .-n506_var_ref_bx
                        .type            n507_call_bx, @function
n507_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n507_call_α:            mov              r11, 207
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
                                                                              jmp   n508_var_ref_α
n507_call_β:            mov              r11, 207;                            jmp   top$2F16_step
                        .size            n507_call_bx, .-n507_call_bx
                        .type            n508_var_ref_bx, @function
n508_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n508_var_ref_α:         mov              r11, 208
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 6240], rax
                        mov              qword ptr [rbp + 6248], rdx;         jmp   n509_var_ref_α
                        .size            n508_var_ref_bx, .-n508_var_ref_bx
                        .type            n509_var_ref_bx, @function
n509_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n509_var_ref_α:         mov              r11, 209
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6816]
                        mov              qword ptr [rbp + 6256], rax
                        mov              qword ptr [rbp + 6264], rdx;         jmp   n510_call_α
                        .size            n509_var_ref_bx, .-n509_var_ref_bx
                        .type            n510_call_bx, @function
n510_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n510_call_α:            mov              r11, 210
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
                                                                              jmp   n511_var_ref_α
n510_call_β:            mov              r11, 210;                            jmp   top$2F16_step
                        .size            n510_call_bx, .-n510_call_bx
                        .type            n511_var_ref_bx, @function
n511_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n511_var_ref_α:         mov              r11, 211
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 6144], rax
                        mov              qword ptr [rbp + 6152], rdx;         jmp   n512_var_ref_α
                        .size            n511_var_ref_bx, .-n511_var_ref_bx
                        .type            n512_var_ref_bx, @function
n512_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n512_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6848]
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx;         jmp   n513_call_α
                        .size            n512_var_ref_bx, .-n512_var_ref_bx
                        .type            n513_call_bx, @function
n513_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n513_call_α:            mov              r11, 213
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
                                                                              jmp   n514_var_ref_α
n513_call_β:            mov              r11, 213;                            jmp   top$2F16_step
                        .size            n513_call_bx, .-n513_call_bx
                        .type            n514_var_ref_bx, @function
n514_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n514_var_ref_α:         mov              r11, 214
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 96]
                        mov              qword ptr [rbp + 6048], rax
                        mov              qword ptr [rbp + 6056], rdx;         jmp   n515_var_ref_α
                        .size            n514_var_ref_bx, .-n514_var_ref_bx
                        .type            n515_var_ref_bx, @function
n515_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n515_var_ref_α:         mov              r11, 215
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6640]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx;         jmp   n516_call_α
                        .size            n515_var_ref_bx, .-n515_var_ref_bx
                        .type            n516_call_bx, @function
n516_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n516_call_α:            mov              r11, 216
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
                                                                              jmp   n517_var_ref_α
n516_call_β:            mov              r11, 216;                            jmp   top$2F16_step
                        .size            n516_call_bx, .-n516_call_bx
                        .type            n517_var_ref_bx, @function
n517_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n517_var_ref_α:         mov              r11, 217
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 112]
                        mov              qword ptr [rbp + 5952], rax
                        mov              qword ptr [rbp + 5960], rdx;         jmp   n518_var_ref_α
                        .size            n517_var_ref_bx, .-n517_var_ref_bx
                        .type            n518_var_ref_bx, @function
n518_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n518_var_ref_α:         mov              r11, 218
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6656]
                        mov              qword ptr [rbp + 5968], rax
                        mov              qword ptr [rbp + 5976], rdx;         jmp   n519_call_α
                        .size            n518_var_ref_bx, .-n518_var_ref_bx
                        .type            n519_call_bx, @function
n519_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n519_call_α:            mov              r11, 219
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
                                                                              jmp   n520_var_ref_α
n519_call_β:            mov              r11, 219;                            jmp   top$2F16_step
                        .size            n519_call_bx, .-n519_call_bx
                        .type            n520_var_ref_bx, @function
n520_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n520_var_ref_α:         mov              r11, 220
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 128]
                        mov              qword ptr [rbp + 5856], rax
                        mov              qword ptr [rbp + 5864], rdx;         jmp   n521_var_ref_α
                        .size            n520_var_ref_bx, .-n520_var_ref_bx
                        .type            n521_var_ref_bx, @function
n521_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n521_var_ref_α:         mov              r11, 221
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6672]
                        mov              qword ptr [rbp + 5872], rax
                        mov              qword ptr [rbp + 5880], rdx;         jmp   n522_call_α
                        .size            n521_var_ref_bx, .-n521_var_ref_bx
                        .type            n522_call_bx, @function
n522_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n522_call_α:            mov              r11, 222
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
                                                                              jmp   n523_var_ref_α
n522_call_β:            mov              r11, 222;                            jmp   top$2F16_step
                        .size            n522_call_bx, .-n522_call_bx
                        .type            n523_var_ref_bx, @function
n523_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n523_var_ref_α:         mov              r11, 223
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 144]
                        mov              qword ptr [rbp + 5760], rax
                        mov              qword ptr [rbp + 5768], rdx;         jmp   n524_var_ref_α
                        .size            n523_var_ref_bx, .-n523_var_ref_bx
                        .type            n524_var_ref_bx, @function
n524_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n524_var_ref_α:         mov              r11, 224
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6688]
                        mov              qword ptr [rbp + 5776], rax
                        mov              qword ptr [rbp + 5784], rdx;         jmp   n525_call_α
                        .size            n524_var_ref_bx, .-n524_var_ref_bx
                        .type            n525_call_bx, @function
n525_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n525_call_α:            mov              r11, 225
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
                                                                              jmp   n526_var_ref_α
n525_call_β:            mov              r11, 225;                            jmp   top$2F16_step
                        .size            n525_call_bx, .-n525_call_bx
                        .type            n526_var_ref_bx, @function
n526_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n526_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 160]
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx;         jmp   n527_var_ref_α
                        .size            n526_var_ref_bx, .-n526_var_ref_bx
                        .type            n527_var_ref_bx, @function
n527_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n527_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6704]
                        mov              qword ptr [rbp + 5680], rax
                        mov              qword ptr [rbp + 5688], rdx;         jmp   n528_call_α
                        .size            n527_var_ref_bx, .-n527_var_ref_bx
                        .type            n528_call_bx, @function
n528_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n528_call_α:            mov              r11, 228
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
                                                                              jmp   n529_var_ref_α
n528_call_β:            mov              r11, 228;                            jmp   top$2F16_step
                        .size            n528_call_bx, .-n528_call_bx
                        .type            n529_var_ref_bx, @function
n529_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n529_var_ref_α:         mov              r11, 229
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 176]
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx;         jmp   n530_var_ref_α
                        .size            n529_var_ref_bx, .-n529_var_ref_bx
                        .type            n530_var_ref_bx, @function
n530_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n530_var_ref_α:         mov              r11, 230
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6720]
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx;         jmp   n531_call_α
                        .size            n530_var_ref_bx, .-n530_var_ref_bx
                        .type            n531_call_bx, @function
n531_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n531_call_α:            mov              r11, 231
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
                                                                              jmp   n532_var_ref_α
n531_call_β:            mov              r11, 231;                            jmp   top$2F16_step
                        .size            n531_call_bx, .-n531_call_bx
                        .type            n532_var_ref_bx, @function
n532_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n532_var_ref_α:         mov              r11, 232
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 192]
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx;         jmp   n533_var_ref_α
                        .size            n532_var_ref_bx, .-n532_var_ref_bx
                        .type            n533_var_ref_bx, @function
n533_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n533_var_ref_α:         mov              r11, 233
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6736]
                        mov              qword ptr [rbp + 5488], rax
                        mov              qword ptr [rbp + 5496], rdx;         jmp   n534_call_α
                        .size            n533_var_ref_bx, .-n533_var_ref_bx
                        .type            n534_call_bx, @function
n534_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n534_call_α:            mov              r11, 234
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
                                                                              jmp   n535_var_ref_α
n534_call_β:            mov              r11, 234;                            jmp   top$2F16_step
                        .size            n534_call_bx, .-n534_call_bx
                        .type            n535_var_ref_bx, @function
n535_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n535_var_ref_α:         mov              r11, 235
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 208]
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx;         jmp   n536_var_ref_α
                        .size            n535_var_ref_bx, .-n535_var_ref_bx
                        .type            n536_var_ref_bx, @function
n536_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n536_var_ref_α:         mov              r11, 236
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6624]
                        mov              qword ptr [rbp + 5392], rax
                        mov              qword ptr [rbp + 5400], rdx;         jmp   n537_call_α
                        .size            n536_var_ref_bx, .-n536_var_ref_bx
                        .type            n537_call_bx, @function
n537_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n537_call_α:            mov              r11, 237
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
                                                                              jmp   n538_var_ref_α
n537_call_β:            mov              r11, 237;                            jmp   top$2F16_step
                        .size            n537_call_bx, .-n537_call_bx
                        .type            n538_var_ref_bx, @function
n538_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n538_var_ref_α:         mov              r11, 238
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 224]
                        mov              qword ptr [rbp + 5280], rax
                        mov              qword ptr [rbp + 5288], rdx;         jmp   n539_var_ref_α
                        .size            n538_var_ref_bx, .-n538_var_ref_bx
                        .type            n539_var_ref_bx, @function
n539_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n539_var_ref_α:         mov              r11, 239
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6608]
                        mov              qword ptr [rbp + 5296], rax
                        mov              qword ptr [rbp + 5304], rdx;         jmp   n540_call_α
                        .size            n539_var_ref_bx, .-n539_var_ref_bx
                        .type            n540_call_bx, @function
n540_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n540_call_α:            mov              r11, 240
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
                                                                              jmp   n541_var_ref_α
n540_call_β:            mov              r11, 240;                            jmp   top$2F16_step
                        .size            n540_call_bx, .-n540_call_bx
                        .type            n541_var_ref_bx, @function
n541_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n541_var_ref_α:         mov              r11, 241
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 240]
                        mov              qword ptr [rbp + 5184], rax
                        mov              qword ptr [rbp + 5192], rdx;         jmp   n542_var_ref_α
                        .size            n541_var_ref_bx, .-n541_var_ref_bx
                        .type            n542_var_ref_bx, @function
n542_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n542_var_ref_α:         mov              r11, 242
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6592]
                        mov              qword ptr [rbp + 5200], rax
                        mov              qword ptr [rbp + 5208], rdx;         jmp   n543_call_α
                        .size            n542_var_ref_bx, .-n542_var_ref_bx
                        .type            n543_call_bx, @function
n543_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n543_call_α:            mov              r11, 243
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
                                                                              jmp   n544_var_ref_α
n543_call_β:            mov              r11, 243;                            jmp   top$2F16_step
                        .size            n543_call_bx, .-n543_call_bx
                        .type            n544_var_ref_bx, @function
n544_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n544_var_ref_α:         mov              r11, 244
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 256]
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx;         jmp   n545_var_ref_α
                        .size            n544_var_ref_bx, .-n544_var_ref_bx
                        .type            n545_var_ref_bx, @function
n545_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n545_var_ref_α:         mov              r11, 245
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6576]
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx;         jmp   n546_call_α
                        .size            n545_var_ref_bx, .-n545_var_ref_bx
                        .type            n546_call_bx, @function
n546_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n546_call_α:            mov              r11, 246
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
                                                                              jmp   n547_var_ref_α
n546_call_β:            mov              r11, 246;                            jmp   top$2F16_step
                        .size            n546_call_bx, .-n546_call_bx
                        .type            n547_var_ref_bx, @function
n547_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n547_var_ref_α:         mov              r11, 247
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6768]
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx;         jmp   n548_call_proc_staged_α
                        .size            n547_var_ref_bx, .-n547_var_ref_bx
                        .type            n548_call_proc_staged_bx, @function
n548_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n548_call_proc_staged_α:
                        mov              r11, 248
                        mov              qword ptr [rbp + 4976], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_755_200
                        mov              rax, qword ptr [rbp + 5008]
                        mov              rdx, qword ptr [rbp + 5016]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_755_201
.Lcall_proc_staged_α_755_200:
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
.Lcall_proc_staged_α_755_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_755_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_755_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_755_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_755_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_755_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_755_3:
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_755_21
                        add              rsp, 32
.Lcall_proc_staged_α_755_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_755_2
.Lcall_proc_staged_α_755_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4976], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_755_2
.Lcall_proc_staged_α_755_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_755_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   top$2F16_step
.Lcall_proc_staged_α_755_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_755_29
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
.Lcall_proc_staged_α_755_29:
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n549_var_ref_α
n548_call_proc_staged_β:
                        mov              r11, 248
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_755_22
                        mov              rax, qword ptr [rbp + 4976]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_755_22
                        mov              rcx, qword ptr [rbp + 4984]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_755_22:
                                                                              jmp   top$2F16_step
.Lcall_proc_staged_α_755_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n549_var_ref_α
.Lcall_proc_staged_α_755_0:
                        .quad            .Lcall_proc_staged_α_755_0_s
.Lcall_proc_staged_α_755_0_s:
                        .string          "odd/1"
                        .size            n548_call_proc_staged_bx, .-n548_call_proc_staged_bx
                        .type            n549_var_ref_bx, @function
n549_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n549_var_ref_α:         mov              r11, 249
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6784]
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx;         jmp   n550_call_proc_staged_α
                        .size            n549_var_ref_bx, .-n549_var_ref_bx
                        .type            n550_call_proc_staged_bx, @function
n550_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n550_call_proc_staged_α:
                        mov              r11, 250
                        mov              qword ptr [rbp + 4896], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_759_200
                        mov              rax, qword ptr [rbp + 4928]
                        mov              rdx, qword ptr [rbp + 4936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_759_201
.Lcall_proc_staged_α_759_200:
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
.Lcall_proc_staged_α_759_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_759_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_759_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_759_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_759_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_759_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_759_3:
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_759_21
                        add              rsp, 32
.Lcall_proc_staged_α_759_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_759_2
.Lcall_proc_staged_α_759_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4896], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_759_2
.Lcall_proc_staged_α_759_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_759_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n548_call_proc_staged_β
.Lcall_proc_staged_α_759_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_759_29
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
.Lcall_proc_staged_α_759_29:
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                        cmp              al, 104;                             je    n548_call_proc_staged_β
                                                                              jmp   n551_var_ref_α
n550_call_proc_staged_β:
                        mov              r11, 250
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_759_22
                        mov              rax, qword ptr [rbp + 4896]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_759_22
                        mov              rcx, qword ptr [rbp + 4904]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_759_22:
                                                                              jmp   n548_call_proc_staged_β
.Lcall_proc_staged_α_759_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                        cmp              al, 104;                             je    n548_call_proc_staged_β
                                                                              jmp   n551_var_ref_α
.Lcall_proc_staged_α_759_0:
                        .quad            .Lcall_proc_staged_α_759_0_s
.Lcall_proc_staged_α_759_0_s:
                        .string          "even/1"
                        .size            n550_call_proc_staged_bx, .-n550_call_proc_staged_bx
                        .type            n551_var_ref_bx, @function
n551_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n551_var_ref_α:         mov              r11, 251
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6800]
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx;         jmp   n552_call_proc_staged_α
                        .size            n551_var_ref_bx, .-n551_var_ref_bx
                        .type            n552_call_proc_staged_bx, @function
n552_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n552_call_proc_staged_α:
                        mov              r11, 252
                        mov              qword ptr [rbp + 4816], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_763_200
                        mov              rax, qword ptr [rbp + 4848]
                        mov              rdx, qword ptr [rbp + 4856]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_763_201
.Lcall_proc_staged_α_763_200:
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
.Lcall_proc_staged_α_763_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_763_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_763_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_763_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_763_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_763_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_763_3:
                        mov              qword ptr [rbp + 4816], rax
                        mov              qword ptr [rbp + 4824], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_763_21
                        add              rsp, 32
.Lcall_proc_staged_α_763_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_763_2
.Lcall_proc_staged_α_763_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4816], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_763_2
.Lcall_proc_staged_α_763_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_763_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n550_call_proc_staged_β
.Lcall_proc_staged_α_763_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_763_29
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
.Lcall_proc_staged_α_763_29:
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                        cmp              al, 104;                             je    n550_call_proc_staged_β
                                                                              jmp   n553_var_ref_α
n552_call_proc_staged_β:
                        mov              r11, 252
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_763_22
                        mov              rax, qword ptr [rbp + 4816]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_763_22
                        mov              rcx, qword ptr [rbp + 4824]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_763_22:
                                                                              jmp   n550_call_proc_staged_β
.Lcall_proc_staged_α_763_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                        cmp              al, 104;                             je    n550_call_proc_staged_β
                                                                              jmp   n553_var_ref_α
.Lcall_proc_staged_α_763_0:
                        .quad            .Lcall_proc_staged_α_763_0_s
.Lcall_proc_staged_α_763_0_s:
                        .string          "even/1"
                        .size            n552_call_proc_staged_bx, .-n552_call_proc_staged_bx
                        .type            n553_var_ref_bx, @function
n553_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n553_var_ref_α:         mov              r11, 253
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6848]
                        mov              qword ptr [rbp + 4768], rax
                        mov              qword ptr [rbp + 4776], rdx;         jmp   n554_call_proc_staged_α
                        .size            n553_var_ref_bx, .-n553_var_ref_bx
                        .type            n554_call_proc_staged_bx, @function
n554_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n554_call_proc_staged_α:
                        mov              r11, 254
                        mov              qword ptr [rbp + 4736], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_767_200
                        mov              rax, qword ptr [rbp + 4768]
                        mov              rdx, qword ptr [rbp + 4776]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_767_201
.Lcall_proc_staged_α_767_200:
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
.Lcall_proc_staged_α_767_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_767_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_767_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_767_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_767_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_767_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_767_3:
                        mov              qword ptr [rbp + 4736], rax
                        mov              qword ptr [rbp + 4744], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_767_21
                        add              rsp, 32
.Lcall_proc_staged_α_767_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_767_2
.Lcall_proc_staged_α_767_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4736], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_767_2
.Lcall_proc_staged_α_767_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_767_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n552_call_proc_staged_β
.Lcall_proc_staged_α_767_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_767_29
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
.Lcall_proc_staged_α_767_29:
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        cmp              al, 104;                             je    n552_call_proc_staged_β
                                                                              jmp   n555_lit_string_α
n554_call_proc_staged_β:
                        mov              r11, 254
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_767_22
                        mov              rax, qword ptr [rbp + 4736]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_767_22
                        mov              rcx, qword ptr [rbp + 4744]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_767_22:
                                                                              jmp   n552_call_proc_staged_β
.Lcall_proc_staged_α_767_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        cmp              al, 104;                             je    n552_call_proc_staged_β
                                                                              jmp   n555_lit_string_α
.Lcall_proc_staged_α_767_0:
                        .quad            .Lcall_proc_staged_α_767_0_s
.Lcall_proc_staged_α_767_0_s:
                        .string          "even/1"
                        .size            n554_call_proc_staged_bx, .-n554_call_proc_staged_bx
                        .type            n555_lit_string_bx, @function
n555_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n555_lit_string_α:      mov              r11, 255
                        mov              qword ptr [rbp + 4208], 2            # result
                        mov              dword ptr [rbp + 4212], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_768_0]
                        mov              qword ptr [rbp + 4216], rax;         jmp   n556_var_ref_α
.Llit_string_α_768_0:   .quad            .Llit_string_α_768_0_s
.Llit_string_α_768_0_s: .string          "."
                        .size            n555_lit_string_bx, .-n555_lit_string_bx
                        .type            n556_var_ref_bx, @function
n556_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n556_var_ref_α:         mov              r11, 256
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6800]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx;         jmp   n557_lit_string_α
                        .size            n556_var_ref_bx, .-n556_var_ref_bx
                        .type            n557_lit_string_bx, @function
n557_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n557_lit_string_α:      mov              r11, 257
                        mov              qword ptr [rbp + 4096], 2            # result
                        mov              dword ptr [rbp + 4100], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_771_0]
                        mov              qword ptr [rbp + 4104], rax;         jmp   n558_var_ref_α
.Llit_string_α_771_0:   .quad            .Llit_string_α_771_0_s
.Llit_string_α_771_0_s: .string          "."
                        .size            n557_lit_string_bx, .-n557_lit_string_bx
                        .type            n558_var_ref_bx, @function
n558_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n558_var_ref_α:         mov              r11, 258
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6784]
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx;         jmp   n559_lit_string_α
                        .size            n558_var_ref_bx, .-n558_var_ref_bx
                        .type            n559_lit_string_bx, @function
n559_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n559_lit_string_α:      mov              r11, 259
                        mov              qword ptr [rbp + 3984], 2            # result
                        mov              dword ptr [rbp + 3988], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_774_0]
                        mov              qword ptr [rbp + 3992], rax;         jmp   n560_var_ref_α
.Llit_string_α_774_0:   .quad            .Llit_string_α_774_0_s
.Llit_string_α_774_0_s: .string          "."
                        .size            n559_lit_string_bx, .-n559_lit_string_bx
                        .type            n560_var_ref_bx, @function
n560_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n560_var_ref_α:         mov              r11, 260
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6768]
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx;         jmp   n561_lit_string_α
                        .size            n560_var_ref_bx, .-n560_var_ref_bx
                        .type            n561_lit_string_bx, @function
n561_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n561_lit_string_α:      mov              r11, 261
                        mov              qword ptr [rbp + 3872], 2            # result
                        mov              dword ptr [rbp + 3876], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_777_0]
                        mov              qword ptr [rbp + 3880], rax;         jmp   n562_call_α
.Llit_string_α_777_0:   .quad            .Llit_string_α_777_0_s
.Llit_string_α_777_0_s: .string          "[]"
                        .size            n561_lit_string_bx, .-n561_lit_string_bx
                        .type            n562_call_bx, @function
n562_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n562_call_α:            mov              r11, 262
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
                                                                              jmp   n563_call_α
n562_call_β:            mov              r11, 262;                            jmp   top$2F16_ω
                        .size            n562_call_bx, .-n562_call_bx
                        .type            n563_call_bx, @function
n563_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n563_call_α:            mov              r11, 263
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
                                                                              jmp   n564_call_α
n563_call_β:            mov              r11, 263;                            jmp   top$2F16_ω
                        .size            n563_call_bx, .-n563_call_bx
                        .type            n564_call_bx, @function
n564_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n564_call_α:            mov              r11, 264
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
                                                                              jmp   n565_var_ref_α
n564_call_β:            mov              r11, 264;                            jmp   top$2F16_step
                        .size            n564_call_bx, .-n564_call_bx
                        .type            n565_var_ref_bx, @function
n565_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n565_var_ref_α:         mov              r11, 265
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6848]
                        mov              qword ptr [rbp + 4224], rax
                        mov              qword ptr [rbp + 4232], rdx;         jmp   n566_lit_string_α
                        .size            n565_var_ref_bx, .-n565_var_ref_bx
                        .type            n566_lit_string_bx, @function
n566_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n566_lit_string_α:      mov              r11, 266
                        mov              qword ptr [rbp + 4688], 2            # result
                        mov              dword ptr [rbp + 4692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_783_0]
                        mov              qword ptr [rbp + 4696], rax;         jmp   n567_var_ref_α
.Llit_string_α_783_0:   .quad            .Llit_string_α_783_0_s
.Llit_string_α_783_0_s: .string          "."
                        .size            n566_lit_string_bx, .-n566_lit_string_bx
                        .type            n567_var_ref_bx, @function
n567_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n567_var_ref_α:         mov              r11, 267
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6688]
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx;         jmp   n568_lit_string_α
                        .size            n567_var_ref_bx, .-n567_var_ref_bx
                        .type            n568_lit_string_bx, @function
n568_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n568_lit_string_α:      mov              r11, 268
                        mov              qword ptr [rbp + 4576], 2            # result
                        mov              dword ptr [rbp + 4580], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_786_0]
                        mov              qword ptr [rbp + 4584], rax;         jmp   n569_var_ref_α
.Llit_string_α_786_0:   .quad            .Llit_string_α_786_0_s
.Llit_string_α_786_0_s: .string          "."
                        .size            n568_lit_string_bx, .-n568_lit_string_bx
                        .type            n569_var_ref_bx, @function
n569_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n569_var_ref_α:         mov              r11, 269
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6672]
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx;         jmp   n570_lit_string_α
                        .size            n569_var_ref_bx, .-n569_var_ref_bx
                        .type            n570_lit_string_bx, @function
n570_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n570_lit_string_α:      mov              r11, 270
                        mov              qword ptr [rbp + 4464], 2            # result
                        mov              dword ptr [rbp + 4468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_789_0]
                        mov              qword ptr [rbp + 4472], rax;         jmp   n571_var_ref_α
.Llit_string_α_789_0:   .quad            .Llit_string_α_789_0_s
.Llit_string_α_789_0_s: .string          "."
                        .size            n570_lit_string_bx, .-n570_lit_string_bx
                        .type            n571_var_ref_bx, @function
n571_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n571_var_ref_α:         mov              r11, 271
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6656]
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx;         jmp   n572_lit_string_α
                        .size            n571_var_ref_bx, .-n571_var_ref_bx
                        .type            n572_lit_string_bx, @function
n572_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n572_lit_string_α:      mov              r11, 272
                        mov              qword ptr [rbp + 4352], 2            # result
                        mov              dword ptr [rbp + 4356], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_792_0]
                        mov              qword ptr [rbp + 4360], rax;         jmp   n573_var_ref_α
.Llit_string_α_792_0:   .quad            .Llit_string_α_792_0_s
.Llit_string_α_792_0_s: .string          "."
                        .size            n572_lit_string_bx, .-n572_lit_string_bx
                        .type            n573_var_ref_bx, @function
n573_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n573_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6640]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx;         jmp   n574_var_ref_α
                        .size            n573_var_ref_bx, .-n573_var_ref_bx
                        .type            n574_var_ref_bx, @function
n574_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n574_var_ref_α:         mov              r11, 274
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6832]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx;         jmp   n575_call_α
                        .size            n574_var_ref_bx, .-n574_var_ref_bx
                        .type            n575_call_bx, @function
n575_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n575_call_α:            mov              r11, 275
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
                                                                              jmp   n576_call_α
n575_call_β:            mov              r11, 275;                            jmp   top$2F16_ω
                        .size            n575_call_bx, .-n575_call_bx
                        .type            n576_call_bx, @function
n576_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n576_call_α:            mov              r11, 276
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
                                                                              jmp   n577_call_α
n576_call_β:            mov              r11, 276;                            jmp   top$2F16_ω
                        .size            n576_call_bx, .-n576_call_bx
                        .type            n577_call_bx, @function
n577_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n577_call_α:            mov              r11, 277
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
                                                                              jmp   n578_call_α
n577_call_β:            mov              r11, 277;                            jmp   top$2F16_ω
                        .size            n577_call_bx, .-n577_call_bx
                        .type            n578_call_bx, @function
n578_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n578_call_α:            mov              r11, 278
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
                                                                              jmp   n579_call_proc_staged_α
n578_call_β:            mov              r11, 278;                            jmp   top$2F16_step
                        .size            n578_call_bx, .-n578_call_bx
                        .type            n579_call_proc_staged_bx, @function
n579_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n579_call_proc_staged_α:
                        mov              r11, 279
                        mov              qword ptr [rbp + 3840], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_802_200
                        mov              rax, qword ptr [rbp + 4128]
                        mov              rdx, qword ptr [rbp + 4136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_802_201
.Lcall_proc_staged_α_802_200:
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
.Lcall_proc_staged_α_802_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_802_202
                        mov              rax, qword ptr [rbp + 4224]
                        mov              rdx, qword ptr [rbp + 4232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_802_203
.Lcall_proc_staged_α_802_202:
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
.Lcall_proc_staged_α_802_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_802_204
                        mov              rax, qword ptr [rbp + 4608]
                        mov              rdx, qword ptr [rbp + 4616]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_802_205
.Lcall_proc_staged_α_802_204:
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
.Lcall_proc_staged_α_802_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_802_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_802_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_802_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_802_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_802_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_802_3:
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_802_21
                        add              rsp, 32
.Lcall_proc_staged_α_802_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_802_2
.Lcall_proc_staged_α_802_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3840], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_802_2
.Lcall_proc_staged_α_802_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_802_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n554_call_proc_staged_β
.Lcall_proc_staged_α_802_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_802_29
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
.Lcall_proc_staged_α_802_29:
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              al, 104;                             je    n554_call_proc_staged_β
                                                                              jmp   n580_var_ref_α
n579_call_proc_staged_β:
                        mov              r11, 279
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_802_22
                        mov              rax, qword ptr [rbp + 3840]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_802_22
                        mov              rcx, qword ptr [rbp + 3848]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_802_22:
                                                                              jmp   n554_call_proc_staged_β
.Lcall_proc_staged_α_802_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              al, 104;                             je    n554_call_proc_staged_β
                                                                              jmp   n580_var_ref_α
.Lcall_proc_staged_α_802_0:
                        .quad            .Lcall_proc_staged_α_802_0_s
.Lcall_proc_staged_α_802_0_s:
                        .string          "mult/3"
                        .size            n579_call_proc_staged_bx, .-n579_call_proc_staged_bx
                        .type            n580_var_ref_bx, @function
n580_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n580_var_ref_α:         mov              r11, 280
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6640]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx;         jmp   n581_call_proc_staged_α
                        .size            n580_var_ref_bx, .-n580_var_ref_bx
                        .type            n581_call_proc_staged_bx, @function
n581_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n581_call_proc_staged_α:
                        mov              r11, 281
                        mov              qword ptr [rbp + 3728], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_806_200
                        mov              rax, qword ptr [rbp + 3760]
                        mov              rdx, qword ptr [rbp + 3768]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_806_201
.Lcall_proc_staged_α_806_200:
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
.Lcall_proc_staged_α_806_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_806_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_806_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_806_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_806_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_806_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_806_3:
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_806_21
                        add              rsp, 32
.Lcall_proc_staged_α_806_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_806_2
.Lcall_proc_staged_α_806_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3728], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_806_2
.Lcall_proc_staged_α_806_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_806_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n579_call_proc_staged_β
.Lcall_proc_staged_α_806_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_806_29
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
.Lcall_proc_staged_α_806_29:
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              al, 104;                             je    n579_call_proc_staged_β
                                                                              jmp   n582_var_ref_α
n581_call_proc_staged_β:
                        mov              r11, 281
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_806_22
                        mov              rax, qword ptr [rbp + 3728]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_806_22
                        mov              rcx, qword ptr [rbp + 3736]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_806_22:
                                                                              jmp   n579_call_proc_staged_β
.Lcall_proc_staged_α_806_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              al, 104;                             je    n579_call_proc_staged_β
                                                                              jmp   n582_var_ref_α
.Lcall_proc_staged_α_806_0:
                        .quad            .Lcall_proc_staged_α_806_0_s
.Lcall_proc_staged_α_806_0_s:
                        .string          "lefteven/1"
                        .size            n581_call_proc_staged_bx, .-n581_call_proc_staged_bx
                        .type            n582_var_ref_bx, @function
n582_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n582_var_ref_α:         mov              r11, 282
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6656]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx;         jmp   n583_call_proc_staged_α
                        .size            n582_var_ref_bx, .-n582_var_ref_bx
                        .type            n583_call_proc_staged_bx, @function
n583_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n583_call_proc_staged_α:
                        mov              r11, 283
                        mov              qword ptr [rbp + 3648], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_810_200
                        mov              rax, qword ptr [rbp + 3680]
                        mov              rdx, qword ptr [rbp + 3688]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_810_201
.Lcall_proc_staged_α_810_200:
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
.Lcall_proc_staged_α_810_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_810_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_810_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_810_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_810_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_810_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_810_3:
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_810_21
                        add              rsp, 32
.Lcall_proc_staged_α_810_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_810_2
.Lcall_proc_staged_α_810_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3648], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_810_2
.Lcall_proc_staged_α_810_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_810_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n581_call_proc_staged_β
.Lcall_proc_staged_α_810_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_810_29
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
.Lcall_proc_staged_α_810_29:
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              al, 104;                             je    n581_call_proc_staged_β
                                                                              jmp   n584_var_ref_α
n583_call_proc_staged_β:
                        mov              r11, 283
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_810_22
                        mov              rax, qword ptr [rbp + 3648]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_810_22
                        mov              rcx, qword ptr [rbp + 3656]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_810_22:
                                                                              jmp   n581_call_proc_staged_β
.Lcall_proc_staged_α_810_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              al, 104;                             je    n581_call_proc_staged_β
                                                                              jmp   n584_var_ref_α
.Lcall_proc_staged_α_810_0:
                        .quad            .Lcall_proc_staged_α_810_0_s
.Lcall_proc_staged_α_810_0_s:
                        .string          "odd/1"
                        .size            n583_call_proc_staged_bx, .-n583_call_proc_staged_bx
                        .type            n584_var_ref_bx, @function
n584_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n584_var_ref_α:         mov              r11, 284
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6672]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx;         jmp   n585_call_proc_staged_α
                        .size            n584_var_ref_bx, .-n584_var_ref_bx
                        .type            n585_call_proc_staged_bx, @function
n585_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n585_call_proc_staged_α:
                        mov              r11, 285
                        mov              qword ptr [rbp + 3568], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_814_200
                        mov              rax, qword ptr [rbp + 3600]
                        mov              rdx, qword ptr [rbp + 3608]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_814_201
.Lcall_proc_staged_α_814_200:
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
.Lcall_proc_staged_α_814_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_814_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_814_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_814_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_814_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_814_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_814_3:
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_814_21
                        add              rsp, 32
.Lcall_proc_staged_α_814_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_814_2
.Lcall_proc_staged_α_814_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3568], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_814_2
.Lcall_proc_staged_α_814_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_814_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n583_call_proc_staged_β
.Lcall_proc_staged_α_814_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_814_29
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
.Lcall_proc_staged_α_814_29:
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              al, 104;                             je    n583_call_proc_staged_β
                                                                              jmp   n586_var_ref_α
n585_call_proc_staged_β:
                        mov              r11, 285
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_814_22
                        mov              rax, qword ptr [rbp + 3568]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_814_22
                        mov              rcx, qword ptr [rbp + 3576]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_814_22:
                                                                              jmp   n583_call_proc_staged_β
.Lcall_proc_staged_α_814_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              al, 104;                             je    n583_call_proc_staged_β
                                                                              jmp   n586_var_ref_α
.Lcall_proc_staged_α_814_0:
                        .quad            .Lcall_proc_staged_α_814_0_s
.Lcall_proc_staged_α_814_0_s:
                        .string          "even/1"
                        .size            n585_call_proc_staged_bx, .-n585_call_proc_staged_bx
                        .type            n586_var_ref_bx, @function
n586_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n586_var_ref_α:         mov              r11, 286
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6688]
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx;         jmp   n587_call_proc_staged_α
                        .size            n586_var_ref_bx, .-n586_var_ref_bx
                        .type            n587_call_proc_staged_bx, @function
n587_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n587_call_proc_staged_α:
                        mov              r11, 287
                        mov              qword ptr [rbp + 3488], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_818_200
                        mov              rax, qword ptr [rbp + 3520]
                        mov              rdx, qword ptr [rbp + 3528]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_818_201
.Lcall_proc_staged_α_818_200:
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
.Lcall_proc_staged_α_818_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_818_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_818_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_818_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_818_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_818_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_818_3:
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_818_21
                        add              rsp, 32
.Lcall_proc_staged_α_818_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_818_2
.Lcall_proc_staged_α_818_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3488], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_818_2
.Lcall_proc_staged_α_818_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_818_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n585_call_proc_staged_β
.Lcall_proc_staged_α_818_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_818_29
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
.Lcall_proc_staged_α_818_29:
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              al, 104;                             je    n585_call_proc_staged_β
                                                                              jmp   n588_var_ref_α
n587_call_proc_staged_β:
                        mov              r11, 287
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_818_22
                        mov              rax, qword ptr [rbp + 3488]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_818_22
                        mov              rcx, qword ptr [rbp + 3496]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_818_22:
                                                                              jmp   n585_call_proc_staged_β
.Lcall_proc_staged_α_818_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              al, 104;                             je    n585_call_proc_staged_β
                                                                              jmp   n588_var_ref_α
.Lcall_proc_staged_α_818_0:
                        .quad            .Lcall_proc_staged_α_818_0_s
.Lcall_proc_staged_α_818_0_s:
                        .string          "even/1"
                        .size            n587_call_proc_staged_bx, .-n587_call_proc_staged_bx
                        .type            n588_var_ref_bx, @function
n588_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n588_var_ref_α:         mov              r11, 288
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6832]
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx;         jmp   n589_call_proc_staged_α
                        .size            n588_var_ref_bx, .-n588_var_ref_bx
                        .type            n589_call_proc_staged_bx, @function
n589_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n589_call_proc_staged_α:
                        mov              r11, 289
                        mov              qword ptr [rbp + 3408], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_822_200
                        mov              rax, qword ptr [rbp + 3440]
                        mov              rdx, qword ptr [rbp + 3448]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_822_201
.Lcall_proc_staged_α_822_200:
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
.Lcall_proc_staged_α_822_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_822_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_822_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_822_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_822_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_822_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_822_3:
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_822_21
                        add              rsp, 32
.Lcall_proc_staged_α_822_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_822_2
.Lcall_proc_staged_α_822_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3408], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_822_2
.Lcall_proc_staged_α_822_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_822_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n587_call_proc_staged_β
.Lcall_proc_staged_α_822_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_822_29
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
.Lcall_proc_staged_α_822_29:
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              al, 104;                             je    n587_call_proc_staged_β
                                                                              jmp   n590_var_ref_α
n589_call_proc_staged_β:
                        mov              r11, 289
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_822_22
                        mov              rax, qword ptr [rbp + 3408]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_822_22
                        mov              rcx, qword ptr [rbp + 3416]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_822_22:
                                                                              jmp   n587_call_proc_staged_β
.Lcall_proc_staged_α_822_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              al, 104;                             je    n587_call_proc_staged_β
                                                                              jmp   n590_var_ref_α
.Lcall_proc_staged_α_822_0:
                        .quad            .Lcall_proc_staged_α_822_0_s
.Lcall_proc_staged_α_822_0_s:
                        .string          "zero/1"
                        .size            n589_call_proc_staged_bx, .-n589_call_proc_staged_bx
                        .type            n590_var_ref_bx, @function
n590_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n590_var_ref_α:         mov              r11, 290
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6816]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx;         jmp   n591_call_proc_staged_α
                        .size            n590_var_ref_bx, .-n590_var_ref_bx
                        .type            n591_call_proc_staged_bx, @function
n591_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n591_call_proc_staged_α:
                        mov              r11, 291
                        mov              qword ptr [rbp + 3328], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_826_200
                        mov              rax, qword ptr [rbp + 3360]
                        mov              rdx, qword ptr [rbp + 3368]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_826_201
.Lcall_proc_staged_α_826_200:
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
.Lcall_proc_staged_α_826_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_826_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_826_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_826_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_826_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_826_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_826_3:
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_826_21
                        add              rsp, 32
.Lcall_proc_staged_α_826_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_826_2
.Lcall_proc_staged_α_826_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3328], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_826_2
.Lcall_proc_staged_α_826_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_826_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n589_call_proc_staged_β
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
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3296]
                        mov              rdx, qword ptr [rbp + 3304]
.Lcall_proc_staged_α_826_29:
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              al, 104;                             je    n589_call_proc_staged_β
                                                                              jmp   n592_lit_string_α
n591_call_proc_staged_β:
                        mov              r11, 291
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_826_22
                        mov              rax, qword ptr [rbp + 3328]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_826_22
                        mov              rcx, qword ptr [rbp + 3336]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_826_22:
                                                                              jmp   n589_call_proc_staged_β
.Lcall_proc_staged_α_826_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              al, 104;                             je    n589_call_proc_staged_β
                                                                              jmp   n592_lit_string_α
.Lcall_proc_staged_α_826_0:
                        .quad            .Lcall_proc_staged_α_826_0_s
.Lcall_proc_staged_α_826_0_s:
                        .string          "lefteven/1"
                        .size            n591_call_proc_staged_bx, .-n591_call_proc_staged_bx
                        .type            n592_lit_string_bx, @function
n592_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n592_lit_string_α:      mov              r11, 292
                        mov              qword ptr [rbp + 2912], 2            # result
                        mov              dword ptr [rbp + 2916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_827_0]
                        mov              qword ptr [rbp + 2920], rax;         jmp   n593_var_ref_α
.Llit_string_α_827_0:   .quad            .Llit_string_α_827_0_s
.Llit_string_α_827_0_s: .string          "."
                        .size            n592_lit_string_bx, .-n592_lit_string_bx
                        .type            n593_var_ref_bx, @function
n593_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n593_var_ref_α:         mov              r11, 293
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6800]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx;         jmp   n594_lit_string_α
                        .size            n593_var_ref_bx, .-n593_var_ref_bx
                        .type            n594_lit_string_bx, @function
n594_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n594_lit_string_α:      mov              r11, 294
                        mov              qword ptr [rbp + 2800], 2            # result
                        mov              dword ptr [rbp + 2804], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_830_0]
                        mov              qword ptr [rbp + 2808], rax;         jmp   n595_var_ref_α
.Llit_string_α_830_0:   .quad            .Llit_string_α_830_0_s
.Llit_string_α_830_0_s: .string          "."
                        .size            n594_lit_string_bx, .-n594_lit_string_bx
                        .type            n595_var_ref_bx, @function
n595_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n595_var_ref_α:         mov              r11, 295
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6784]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx;         jmp   n596_lit_string_α
                        .size            n595_var_ref_bx, .-n595_var_ref_bx
                        .type            n596_lit_string_bx, @function
n596_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n596_lit_string_α:      mov              r11, 296
                        mov              qword ptr [rbp + 2688], 2            # result
                        mov              dword ptr [rbp + 2692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_833_0]
                        mov              qword ptr [rbp + 2696], rax;         jmp   n597_var_ref_α
.Llit_string_α_833_0:   .quad            .Llit_string_α_833_0_s
.Llit_string_α_833_0_s: .string          "."
                        .size            n596_lit_string_bx, .-n596_lit_string_bx
                        .type            n597_var_ref_bx, @function
n597_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n597_var_ref_α:         mov              r11, 297
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6768]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx;         jmp   n598_lit_string_α
                        .size            n597_var_ref_bx, .-n597_var_ref_bx
                        .type            n598_lit_string_bx, @function
n598_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n598_lit_string_α:      mov              r11, 298
                        mov              qword ptr [rbp + 2576], 2            # result
                        mov              dword ptr [rbp + 2580], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_836_0]
                        mov              qword ptr [rbp + 2584], rax;         jmp   n599_call_α
.Llit_string_α_836_0:   .quad            .Llit_string_α_836_0_s
.Llit_string_α_836_0_s: .string          "[]"
                        .size            n598_lit_string_bx, .-n598_lit_string_bx
                        .type            n599_call_bx, @function
n599_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n599_call_α:            mov              r11, 299
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
                                                                              jmp   n600_call_α
n599_call_β:            mov              r11, 299;                            jmp   top$2F16_ω
                        .size            n599_call_bx, .-n599_call_bx
                        .type            n600_call_bx, @function
n600_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n600_call_α:            mov              r11, 300
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
                                                                              jmp   n601_call_α
n600_call_β:            mov              r11, 300;                            jmp   top$2F16_ω
                        .size            n600_call_bx, .-n600_call_bx
                        .type            n601_call_bx, @function
n601_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n601_call_α:            mov              r11, 301
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
                                                                              jmp   n602_var_ref_α
n601_call_β:            mov              r11, 301;                            jmp   top$2F16_step
                        .size            n601_call_bx, .-n601_call_bx
                        .type            n602_var_ref_bx, @function
n602_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n602_var_ref_α:         mov              r11, 302
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6816]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx;         jmp   n603_lit_string_α
                        .size            n602_var_ref_bx, .-n602_var_ref_bx
                        .type            n603_lit_string_bx, @function
n603_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n603_lit_string_α:      mov              r11, 303
                        mov              qword ptr [rbp + 3280], 2            # result
                        mov              dword ptr [rbp + 3284], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_842_0]
                        mov              qword ptr [rbp + 3288], rax;         jmp   n604_var_ref_α
.Llit_string_α_842_0:   .quad            .Llit_string_α_842_0_s
.Llit_string_α_842_0_s: .string          "."
                        .size            n603_lit_string_bx, .-n603_lit_string_bx
                        .type            n604_var_ref_bx, @function
n604_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n604_var_ref_α:         mov              r11, 304
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6736]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n605_lit_string_α
                        .size            n604_var_ref_bx, .-n604_var_ref_bx
                        .type            n605_lit_string_bx, @function
n605_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n605_lit_string_α:      mov              r11, 305
                        mov              qword ptr [rbp + 3168], 2            # result
                        mov              dword ptr [rbp + 3172], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_845_0]
                        mov              qword ptr [rbp + 3176], rax;         jmp   n606_var_ref_α
.Llit_string_α_845_0:   .quad            .Llit_string_α_845_0_s
.Llit_string_α_845_0_s: .string          "."
                        .size            n605_lit_string_bx, .-n605_lit_string_bx
                        .type            n606_var_ref_bx, @function
n606_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n606_var_ref_α:         mov              r11, 306
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6720]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx;         jmp   n607_lit_string_α
                        .size            n606_var_ref_bx, .-n606_var_ref_bx
                        .type            n607_lit_string_bx, @function
n607_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n607_lit_string_α:      mov              r11, 307
                        mov              qword ptr [rbp + 3056], 2            # result
                        mov              dword ptr [rbp + 3060], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_848_0]
                        mov              qword ptr [rbp + 3064], rax;         jmp   n608_var_ref_α
.Llit_string_α_848_0:   .quad            .Llit_string_α_848_0_s
.Llit_string_α_848_0_s: .string          "."
                        .size            n607_lit_string_bx, .-n607_lit_string_bx
                        .type            n608_var_ref_bx, @function
n608_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n608_var_ref_α:         mov              r11, 308
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6704]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx;         jmp   n609_var_ref_α
                        .size            n608_var_ref_bx, .-n608_var_ref_bx
                        .type            n609_var_ref_bx, @function
n609_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n609_var_ref_α:         mov              r11, 309
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6752]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx;         jmp   n610_call_α
                        .size            n609_var_ref_bx, .-n609_var_ref_bx
                        .type            n610_call_bx, @function
n610_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n610_call_α:            mov              r11, 310
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
                                                                              jmp   n611_call_α
n610_call_β:            mov              r11, 310;                            jmp   top$2F16_ω
                        .size            n610_call_bx, .-n610_call_bx
                        .type            n611_call_bx, @function
n611_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n611_call_α:            mov              r11, 311
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
                                                                              jmp   n612_call_α
n611_call_β:            mov              r11, 311;                            jmp   top$2F16_ω
                        .size            n611_call_bx, .-n611_call_bx
                        .type            n612_call_bx, @function
n612_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n612_call_α:            mov              r11, 312
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
                                                                              jmp   n613_call_proc_staged_α
n612_call_β:            mov              r11, 312;                            jmp   top$2F16_step
                        .size            n612_call_bx, .-n612_call_bx
                        .type            n613_call_proc_staged_bx, @function
n613_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n613_call_proc_staged_α:
                        mov              r11, 313
                        mov              qword ptr [rbp + 2544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_857_200
                        mov              rax, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_857_201
.Lcall_proc_staged_α_857_200:
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
.Lcall_proc_staged_α_857_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_857_202
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_857_203
.Lcall_proc_staged_α_857_202:
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
.Lcall_proc_staged_α_857_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_857_204
                        mov              rax, qword ptr [rbp + 3200]
                        mov              rdx, qword ptr [rbp + 3208]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_857_205
.Lcall_proc_staged_α_857_204:
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
.Lcall_proc_staged_α_857_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_857_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_857_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_857_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_857_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_857_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_857_3:
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_857_21
                        add              rsp, 32
.Lcall_proc_staged_α_857_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_857_2
.Lcall_proc_staged_α_857_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2544], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_857_2
.Lcall_proc_staged_α_857_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_857_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n591_call_proc_staged_β
.Lcall_proc_staged_α_857_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_857_29
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
.Lcall_proc_staged_α_857_29:
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              al, 104;                             je    n591_call_proc_staged_β
                                                                              jmp   n614_var_ref_α
n613_call_proc_staged_β:
                        mov              r11, 313
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_857_22
                        mov              rax, qword ptr [rbp + 2544]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_857_22
                        mov              rcx, qword ptr [rbp + 2552]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_857_22:
                                                                              jmp   n591_call_proc_staged_β
.Lcall_proc_staged_α_857_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              al, 104;                             je    n591_call_proc_staged_β
                                                                              jmp   n614_var_ref_α
.Lcall_proc_staged_α_857_0:
                        .quad            .Lcall_proc_staged_α_857_0_s
.Lcall_proc_staged_α_857_0_s:
                        .string          "mult/3"
                        .size            n613_call_proc_staged_bx, .-n613_call_proc_staged_bx
                        .type            n614_var_ref_bx, @function
n614_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n614_var_ref_α:         mov              r11, 314
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6704]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx;         jmp   n615_call_proc_staged_α
                        .size            n614_var_ref_bx, .-n614_var_ref_bx
                        .type            n615_call_proc_staged_bx, @function
n615_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n615_call_proc_staged_α:
                        mov              r11, 315
                        mov              qword ptr [rbp + 2432], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_861_200
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_861_201
.Lcall_proc_staged_α_861_200:
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
.Lcall_proc_staged_α_861_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_861_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_861_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_861_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_861_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_861_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_861_3:
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_861_21
                        add              rsp, 32
.Lcall_proc_staged_α_861_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_861_2
.Lcall_proc_staged_α_861_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2432], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_861_2
.Lcall_proc_staged_α_861_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_861_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n613_call_proc_staged_β
.Lcall_proc_staged_α_861_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_861_29
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
.Lcall_proc_staged_α_861_29:
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              al, 104;                             je    n613_call_proc_staged_β
                                                                              jmp   n616_var_ref_α
n615_call_proc_staged_β:
                        mov              r11, 315
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_861_22
                        mov              rax, qword ptr [rbp + 2432]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_861_22
                        mov              rcx, qword ptr [rbp + 2440]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_861_22:
                                                                              jmp   n613_call_proc_staged_β
.Lcall_proc_staged_α_861_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              al, 104;                             je    n613_call_proc_staged_β
                                                                              jmp   n616_var_ref_α
.Lcall_proc_staged_α_861_0:
                        .quad            .Lcall_proc_staged_α_861_0_s
.Lcall_proc_staged_α_861_0_s:
                        .string          "lefteven/1"
                        .size            n615_call_proc_staged_bx, .-n615_call_proc_staged_bx
                        .type            n616_var_ref_bx, @function
n616_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n616_var_ref_α:         mov              r11, 316
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6720]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx;         jmp   n617_call_proc_staged_α
                        .size            n616_var_ref_bx, .-n616_var_ref_bx
                        .type            n617_call_proc_staged_bx, @function
n617_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n617_call_proc_staged_α:
                        mov              r11, 317
                        mov              qword ptr [rbp + 2352], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_865_200
                        mov              rax, qword ptr [rbp + 2384]
                        mov              rdx, qword ptr [rbp + 2392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_865_201
.Lcall_proc_staged_α_865_200:
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
.Lcall_proc_staged_α_865_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_865_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_865_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_865_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_865_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_865_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_865_3:
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_865_21
                        add              rsp, 32
.Lcall_proc_staged_α_865_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_865_2
.Lcall_proc_staged_α_865_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2352], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_865_2
.Lcall_proc_staged_α_865_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_865_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n615_call_proc_staged_β
.Lcall_proc_staged_α_865_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_865_29
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
.Lcall_proc_staged_α_865_29:
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              al, 104;                             je    n615_call_proc_staged_β
                                                                              jmp   n618_var_ref_α
n617_call_proc_staged_β:
                        mov              r11, 317
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_865_22
                        mov              rax, qword ptr [rbp + 2352]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_865_22
                        mov              rcx, qword ptr [rbp + 2360]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_865_22:
                                                                              jmp   n615_call_proc_staged_β
.Lcall_proc_staged_α_865_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              al, 104;                             je    n615_call_proc_staged_β
                                                                              jmp   n618_var_ref_α
.Lcall_proc_staged_α_865_0:
                        .quad            .Lcall_proc_staged_α_865_0_s
.Lcall_proc_staged_α_865_0_s:
                        .string          "odd/1"
                        .size            n617_call_proc_staged_bx, .-n617_call_proc_staged_bx
                        .type            n618_var_ref_bx, @function
n618_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n618_var_ref_α:         mov              r11, 318
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6736]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n619_call_proc_staged_α
                        .size            n618_var_ref_bx, .-n618_var_ref_bx
                        .type            n619_call_proc_staged_bx, @function
n619_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n619_call_proc_staged_α:
                        mov              r11, 319
                        mov              qword ptr [rbp + 2272], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_869_200
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_869_201
.Lcall_proc_staged_α_869_200:
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
.Lcall_proc_staged_α_869_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_869_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_869_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_869_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_869_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_869_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_869_3:
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_869_21
                        add              rsp, 32
.Lcall_proc_staged_α_869_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_869_2
.Lcall_proc_staged_α_869_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2272], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_869_2
.Lcall_proc_staged_α_869_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_869_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n617_call_proc_staged_β
.Lcall_proc_staged_α_869_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_869_29
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
.Lcall_proc_staged_α_869_29:
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              al, 104;                             je    n617_call_proc_staged_β
                                                                              jmp   n620_var_ref_α
n619_call_proc_staged_β:
                        mov              r11, 319
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_869_22
                        mov              rax, qword ptr [rbp + 2272]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_869_22
                        mov              rcx, qword ptr [rbp + 2280]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_869_22:
                                                                              jmp   n617_call_proc_staged_β
.Lcall_proc_staged_α_869_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              al, 104;                             je    n617_call_proc_staged_β
                                                                              jmp   n620_var_ref_α
.Lcall_proc_staged_α_869_0:
                        .quad            .Lcall_proc_staged_α_869_0_s
.Lcall_proc_staged_α_869_0_s:
                        .string          "even/1"
                        .size            n619_call_proc_staged_bx, .-n619_call_proc_staged_bx
                        .type            n620_var_ref_bx, @function
n620_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n620_var_ref_α:         mov              r11, 320
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6752]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n621_call_proc_staged_α
                        .size            n620_var_ref_bx, .-n620_var_ref_bx
                        .type            n621_call_proc_staged_bx, @function
n621_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n621_call_proc_staged_α:
                        mov              r11, 321
                        mov              qword ptr [rbp + 2192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_873_200
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_873_201
.Lcall_proc_staged_α_873_200:
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
.Lcall_proc_staged_α_873_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_873_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_873_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_873_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_873_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_873_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_873_3:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_873_21
                        add              rsp, 32
.Lcall_proc_staged_α_873_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_873_2
.Lcall_proc_staged_α_873_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2192], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_873_2
.Lcall_proc_staged_α_873_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_873_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n619_call_proc_staged_β
.Lcall_proc_staged_α_873_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_873_29
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
.Lcall_proc_staged_α_873_29:
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              al, 104;                             je    n619_call_proc_staged_β
                                                                              jmp   n622_lit_string_α
n621_call_proc_staged_β:
                        mov              r11, 321
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_873_22
                        mov              rax, qword ptr [rbp + 2192]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_873_22
                        mov              rcx, qword ptr [rbp + 2200]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_873_22:
                                                                              jmp   n619_call_proc_staged_β
.Lcall_proc_staged_α_873_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              al, 104;                             je    n619_call_proc_staged_β
                                                                              jmp   n622_lit_string_α
.Lcall_proc_staged_α_873_0:
                        .quad            .Lcall_proc_staged_α_873_0_s
.Lcall_proc_staged_α_873_0_s:
                        .string          "zero/1"
                        .size            n621_call_proc_staged_bx, .-n621_call_proc_staged_bx
                        .type            n622_lit_string_bx, @function
n622_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n622_lit_string_α:      mov              r11, 322
                        mov              qword ptr [rbp + 1216], 2            # result
                        mov              dword ptr [rbp + 1220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_874_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n623_var_ref_α
.Llit_string_α_874_0:   .quad            .Llit_string_α_874_0_s
.Llit_string_α_874_0_s: .string          "."
                        .size            n622_lit_string_bx, .-n622_lit_string_bx
                        .type            n623_var_ref_bx, @function
n623_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n623_var_ref_α:         mov              r11, 323
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6688]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n624_lit_string_α
                        .size            n623_var_ref_bx, .-n623_var_ref_bx
                        .type            n624_lit_string_bx, @function
n624_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n624_lit_string_α:      mov              r11, 324
                        mov              qword ptr [rbp + 1104], 2            # result
                        mov              dword ptr [rbp + 1108], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_877_0]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n625_var_ref_α
.Llit_string_α_877_0:   .quad            .Llit_string_α_877_0_s
.Llit_string_α_877_0_s: .string          "."
                        .size            n624_lit_string_bx, .-n624_lit_string_bx
                        .type            n625_var_ref_bx, @function
n625_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n625_var_ref_α:         mov              r11, 325
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6672]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n626_lit_string_α
                        .size            n625_var_ref_bx, .-n625_var_ref_bx
                        .type            n626_lit_string_bx, @function
n626_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n626_lit_string_α:      mov              r11, 326
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_880_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n627_var_ref_α
.Llit_string_α_880_0:   .quad            .Llit_string_α_880_0_s
.Llit_string_α_880_0_s: .string          "."
                        .size            n626_lit_string_bx, .-n626_lit_string_bx
                        .type            n627_var_ref_bx, @function
n627_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n627_var_ref_α:         mov              r11, 327
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6656]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n628_lit_string_α
                        .size            n627_var_ref_bx, .-n627_var_ref_bx
                        .type            n628_lit_string_bx, @function
n628_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n628_lit_string_α:      mov              r11, 328
                        mov              qword ptr [rbp + 880], 2             # result
                        mov              dword ptr [rbp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_883_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n629_var_ref_α
.Llit_string_α_883_0:   .quad            .Llit_string_α_883_0_s
.Llit_string_α_883_0_s: .string          "."
                        .size            n628_lit_string_bx, .-n628_lit_string_bx
                        .type            n629_var_ref_bx, @function
n629_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n629_var_ref_α:         mov              r11, 329
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6640]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n630_lit_string_α
                        .size            n629_var_ref_bx, .-n629_var_ref_bx
                        .type            n630_lit_string_bx, @function
n630_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n630_lit_string_α:      mov              r11, 330
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_886_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n631_call_α
.Llit_string_α_886_0:   .quad            .Llit_string_α_886_0_s
.Llit_string_α_886_0_s: .string          "[]"
                        .size            n630_lit_string_bx, .-n630_lit_string_bx
                        .type            n631_call_bx, @function
n631_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n631_call_α:            mov              r11, 331
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
                                                                              jmp   n632_call_α
n631_call_β:            mov              r11, 331;                            jmp   top$2F16_ω
                        .size            n631_call_bx, .-n631_call_bx
                        .type            n632_call_bx, @function
n632_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n632_call_α:            mov              r11, 332
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
                                                                              jmp   n633_call_α
n632_call_β:            mov              r11, 332;                            jmp   top$2F16_ω
                        .size            n632_call_bx, .-n632_call_bx
                        .type            n633_call_bx, @function
n633_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n633_call_α:            mov              r11, 333
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
                                                                              jmp   n634_call_α
n633_call_β:            mov              r11, 333;                            jmp   top$2F16_ω
                        .size            n633_call_bx, .-n633_call_bx
                        .type            n634_call_bx, @function
n634_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n634_call_α:            mov              r11, 334
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
                                                                              jmp   n635_lit_string_α
n634_call_β:            mov              r11, 334;                            jmp   top$2F16_step
                        .size            n634_call_bx, .-n634_call_bx
                        .type            n635_lit_string_bx, @function
n635_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n635_lit_string_α:      mov              r11, 335
                        mov              qword ptr [rbp + 1680], 2            # result
                        mov              dword ptr [rbp + 1684], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_891_0]
                        mov              qword ptr [rbp + 1688], rax;         jmp   n636_lit_integer_α
.Llit_string_α_891_0:   .quad            .Llit_string_α_891_0_s
.Llit_string_α_891_0_s: .string          "."
                        .size            n635_lit_string_bx, .-n635_lit_string_bx
                        .type            n636_lit_integer_bx, @function
n636_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n636_lit_integer_α:     mov              r11, 336
                        mov              qword ptr [rbp + 1584], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_892_0]
                        mov              qword ptr [rbp + 1592], rax;         jmp   n637_lit_string_α
.Llit_integer_α_892_0:  .quad            0
                        .size            n636_lit_integer_bx, .-n636_lit_integer_bx
                        .type            n637_lit_string_bx, @function
n637_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n637_lit_string_α:      mov              r11, 337
                        mov              qword ptr [rbp + 1568], 2            # result
                        mov              dword ptr [rbp + 1572], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_893_0]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n638_var_ref_α
.Llit_string_α_893_0:   .quad            .Llit_string_α_893_0_s
.Llit_string_α_893_0_s: .string          "."
                        .size            n637_lit_string_bx, .-n637_lit_string_bx
                        .type            n638_var_ref_bx, @function
n638_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n638_var_ref_α:         mov              r11, 338
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6736]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n639_lit_string_α
                        .size            n638_var_ref_bx, .-n638_var_ref_bx
                        .type            n639_lit_string_bx, @function
n639_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n639_lit_string_α:      mov              r11, 339
                        mov              qword ptr [rbp + 1456], 2            # result
                        mov              dword ptr [rbp + 1460], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_896_0]
                        mov              qword ptr [rbp + 1464], rax;         jmp   n640_var_ref_α
.Llit_string_α_896_0:   .quad            .Llit_string_α_896_0_s
.Llit_string_α_896_0_s: .string          "."
                        .size            n639_lit_string_bx, .-n639_lit_string_bx
                        .type            n640_var_ref_bx, @function
n640_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n640_var_ref_α:         mov              r11, 340
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6720]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n641_lit_string_α
                        .size            n640_var_ref_bx, .-n640_var_ref_bx
                        .type            n641_lit_string_bx, @function
n641_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n641_lit_string_α:      mov              r11, 341
                        mov              qword ptr [rbp + 1344], 2            # result
                        mov              dword ptr [rbp + 1348], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_899_0]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n642_var_ref_α
.Llit_string_α_899_0:   .quad            .Llit_string_α_899_0_s
.Llit_string_α_899_0_s: .string          "."
                        .size            n641_lit_string_bx, .-n641_lit_string_bx
                        .type            n642_var_ref_bx, @function
n642_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n642_var_ref_α:         mov              r11, 342
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6704]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n643_lit_string_α
                        .size            n642_var_ref_bx, .-n642_var_ref_bx
                        .type            n643_lit_string_bx, @function
n643_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n643_lit_string_α:      mov              r11, 343
                        mov              qword ptr [rbp + 1232], 2            # result
                        mov              dword ptr [rbp + 1236], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_902_0]
                        mov              qword ptr [rbp + 1240], rax;         jmp   n644_call_α
.Llit_string_α_902_0:   .quad            .Llit_string_α_902_0_s
.Llit_string_α_902_0_s: .string          "[]"
                        .size            n643_lit_string_bx, .-n643_lit_string_bx
                        .type            n644_call_bx, @function
n644_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n644_call_α:            mov              r11, 344
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
                                                                              jmp   n645_call_α
n644_call_β:            mov              r11, 344;                            jmp   top$2F16_ω
                        .size            n644_call_bx, .-n644_call_bx
                        .type            n645_call_bx, @function
n645_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n645_call_α:            mov              r11, 345
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
                                                                              jmp   n646_call_α
n645_call_β:            mov              r11, 345;                            jmp   top$2F16_ω
                        .size            n645_call_bx, .-n645_call_bx
                        .type            n646_call_bx, @function
n646_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n646_call_α:            mov              r11, 346
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
                                                                              jmp   n647_call_α
n646_call_β:            mov              r11, 346;                            jmp   top$2F16_ω
                        .size            n646_call_bx, .-n646_call_bx
                        .type            n647_call_bx, @function
n647_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n647_call_α:            mov              r11, 347
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
                                                                              jmp   n648_lit_string_α
n647_call_β:            mov              r11, 347;                            jmp   top$2F16_step
                        .size            n647_call_bx, .-n647_call_bx
                        .type            n648_lit_string_bx, @function
n648_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n648_lit_string_α:      mov              r11, 348
                        mov              qword ptr [rbp + 2144], 2            # result
                        mov              dword ptr [rbp + 2148], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_907_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n649_var_ref_α
.Llit_string_α_907_0:   .quad            .Llit_string_α_907_0_s
.Llit_string_α_907_0_s: .string          "."
                        .size            n648_lit_string_bx, .-n648_lit_string_bx
                        .type            n649_var_ref_bx, @function
n649_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n649_var_ref_α:         mov              r11, 349
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6576]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx;         jmp   n650_lit_string_α
                        .size            n649_var_ref_bx, .-n649_var_ref_bx
                        .type            n650_lit_string_bx, @function
n650_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n650_lit_string_α:      mov              r11, 350
                        mov              qword ptr [rbp + 2032], 2            # result
                        mov              dword ptr [rbp + 2036], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_910_0]
                        mov              qword ptr [rbp + 2040], rax;         jmp   n651_var_ref_α
.Llit_string_α_910_0:   .quad            .Llit_string_α_910_0_s
.Llit_string_α_910_0_s: .string          "."
                        .size            n650_lit_string_bx, .-n650_lit_string_bx
                        .type            n651_var_ref_bx, @function
n651_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n651_var_ref_α:         mov              r11, 351
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6592]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n652_lit_string_α
                        .size            n651_var_ref_bx, .-n651_var_ref_bx
                        .type            n652_lit_string_bx, @function
n652_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n652_lit_string_α:      mov              r11, 352
                        mov              qword ptr [rbp + 1920], 2            # result
                        mov              dword ptr [rbp + 1924], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_913_0]
                        mov              qword ptr [rbp + 1928], rax;         jmp   n653_var_ref_α
.Llit_string_α_913_0:   .quad            .Llit_string_α_913_0_s
.Llit_string_α_913_0_s: .string          "."
                        .size            n652_lit_string_bx, .-n652_lit_string_bx
                        .type            n653_var_ref_bx, @function
n653_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n653_var_ref_α:         mov              r11, 353
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6608]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx;         jmp   n654_lit_string_α
                        .size            n653_var_ref_bx, .-n653_var_ref_bx
                        .type            n654_lit_string_bx, @function
n654_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n654_lit_string_α:      mov              r11, 354
                        mov              qword ptr [rbp + 1808], 2            # result
                        mov              dword ptr [rbp + 1812], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_916_0]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n655_var_ref_α
.Llit_string_α_916_0:   .quad            .Llit_string_α_916_0_s
.Llit_string_α_916_0_s: .string          "."
                        .size            n654_lit_string_bx, .-n654_lit_string_bx
                        .type            n655_var_ref_bx, @function
n655_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n655_var_ref_α:         mov              r11, 355
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6624]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx;         jmp   n656_var_ref_α
                        .size            n655_var_ref_bx, .-n655_var_ref_bx
                        .type            n656_var_ref_bx, @function
n656_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n656_var_ref_α:         mov              r11, 356
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6560]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx;         jmp   n657_call_α
                        .size            n656_var_ref_bx, .-n656_var_ref_bx
                        .type            n657_call_bx, @function
n657_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n657_call_α:            mov              r11, 357
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
                                                                              jmp   n658_call_α
n657_call_β:            mov              r11, 357;                            jmp   top$2F16_ω
                        .size            n657_call_bx, .-n657_call_bx
                        .type            n658_call_bx, @function
n658_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n658_call_α:            mov              r11, 358
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
                                                                              jmp   n659_call_α
n658_call_β:            mov              r11, 358;                            jmp   top$2F16_ω
                        .size            n658_call_bx, .-n658_call_bx
                        .type            n659_call_bx, @function
n659_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n659_call_α:            mov              r11, 359
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
                                                                              jmp   n660_call_α
n659_call_β:            mov              r11, 359;                            jmp   top$2F16_ω
                        .size            n659_call_bx, .-n659_call_bx
                        .type            n660_call_bx, @function
n660_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n660_call_α:            mov              r11, 360
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
                                                                              jmp   n661_call_proc_staged_α
n660_call_β:            mov              r11, 360;                            jmp   top$2F16_step
                        .size            n660_call_bx, .-n660_call_bx
                        .type            n661_call_proc_staged_bx, @function
n661_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n661_call_proc_staged_α:
                        mov              r11, 361
                        mov              qword ptr [rbp + 736], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_926_200
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_926_201
.Lcall_proc_staged_α_926_200:
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
.Lcall_proc_staged_α_926_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_926_202
                        mov              rax, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_926_203
.Lcall_proc_staged_α_926_202:
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
.Lcall_proc_staged_α_926_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_926_204
                        mov              rax, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_926_205
.Lcall_proc_staged_α_926_204:
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
.Lcall_proc_staged_α_926_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_926_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_926_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_926_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_926_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_926_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_926_3:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_926_21
                        add              rsp, 32
.Lcall_proc_staged_α_926_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_926_2
.Lcall_proc_staged_α_926_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 736], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_926_2
.Lcall_proc_staged_α_926_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_926_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n621_call_proc_staged_β
.Lcall_proc_staged_α_926_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_926_29
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
.Lcall_proc_staged_α_926_29:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    n621_call_proc_staged_β
                                                                              jmp   n662_var_ref_α
n661_call_proc_staged_β:
                        mov              r11, 361
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_926_22
                        mov              rax, qword ptr [rbp + 736]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_926_22
                        mov              rcx, qword ptr [rbp + 744]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_926_22:
                                                                              jmp   n621_call_proc_staged_β
.Lcall_proc_staged_α_926_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    n621_call_proc_staged_β
                                                                              jmp   n662_var_ref_α
.Lcall_proc_staged_α_926_0:
                        .quad            .Lcall_proc_staged_α_926_0_s
.Lcall_proc_staged_α_926_0_s:
                        .string          "sum/3"
                        .size            n661_call_proc_staged_bx, .-n661_call_proc_staged_bx
                        .type            n662_var_ref_bx, @function
n662_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n662_var_ref_α:         mov              r11, 362
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6624]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n663_call_proc_staged_α
                        .size            n662_var_ref_bx, .-n662_var_ref_bx
                        .type            n663_call_proc_staged_bx, @function
n663_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n663_call_proc_staged_α:
                        mov              r11, 363
                        mov              qword ptr [rbp + 624], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_930_200
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_930_201
.Lcall_proc_staged_α_930_200:
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
.Lcall_proc_staged_α_930_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_930_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_930_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_930_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_930_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_930_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_930_3:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_930_21
                        add              rsp, 32
.Lcall_proc_staged_α_930_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_930_2
.Lcall_proc_staged_α_930_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 624], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_930_2
.Lcall_proc_staged_α_930_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_930_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n661_call_proc_staged_β
.Lcall_proc_staged_α_930_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_930_29
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
.Lcall_proc_staged_α_930_29:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    n661_call_proc_staged_β
                                                                              jmp   n664_var_ref_α
n663_call_proc_staged_β:
                        mov              r11, 363
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_930_22
                        mov              rax, qword ptr [rbp + 624]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_930_22
                        mov              rcx, qword ptr [rbp + 632]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_930_22:
                                                                              jmp   n661_call_proc_staged_β
.Lcall_proc_staged_α_930_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    n661_call_proc_staged_β
                                                                              jmp   n664_var_ref_α
.Lcall_proc_staged_α_930_0:
                        .quad            .Lcall_proc_staged_α_930_0_s
.Lcall_proc_staged_α_930_0_s:
                        .string          "odd/1"
                        .size            n663_call_proc_staged_bx, .-n663_call_proc_staged_bx
                        .type            n664_var_ref_bx, @function
n664_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n664_var_ref_α:         mov              r11, 364
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6608]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n665_call_proc_staged_α
                        .size            n664_var_ref_bx, .-n664_var_ref_bx
                        .type            n665_call_proc_staged_bx, @function
n665_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n665_call_proc_staged_α:
                        mov              r11, 365
                        mov              qword ptr [rbp + 544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_934_200
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_934_201
.Lcall_proc_staged_α_934_200:
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
.Lcall_proc_staged_α_934_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_934_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_934_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_934_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_934_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_934_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_934_3:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_934_21
                        add              rsp, 32
.Lcall_proc_staged_α_934_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_934_2
.Lcall_proc_staged_α_934_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 544], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_934_2
.Lcall_proc_staged_α_934_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_934_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n663_call_proc_staged_β
.Lcall_proc_staged_α_934_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_934_29
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
.Lcall_proc_staged_α_934_29:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n663_call_proc_staged_β
                                                                              jmp   n666_var_ref_α
n665_call_proc_staged_β:
                        mov              r11, 365
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_934_22
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_934_22
                        mov              rcx, qword ptr [rbp + 552]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_934_22:
                                                                              jmp   n663_call_proc_staged_β
.Lcall_proc_staged_α_934_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n663_call_proc_staged_β
                                                                              jmp   n666_var_ref_α
.Lcall_proc_staged_α_934_0:
                        .quad            .Lcall_proc_staged_α_934_0_s
.Lcall_proc_staged_α_934_0_s:
                        .string          "odd/1"
                        .size            n665_call_proc_staged_bx, .-n665_call_proc_staged_bx
                        .type            n666_var_ref_bx, @function
n666_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n666_var_ref_α:         mov              r11, 366
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6592]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n667_call_proc_staged_α
                        .size            n666_var_ref_bx, .-n666_var_ref_bx
                        .type            n667_call_proc_staged_bx, @function
n667_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n667_call_proc_staged_α:
                        mov              r11, 367
                        mov              qword ptr [rbp + 464], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_938_200
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_938_201
.Lcall_proc_staged_α_938_200:
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
.Lcall_proc_staged_α_938_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_938_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_938_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_938_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_938_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_938_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_938_3:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_938_21
                        add              rsp, 32
.Lcall_proc_staged_α_938_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_938_2
.Lcall_proc_staged_α_938_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 464], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_938_2
.Lcall_proc_staged_α_938_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_938_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n665_call_proc_staged_β
.Lcall_proc_staged_α_938_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_938_29
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
.Lcall_proc_staged_α_938_29:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n665_call_proc_staged_β
                                                                              jmp   n668_var_ref_α
n667_call_proc_staged_β:
                        mov              r11, 367
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_938_22
                        mov              rax, qword ptr [rbp + 464]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_938_22
                        mov              rcx, qword ptr [rbp + 472]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_938_22:
                                                                              jmp   n665_call_proc_staged_β
.Lcall_proc_staged_α_938_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n665_call_proc_staged_β
                                                                              jmp   n668_var_ref_α
.Lcall_proc_staged_α_938_0:
                        .quad            .Lcall_proc_staged_α_938_0_s
.Lcall_proc_staged_α_938_0_s:
                        .string          "even/1"
                        .size            n667_call_proc_staged_bx, .-n667_call_proc_staged_bx
                        .type            n668_var_ref_bx, @function
n668_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n668_var_ref_α:         mov              r11, 368
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6576]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n669_call_proc_staged_α
                        .size            n668_var_ref_bx, .-n668_var_ref_bx
                        .type            n669_call_proc_staged_bx, @function
n669_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n669_call_proc_staged_α:
                        mov              r11, 369
                        mov              qword ptr [rbp + 384], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_942_200
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_942_201
.Lcall_proc_staged_α_942_200:
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
.Lcall_proc_staged_α_942_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_942_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_942_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_942_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_942_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_942_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_942_3:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_942_21
                        add              rsp, 32
.Lcall_proc_staged_α_942_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_942_2
.Lcall_proc_staged_α_942_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 384], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_942_2
.Lcall_proc_staged_α_942_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_942_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n667_call_proc_staged_β
.Lcall_proc_staged_α_942_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_942_29
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
.Lcall_proc_staged_α_942_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n667_call_proc_staged_β
                                                                              jmp   n670_var_ref_α
n669_call_proc_staged_β:
                        mov              r11, 369
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_942_22
                        mov              rax, qword ptr [rbp + 384]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_942_22
                        mov              rcx, qword ptr [rbp + 392]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_942_22:
                                                                              jmp   n667_call_proc_staged_β
.Lcall_proc_staged_α_942_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n667_call_proc_staged_β
                                                                              jmp   n670_var_ref_α
.Lcall_proc_staged_α_942_0:
                        .quad            .Lcall_proc_staged_α_942_0_s
.Lcall_proc_staged_α_942_0_s:
                        .string          "even/1"
                        .size            n669_call_proc_staged_bx, .-n669_call_proc_staged_bx
                        .type            n670_var_ref_bx, @function
n670_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n670_var_ref_α:         mov              r11, 370
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6560]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n671_call_proc_staged_α
                        .size            n670_var_ref_bx, .-n670_var_ref_bx
                        .type            n671_call_proc_staged_bx, @function
n671_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n671_call_proc_staged_α:
                        mov              r11, 371
                        mov              qword ptr [rbp + 304], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_946_200
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_946_201
.Lcall_proc_staged_α_946_200:
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
.Lcall_proc_staged_α_946_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_946_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_946_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_946_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_946_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_946_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_946_3:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_946_21
                        add              rsp, 32
.Lcall_proc_staged_α_946_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_946_2
.Lcall_proc_staged_α_946_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 304], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_946_2
.Lcall_proc_staged_α_946_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_946_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n669_call_proc_staged_β
.Lcall_proc_staged_α_946_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_946_29
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
.Lcall_proc_staged_α_946_29:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n669_call_proc_staged_β
                                                                              jmp   top$2F16_ret0
n671_call_proc_staged_β:
                        mov              r11, 371
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_946_22
                        mov              rax, qword ptr [rbp + 304]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_946_22
                        mov              rcx, qword ptr [rbp + 312]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_946_22:
                                                                              jmp   n669_call_proc_staged_β
.Lcall_proc_staged_α_946_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n669_call_proc_staged_β
                                                                              jmp   top$2F16_ret0
.Lcall_proc_staged_α_946_0:
                        .quad            .Lcall_proc_staged_α_946_0_s
.Lcall_proc_staged_α_946_0_s:
                        .string          "zero/1"
                        .size            n671_call_proc_staged_bx, .-n671_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
top$2F16_ret0:
                        lea              rax, [rip + n671_call_proc_staged_β]
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
                        .type            n947_var_ref_bx, @function
n947_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n947_var_ref_α:         mov              r11, 372
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx;         jmp   n948_var_ref_α
                        .size            n947_var_ref_bx, .-n947_var_ref_bx
                        .type            n948_var_ref_bx, @function
n948_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n948_var_ref_α:         mov              r11, 373
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2672]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx;         jmp   n949_var_ref_α
                        .size            n948_var_ref_bx, .-n948_var_ref_bx
                        .type            n949_var_ref_bx, @function
n949_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n949_var_ref_α:         mov              r11, 374
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n950_var_ref_α
                        .size            n949_var_ref_bx, .-n949_var_ref_bx
                        .type            n950_var_ref_bx, @function
n950_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n950_var_ref_α:         mov              r11, 375
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2640]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n951_var_ref_α
                        .size            n950_var_ref_bx, .-n950_var_ref_bx
                        .type            n951_var_ref_bx, @function
n951_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n951_var_ref_α:         mov              r11, 376
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx;         jmp   n952_var_ref_α
                        .size            n951_var_ref_bx, .-n951_var_ref_bx
                        .type            n952_var_ref_bx, @function
n952_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n952_var_ref_α:         mov              r11, 377
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx;         jmp   n953_var_ref_α
                        .size            n952_var_ref_bx, .-n952_var_ref_bx
                        .type            n953_var_ref_bx, @function
n953_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n953_var_ref_α:         mov              r11, 378
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx;         jmp   n954_var_ref_α
                        .size            n953_var_ref_bx, .-n953_var_ref_bx
                        .type            n954_var_ref_bx, @function
n954_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n954_var_ref_α:         mov              r11, 379
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2576]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n955_var_ref_α
                        .size            n954_var_ref_bx, .-n954_var_ref_bx
                        .type            n955_var_ref_bx, @function
n955_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n955_var_ref_α:         mov              r11, 380
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2560]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx;         jmp   n956_var_ref_α
                        .size            n955_var_ref_bx, .-n955_var_ref_bx
                        .type            n956_var_ref_bx, @function
n956_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n956_var_ref_α:         mov              r11, 381
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx;         jmp   n957_var_ref_α
                        .size            n956_var_ref_bx, .-n956_var_ref_bx
                        .type            n957_var_ref_bx, @function
n957_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n957_var_ref_α:         mov              r11, 382
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx;         jmp   n958_var_ref_α
                        .size            n957_var_ref_bx, .-n957_var_ref_bx
                        .type            n958_var_ref_bx, @function
n958_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n958_var_ref_α:         mov              r11, 383
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx;         jmp   n959_var_ref_α
                        .size            n958_var_ref_bx, .-n958_var_ref_bx
                        .type            n959_var_ref_bx, @function
n959_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n959_var_ref_α:         mov              r11, 384
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx;         jmp   n960_var_ref_α
                        .size            n959_var_ref_bx, .-n959_var_ref_bx
                        .type            n960_var_ref_bx, @function
n960_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n960_var_ref_α:         mov              r11, 385
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx;         jmp   n961_var_ref_α
                        .size            n960_var_ref_bx, .-n960_var_ref_bx
                        .type            n961_var_ref_bx, @function
n961_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n961_var_ref_α:         mov              r11, 386
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx;         jmp   n962_var_ref_α
                        .size            n961_var_ref_bx, .-n961_var_ref_bx
                        .type            n962_var_ref_bx, @function
n962_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n962_var_ref_α:         mov              r11, 387
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2448]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx;         jmp   n963_call_proc_staged_α
                        .size            n962_var_ref_bx, .-n962_var_ref_bx
                        .type            n963_call_proc_staged_bx, @function
n963_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n963_call_proc_staged_α:
                        mov              r11, 388
                        mov              qword ptr [rbp + 2160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1048_200
                        mov              rax, qword ptr [rbp + 2192]
                        mov              rdx, qword ptr [rbp + 2200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1048_201
.Lcall_proc_staged_α_1048_200:
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
.Lcall_proc_staged_α_1048_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1048_202
                        mov              rax, qword ptr [rbp + 2208]
                        mov              rdx, qword ptr [rbp + 2216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1048_203
.Lcall_proc_staged_α_1048_202:
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
.Lcall_proc_staged_α_1048_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1048_204
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_1048_205
.Lcall_proc_staged_α_1048_204:
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
.Lcall_proc_staged_α_1048_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1048_206
                        mov              rax, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_1048_207
.Lcall_proc_staged_α_1048_206:
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
.Lcall_proc_staged_α_1048_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1048_208
                        mov              rax, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_1048_209
.Lcall_proc_staged_α_1048_208:
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
.Lcall_proc_staged_α_1048_209:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1048_210
                        mov              rax, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 80], rax
                        mov              qword ptr [r8 + 88], rdx;            jmp   .Lcall_proc_staged_α_1048_211
.Lcall_proc_staged_α_1048_210:
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
.Lcall_proc_staged_α_1048_211:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1048_212
                        mov              rax, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 96], rax
                        mov              qword ptr [r8 + 104], rdx;           jmp   .Lcall_proc_staged_α_1048_213
.Lcall_proc_staged_α_1048_212:
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
.Lcall_proc_staged_α_1048_213:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1048_214
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 112], rax
                        mov              qword ptr [r8 + 120], rdx;           jmp   .Lcall_proc_staged_α_1048_215
.Lcall_proc_staged_α_1048_214:
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
.Lcall_proc_staged_α_1048_215:
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
                        lea              rax, [rip + .Lcall_proc_staged_α_1048_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1048_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1048_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1048_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1048_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1048_3:
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1048_21
                        add              rsp, 32
.Lcall_proc_staged_α_1048_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1048_2
.Lcall_proc_staged_α_1048_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1048_2
.Lcall_proc_staged_α_1048_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1048_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main$2F0_step
.Lcall_proc_staged_α_1048_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1048_29
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
.Lcall_proc_staged_α_1048_29:
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n964_lit_string_α
n963_call_proc_staged_β:
                        mov              r11, 388
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1048_22
                        mov              rax, qword ptr [rbp + 2160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1048_22
                        mov              rcx, qword ptr [rbp + 2168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1048_22:
                                                                              jmp   main$2F0_step
.Lcall_proc_staged_α_1048_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n964_lit_string_α
.Lcall_proc_staged_α_1048_0:
                        .quad            .Lcall_proc_staged_α_1048_0_s
.Lcall_proc_staged_α_1048_0_s:
                        .string          "top/16"
                        .size            n963_call_proc_staged_bx, .-n963_call_proc_staged_bx
                        .type            n964_lit_string_bx, @function
n964_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n964_lit_string_α:      mov              r11, 389
                        mov              qword ptr [rbp + 1872], 2            # result
                        mov              dword ptr [rbp + 1876], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1049_0]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n965_var_ref_α
.Llit_string_α_1049_0:  .quad            .Llit_string_α_1049_0_s
.Llit_string_α_1049_0_s:
                        .string          "."
                        .size            n964_lit_string_bx, .-n964_lit_string_bx
                        .type            n965_var_ref_bx, @function
n965_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n965_var_ref_α:         mov              r11, 390
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx;         jmp   n966_lit_string_α
                        .size            n965_var_ref_bx, .-n965_var_ref_bx
                        .type            n966_lit_string_bx, @function
n966_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n966_lit_string_α:      mov              r11, 391
                        mov              qword ptr [rbp + 1760], 2            # result
                        mov              dword ptr [rbp + 1764], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1052_0]
                        mov              qword ptr [rbp + 1768], rax;         jmp   n967_var_ref_α
.Llit_string_α_1052_0:  .quad            .Llit_string_α_1052_0_s
.Llit_string_α_1052_0_s:
                        .string          "."
                        .size            n966_lit_string_bx, .-n966_lit_string_bx
                        .type            n967_var_ref_bx, @function
n967_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n967_var_ref_α:         mov              r11, 392
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2672]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx;         jmp   n968_lit_string_α
                        .size            n967_var_ref_bx, .-n967_var_ref_bx
                        .type            n968_lit_string_bx, @function
n968_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n968_lit_string_α:      mov              r11, 393
                        mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1055_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n969_var_ref_α
.Llit_string_α_1055_0:  .quad            .Llit_string_α_1055_0_s
.Llit_string_α_1055_0_s:
                        .string          "."
                        .size            n968_lit_string_bx, .-n968_lit_string_bx
                        .type            n969_var_ref_bx, @function
n969_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n969_var_ref_α:         mov              r11, 394
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n970_lit_string_α
                        .size            n969_var_ref_bx, .-n969_var_ref_bx
                        .type            n970_lit_string_bx, @function
n970_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n970_lit_string_α:      mov              r11, 395
                        mov              qword ptr [rbp + 1536], 2            # result
                        mov              dword ptr [rbp + 1540], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1058_0]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n971_var_ref_α
.Llit_string_α_1058_0:  .quad            .Llit_string_α_1058_0_s
.Llit_string_α_1058_0_s:
                        .string          "."
                        .size            n970_lit_string_bx, .-n970_lit_string_bx
                        .type            n971_var_ref_bx, @function
n971_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n971_var_ref_α:         mov              r11, 396
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2640]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n972_lit_string_α
                        .size            n971_var_ref_bx, .-n971_var_ref_bx
                        .type            n972_lit_string_bx, @function
n972_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n972_lit_string_α:      mov              r11, 397
                        mov              qword ptr [rbp + 1424], 2            # result
                        mov              dword ptr [rbp + 1428], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1061_0]
                        mov              qword ptr [rbp + 1432], rax;         jmp   n973_var_ref_α
.Llit_string_α_1061_0:  .quad            .Llit_string_α_1061_0_s
.Llit_string_α_1061_0_s:
                        .string          "."
                        .size            n972_lit_string_bx, .-n972_lit_string_bx
                        .type            n973_var_ref_bx, @function
n973_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n973_var_ref_α:         mov              r11, 398
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n974_lit_string_α
                        .size            n973_var_ref_bx, .-n973_var_ref_bx
                        .type            n974_lit_string_bx, @function
n974_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n974_lit_string_α:      mov              r11, 399
                        mov              qword ptr [rbp + 1312], 2            # result
                        mov              dword ptr [rbp + 1316], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1064_0]
                        mov              qword ptr [rbp + 1320], rax;         jmp   n975_var_ref_α
.Llit_string_α_1064_0:  .quad            .Llit_string_α_1064_0_s
.Llit_string_α_1064_0_s:
                        .string          "."
                        .size            n974_lit_string_bx, .-n974_lit_string_bx
                        .type            n975_var_ref_bx, @function
n975_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n975_var_ref_α:         mov              r11, 400
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n976_lit_string_α
                        .size            n975_var_ref_bx, .-n975_var_ref_bx
                        .type            n976_lit_string_bx, @function
n976_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n976_lit_string_α:      mov              r11, 401
                        mov              qword ptr [rbp + 1200], 2            # result
                        mov              dword ptr [rbp + 1204], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1067_0]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n977_var_ref_α
.Llit_string_α_1067_0:  .quad            .Llit_string_α_1067_0_s
.Llit_string_α_1067_0_s:
                        .string          "."
                        .size            n976_lit_string_bx, .-n976_lit_string_bx
                        .type            n977_var_ref_bx, @function
n977_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n977_var_ref_α:         mov              r11, 402
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n978_lit_string_α
                        .size            n977_var_ref_bx, .-n977_var_ref_bx
                        .type            n978_lit_string_bx, @function
n978_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n978_lit_string_α:      mov              r11, 403
                        mov              qword ptr [rbp + 1088], 2            # result
                        mov              dword ptr [rbp + 1092], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1070_0]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n979_var_ref_α
.Llit_string_α_1070_0:  .quad            .Llit_string_α_1070_0_s
.Llit_string_α_1070_0_s:
                        .string          "."
                        .size            n978_lit_string_bx, .-n978_lit_string_bx
                        .type            n979_var_ref_bx, @function
n979_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n979_var_ref_α:         mov              r11, 404
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2576]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n980_lit_string_α
                        .size            n979_var_ref_bx, .-n979_var_ref_bx
                        .type            n980_lit_string_bx, @function
n980_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n980_lit_string_α:      mov              r11, 405
                        mov              qword ptr [rbp + 976], 2             # result
                        mov              dword ptr [rbp + 980], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1073_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n981_var_ref_α
.Llit_string_α_1073_0:  .quad            .Llit_string_α_1073_0_s
.Llit_string_α_1073_0_s:
                        .string          "."
                        .size            n980_lit_string_bx, .-n980_lit_string_bx
                        .type            n981_var_ref_bx, @function
n981_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n981_var_ref_α:         mov              r11, 406
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2560]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n982_lit_string_α
                        .size            n981_var_ref_bx, .-n981_var_ref_bx
                        .type            n982_lit_string_bx, @function
n982_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n982_lit_string_α:      mov              r11, 407
                        mov              qword ptr [rbp + 864], 2             # result
                        mov              dword ptr [rbp + 868], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1076_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n983_var_ref_α
.Llit_string_α_1076_0:  .quad            .Llit_string_α_1076_0_s
.Llit_string_α_1076_0_s:
                        .string          "."
                        .size            n982_lit_string_bx, .-n982_lit_string_bx
                        .type            n983_var_ref_bx, @function
n983_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n983_var_ref_α:         mov              r11, 408
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n984_lit_string_α
                        .size            n983_var_ref_bx, .-n983_var_ref_bx
                        .type            n984_lit_string_bx, @function
n984_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n984_lit_string_α:      mov              r11, 409
                        mov              qword ptr [rbp + 752], 2             # result
                        mov              dword ptr [rbp + 756], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1079_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n985_var_ref_α
.Llit_string_α_1079_0:  .quad            .Llit_string_α_1079_0_s
.Llit_string_α_1079_0_s:
                        .string          "."
                        .size            n984_lit_string_bx, .-n984_lit_string_bx
                        .type            n985_var_ref_bx, @function
n985_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n985_var_ref_α:         mov              r11, 410
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n986_lit_string_α
                        .size            n985_var_ref_bx, .-n985_var_ref_bx
                        .type            n986_lit_string_bx, @function
n986_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n986_lit_string_α:      mov              r11, 411
                        mov              qword ptr [rbp + 640], 2             # result
                        mov              dword ptr [rbp + 644], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1082_0]
                        mov              qword ptr [rbp + 648], rax;          jmp   n987_var_ref_α
.Llit_string_α_1082_0:  .quad            .Llit_string_α_1082_0_s
.Llit_string_α_1082_0_s:
                        .string          "."
                        .size            n986_lit_string_bx, .-n986_lit_string_bx
                        .type            n987_var_ref_bx, @function
n987_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n987_var_ref_α:         mov              r11, 412
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n988_lit_string_α
                        .size            n987_var_ref_bx, .-n987_var_ref_bx
                        .type            n988_lit_string_bx, @function
n988_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n988_lit_string_α:      mov              r11, 413
                        mov              qword ptr [rbp + 528], 2             # result
                        mov              dword ptr [rbp + 532], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1085_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n989_var_ref_α
.Llit_string_α_1085_0:  .quad            .Llit_string_α_1085_0_s
.Llit_string_α_1085_0_s:
                        .string          "."
                        .size            n988_lit_string_bx, .-n988_lit_string_bx
                        .type            n989_var_ref_bx, @function
n989_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n989_var_ref_α:         mov              r11, 414
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n990_lit_string_α
                        .size            n989_var_ref_bx, .-n989_var_ref_bx
                        .type            n990_lit_string_bx, @function
n990_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n990_lit_string_α:      mov              r11, 415
                        mov              qword ptr [rbp + 416], 2             # result
                        mov              dword ptr [rbp + 420], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1088_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n991_var_ref_α
.Llit_string_α_1088_0:  .quad            .Llit_string_α_1088_0_s
.Llit_string_α_1088_0_s:
                        .string          "."
                        .size            n990_lit_string_bx, .-n990_lit_string_bx
                        .type            n991_var_ref_bx, @function
n991_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n991_var_ref_α:         mov              r11, 416
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n992_lit_string_α
                        .size            n991_var_ref_bx, .-n991_var_ref_bx
                        .type            n992_lit_string_bx, @function
n992_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n992_lit_string_α:      mov              r11, 417
                        mov              qword ptr [rbp + 304], 2             # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1091_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n993_var_ref_α
.Llit_string_α_1091_0:  .quad            .Llit_string_α_1091_0_s
.Llit_string_α_1091_0_s:
                        .string          "."
                        .size            n992_lit_string_bx, .-n992_lit_string_bx
                        .type            n993_var_ref_bx, @function
n993_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n993_var_ref_α:         mov              r11, 418
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2464]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n994_lit_string_α
                        .size            n993_var_ref_bx, .-n993_var_ref_bx
                        .type            n994_lit_string_bx, @function
n994_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n994_lit_string_α:      mov              r11, 419
                        mov              qword ptr [rbp + 192], 2             # result
                        mov              dword ptr [rbp + 196], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1094_0]
                        mov              qword ptr [rbp + 200], rax;          jmp   n995_var_ref_α
.Llit_string_α_1094_0:  .quad            .Llit_string_α_1094_0_s
.Llit_string_α_1094_0_s:
                        .string          "."
                        .size            n994_lit_string_bx, .-n994_lit_string_bx
                        .type            n995_var_ref_bx, @function
n995_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n995_var_ref_α:         mov              r11, 420
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2448]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n996_lit_string_α
                        .size            n995_var_ref_bx, .-n995_var_ref_bx
                        .type            n996_lit_string_bx, @function
n996_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n996_lit_string_α:      mov              r11, 421
                        mov              qword ptr [rbp + 80], 2              # result
                        mov              dword ptr [rbp + 84], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1097_0]
                        mov              qword ptr [rbp + 88], rax;           jmp   n997_call_α
.Llit_string_α_1097_0:  .quad            .Llit_string_α_1097_0_s
.Llit_string_α_1097_0_s:
                        .string          "[]"
                        .size            n996_lit_string_bx, .-n996_lit_string_bx
                        .type            n997_call_bx, @function
n997_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n997_call_α:            mov              r11, 422
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
                                                                              jmp   n998_call_α
n997_call_β:            mov              r11, 422;                            jmp   main$2F0_ω
                        .size            n997_call_bx, .-n997_call_bx
                        .type            n998_call_bx, @function
n998_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n998_call_α:            mov              r11, 423
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
                                                                              jmp   n999_call_α
n998_call_β:            mov              r11, 423;                            jmp   main$2F0_ω
                        .size            n998_call_bx, .-n998_call_bx
                        .type            n999_call_bx, @function
n999_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n999_call_α:            mov              r11, 424
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
                                                                              jmp   n1000_call_α
n999_call_β:            mov              r11, 424;                            jmp   main$2F0_ω
                        .size            n999_call_bx, .-n999_call_bx
                        .type            n1000_call_bx, @function
n1000_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1000_call_α:           mov              r11, 425
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
                                                                              jmp   n1001_call_α
n1000_call_β:           mov              r11, 425;                            jmp   main$2F0_ω
                        .size            n1000_call_bx, .-n1000_call_bx
                        .type            n1001_call_bx, @function
n1001_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1001_call_α:           mov              r11, 426
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
                                                                              jmp   n1002_call_α
n1001_call_β:           mov              r11, 426;                            jmp   main$2F0_ω
                        .size            n1001_call_bx, .-n1001_call_bx
                        .type            n1002_call_bx, @function
n1002_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1002_call_α:           mov              r11, 427
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
                                                                              jmp   n1003_call_α
n1002_call_β:           mov              r11, 427;                            jmp   main$2F0_ω
                        .size            n1002_call_bx, .-n1002_call_bx
                        .type            n1003_call_bx, @function
n1003_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1003_call_α:           mov              r11, 428
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
                                                                              jmp   n1004_call_α
n1003_call_β:           mov              r11, 428;                            jmp   main$2F0_ω
                        .size            n1003_call_bx, .-n1003_call_bx
                        .type            n1004_call_bx, @function
n1004_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1004_call_α:           mov              r11, 429
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
                                                                              jmp   n1005_call_α
n1004_call_β:           mov              r11, 429;                            jmp   main$2F0_ω
                        .size            n1004_call_bx, .-n1004_call_bx
                        .type            n1005_call_bx, @function
n1005_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1005_call_α:           mov              r11, 430
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
                                                                              jmp   n1006_call_α
n1005_call_β:           mov              r11, 430;                            jmp   main$2F0_ω
                        .size            n1005_call_bx, .-n1005_call_bx
                        .type            n1006_call_bx, @function
n1006_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1006_call_α:           mov              r11, 431
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
                                                                              jmp   n1007_call_α
n1006_call_β:           mov              r11, 431;                            jmp   main$2F0_ω
                        .size            n1006_call_bx, .-n1006_call_bx
                        .type            n1007_call_bx, @function
n1007_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1007_call_α:           mov              r11, 432
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
                                                                              jmp   n1008_call_α
n1007_call_β:           mov              r11, 432;                            jmp   main$2F0_ω
                        .size            n1007_call_bx, .-n1007_call_bx
                        .type            n1008_call_bx, @function
n1008_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1008_call_α:           mov              r11, 433
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
                                                                              jmp   n1009_call_α
n1008_call_β:           mov              r11, 433;                            jmp   main$2F0_ω
                        .size            n1008_call_bx, .-n1008_call_bx
                        .type            n1009_call_bx, @function
n1009_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1009_call_α:           mov              r11, 434
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
                                                                              jmp   n1010_call_α
n1009_call_β:           mov              r11, 434;                            jmp   main$2F0_ω
                        .size            n1009_call_bx, .-n1009_call_bx
                        .type            n1010_call_bx, @function
n1010_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1010_call_α:           mov              r11, 435
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
                                                                              jmp   n1011_call_α
n1010_call_β:           mov              r11, 435;                            jmp   main$2F0_ω
                        .size            n1010_call_bx, .-n1010_call_bx
                        .type            n1011_call_bx, @function
n1011_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1011_call_α:           mov              r11, 436
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
                                                                              jmp   n1012_call_α
n1011_call_β:           mov              r11, 436;                            jmp   main$2F0_ω
                        .size            n1011_call_bx, .-n1011_call_bx
                        .type            n1012_call_bx, @function
n1012_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1012_call_α:           mov              r11, 437
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
                                                                              jmp   n1013_call_α
n1012_call_β:           mov              r11, 437;                            jmp   main$2F0_step
                        .size            n1012_call_bx, .-n1012_call_bx
                        .type            n1013_call_bx, @function
n1013_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1013_call_α:           mov              r11, 438
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
                        cmp              al, 104;                             je    n963_call_proc_staged_β
                                                                              jmp   n1014_call_α
n1013_call_β:           mov              r11, 438;                            jmp   n963_call_proc_staged_β
                        .size            n1013_call_bx, .-n1013_call_bx
                        .type            n1014_call_bx, @function
n1014_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1014_call_α:           mov              r11, 439
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
                        cmp              al, 104;                             je    n963_call_proc_staged_β
                                                                              jmp   main$2F0_ret0
n1014_call_β:           mov              r11, 439;                            jmp   n963_call_proc_staged_β
                        .size            n1014_call_bx, .-n1014_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ret0:
                        lea              rax, [rip + n963_call_proc_staged_β]
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
                        .type            n1116_var_ref_bx, @function
n1116_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1116_var_ref_α:        mov              r11, 440
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n1117_lit_integer_α
                        .size            n1116_var_ref_bx, .-n1116_var_ref_bx
                        .type            n1117_lit_integer_bx, @function
n1117_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1117_lit_integer_α:    mov              r11, 441
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1130_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n1118_call_α
.Llit_integer_α_1130_0: .quad            2
                        .size            n1117_lit_integer_bx, .-n1117_lit_integer_bx
                        .type            n1118_call_bx, @function
n1118_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1118_call_α:           mov              r11, 442
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
n1118_call_β:           mov              r11, 442;                            jmp   lefteven$2F1_step
                        .size            n1118_call_bx, .-n1118_call_bx
                        .type            n1119_var_ref_bx, @function
n1119_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1119_var_ref_α:        mov              r11, 443
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n1120_lit_integer_α
                        .size            n1119_var_ref_bx, .-n1119_var_ref_bx
                        .type            n1120_lit_integer_bx, @function
n1120_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1120_lit_integer_α:    mov              r11, 444
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1134_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n1121_call_α
.Llit_integer_α_1134_0: .quad            4
                        .size            n1120_lit_integer_bx, .-n1120_lit_integer_bx
                        .type            n1121_call_bx, @function
n1121_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1121_call_α:           mov              r11, 445
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
n1121_call_β:           mov              r11, 445;                            jmp   lefteven$2F1_step
                        .size            n1121_call_bx, .-n1121_call_bx
                        .type            n1122_var_ref_bx, @function
n1122_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1122_var_ref_α:        mov              r11, 446
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n1123_lit_integer_α
                        .size            n1122_var_ref_bx, .-n1122_var_ref_bx
                        .type            n1123_lit_integer_bx, @function
n1123_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1123_lit_integer_α:    mov              r11, 447
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1138_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n1124_call_α
.Llit_integer_α_1138_0: .quad            6
                        .size            n1123_lit_integer_bx, .-n1123_lit_integer_bx
                        .type            n1124_call_bx, @function
n1124_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1124_call_α:           mov              r11, 448
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
n1124_call_β:           mov              r11, 448;                            jmp   lefteven$2F1_step
                        .size            n1124_call_bx, .-n1124_call_bx
                        .type            n1125_var_ref_bx, @function
n1125_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1125_var_ref_α:        mov              r11, 449
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n1126_lit_integer_α
                        .size            n1125_var_ref_bx, .-n1125_var_ref_bx
                        .type            n1126_lit_integer_bx, @function
n1126_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1126_lit_integer_α:    mov              r11, 450
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1142_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n1127_call_α
.Llit_integer_α_1142_0: .quad            8
                        .size            n1126_lit_integer_bx, .-n1126_lit_integer_bx
                        .type            n1127_call_bx, @function
n1127_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1127_call_α:           mov              r11, 451
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
n1127_call_β:           mov              r11, 451;                            jmp   lefteven$2F1_step
                        .size            n1127_call_bx, .-n1127_call_bx
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
                                                                              jmp   n1119_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
lefteven$2F1_alt2:
                        lea              rax, [rip + lefteven$2F1_alt3]
                        mov              qword ptr [rbp + 440], rax
                                                                              jmp   n1122_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
lefteven$2F1_alt3:
                        xor              eax, eax
                        mov              qword ptr [rbp + 440], rax
                                                                              jmp   n1125_var_ref_α
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
                        .type            n1144_var_ref_bx, @function
n1144_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1144_var_ref_α:        mov              r11, 452
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n1145_lit_string_α
                        .size            n1144_var_ref_bx, .-n1144_var_ref_bx
                        .type            n1145_lit_string_bx, @function
n1145_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1145_lit_string_α:     mov              r11, 453
                        mov              qword ptr [rbp + 112], 2             # result
                        mov              dword ptr [rbp + 116], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1157_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n1146_call_α
.Llit_string_α_1157_0:  .quad            .Llit_string_α_1157_0_s
.Llit_string_α_1157_0_s:
                        .string          "[]"
                        .size            n1145_lit_string_bx, .-n1145_lit_string_bx
                        .type            n1146_call_bx, @function
n1146_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1146_call_α:           mov              r11, 454
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        mov              rsi, qword ptr [rip + .Lcall_α_1158_2]
                                                                              jmp   .Lcall_α_1158_3
.Lcall_α_1158_2:        .quad            .Lcall_α_1158_2_s
.Lcall_α_1158_2_s:      .string          "[]"
.Lcall_α_1158_3:        mov              qword ptr [rip + rtccb+40], r8
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
n1146_call_β:           mov              r11, 454;                            jmp   zero$2F1_step
                        .size            n1146_call_bx, .-n1146_call_bx
                        .type            n1147_var_ref_bx, @function
n1147_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1147_var_ref_α:        mov              r11, 455
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n1148_lit_string_α
                        .size            n1147_var_ref_bx, .-n1147_var_ref_bx
                        .type            n1148_lit_string_bx, @function
n1148_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1148_lit_string_α:     mov              r11, 456
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1161_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n1149_lit_integer_α
.Llit_string_α_1161_0:  .quad            .Llit_string_α_1161_0_s
.Llit_string_α_1161_0_s:
                        .string          "."
                        .size            n1148_lit_string_bx, .-n1148_lit_string_bx
                        .type            n1149_lit_integer_bx, @function
n1149_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1149_lit_integer_α:    mov              r11, 457
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1162_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n1150_var_ref_α
.Llit_integer_α_1162_0: .quad            0
                        .size            n1149_lit_integer_bx, .-n1149_lit_integer_bx
                        .type            n1150_var_ref_bx, @function
n1150_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1150_var_ref_α:        mov              r11, 458
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n1151_call_α
                        .size            n1150_var_ref_bx, .-n1150_var_ref_bx
                        .type            n1151_call_bx, @function
n1151_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1151_call_α:           mov              r11, 459
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
                                                                              jmp   n1152_call_α
n1151_call_β:           mov              r11, 459;                            jmp   zero$2F1_step
                        .size            n1151_call_bx, .-n1151_call_bx
                        .type            n1152_call_bx, @function
n1152_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1152_call_α:           mov              r11, 460
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
                                                                              jmp   n1153_var_ref_α
n1152_call_β:           mov              r11, 460;                            jmp   zero$2F1_step
                        .size            n1152_call_bx, .-n1152_call_bx
                        .type            n1153_var_ref_bx, @function
n1153_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1153_var_ref_α:        mov              r11, 461
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n1154_call_proc_staged_α
                        .size            n1153_var_ref_bx, .-n1153_var_ref_bx
                        .type            n1154_call_proc_staged_bx, @function
n1154_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1154_call_proc_staged_α:
                        mov              r11, 462
                        mov              qword ptr [rbp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1170_200
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1170_201
.Lcall_proc_staged_α_1170_200:
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
.Lcall_proc_staged_α_1170_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1170_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1170_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1170_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1170_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1170_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1170_3:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1170_21
                        add              rsp, 32
.Lcall_proc_staged_α_1170_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1170_2
.Lcall_proc_staged_α_1170_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1170_2
.Lcall_proc_staged_α_1170_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1170_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   zero$2F1_step
.Lcall_proc_staged_α_1170_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1170_29
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
.Lcall_proc_staged_α_1170_29:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    zero$2F1_step
                                                                              jmp   zero$2F1_ret1
n1154_call_proc_staged_β:
                        mov              r11, 462
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1170_22
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1170_22
                        mov              rcx, qword ptr [rbp + 168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1170_22:
                                                                              jmp   zero$2F1_step
.Lcall_proc_staged_α_1170_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    zero$2F1_step
                                                                              jmp   zero$2F1_ret1
.Lcall_proc_staged_α_1170_0:
                        .quad            .Lcall_proc_staged_α_1170_0_s
.Lcall_proc_staged_α_1170_0_s:
                        .string          "zero/1"
                        .size            n1154_call_proc_staged_bx, .-n1154_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
zero$2F1_ret1:
                        lea              rax, [rip + n1154_call_proc_staged_β]
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
                                                                              jmp   n1147_var_ref_α
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
                        call             rt_gcheap_warmup@PLT
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                              jmp   main_α
.Lmain_zf_γ:            xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:            mov              edi, 1
                        call             exit@PLT
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
                        .type            n1171_call_proc_staged_bx, @function
n1171_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1171_call_proc_staged_α:
                        mov              r11, 463
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1173_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1173_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1173_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1173_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1173_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1173_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1173_21
                        add              rsp, 32
.Lcall_proc_staged_α_1173_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1173_2
.Lcall_proc_staged_α_1173_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1173_2
.Lcall_proc_staged_α_1173_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1173_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_1173_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1173_29
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
.Lcall_proc_staged_α_1173_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n1171_call_proc_staged_β:
                        mov              r11, 463
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1173_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1173_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1173_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_1173_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_1173_0:
                        .quad            .Lcall_proc_staged_α_1173_0_s
.Lcall_proc_staged_α_1173_0_s:
                        .string          "main/0"
                        .size            n1171_call_proc_staged_bx, .-n1171_call_proc_staged_bx
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
                        .long            2560
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
                        .long            2624
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
