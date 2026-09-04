                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__query_siblings$2F1:
                        sub              rsp, 640
                        mov              qword ptr [rsp + 616], rcx
                        mov              qword ptr [rsp + 624], rdx
                        mov              qword ptr [rsp + 632], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 600], r13
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 576], r12
                        mov              rdi, rsp
                        mov              esi, 512
                        mov              edx, 576
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
query_siblings$2F1_α_body:
                        .type            n0_var_ref_bx, @function
n0_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:           mov              r11, 1
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n1_var_ref_α
                        .size            n0_var_ref_bx, .-n0_var_ref_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n2_call_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_call_bx, @function
n2_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              mov              r11, 3
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
                        cmp              al, 104;                             je    query_siblings$2F1_step
                                                                              jmp   n3_var_ref_α
n2_call_β:              mov              r11, 3;                              jmp   query_siblings$2F1_step
                        .size            n2_call_bx, .-n2_call_bx
                        .type            n3_var_ref_bx, @function
n3_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n4_call_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_call_bx, @function
n4_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:              mov              r11, 5
                        lea              rdi, [rbp + 224]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_findall_new@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    query_siblings$2F1_step
                                                                              jmp   n5_var_ref_α
n4_call_β:              mov              r11, 5;                              jmp   query_siblings$2F1_step
                        .size            n4_call_bx, .-n4_call_bx
                        .type            n5_var_ref_bx, @function
n5_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n6_call_proc_staged_α
                        .size            n5_var_ref_bx, .-n5_var_ref_bx
                        .type            n6_call_proc_staged_bx, @function
n6_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_call_proc_staged_α:  mov              r11, 7
                        mov              qword ptr [rbp + 352], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_24_200
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_24_201
.Lcall_proc_staged_α_24_200:
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
.Lcall_proc_staged_α_24_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_24_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 12
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_24_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_24_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_24_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_24_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_24_3:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_24_21
                        add              rsp, 32
.Lcall_proc_staged_α_24_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_24_2
.Lcall_proc_staged_α_24_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 352], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_24_2
.Lcall_proc_staged_α_24_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_24_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_call_α
.Lcall_proc_staged_α_24_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_24_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
.Lcall_proc_staged_α_24_29:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n9_call_α
                                                                              jmp   n7_var_α
n6_call_proc_staged_β:  mov              r11, 7
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_24_22
                        mov              rax, qword ptr [rbp + 352]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_24_22
                        mov              rcx, qword ptr [rbp + 360]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_24_22:
                                                                              jmp   n9_call_α
.Lcall_proc_staged_α_24_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n9_call_α
                                                                              jmp   n7_var_α
.Lcall_proc_staged_α_24_0:
                        .quad            .Lcall_proc_staged_α_24_0_s
.Lcall_proc_staged_α_24_0_s:
                        .string          "sib_line/1"
                        .size            n6_call_proc_staged_bx, .-n6_call_proc_staged_bx
                        .type            n7_var_bx, @function
n7_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              r11, 8
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 312], rax;          jmp   n8_call_α
                        .size            n7_var_bx, .-n7_var_bx
                        .type            n8_call_bx, @function
n8_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:              mov              r11, 9
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_findall_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n9_call_α
                                                                              jmp   n6_call_proc_staged_β
n8_call_β:              mov              r11, 9;                              jmp   n9_call_α
                        .size            n8_call_bx, .-n8_call_bx
                        .type            n9_call_bx, @function
n9_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_call_α:              mov              r11, 10
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_findall_result@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    query_siblings$2F1_step
                                                                              jmp   n10_var_ref_α
n9_call_β:              mov              r11, 10;                             jmp   query_siblings$2F1_step
                        .size            n9_call_bx, .-n9_call_bx
                        .type            n10_var_ref_bx, @function
n10_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n11_var_ref_α
                        .size            n10_var_ref_bx, .-n10_var_ref_bx
                        .type            n11_var_ref_bx, @function
n11_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:          mov              r11, 12
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n12_call_proc_staged_α
                        .size            n11_var_ref_bx, .-n11_var_ref_bx
                        .type            n12_call_proc_staged_bx, @function
n12_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_call_proc_staged_α: mov              r11, 13
                        mov              qword ptr [rbp + 80], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_34_200
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_34_201
.Lcall_proc_staged_α_34_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_34_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_34_202
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_34_203
.Lcall_proc_staged_α_34_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_34_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_34_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_34_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 640]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_34_99
                        mov              r10, qword ptr [rbp + 600]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_34_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_34_99
                        mov              rcx, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 624]
                        lea              rsp, [rbp + 640]
                        mov              rbp, qword ptr [rbp + 632];          jmp   rax
.Lcall_proc_staged_α_34_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_34_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_34_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_34_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_34_3:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_34_21
                        add              rsp, 32
.Lcall_proc_staged_α_34_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_34_2
.Lcall_proc_staged_α_34_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 80], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_34_2
.Lcall_proc_staged_α_34_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_34_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   query_siblings$2F1_step
.Lcall_proc_staged_α_34_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_34_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
.Lcall_proc_staged_α_34_29:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    query_siblings$2F1_step
                                                                              jmp   query_siblings$2F1_ret0
n12_call_proc_staged_β: mov              r11, 13
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_34_22
                        mov              rax, qword ptr [rbp + 80]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_34_22
                        mov              rcx, qword ptr [rbp + 88]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_34_22:
                                                                              jmp   query_siblings$2F1_step
.Lcall_proc_staged_α_34_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    query_siblings$2F1_step
                                                                              jmp   query_siblings$2F1_ret0
.Lcall_proc_staged_α_34_0:
                        .quad            .Lcall_proc_staged_α_34_0_s
.Lcall_proc_staged_α_34_0_s:
                        .string          "join_lines/2"
                        .size            n12_call_proc_staged_bx, .-n12_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
query_siblings$2F1_ret0:
                        lea              rax, [rip + n12_call_proc_staged_β]
                        mov              qword ptr [rbp + 592], rax
                                                                              jmp   query_siblings$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
query_siblings$2F1_step:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 592], 0
                        mov              qword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], 0
                        mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                        mov              rax, qword ptr [rbp + 584]
                        test             rax, rax
                                                                              je    query_siblings$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
query_siblings$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
query_siblings$2F1_β:
                        test             r15, r15
                                                                              jne   query_siblings$2F1_ω
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 592], 0
                        test             rax, rax
                                                                              jne   query_siblings$2F1_βres
                                                                              jmp   query_siblings$2F1_step
query_siblings$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
query_siblings$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 616]
                        mov              rax, qword ptr [rbp + 600]
                        cmp              r13, rax;                            je    query_siblings$2F1_altdet
                        lea              rdx, [rip + query_siblings$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 632];          jmp   rcx
query_siblings$2F1_altdet:
                        xor              eax, eax
                        lea              rsp, [rbp + 640]
                        mov              rbp, qword ptr [rbp + 632];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
query_siblings$2F1_ω:
                        mov              rcx, qword ptr [rbp + 624]
                        mov              r13, qword ptr [rbp + 600]
                        lea              rsp, [rbp + 640]
                        mov              rbp, qword ptr [rbp + 632];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__query_cousins$2F1:
                        sub              rsp, 640
                        mov              qword ptr [rsp + 616], rcx
                        mov              qword ptr [rsp + 624], rdx
                        mov              qword ptr [rsp + 632], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 600], r13
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 576], r12
                        mov              rdi, rsp
                        mov              esi, 512
                        mov              edx, 576
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
query_cousins$2F1_α_body:
                        .type            n35_var_ref_bx, @function
n35_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n36_var_ref_α
                        .size            n35_var_ref_bx, .-n35_var_ref_bx
                        .type            n36_var_ref_bx, @function
n36_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n37_call_α
                        .size            n36_var_ref_bx, .-n36_var_ref_bx
                        .type            n37_call_bx, @function
n37_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_call_α:             mov              r11, 16
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
                        cmp              al, 104;                             je    query_cousins$2F1_step
                                                                              jmp   n38_var_ref_α
n37_call_β:             mov              r11, 16;                             jmp   query_cousins$2F1_step
                        .size            n37_call_bx, .-n37_call_bx
                        .type            n38_var_ref_bx, @function
n38_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n39_call_α
                        .size            n38_var_ref_bx, .-n38_var_ref_bx
                        .type            n39_call_bx, @function
n39_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_call_α:             mov              r11, 18
                        lea              rdi, [rbp + 224]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_findall_new@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    query_cousins$2F1_step
                                                                              jmp   n40_var_ref_α
n39_call_β:             mov              r11, 18;                             jmp   query_cousins$2F1_step
                        .size            n39_call_bx, .-n39_call_bx
                        .type            n40_var_ref_bx, @function
n40_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n41_call_proc_staged_α
                        .size            n40_var_ref_bx, .-n40_var_ref_bx
                        .type            n41_call_proc_staged_bx, @function
n41_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_call_proc_staged_α: mov              r11, 20
                        mov              qword ptr [rbp + 352], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_59_200
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_59_201
.Lcall_proc_staged_α_59_200:
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
.Lcall_proc_staged_α_59_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_59_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 16
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_59_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_59_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_59_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_59_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_59_3:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_59_21
                        add              rsp, 32
.Lcall_proc_staged_α_59_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_59_2
.Lcall_proc_staged_α_59_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 352], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_59_2
.Lcall_proc_staged_α_59_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_59_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n44_call_α
.Lcall_proc_staged_α_59_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_59_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
.Lcall_proc_staged_α_59_29:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n44_call_α
                                                                              jmp   n42_var_α
n41_call_proc_staged_β: mov              r11, 20
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_59_22
                        mov              rax, qword ptr [rbp + 352]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_59_22
                        mov              rcx, qword ptr [rbp + 360]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_59_22:
                                                                              jmp   n44_call_α
.Lcall_proc_staged_α_59_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n44_call_α
                                                                              jmp   n42_var_α
.Lcall_proc_staged_α_59_0:
                        .quad            .Lcall_proc_staged_α_59_0_s
.Lcall_proc_staged_α_59_0_s:
                        .string          "cou_line/1"
                        .size            n41_call_proc_staged_bx, .-n41_call_proc_staged_bx
                        .type            n42_var_bx, @function
n42_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              mov              r11, 21
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 312], rax;          jmp   n43_call_α
                        .size            n42_var_bx, .-n42_var_bx
                        .type            n43_call_bx, @function
n43_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_call_α:             mov              r11, 22
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_findall_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n44_call_α
                                                                              jmp   n41_call_proc_staged_β
n43_call_β:             mov              r11, 22;                             jmp   n44_call_α
                        .size            n43_call_bx, .-n43_call_bx
                        .type            n44_call_bx, @function
n44_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_call_α:             mov              r11, 23
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_findall_result@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    query_cousins$2F1_step
                                                                              jmp   n45_var_ref_α
n44_call_β:             mov              r11, 23;                             jmp   query_cousins$2F1_step
                        .size            n44_call_bx, .-n44_call_bx
                        .type            n45_var_ref_bx, @function
n45_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 24
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n46_var_ref_α
                        .size            n45_var_ref_bx, .-n45_var_ref_bx
                        .type            n46_var_ref_bx, @function
n46_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n47_call_proc_staged_α
                        .size            n46_var_ref_bx, .-n46_var_ref_bx
                        .type            n47_call_proc_staged_bx, @function
n47_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_call_proc_staged_α: mov              r11, 26
                        mov              qword ptr [rbp + 80], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_69_200
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_69_201
.Lcall_proc_staged_α_69_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_69_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_69_202
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_69_203
.Lcall_proc_staged_α_69_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_69_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_69_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_69_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 640]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_69_99
                        mov              r10, qword ptr [rbp + 600]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_69_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_69_99
                        mov              rcx, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 624]
                        lea              rsp, [rbp + 640]
                        mov              rbp, qword ptr [rbp + 632];          jmp   rax
.Lcall_proc_staged_α_69_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_69_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_69_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_69_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_69_3:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_69_21
                        add              rsp, 32
.Lcall_proc_staged_α_69_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_69_2
.Lcall_proc_staged_α_69_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 80], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_69_2
.Lcall_proc_staged_α_69_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_69_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   query_cousins$2F1_step
.Lcall_proc_staged_α_69_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_69_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
.Lcall_proc_staged_α_69_29:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    query_cousins$2F1_step
                                                                              jmp   query_cousins$2F1_ret0
n47_call_proc_staged_β: mov              r11, 26
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_69_22
                        mov              rax, qword ptr [rbp + 80]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_69_22
                        mov              rcx, qword ptr [rbp + 88]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_69_22:
                                                                              jmp   query_cousins$2F1_step
.Lcall_proc_staged_α_69_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    query_cousins$2F1_step
                                                                              jmp   query_cousins$2F1_ret0
.Lcall_proc_staged_α_69_0:
                        .quad            .Lcall_proc_staged_α_69_0_s
.Lcall_proc_staged_α_69_0_s:
                        .string          "join_lines/2"
                        .size            n47_call_proc_staged_bx, .-n47_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
query_cousins$2F1_ret0:
                        lea              rax, [rip + n47_call_proc_staged_β]
                        mov              qword ptr [rbp + 592], rax
                                                                              jmp   query_cousins$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
query_cousins$2F1_step:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 592], 0
                        mov              qword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], 0
                        mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                        mov              rax, qword ptr [rbp + 584]
                        test             rax, rax
                                                                              je    query_cousins$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
query_cousins$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
query_cousins$2F1_β:
                        test             r15, r15
                                                                              jne   query_cousins$2F1_ω
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 592], 0
                        test             rax, rax
                                                                              jne   query_cousins$2F1_βres
                                                                              jmp   query_cousins$2F1_step
query_cousins$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
query_cousins$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 616]
                        mov              rax, qword ptr [rbp + 600]
                        cmp              r13, rax;                            je    query_cousins$2F1_altdet
                        lea              rdx, [rip + query_cousins$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 632];          jmp   rcx
query_cousins$2F1_altdet:
                        xor              eax, eax
                        lea              rsp, [rbp + 640]
                        mov              rbp, qword ptr [rbp + 632];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
query_cousins$2F1_ω:
                        mov              rcx, qword ptr [rbp + 624]
                        mov              r13, qword ptr [rbp + 600]
                        lea              rsp, [rbp + 640]
                        mov              rbp, qword ptr [rbp + 632];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__join_lines$2F2:
                        sub              rsp, 1360
                        mov              qword ptr [rsp + 1336], rcx
                        mov              qword ptr [rsp + 1344], rdx
                        mov              qword ptr [rsp + 1352], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1360]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1320], r13
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1296], r12
                        lea              rax, [rip + join_lines$2F2_alt1]
                        mov              qword ptr [rsp + 1304], rax
                        lea              rdi, [rsp + 1296]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 1200
                        mov              edx, 1296
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
join_lines$2F2_α_body:
                        .type            n70_var_ref_bx, @function
n70_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n71_lit_string_α
                        .size            n70_var_ref_bx, .-n70_var_ref_bx
                        .type            n71_lit_string_bx, @function
n71_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rbp + 224], 2             # result
                        mov              dword ptr [rbp + 228], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_110_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n72_call_α
.Llit_string_α_110_0:   .quad            .Llit_string_α_110_0_s
.Llit_string_α_110_0_s: .string          "[]"
                        .size            n71_lit_string_bx, .-n71_lit_string_bx
                        .type            n72_call_bx, @function
n72_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_call_α:             mov              r11, 29
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              rsi, qword ptr [rip + .Lcall_α_111_2]
                                                                              jmp   .Lcall_α_111_3
.Lcall_α_111_2:         .quad            .Lcall_α_111_2_s
.Lcall_α_111_2_s:       .string          "[]"
.Lcall_α_111_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    join_lines$2F2_step
                                                                              jmp   n73_var_ref_α
n72_call_β:             mov              r11, 29;                             jmp   join_lines$2F2_step
                        .size            n72_call_bx, .-n72_call_bx
                        .type            n73_var_ref_bx, @function
n73_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n74_lit_string_α
                        .size            n73_var_ref_bx, .-n73_var_ref_bx
                        .type            n74_lit_string_bx, @function
n74_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       mov              r11, 31
                        mov              qword ptr [rbp + 128], 2             # result
                        mov              dword ptr [rbp + 132], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_114_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n75_call_α
.Llit_string_α_114_0:   .quad            .Llit_string_α_114_0_s
.Llit_string_α_114_0_s: .string          ""
                        .size            n74_lit_string_bx, .-n74_lit_string_bx
                        .type            n75_call_bx, @function
n75_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_call_α:             mov              r11, 32
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              rsi, qword ptr [rip + .Lcall_α_115_2]
                                                                              jmp   .Lcall_α_115_3
.Lcall_α_115_2:         .quad            .Lcall_α_115_2_s
.Lcall_α_115_2_s:       .string          ""
.Lcall_α_115_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    join_lines$2F2_step
                                                                              jmp   join_lines$2F2_γ
n75_call_β:             mov              r11, 32;                             jmp   join_lines$2F2_step
                        .size            n75_call_bx, .-n75_call_bx
                        .type            n76_var_ref_bx, @function
n76_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n77_lit_string_α
                        .size            n76_var_ref_bx, .-n76_var_ref_bx
                        .type            n77_lit_string_bx, @function
n77_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       mov              r11, 34
                        mov              qword ptr [rbp + 1184], 2            # result
                        mov              dword ptr [rbp + 1188], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_118_0]
                        mov              qword ptr [rbp + 1192], rax;         jmp   n78_var_ref_α
.Llit_string_α_118_0:   .quad            .Llit_string_α_118_0_s
.Llit_string_α_118_0_s: .string          "."
                        .size            n77_lit_string_bx, .-n77_lit_string_bx
                        .type            n78_var_ref_bx, @function
n78_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n79_var_ref_α
                        .size            n78_var_ref_bx, .-n78_var_ref_bx
                        .type            n79_var_ref_bx, @function
n79_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n80_call_α
                        .size            n79_var_ref_bx, .-n79_var_ref_bx
                        .type            n80_call_bx, @function
n80_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_call_α:             mov              r11, 37
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1080]
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
                        cmp              al, 104;                             je    join_lines$2F2_step
                                                                              jmp   n81_call_α
n80_call_β:             mov              r11, 37;                             jmp   join_lines$2F2_step
                        .size            n80_call_bx, .-n80_call_bx
                        .type            n81_call_bx, @function
n81_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_call_α:             mov              r11, 38
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 1008]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              al, 104;                             je    join_lines$2F2_step
                                                                              jmp   n82_var_ref_α
n81_call_β:             mov              r11, 38;                             jmp   join_lines$2F2_step
                        .size            n81_call_bx, .-n81_call_bx
                        .type            n82_var_ref_bx, @function
n82_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n83_var_ref_α
                        .size            n82_var_ref_bx, .-n82_var_ref_bx
                        .type            n83_var_ref_bx, @function
n83_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n84_call_α
                        .size            n83_var_ref_bx, .-n83_var_ref_bx
                        .type            n84_call_bx, @function
n84_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_call_α:             mov              r11, 41
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              al, 104;                             je    join_lines$2F2_step
                                                                              jmp   n85_var_ref_α
n84_call_β:             mov              r11, 41;                             jmp   join_lines$2F2_step
                        .size            n84_call_bx, .-n84_call_bx
                        .type            n85_var_ref_bx, @function
n85_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n86_var_ref_α
                        .size            n85_var_ref_bx, .-n85_var_ref_bx
                        .type            n86_var_ref_bx, @function
n86_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n87_call_proc_staged_α
                        .size            n86_var_ref_bx, .-n86_var_ref_bx
                        .type            n87_call_proc_staged_bx, @function
n87_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_call_proc_staged_α: mov              r11, 44
                        mov              qword ptr [rbp + 832], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_135_200
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_135_201
.Lcall_proc_staged_α_135_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_135_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_135_202
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_135_203
.Lcall_proc_staged_α_135_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_135_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_135_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_135_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_135_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_135_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_135_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_135_3:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_135_21
                        add              rsp, 32
.Lcall_proc_staged_α_135_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_135_2
.Lcall_proc_staged_α_135_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 832], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_135_2
.Lcall_proc_staged_α_135_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_135_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   join_lines$2F2_step
.Lcall_proc_staged_α_135_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_135_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
.Lcall_proc_staged_α_135_29:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    join_lines$2F2_step
                                                                              jmp   n88_bound_α
n87_call_proc_staged_β: mov              r11, 44
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_135_22
                        mov              rax, qword ptr [rbp + 832]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_135_22
                        mov              rcx, qword ptr [rbp + 840]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_135_22:
                                                                              jmp   join_lines$2F2_step
.Lcall_proc_staged_α_135_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    join_lines$2F2_step
                                                                              jmp   n88_bound_α
.Lcall_proc_staged_α_135_0:
                        .quad            .Lcall_proc_staged_α_135_0_s
.Lcall_proc_staged_α_135_0_s:
                        .string          "join_lines/2"
                        .size            n87_call_proc_staged_bx, .-n87_call_proc_staged_bx
                        .type            n88_bound_bx, @function
n88_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_bound_α:            mov              r11, 45
                        mov              qword ptr [rbp + 272], r12
                        lea              rdi, [rbp + 1296]
                        mov              rsi, rbp
                        call             rt_pl_disj_open@PLT;                 jmp   n89_var_ref_α
                        .size            n88_bound_bx, .-n88_bound_bx
                        .type            n89_var_ref_bx, @function
n89_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n90_lit_string_α
                        .size            n89_var_ref_bx, .-n89_var_ref_bx
                        .type            n90_lit_string_bx, @function
n90_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       mov              r11, 47
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_140_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n91_call_α
.Llit_string_α_140_0:   .quad            .Llit_string_α_140_0_s
.Llit_string_α_140_0_s: .string          ""
                        .size            n90_lit_string_bx, .-n90_lit_string_bx
                        .type            n91_call_bx, @function
n91_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_call_α:             mov              r11, 48
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              rsi, qword ptr [rip + .Lcall_α_141_2]
                                                                              jmp   .Lcall_α_141_3
.Lcall_α_141_2:         .quad            .Lcall_α_141_2_s
.Lcall_α_141_2_s:       .string          ""
.Lcall_α_141_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    n96_unmark_α
                                                                              jmp   n92_var_ref_α
n91_call_β:             mov              r11, 48;                             jmp   n96_unmark_α
                        .size            n91_call_bx, .-n91_call_bx
                        .type            n92_var_ref_bx, @function
n92_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n93_var_ref_α
                        .size            n92_var_ref_bx, .-n92_var_ref_bx
                        .type            n93_var_ref_bx, @function
n93_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n94_call_α
                        .size            n93_var_ref_bx, .-n93_var_ref_bx
                        .type            n94_call_bx, @function
n94_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_call_α:             mov              r11, 51
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
                        cmp              al, 104;                             je    n106_unmark_α
                                                                              jmp   n95_move_label_α
n94_call_β:             mov              r11, 51;                             jmp   n106_unmark_α
                        .size            n94_call_bx, .-n94_call_bx
                        .type            n95_move_label_bx, @function
n95_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_move_label_α:       mov              r11, 52
                        lea              rax, [rip + n107_indirect_goto_α]
                        mov              qword ptr [rbp + 256], rax;          jmp   join_lines$2F2_γ
                        .size            n95_move_label_bx, .-n95_move_label_bx
                        .type            n96_unmark_bx, @function
n96_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_unmark_α:           mov              r11, 53
                        mov              rdi, qword ptr [rbp + 272]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   join_lines$2F2_step
                                                                              jmp   n97_var_ref_α
                        .size            n96_unmark_bx, .-n96_unmark_bx
                        .type            n97_var_ref_bx, @function
n97_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:          mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n98_lit_string_α
                        .size            n97_var_ref_bx, .-n97_var_ref_bx
                        .type            n98_lit_string_bx, @function
n98_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       mov              r11, 55
                        mov              qword ptr [rbp + 656], 2             # result
                        mov              dword ptr [rbp + 660], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_153_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n99_var_ref_α
.Llit_string_α_153_0:   .quad            .Llit_string_α_153_0_s
.Llit_string_α_153_0_s: .string          "\n"
                        .size            n98_lit_string_bx, .-n98_lit_string_bx
                        .type            n99_var_ref_bx, @function
n99_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:          mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n100_call_α
                        .size            n99_var_ref_bx, .-n99_var_ref_bx
                        .type            n100_call_bx, @function
n100_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_call_α:            mov              r11, 57
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 664]
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
                        call             rt_pl_dop_atom_concat@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              al, 104;                             je    n106_unmark_α
                                                                              jmp   n101_var_ref_α
n100_call_β:            mov              r11, 57;                             jmp   n106_unmark_α
                        .size            n100_call_bx, .-n100_call_bx
                        .type            n101_var_ref_bx, @function
n101_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:         mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx;          jmp   n102_var_ref_α
                        .size            n101_var_ref_bx, .-n101_var_ref_bx
                        .type            n102_var_ref_bx, @function
n102_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:         mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n103_var_ref_α
                        .size            n102_var_ref_bx, .-n102_var_ref_bx
                        .type            n103_var_ref_bx, @function
n103_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:         mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n104_call_α
                        .size            n103_var_ref_bx, .-n103_var_ref_bx
                        .type            n104_call_bx, @function
n104_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_call_α:            mov              r11, 61
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 536]
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
                        call             rt_pl_dop_atom_concat@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n106_unmark_α
                                                                              jmp   n105_move_label_α
n104_call_β:            mov              r11, 61;                             jmp   n106_unmark_α
                        .size            n104_call_bx, .-n104_call_bx
                        .type            n105_move_label_bx, @function
n105_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_move_label_α:      mov              r11, 62
                        lea              rax, [rip + n107_indirect_goto_α]
                        mov              qword ptr [rbp + 256], rax;          jmp   join_lines$2F2_γ
                        .size            n105_move_label_bx, .-n105_move_label_bx
                        .type            n106_unmark_bx, @function
n106_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_unmark_α:          mov              r11, 63
                        mov              rdi, qword ptr [rbp + 272]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   join_lines$2F2_step
                                                                              jmp   n107_indirect_goto_α
                        .size            n106_unmark_bx, .-n106_unmark_bx
                        .type            n107_indirect_goto_bx, @function
n107_indirect_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_indirect_goto_α:   mov              r11, 64;                             jmp   n87_call_proc_staged_β
n107_indirect_goto_β:   mov              r11, 64;                             jmp   qword ptr [rbp + 256]
                        .size            n107_indirect_goto_bx, .-n107_indirect_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
join_lines$2F2_ret1:
                        lea              rax, [rip + n107_indirect_goto_β]
                        mov              qword ptr [rbp + 1312], rax
                                                                              jmp   join_lines$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
join_lines$2F2_step:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1312], 0
                        mov              qword ptr [rbp + 1200], 0
                        mov              qword ptr [rbp + 1208], 0
                        mov              qword ptr [rbp + 1216], 0
                        mov              qword ptr [rbp + 1224], 0
                        mov              qword ptr [rbp + 1264], 0
                        mov              qword ptr [rbp + 1272], 0
                        mov              qword ptr [rbp + 1248], 0
                        mov              qword ptr [rbp + 1256], 0
                        mov              qword ptr [rbp + 1232], 0
                        mov              qword ptr [rbp + 1240], 0
                        mov              rax, qword ptr [rbp + 1304]
                        test             rax, rax
                                                                              je    join_lines$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
join_lines$2F2_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1304], rax
                        mov              r13, qword ptr [rbp + 1320]
                                                                              jmp   n76_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
join_lines$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
join_lines$2F2_β:
                        test             r15, r15
                                                                              jne   join_lines$2F2_ω
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1312], 0
                        test             rax, rax
                                                                              jne   join_lines$2F2_βres
                                                                              jmp   join_lines$2F2_step
join_lines$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
join_lines$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1336]
                        mov              rax, qword ptr [rbp + 1320]
                        cmp              r13, rax;                            je    join_lines$2F2_altdet
                        lea              rdx, [rip + join_lines$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1352];         jmp   rcx
join_lines$2F2_altdet:  xor              eax, eax
                        lea              rsp, [rbp + 1360]
                        mov              rbp, qword ptr [rbp + 1352];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
join_lines$2F2_ω:
                        mov              rcx, qword ptr [rbp + 1344]
                        mov              r13, qword ptr [rbp + 1320]
                        lea              rsp, [rbp + 1360]
                        mov              rbp, qword ptr [rbp + 1352];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__query_generations$2F1:
                        sub              rsp, 640
                        mov              qword ptr [rsp + 616], rcx
                        mov              qword ptr [rsp + 624], rdx
                        mov              qword ptr [rsp + 632], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 600], r13
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 576], r12
                        mov              rdi, rsp
                        mov              esi, 512
                        mov              edx, 576
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
query_generations$2F1_α_body:
                        .type            n170_var_ref_bx, @function
n170_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:         mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n171_var_ref_α
                        .size            n170_var_ref_bx, .-n170_var_ref_bx
                        .type            n171_var_ref_bx, @function
n171_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:         mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n172_call_α
                        .size            n171_var_ref_bx, .-n171_var_ref_bx
                        .type            n172_call_bx, @function
n172_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_call_α:            mov              r11, 67
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
                        cmp              al, 104;                             je    query_generations$2F1_step
                                                                              jmp   n173_var_ref_α
n172_call_β:            mov              r11, 67;                             jmp   query_generations$2F1_step
                        .size            n172_call_bx, .-n172_call_bx
                        .type            n173_var_ref_bx, @function
n173_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:         mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n174_call_α
                        .size            n173_var_ref_bx, .-n173_var_ref_bx
                        .type            n174_call_bx, @function
n174_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_call_α:            mov              r11, 69
                        lea              rdi, [rbp + 224]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_findall_new@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    query_generations$2F1_step
                                                                              jmp   n175_var_ref_α
n174_call_β:            mov              r11, 69;                             jmp   query_generations$2F1_step
                        .size            n174_call_bx, .-n174_call_bx
                        .type            n175_var_ref_bx, @function
n175_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:         mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n176_call_proc_staged_α
                        .size            n175_var_ref_bx, .-n175_var_ref_bx
                        .type            n176_call_proc_staged_bx, @function
n176_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_call_proc_staged_α:
                        mov              r11, 71
                        mov              qword ptr [rbp + 352], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_194_200
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_194_201
.Lcall_proc_staged_α_194_200:
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
.Lcall_proc_staged_α_194_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_194_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 11
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_194_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_194_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_194_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_194_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_194_3:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_194_21
                        add              rsp, 32
.Lcall_proc_staged_α_194_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_194_2
.Lcall_proc_staged_α_194_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 352], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_194_2
.Lcall_proc_staged_α_194_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_194_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n179_call_α
.Lcall_proc_staged_α_194_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_194_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
.Lcall_proc_staged_α_194_29:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n179_call_α
                                                                              jmp   n177_var_α
n176_call_proc_staged_β:
                        mov              r11, 71
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_194_22
                        mov              rax, qword ptr [rbp + 352]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_194_22
                        mov              rcx, qword ptr [rbp + 360]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_194_22:
                                                                              jmp   n179_call_α
.Lcall_proc_staged_α_194_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n179_call_α
                                                                              jmp   n177_var_α
.Lcall_proc_staged_α_194_0:
                        .quad            .Lcall_proc_staged_α_194_0_s
.Lcall_proc_staged_α_194_0_s:
                        .string          "gen_line/1"
                        .size            n176_call_proc_staged_bx, .-n176_call_proc_staged_bx
                        .type            n177_var_bx, @function
n177_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:             mov              r11, 72
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 312], rax;          jmp   n178_call_α
                        .size            n177_var_bx, .-n177_var_bx
                        .type            n178_call_bx, @function
n178_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_call_α:            mov              r11, 73
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_findall_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n179_call_α
                                                                              jmp   n176_call_proc_staged_β
n178_call_β:            mov              r11, 73;                             jmp   n179_call_α
                        .size            n178_call_bx, .-n178_call_bx
                        .type            n179_call_bx, @function
n179_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_call_α:            mov              r11, 74
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_findall_result@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    query_generations$2F1_step
                                                                              jmp   n180_var_ref_α
n179_call_β:            mov              r11, 74;                             jmp   query_generations$2F1_step
                        .size            n179_call_bx, .-n179_call_bx
                        .type            n180_var_ref_bx, @function
n180_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:         mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n181_var_ref_α
                        .size            n180_var_ref_bx, .-n180_var_ref_bx
                        .type            n181_var_ref_bx, @function
n181_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:         mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n182_call_proc_staged_α
                        .size            n181_var_ref_bx, .-n181_var_ref_bx
                        .type            n182_call_proc_staged_bx, @function
n182_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_call_proc_staged_α:
                        mov              r11, 77
                        mov              qword ptr [rbp + 80], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_204_200
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_204_201
.Lcall_proc_staged_α_204_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_204_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_204_202
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_204_203
.Lcall_proc_staged_α_204_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_204_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_204_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_204_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 640]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_204_99
                        mov              r10, qword ptr [rbp + 600]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_204_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_204_99
                        mov              rcx, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 624]
                        lea              rsp, [rbp + 640]
                        mov              rbp, qword ptr [rbp + 632];          jmp   rax
.Lcall_proc_staged_α_204_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_204_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_204_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_204_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_204_3:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_204_21
                        add              rsp, 32
.Lcall_proc_staged_α_204_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_204_2
.Lcall_proc_staged_α_204_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 80], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_204_2
.Lcall_proc_staged_α_204_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_204_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   query_generations$2F1_step
.Lcall_proc_staged_α_204_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_204_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
.Lcall_proc_staged_α_204_29:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    query_generations$2F1_step
                                                                              jmp   query_generations$2F1_ret0
n182_call_proc_staged_β:
                        mov              r11, 77
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_204_22
                        mov              rax, qword ptr [rbp + 80]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_204_22
                        mov              rcx, qword ptr [rbp + 88]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_204_22:
                                                                              jmp   query_generations$2F1_step
.Lcall_proc_staged_α_204_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    query_generations$2F1_step
                                                                              jmp   query_generations$2F1_ret0
.Lcall_proc_staged_α_204_0:
                        .quad            .Lcall_proc_staged_α_204_0_s
.Lcall_proc_staged_α_204_0_s:
                        .string          "join_lines/2"
                        .size            n182_call_proc_staged_bx, .-n182_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
query_generations$2F1_ret0:
                        lea              rax, [rip + n182_call_proc_staged_β]
                        mov              qword ptr [rbp + 592], rax
                                                                              jmp   query_generations$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
query_generations$2F1_step:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 592], 0
                        mov              qword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], 0
                        mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                        mov              rax, qword ptr [rbp + 584]
                        test             rax, rax
                                                                              je    query_generations$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
query_generations$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
query_generations$2F1_β:
                        test             r15, r15
                                                                              jne   query_generations$2F1_ω
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 592], 0
                        test             rax, rax
                                                                              jne   query_generations$2F1_βres
                                                                              jmp   query_generations$2F1_step
query_generations$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
query_generations$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 616]
                        mov              rax, qword ptr [rbp + 600]
                        cmp              r13, rax;                            je    query_generations$2F1_altdet
                        lea              rdx, [rip + query_generations$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 632];          jmp   rcx
query_generations$2F1_altdet:
                        xor              eax, eax
                        lea              rsp, [rbp + 640]
                        mov              rbp, qword ptr [rbp + 632];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
query_generations$2F1_ω:
                        mov              rcx, qword ptr [rbp + 624]
                        mov              r13, qword ptr [rbp + 600]
                        lea              rsp, [rbp + 640]
                        mov              rbp, qword ptr [rbp + 632];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__assert_person$2F4:
                        sub              rsp, 880
                        mov              qword ptr [rsp + 856], rcx
                        mov              qword ptr [rsp + 864], rdx
                        mov              qword ptr [rsp + 872], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 840], r13
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 816], r12
                        mov              rdi, rsp
                        mov              esi, 736
                        mov              edx, 816
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
assert_person$2F4_α_body:
                        .type            n205_var_ref_bx, @function
n205_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_var_ref_α:         mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n206_var_ref_α
                        .size            n205_var_ref_bx, .-n205_var_ref_bx
                        .type            n206_var_ref_bx, @function
n206_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n207_call_α
                        .size            n206_var_ref_bx, .-n206_var_ref_bx
                        .type            n207_call_bx, @function
n207_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_call_α:            mov              r11, 80
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    assert_person$2F4_step
                                                                              jmp   n208_var_ref_α
n207_call_β:            mov              r11, 80;                             jmp   assert_person$2F4_step
                        .size            n207_call_bx, .-n207_call_bx
                        .type            n208_var_ref_bx, @function
n208_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n209_var_ref_α
                        .size            n208_var_ref_bx, .-n208_var_ref_bx
                        .type            n209_var_ref_bx, @function
n209_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 736]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n210_call_α
                        .size            n209_var_ref_bx, .-n209_var_ref_bx
                        .type            n210_call_bx, @function
n210_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_call_α:            mov              r11, 83
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              al, 104;                             je    assert_person$2F4_step
                                                                              jmp   n211_var_ref_α
n210_call_β:            mov              r11, 83;                             jmp   assert_person$2F4_step
                        .size            n210_call_bx, .-n210_call_bx
                        .type            n211_var_ref_bx, @function
n211_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx;          jmp   n212_var_ref_α
                        .size            n211_var_ref_bx, .-n211_var_ref_bx
                        .type            n212_var_ref_bx, @function
n212_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_var_ref_α:         mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n213_call_α
                        .size            n212_var_ref_bx, .-n212_var_ref_bx
                        .type            n213_call_bx, @function
n213_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_call_α:            mov              r11, 86
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              al, 104;                             je    assert_person$2F4_step
                                                                              jmp   n214_var_ref_α
n213_call_β:            mov              r11, 86;                             jmp   assert_person$2F4_step
                        .size            n213_call_bx, .-n213_call_bx
                        .type            n214_var_ref_bx, @function
n214_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:         mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n215_var_ref_α
                        .size            n214_var_ref_bx, .-n214_var_ref_bx
                        .type            n215_var_ref_bx, @function
n215_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:         mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n216_call_α
                        .size            n215_var_ref_bx, .-n215_var_ref_bx
                        .type            n216_call_bx, @function
n216_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_call_α:            mov              r11, 89
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    assert_person$2F4_step
                                                                              jmp   n217_lit_integer_α
n216_call_β:            mov              r11, 89;                             jmp   assert_person$2F4_step
                        .size            n216_call_bx, .-n216_call_bx
                        .type            n217_lit_integer_bx, @function
n217_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_integer_α:     mov              r11, 90
                        mov              qword ptr [rbp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_245_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n218_lit_string_α
.Llit_integer_α_245_0:  .quad            0
                        .size            n217_lit_integer_bx, .-n217_lit_integer_bx
                        .type            n218_lit_string_bx, @function
n218_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_string_α:      mov              r11, 91
                        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_246_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n219_var_ref_α
.Llit_string_α_246_0:   .quad            .Llit_string_α_246_0_s
.Llit_string_α_246_0_s: .string          "person"
                        .size            n218_lit_string_bx, .-n218_lit_string_bx
                        .type            n219_var_ref_bx, @function
n219_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:         mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 736]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n220_var_ref_α
                        .size            n219_var_ref_bx, .-n219_var_ref_bx
                        .type            n220_var_ref_bx, @function
n220_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:         mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n221_var_ref_α
                        .size            n220_var_ref_bx, .-n220_var_ref_bx
                        .type            n221_var_ref_bx, @function
n221_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:         mov              r11, 94
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n222_var_ref_α
                        .size            n221_var_ref_bx, .-n221_var_ref_bx
                        .type            n222_var_ref_bx, @function
n222_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:         mov              r11, 95
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n223_call_α
                        .size            n222_var_ref_bx, .-n222_var_ref_bx
                        .type            n223_call_bx, @function
n223_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_call_α:            mov              r11, 96
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    assert_person$2F4_step
                                                                              jmp   n224_call_α
n223_call_β:            mov              r11, 96;                             jmp   assert_person$2F4_step
                        .size            n223_call_bx, .-n223_call_bx
                        .type            n224_call_bx, @function
n224_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_call_α:            mov              r11, 97
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_db_assertz@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    assert_person$2F4_step
                                                                              jmp   assert_person$2F4_γ
n224_call_β:            mov              r11, 97;                             jmp   assert_person$2F4_step
                        .size            n224_call_bx, .-n224_call_bx
#-----------------------------------------------------------------------------------------------------------------------
assert_person$2F4_step:
                        mov              rdi, qword ptr [rbp + 816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 752], 0
                        mov              qword ptr [rbp + 760], 0
                        mov              qword ptr [rbp + 736], 0
                        mov              qword ptr [rbp + 744], 0
                        mov              qword ptr [rbp + 768], 0
                        mov              qword ptr [rbp + 776], 0
                        mov              qword ptr [rbp + 784], 0
                        mov              qword ptr [rbp + 792], 0
                        mov              rax, qword ptr [rbp + 824]
                        test             rax, rax
                                                                              je    assert_person$2F4_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
assert_person$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
assert_person$2F4_β:
                        test             r15, r15
                                                                              jne   assert_person$2F4_ω
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 832], 0
                        test             rax, rax
                                                                              jne   assert_person$2F4_βres
                                                                              jmp   assert_person$2F4_step
assert_person$2F4_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
assert_person$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 856]
                        mov              rax, qword ptr [rbp + 840]
                        cmp              r13, rax;                            je    assert_person$2F4_altdet
                        lea              rdx, [rip + assert_person$2F4_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 872];          jmp   rcx
assert_person$2F4_altdet:
                        xor              eax, eax
                        lea              rsp, [rbp + 880]
                        mov              rbp, qword ptr [rbp + 872];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
assert_person$2F4_ω:
                        mov              rcx, qword ptr [rbp + 864]
                        mov              r13, qword ptr [rbp + 840]
                        lea              rsp, [rbp + 880]
                        mov              rbp, qword ptr [rbp + 872];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__query_grandparents$2F1:
                        sub              rsp, 640
                        mov              qword ptr [rsp + 616], rcx
                        mov              qword ptr [rsp + 624], rdx
                        mov              qword ptr [rsp + 632], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 600], r13
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 576], r12
                        mov              rdi, rsp
                        mov              esi, 512
                        mov              edx, 576
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
query_grandparents$2F1_α_body:
                        .type            n257_var_ref_bx, @function
n257_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n258_var_ref_α
                        .size            n257_var_ref_bx, .-n257_var_ref_bx
                        .type            n258_var_ref_bx, @function
n258_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n259_call_α
                        .size            n258_var_ref_bx, .-n258_var_ref_bx
                        .type            n259_call_bx, @function
n259_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_call_α:            mov              r11, 100
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
                        cmp              al, 104;                             je    query_grandparents$2F1_step
                                                                              jmp   n260_var_ref_α
n259_call_β:            mov              r11, 100;                            jmp   query_grandparents$2F1_step
                        .size            n259_call_bx, .-n259_call_bx
                        .type            n260_var_ref_bx, @function
n260_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n261_call_α
                        .size            n260_var_ref_bx, .-n260_var_ref_bx
                        .type            n261_call_bx, @function
n261_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_call_α:            mov              r11, 102
                        lea              rdi, [rbp + 224]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_findall_new@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    query_grandparents$2F1_step
                                                                              jmp   n262_var_ref_α
n261_call_β:            mov              r11, 102;                            jmp   query_grandparents$2F1_step
                        .size            n261_call_bx, .-n261_call_bx
                        .type            n262_var_ref_bx, @function
n262_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n263_call_proc_staged_α
                        .size            n262_var_ref_bx, .-n262_var_ref_bx
                        .type            n263_call_proc_staged_bx, @function
n263_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_call_proc_staged_α:
                        mov              r11, 104
                        mov              qword ptr [rbp + 352], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_281_200
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_281_201
.Lcall_proc_staged_α_281_200:
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
.Lcall_proc_staged_α_281_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_281_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 14
                        mov              esi, 1
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
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_281_21
                        add              rsp, 32
.Lcall_proc_staged_α_281_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_281_2
.Lcall_proc_staged_α_281_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 352], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_281_2
.Lcall_proc_staged_α_281_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_281_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n266_call_α
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
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
.Lcall_proc_staged_α_281_29:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n266_call_α
                                                                              jmp   n264_var_α
n263_call_proc_staged_β:
                        mov              r11, 104
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_281_22
                        mov              rax, qword ptr [rbp + 352]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_281_22
                        mov              rcx, qword ptr [rbp + 360]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_281_22:
                                                                              jmp   n266_call_α
.Lcall_proc_staged_α_281_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n266_call_α
                                                                              jmp   n264_var_α
.Lcall_proc_staged_α_281_0:
                        .quad            .Lcall_proc_staged_α_281_0_s
.Lcall_proc_staged_α_281_0_s:
                        .string          "gp_line/1"
                        .size            n263_call_proc_staged_bx, .-n263_call_proc_staged_bx
                        .type            n264_var_bx, @function
n264_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_var_α:             mov              r11, 105
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 312], rax;          jmp   n265_call_α
                        .size            n264_var_bx, .-n264_var_bx
                        .type            n265_call_bx, @function
n265_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_call_α:            mov              r11, 106
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_findall_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n266_call_α
                                                                              jmp   n263_call_proc_staged_β
n265_call_β:            mov              r11, 106;                            jmp   n266_call_α
                        .size            n265_call_bx, .-n265_call_bx
                        .type            n266_call_bx, @function
n266_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_call_α:            mov              r11, 107
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_findall_result@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    query_grandparents$2F1_step
                                                                              jmp   n267_var_ref_α
n266_call_β:            mov              r11, 107;                            jmp   query_grandparents$2F1_step
                        .size            n266_call_bx, .-n266_call_bx
                        .type            n267_var_ref_bx, @function
n267_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:         mov              r11, 108
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n268_var_ref_α
                        .size            n267_var_ref_bx, .-n267_var_ref_bx
                        .type            n268_var_ref_bx, @function
n268_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n269_call_proc_staged_α
                        .size            n268_var_ref_bx, .-n268_var_ref_bx
                        .type            n269_call_proc_staged_bx, @function
n269_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_call_proc_staged_α:
                        mov              r11, 110
                        mov              qword ptr [rbp + 80], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_291_200
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_291_201
.Lcall_proc_staged_α_291_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_291_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_291_202
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_291_203
.Lcall_proc_staged_α_291_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_291_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_291_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_291_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 640]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_291_99
                        mov              r10, qword ptr [rbp + 600]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_291_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_291_99
                        mov              rcx, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 624]
                        lea              rsp, [rbp + 640]
                        mov              rbp, qword ptr [rbp + 632];          jmp   rax
.Lcall_proc_staged_α_291_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_291_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_291_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_291_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_291_3:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_291_21
                        add              rsp, 32
.Lcall_proc_staged_α_291_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_291_2
.Lcall_proc_staged_α_291_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 80], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_291_2
.Lcall_proc_staged_α_291_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_291_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   query_grandparents$2F1_step
.Lcall_proc_staged_α_291_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_291_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
.Lcall_proc_staged_α_291_29:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    query_grandparents$2F1_step
                                                                              jmp   query_grandparents$2F1_ret0
n269_call_proc_staged_β:
                        mov              r11, 110
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_291_22
                        mov              rax, qword ptr [rbp + 80]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_291_22
                        mov              rcx, qword ptr [rbp + 88]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_291_22:
                                                                              jmp   query_grandparents$2F1_step
.Lcall_proc_staged_α_291_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    query_grandparents$2F1_step
                                                                              jmp   query_grandparents$2F1_ret0
.Lcall_proc_staged_α_291_0:
                        .quad            .Lcall_proc_staged_α_291_0_s
.Lcall_proc_staged_α_291_0_s:
                        .string          "join_lines/2"
                        .size            n269_call_proc_staged_bx, .-n269_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
query_grandparents$2F1_ret0:
                        lea              rax, [rip + n269_call_proc_staged_β]
                        mov              qword ptr [rbp + 592], rax
                                                                              jmp   query_grandparents$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
query_grandparents$2F1_step:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 592], 0
                        mov              qword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], 0
                        mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                        mov              rax, qword ptr [rbp + 584]
                        test             rax, rax
                                                                              je    query_grandparents$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
query_grandparents$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
query_grandparents$2F1_β:
                        test             r15, r15
                                                                              jne   query_grandparents$2F1_ω
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 592], 0
                        test             rax, rax
                                                                              jne   query_grandparents$2F1_βres
                                                                              jmp   query_grandparents$2F1_step
query_grandparents$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
query_grandparents$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 616]
                        mov              rax, qword ptr [rbp + 600]
                        cmp              r13, rax;                            je    query_grandparents$2F1_altdet
                        lea              rdx, [rip + query_grandparents$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 632];          jmp   rcx
query_grandparents$2F1_altdet:
                        xor              eax, eax
                        lea              rsp, [rbp + 640]
                        mov              rbp, qword ptr [rbp + 632];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
query_grandparents$2F1_ω:
                        mov              rcx, qword ptr [rbp + 624]
                        mov              r13, qword ptr [rbp + 600]
                        lea              rsp, [rbp + 640]
                        mov              rbp, qword ptr [rbp + 632];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__findall_length$2F2:
                        sub              rsp, 976
                        mov              qword ptr [rsp + 952], rcx
                        mov              qword ptr [rsp + 960], rdx
                        mov              qword ptr [rsp + 968], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 936], r13
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 912], r12
                        lea              rax, [rip + findall_length$2F2_alt1]
                        mov              qword ptr [rsp + 920], rax
                        lea              rdi, [rsp + 912]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 832
                        mov              edx, 912
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
findall_length$2F2_α_body:
                        .type            n292_var_ref_bx, @function
n292_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n293_lit_string_α
                        .size            n292_var_ref_bx, .-n292_var_ref_bx
                        .type            n293_lit_string_bx, @function
n293_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:      mov              r11, 112
                        mov              qword ptr [rbp + 224], 2             # result
                        mov              dword ptr [rbp + 228], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_317_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n294_call_α
.Llit_string_α_317_0:   .quad            .Llit_string_α_317_0_s
.Llit_string_α_317_0_s: .string          "[]"
                        .size            n293_lit_string_bx, .-n293_lit_string_bx
                        .type            n294_call_bx, @function
n294_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_call_α:            mov              r11, 113
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              rsi, qword ptr [rip + .Lcall_α_318_2]
                                                                              jmp   .Lcall_α_318_3
.Lcall_α_318_2:         .quad            .Lcall_α_318_2_s
.Lcall_α_318_2_s:       .string          "[]"
.Lcall_α_318_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    findall_length$2F2_step
                                                                              jmp   n295_var_ref_α
n294_call_β:            mov              r11, 113;                            jmp   findall_length$2F2_step
                        .size            n294_call_bx, .-n294_call_bx
                        .type            n295_var_ref_bx, @function
n295_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n296_lit_integer_α
                        .size            n295_var_ref_bx, .-n295_var_ref_bx
                        .type            n296_lit_integer_bx, @function
n296_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_integer_α:     mov              r11, 115
                        mov              qword ptr [rbp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_321_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n297_call_α
.Llit_integer_α_321_0:  .quad            0
                        .size            n296_lit_integer_bx, .-n296_lit_integer_bx
                        .type            n297_call_bx, @function
n297_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_call_α:            mov              r11, 116
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    findall_length$2F2_step
                                                                              jmp   findall_length$2F2_γ
n297_call_β:            mov              r11, 116;                            jmp   findall_length$2F2_step
                        .size            n297_call_bx, .-n297_call_bx
                        .type            n298_var_ref_bx, @function
n298_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n299_lit_string_α
                        .size            n298_var_ref_bx, .-n298_var_ref_bx
                        .type            n299_lit_string_bx, @function
n299_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rbp + 816], 2             # result
                        mov              dword ptr [rbp + 820], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_325_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n300_var_ref_α
.Llit_string_α_325_0:   .quad            .Llit_string_α_325_0_s
.Llit_string_α_325_0_s: .string          "."
                        .size            n299_lit_string_bx, .-n299_lit_string_bx
                        .type            n300_var_ref_bx, @function
n300_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n301_var_ref_α
                        .size            n300_var_ref_bx, .-n300_var_ref_bx
                        .type            n301_var_ref_bx, @function
n301_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n302_call_α
                        .size            n301_var_ref_bx, .-n301_var_ref_bx
                        .type            n302_call_bx, @function
n302_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_call_α:            mov              r11, 121
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
                        cmp              al, 104;                             je    findall_length$2F2_step
                                                                              jmp   n303_call_α
n302_call_β:            mov              r11, 121;                            jmp   findall_length$2F2_step
                        .size            n302_call_bx, .-n302_call_bx
                        .type            n303_call_bx, @function
n303_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_call_α:            mov              r11, 122
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
                        cmp              al, 104;                             je    findall_length$2F2_step
                                                                              jmp   n304_var_ref_α
n303_call_β:            mov              r11, 122;                            jmp   findall_length$2F2_step
                        .size            n303_call_bx, .-n303_call_bx
                        .type            n304_var_ref_bx, @function
n304_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:         mov              r11, 123
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n305_var_ref_α
                        .size            n304_var_ref_bx, .-n304_var_ref_bx
                        .type            n305_var_ref_bx, @function
n305_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n306_call_α
                        .size            n305_var_ref_bx, .-n305_var_ref_bx
                        .type            n306_call_bx, @function
n306_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_call_α:            mov              r11, 125
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              al, 104;                             je    findall_length$2F2_step
                                                                              jmp   n307_var_ref_α
n306_call_β:            mov              r11, 125;                            jmp   findall_length$2F2_step
                        .size            n306_call_bx, .-n306_call_bx
                        .type            n307_var_ref_bx, @function
n307_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_var_ref_α:         mov              r11, 126
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n308_var_ref_α
                        .size            n307_var_ref_bx, .-n307_var_ref_bx
                        .type            n308_var_ref_bx, @function
n308_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx;          jmp   n309_call_proc_staged_α
                        .size            n308_var_ref_bx, .-n308_var_ref_bx
                        .type            n309_call_proc_staged_bx, @function
n309_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_call_proc_staged_α:
                        mov              r11, 128
                        mov              qword ptr [rbp + 464], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_342_200
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_342_201
.Lcall_proc_staged_α_342_200:
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
.Lcall_proc_staged_α_342_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_342_202
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_342_203
.Lcall_proc_staged_α_342_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_342_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_342_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 6
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_342_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_342_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_342_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_342_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_342_3:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_342_21
                        add              rsp, 32
.Lcall_proc_staged_α_342_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_342_2
.Lcall_proc_staged_α_342_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 464], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_342_2
.Lcall_proc_staged_α_342_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_342_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   findall_length$2F2_step
.Lcall_proc_staged_α_342_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_342_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
.Lcall_proc_staged_α_342_29:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    findall_length$2F2_step
                                                                              jmp   n310_var_ref_α
n309_call_proc_staged_β:
                        mov              r11, 128
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_342_22
                        mov              rax, qword ptr [rbp + 464]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_342_22
                        mov              rcx, qword ptr [rbp + 472]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_342_22:
                                                                              jmp   findall_length$2F2_step
.Lcall_proc_staged_α_342_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    findall_length$2F2_step
                                                                              jmp   n310_var_ref_α
.Lcall_proc_staged_α_342_0:
                        .quad            .Lcall_proc_staged_α_342_0_s
.Lcall_proc_staged_α_342_0_s:
                        .string          "findall_length/2"
                        .size            n309_call_proc_staged_bx, .-n309_call_proc_staged_bx
                        .type            n310_var_ref_bx, @function
n310_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:         mov              r11, 129
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n311_var_α
                        .size            n310_var_ref_bx, .-n310_var_ref_bx
                        .type            n311_var_bx, @function
n311_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:             mov              r11, 130
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 392], rax;          jmp   n312_lit_integer_α
                        .size            n311_var_bx, .-n311_var_bx
                        .type            n312_lit_integer_bx, @function
n312_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_integer_α:     mov              r11, 131
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_347_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n313_call_α
.Llit_integer_α_347_0:  .quad            1
                        .size            n312_lit_integer_bx, .-n312_lit_integer_bx
                        .type            n313_call_bx, @function
n313_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_call_α:            mov              r11, 132
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    findall_length$2F2_step
                                                                              jmp   n314_call_α
n313_call_β:            mov              r11, 132;                            jmp   findall_length$2F2_step
                        .size            n313_call_bx, .-n313_call_bx
                        .type            n314_call_bx, @function
n314_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_call_α:            mov              r11, 133
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n309_call_proc_staged_β
                                                                              jmp   findall_length$2F2_ret1
n314_call_β:            mov              r11, 133;                            jmp   n309_call_proc_staged_β
                        .size            n314_call_bx, .-n314_call_bx
#-----------------------------------------------------------------------------------------------------------------------
findall_length$2F2_ret1:
                        lea              rax, [rip + n309_call_proc_staged_β]
                        mov              qword ptr [rbp + 928], rax
                                                                              jmp   findall_length$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
findall_length$2F2_step:
                        mov              rdi, qword ptr [rbp + 912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 928], 0
                        mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 840], 0
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              qword ptr [rbp + 864], 0
                        mov              qword ptr [rbp + 872], 0
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                        mov              rax, qword ptr [rbp + 920]
                        test             rax, rax
                                                                              je    findall_length$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
findall_length$2F2_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 920], rax
                        mov              r13, qword ptr [rbp + 936]
                                                                              jmp   n298_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
findall_length$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
findall_length$2F2_β:
                        test             r15, r15
                                                                              jne   findall_length$2F2_ω
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 928], 0
                        test             rax, rax
                                                                              jne   findall_length$2F2_βres
                                                                              jmp   findall_length$2F2_step
findall_length$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
findall_length$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 952]
                        mov              rax, qword ptr [rbp + 936]
                        cmp              r13, rax;                            je    findall_length$2F2_altdet
                        lea              rdx, [rip + findall_length$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 968];          jmp   rcx
findall_length$2F2_altdet:
                        xor              eax, eax
                        lea              rsp, [rbp + 976]
                        mov              rbp, qword ptr [rbp + 968];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
findall_length$2F2_ω:
                        mov              rcx, qword ptr [rbp + 960]
                        mov              r13, qword ptr [rbp + 936]
                        lea              rsp, [rbp + 976]
                        mov              rbp, qword ptr [rbp + 968];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__anc_line$2F2:
                        sub              rsp, 1328
                        mov              qword ptr [rsp + 1304], rcx
                        mov              qword ptr [rsp + 1312], rdx
                        mov              qword ptr [rsp + 1320], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1328]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1288], r13
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1264], r12
                        mov              rdi, rsp
                        mov              esi, 1088
                        mov              edx, 1264
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
anc_line$2F2_α_body:
                        .type            n350_var_ref_bx, @function
n350_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:         mov              r11, 134
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n351_var_ref_α
                        .size            n350_var_ref_bx, .-n350_var_ref_bx
                        .type            n351_var_ref_bx, @function
n351_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:         mov              r11, 135
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n352_call_α
                        .size            n351_var_ref_bx, .-n351_var_ref_bx
                        .type            n352_call_bx, @function
n352_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_call_α:            mov              r11, 136
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 1008]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              al, 104;                             je    anc_line$2F2_step
                                                                              jmp   n353_var_ref_α
n352_call_β:            mov              r11, 136;                            jmp   anc_line$2F2_step
                        .size            n352_call_bx, .-n352_call_bx
                        .type            n353_var_ref_bx, @function
n353_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n354_var_ref_α
                        .size            n353_var_ref_bx, .-n353_var_ref_bx
                        .type            n354_var_ref_bx, @function
n354_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n355_call_α
                        .size            n354_var_ref_bx, .-n354_var_ref_bx
                        .type            n355_call_bx, @function
n355_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_call_α:            mov              r11, 139
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              al, 104;                             je    anc_line$2F2_step
                                                                              jmp   n356_var_ref_α
n355_call_β:            mov              r11, 139;                            jmp   anc_line$2F2_step
                        .size            n355_call_bx, .-n355_call_bx
                        .type            n356_var_ref_bx, @function
n356_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n357_var_ref_α
                        .size            n356_var_ref_bx, .-n356_var_ref_bx
                        .type            n357_var_ref_bx, @function
n357_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n358_call_proc_staged_α
                        .size            n357_var_ref_bx, .-n357_var_ref_bx
                        .type            n358_call_proc_staged_bx, @function
n358_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_call_proc_staged_α:
                        mov              r11, 142
                        mov              qword ptr [rbp + 832], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_396_200
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_396_201
.Lcall_proc_staged_α_396_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_396_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_396_202
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_396_203
.Lcall_proc_staged_α_396_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_396_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_396_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 17
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_396_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_396_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_396_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_396_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_396_3:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_396_21
                        add              rsp, 32
.Lcall_proc_staged_α_396_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_396_2
.Lcall_proc_staged_α_396_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 832], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_396_2
.Lcall_proc_staged_α_396_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_396_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   anc_line$2F2_step
.Lcall_proc_staged_α_396_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_396_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
.Lcall_proc_staged_α_396_29:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    anc_line$2F2_step
                                                                              jmp   n359_var_ref_α
n358_call_proc_staged_β:
                        mov              r11, 142
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_396_22
                        mov              rax, qword ptr [rbp + 832]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_396_22
                        mov              rcx, qword ptr [rbp + 840]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_396_22:
                                                                              jmp   anc_line$2F2_step
.Lcall_proc_staged_α_396_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    anc_line$2F2_step
                                                                              jmp   n359_var_ref_α
.Lcall_proc_staged_α_396_0:
                        .quad            .Lcall_proc_staged_α_396_0_s
.Lcall_proc_staged_α_396_0_s:
                        .string          "ancestor/2"
                        .size            n358_call_proc_staged_bx, .-n358_call_proc_staged_bx
                        .type            n359_var_ref_bx, @function
n359_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n360_var_ref_α
                        .size            n359_var_ref_bx, .-n359_var_ref_bx
                        .type            n360_var_ref_bx, @function
n360_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_var_ref_α:         mov              r11, 144
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n361_var_ref_α
                        .size            n360_var_ref_bx, .-n360_var_ref_bx
                        .type            n361_var_ref_bx, @function
n361_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n362_var_ref_α
                        .size            n361_var_ref_bx, .-n361_var_ref_bx
                        .type            n362_var_ref_bx, @function
n362_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n363_call_proc_staged_α
                        .size            n362_var_ref_bx, .-n362_var_ref_bx
                        .type            n363_call_proc_staged_bx, @function
n363_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_call_proc_staged_α:
                        mov              r11, 147
                        mov              qword ptr [rbp + 688], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_406_200
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_406_201
.Lcall_proc_staged_α_406_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_406_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_406_202
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_406_203
.Lcall_proc_staged_α_406_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_406_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_406_204
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_406_205
.Lcall_proc_staged_α_406_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_406_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_406_206
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_406_207
.Lcall_proc_staged_α_406_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_406_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_406_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 22
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_406_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_406_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_406_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_406_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_406_3:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_406_21
                        add              rsp, 32
.Lcall_proc_staged_α_406_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_406_2
.Lcall_proc_staged_α_406_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 688], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_406_2
.Lcall_proc_staged_α_406_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_406_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n358_call_proc_staged_β
.Lcall_proc_staged_α_406_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_406_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
.Lcall_proc_staged_α_406_29:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    n358_call_proc_staged_β
                                                                              jmp   n364_var_ref_α
n363_call_proc_staged_β:
                        mov              r11, 147
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_406_22
                        mov              rax, qword ptr [rbp + 688]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_406_22
                        mov              rcx, qword ptr [rbp + 696]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_406_22:
                                                                              jmp   n358_call_proc_staged_β
.Lcall_proc_staged_α_406_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    n358_call_proc_staged_β
                                                                              jmp   n364_var_ref_α
.Lcall_proc_staged_α_406_0:
                        .quad            .Lcall_proc_staged_α_406_0_s
.Lcall_proc_staged_α_406_0_s:
                        .string          "person/4"
                        .size            n363_call_proc_staged_bx, .-n363_call_proc_staged_bx
                        .type            n364_var_ref_bx, @function
n364_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:         mov              r11, 148
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n365_var_ref_α
                        .size            n364_var_ref_bx, .-n364_var_ref_bx
                        .type            n365_var_ref_bx, @function
n365_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n366_call_proc_staged_α
                        .size            n365_var_ref_bx, .-n365_var_ref_bx
                        .type            n366_call_proc_staged_bx, @function
n366_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_call_proc_staged_α:
                        mov              r11, 150
                        mov              qword ptr [rbp + 544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_412_200
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_412_201
.Lcall_proc_staged_α_412_200:
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
.Lcall_proc_staged_α_412_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_412_202
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_412_203
.Lcall_proc_staged_α_412_202:
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
.Lcall_proc_staged_α_412_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_412_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 21
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_412_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_412_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_412_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_412_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_412_3:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_412_21
                        add              rsp, 32
.Lcall_proc_staged_α_412_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_412_2
.Lcall_proc_staged_α_412_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 544], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_412_2
.Lcall_proc_staged_α_412_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_412_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n363_call_proc_staged_β
.Lcall_proc_staged_α_412_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_412_29
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
.Lcall_proc_staged_α_412_29:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    n363_call_proc_staged_β
                                                                              jmp   n367_var_ref_α
n366_call_proc_staged_β:
                        mov              r11, 150
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_412_22
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_412_22
                        mov              rcx, qword ptr [rbp + 552]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_412_22:
                                                                              jmp   n363_call_proc_staged_β
.Lcall_proc_staged_α_412_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    n363_call_proc_staged_β
                                                                              jmp   n367_var_ref_α
.Lcall_proc_staged_α_412_0:
                        .quad            .Lcall_proc_staged_α_412_0_s
.Lcall_proc_staged_α_412_0_s:
                        .string          "generation/2"
                        .size            n366_call_proc_staged_bx, .-n366_call_proc_staged_bx
                        .type            n367_var_ref_bx, @function
n367_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n368_var_ref_α
                        .size            n367_var_ref_bx, .-n367_var_ref_bx
                        .type            n368_var_ref_bx, @function
n368_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_var_ref_α:         mov              r11, 152
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n369_call_α
                        .size            n368_var_ref_bx, .-n368_var_ref_bx
                        .type            n369_call_bx, @function
n369_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_call_α:            mov              r11, 153
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_number_codes@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              al, 104;                             je    n366_call_proc_staged_β
                                                                              jmp   n370_var_ref_α
n369_call_β:            mov              r11, 153;                            jmp   n366_call_proc_staged_β
                        .size            n369_call_bx, .-n369_call_bx
                        .type            n370_var_ref_bx, @function
n370_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_var_ref_α:         mov              r11, 154
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n371_var_ref_α
                        .size            n370_var_ref_bx, .-n370_var_ref_bx
                        .type            n371_var_ref_bx, @function
n371_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_var_ref_α:         mov              r11, 155
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n372_call_α
                        .size            n371_var_ref_bx, .-n371_var_ref_bx
                        .type            n372_call_bx, @function
n372_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:            mov              r11, 156
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_atom_codes@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    n366_call_proc_staged_β
                                                                              jmp   n373_var_ref_α
n372_call_β:            mov              r11, 156;                            jmp   n366_call_proc_staged_β
                        .size            n372_call_bx, .-n372_call_bx
                        .type            n373_var_ref_bx, @function
n373_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_var_ref_α:         mov              r11, 157
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n374_lit_string_α
                        .size            n373_var_ref_bx, .-n373_var_ref_bx
                        .type            n374_lit_string_bx, @function
n374_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:      mov              r11, 158
                        mov              qword ptr [rbp + 272], 2             # result
                        mov              dword ptr [rbp + 276], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_425_0]
                        mov              qword ptr [rbp + 280], rax;          jmp   n375_var_ref_α
.Llit_string_α_425_0:   .quad            .Llit_string_α_425_0_s
.Llit_string_α_425_0_s: .string          "|"
                        .size            n374_lit_string_bx, .-n374_lit_string_bx
                        .type            n375_var_ref_bx, @function
n375_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1088]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n376_call_α
                        .size            n375_var_ref_bx, .-n375_var_ref_bx
                        .type            n376_call_bx, @function
n376_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_call_α:            mov              r11, 160
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_atom_concat@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n366_call_proc_staged_β
                                                                              jmp   n377_var_ref_α
n376_call_β:            mov              r11, 160;                            jmp   n366_call_proc_staged_β
                        .size            n376_call_bx, .-n376_call_bx
                        .type            n377_var_ref_bx, @function
n377_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_var_ref_α:         mov              r11, 161
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1088]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n378_var_ref_α
                        .size            n377_var_ref_bx, .-n377_var_ref_bx
                        .type            n378_var_ref_bx, @function
n378_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n379_var_ref_α
                        .size            n378_var_ref_bx, .-n378_var_ref_bx
                        .type            n379_var_ref_bx, @function
n379_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_var_ref_α:         mov              r11, 163
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n380_call_α
                        .size            n379_var_ref_bx, .-n379_var_ref_bx
                        .type            n380_call_bx, @function
n380_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_call_α:            mov              r11, 164
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_atom_concat@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n366_call_proc_staged_β
                                                                              jmp   anc_line$2F2_ret0
n380_call_β:            mov              r11, 164;                            jmp   n366_call_proc_staged_β
                        .size            n380_call_bx, .-n380_call_bx
#-----------------------------------------------------------------------------------------------------------------------
anc_line$2F2_ret0:
                        lea              rax, [rip + n366_call_proc_staged_β]
                        mov              qword ptr [rbp + 1280], rax
                                                                              jmp   anc_line$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
anc_line$2F2_step:
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1280], 0
                        mov              qword ptr [rbp + 1232], 0
                        mov              qword ptr [rbp + 1240], 0
                        mov              qword ptr [rbp + 1120], 0
                        mov              qword ptr [rbp + 1128], 0
                        mov              qword ptr [rbp + 1184], 0
                        mov              qword ptr [rbp + 1192], 0
                        mov              qword ptr [rbp + 1104], 0
                        mov              qword ptr [rbp + 1112], 0
                        mov              qword ptr [rbp + 1200], 0
                        mov              qword ptr [rbp + 1208], 0
                        mov              qword ptr [rbp + 1216], 0
                        mov              qword ptr [rbp + 1224], 0
                        mov              qword ptr [rbp + 1168], 0
                        mov              qword ptr [rbp + 1176], 0
                        mov              qword ptr [rbp + 1152], 0
                        mov              qword ptr [rbp + 1160], 0
                        mov              qword ptr [rbp + 1136], 0
                        mov              qword ptr [rbp + 1144], 0
                        mov              qword ptr [rbp + 1088], 0
                        mov              qword ptr [rbp + 1096], 0
                        mov              rax, qword ptr [rbp + 1272]
                        test             rax, rax
                                                                              je    anc_line$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
anc_line$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
anc_line$2F2_β:
                        test             r15, r15
                                                                              jne   anc_line$2F2_ω
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1280], 0
                        test             rax, rax
                                                                              jne   anc_line$2F2_βres
                                                                              jmp   anc_line$2F2_step
anc_line$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
anc_line$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1304]
                        mov              rax, qword ptr [rbp + 1288]
                        cmp              r13, rax;                            je    anc_line$2F2_altdet
                        lea              rdx, [rip + anc_line$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1320];         jmp   rcx
anc_line$2F2_altdet:    xor              eax, eax
                        lea              rsp, [rbp + 1328]
                        mov              rbp, qword ptr [rbp + 1320];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
anc_line$2F2_ω:
                        mov              rcx, qword ptr [rbp + 1312]
                        mov              r13, qword ptr [rbp + 1288]
                        lea              rsp, [rbp + 1328]
                        mov              rbp, qword ptr [rbp + 1320];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__sibling$2F2:
                        sub              rsp, 784
                        mov              qword ptr [rsp + 760], rcx
                        mov              qword ptr [rsp + 768], rdx
                        mov              qword ptr [rsp + 776], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 744], r13
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 720], r12
                        mov              rdi, rsp
                        mov              esi, 656
                        mov              edx, 720
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
sibling$2F2_α_body:
                        .type            n436_var_ref_bx, @function
n436_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_var_ref_α:         mov              r11, 165
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n437_var_ref_α
                        .size            n436_var_ref_bx, .-n436_var_ref_bx
                        .type            n437_var_ref_bx, @function
n437_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_var_ref_α:         mov              r11, 166
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n438_call_α
                        .size            n437_var_ref_bx, .-n437_var_ref_bx
                        .type            n438_call_bx, @function
n438_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_call_α:            mov              r11, 167
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
                        cmp              al, 104;                             je    sibling$2F2_step
                                                                              jmp   n439_var_ref_α
n438_call_β:            mov              r11, 167;                            jmp   sibling$2F2_step
                        .size            n438_call_bx, .-n438_call_bx
                        .type            n439_var_ref_bx, @function
n439_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_var_ref_α:         mov              r11, 168
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n440_var_ref_α
                        .size            n439_var_ref_bx, .-n439_var_ref_bx
                        .type            n440_var_ref_bx, @function
n440_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_var_ref_α:         mov              r11, 169
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n441_call_α
                        .size            n440_var_ref_bx, .-n440_var_ref_bx
                        .type            n441_call_bx, @function
n441_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_call_α:            mov              r11, 170
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 480]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    sibling$2F2_step
                                                                              jmp   n442_var_ref_α
n441_call_β:            mov              r11, 170;                            jmp   sibling$2F2_step
                        .size            n441_call_bx, .-n441_call_bx
                        .type            n442_var_ref_bx, @function
n442_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_var_ref_α:         mov              r11, 171
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n443_var_ref_α
                        .size            n442_var_ref_bx, .-n442_var_ref_bx
                        .type            n443_var_ref_bx, @function
n443_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_var_ref_α:         mov              r11, 172
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n444_call_proc_staged_α
                        .size            n443_var_ref_bx, .-n443_var_ref_bx
                        .type            n444_call_proc_staged_bx, @function
n444_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_call_proc_staged_α:
                        mov              r11, 173
                        mov              qword ptr [rbp + 400], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_471_200
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_471_201
.Lcall_proc_staged_α_471_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_471_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_471_202
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_471_203
.Lcall_proc_staged_α_471_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_471_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_471_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 23
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_471_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_471_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_471_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_471_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_471_3:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_471_21
                        add              rsp, 32
.Lcall_proc_staged_α_471_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_471_2
.Lcall_proc_staged_α_471_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 400], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_471_2
.Lcall_proc_staged_α_471_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_471_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   sibling$2F2_step
.Lcall_proc_staged_α_471_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_471_29
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
.Lcall_proc_staged_α_471_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    sibling$2F2_step
                                                                              jmp   n445_var_ref_α
n444_call_proc_staged_β:
                        mov              r11, 173
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_471_22
                        mov              rax, qword ptr [rbp + 400]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_471_22
                        mov              rcx, qword ptr [rbp + 408]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_471_22:
                                                                              jmp   sibling$2F2_step
.Lcall_proc_staged_α_471_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    sibling$2F2_step
                                                                              jmp   n445_var_ref_α
.Lcall_proc_staged_α_471_0:
                        .quad            .Lcall_proc_staged_α_471_0_s
.Lcall_proc_staged_α_471_0_s:
                        .string          "parent/2"
                        .size            n444_call_proc_staged_bx, .-n444_call_proc_staged_bx
                        .type            n445_var_ref_bx, @function
n445_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_var_ref_α:         mov              r11, 174
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n446_var_ref_α
                        .size            n445_var_ref_bx, .-n445_var_ref_bx
                        .type            n446_var_ref_bx, @function
n446_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_var_ref_α:         mov              r11, 175
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n447_call_proc_staged_α
                        .size            n446_var_ref_bx, .-n446_var_ref_bx
                        .type            n447_call_proc_staged_bx, @function
n447_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n447_call_proc_staged_α:
                        mov              r11, 176
                        mov              qword ptr [rbp + 288], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_477_200
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_477_201
.Lcall_proc_staged_α_477_200:
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
.Lcall_proc_staged_α_477_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_477_202
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_477_203
.Lcall_proc_staged_α_477_202:
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
.Lcall_proc_staged_α_477_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_477_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 23
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_477_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_477_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_477_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_477_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_477_3:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_477_21
                        add              rsp, 32
.Lcall_proc_staged_α_477_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_477_2
.Lcall_proc_staged_α_477_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 288], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_477_2
.Lcall_proc_staged_α_477_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_477_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n444_call_proc_staged_β
.Lcall_proc_staged_α_477_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_477_29
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
.Lcall_proc_staged_α_477_29:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n444_call_proc_staged_β
                                                                              jmp   n448_bound_α
n447_call_proc_staged_β:
                        mov              r11, 176
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_477_22
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_477_22
                        mov              rcx, qword ptr [rbp + 296]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_477_22:
                                                                              jmp   n444_call_proc_staged_β
.Lcall_proc_staged_α_477_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n444_call_proc_staged_β
                                                                              jmp   n448_bound_α
.Lcall_proc_staged_α_477_0:
                        .quad            .Lcall_proc_staged_α_477_0_s
.Lcall_proc_staged_α_477_0_s:
                        .string          "parent/2"
                        .size            n447_call_proc_staged_bx, .-n447_call_proc_staged_bx
                        .type            n448_bound_bx, @function
n448_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_bound_α:           mov              r11, 177
                        mov              qword ptr [rbp + 80], r12
                        lea              rdi, [rbp + 720]
                        mov              rsi, rbp
                        call             rt_pl_disj_open@PLT;                 jmp   n449_var_ref_α
                        .size            n448_bound_bx, .-n448_bound_bx
                        .type            n449_var_ref_bx, @function
n449_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_var_ref_α:         mov              r11, 178
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n450_var_ref_α
                        .size            n449_var_ref_bx, .-n449_var_ref_bx
                        .type            n450_var_ref_bx, @function
n450_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_var_ref_α:         mov              r11, 179
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n451_call_α
                        .size            n450_var_ref_bx, .-n450_var_ref_bx
                        .type            n451_call_bx, @function
n451_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_call_α:            mov              r11, 180
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    n453_unmark_α
                                                                              jmp   n452_unmark_α
n451_call_β:            mov              r11, 180;                            jmp   n453_unmark_α
                        .size            n451_call_bx, .-n451_call_bx
                        .type            n452_unmark_bx, @function
n452_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_unmark_α:          mov              r11, 181
                        mov              rdi, qword ptr [rbp + 80]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   sibling$2F2_step
                                                                              jmp   n455_indirect_goto_α
                        .size            n452_unmark_bx, .-n452_unmark_bx
                        .type            n453_unmark_bx, @function
n453_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n453_unmark_α:          mov              r11, 182
                        mov              rdi, qword ptr [rbp + 80]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   sibling$2F2_step
                                                                              jmp   n454_move_label_α
                        .size            n453_unmark_bx, .-n453_unmark_bx
                        .type            n454_move_label_bx, @function
n454_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_move_label_α:      mov              r11, 183
                        lea              rax, [rip + n455_indirect_goto_α]
                        mov              qword ptr [rbp + 64], rax;           jmp   sibling$2F2_γ
                        .size            n454_move_label_bx, .-n454_move_label_bx
                        .type            n455_indirect_goto_bx, @function
n455_indirect_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n455_indirect_goto_α:   mov              r11, 184;                            jmp   n447_call_proc_staged_β
n455_indirect_goto_β:   mov              r11, 184;                            jmp   qword ptr [rbp + 64]
                        .size            n455_indirect_goto_bx, .-n455_indirect_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
sibling$2F2_ret0:
                        lea              rax, [rip + n455_indirect_goto_β]
                        mov              qword ptr [rbp + 736], rax
                                                                              jmp   sibling$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
sibling$2F2_step:
                        mov              rdi, qword ptr [rbp + 720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 736], 0
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              qword ptr [rbp + 672], 0
                        mov              qword ptr [rbp + 680], 0
                        mov              qword ptr [rbp + 688], 0
                        mov              qword ptr [rbp + 696], 0
                        mov              rax, qword ptr [rbp + 728]
                        test             rax, rax
                                                                              je    sibling$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sibling$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
sibling$2F2_β:
                        test             r15, r15
                                                                              jne   sibling$2F2_ω
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 736], 0
                        test             rax, rax
                                                                              jne   sibling$2F2_βres
                                                                              jmp   sibling$2F2_step
sibling$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sibling$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 760]
                        mov              rax, qword ptr [rbp + 744]
                        cmp              r13, rax;                            je    sibling$2F2_altdet
                        lea              rdx, [rip + sibling$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 776];          jmp   rcx
sibling$2F2_altdet:     xor              eax, eax
                        lea              rsp, [rbp + 784]
                        mov              rbp, qword ptr [rbp + 776];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sibling$2F2_ω:
                        mov              rcx, qword ptr [rbp + 768]
                        mov              r13, qword ptr [rbp + 744]
                        lea              rsp, [rbp + 784]
                        mov              rbp, qword ptr [rbp + 776];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__cousin$2F2:
                        sub              rsp, 912
                        mov              qword ptr [rsp + 888], rcx
                        mov              qword ptr [rsp + 896], rdx
                        mov              qword ptr [rsp + 904], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 912]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 872], r13
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 848], r12
                        mov              rdi, rsp
                        mov              esi, 768
                        mov              edx, 848
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
cousin$2F2_α_body:
                        .type            n493_var_ref_bx, @function
n493_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n493_var_ref_α:         mov              r11, 185
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n494_var_ref_α
                        .size            n493_var_ref_bx, .-n493_var_ref_bx
                        .type            n494_var_ref_bx, @function
n494_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n494_var_ref_α:         mov              r11, 186
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n495_call_α
                        .size            n494_var_ref_bx, .-n494_var_ref_bx
                        .type            n495_call_bx, @function
n495_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n495_call_α:            mov              r11, 187
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    cousin$2F2_step
                                                                              jmp   n496_var_ref_α
n495_call_β:            mov              r11, 187;                            jmp   cousin$2F2_step
                        .size            n495_call_bx, .-n495_call_bx
                        .type            n496_var_ref_bx, @function
n496_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n496_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n497_var_ref_α
                        .size            n496_var_ref_bx, .-n496_var_ref_bx
                        .type            n497_var_ref_bx, @function
n497_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n497_var_ref_α:         mov              r11, 189
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n498_call_α
                        .size            n497_var_ref_bx, .-n497_var_ref_bx
                        .type            n498_call_bx, @function
n498_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n498_call_α:            mov              r11, 190
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    cousin$2F2_step
                                                                              jmp   n499_var_ref_α
n498_call_β:            mov              r11, 190;                            jmp   cousin$2F2_step
                        .size            n498_call_bx, .-n498_call_bx
                        .type            n499_var_ref_bx, @function
n499_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n499_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n500_var_ref_α
                        .size            n499_var_ref_bx, .-n499_var_ref_bx
                        .type            n500_var_ref_bx, @function
n500_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n500_var_ref_α:         mov              r11, 192
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n501_call_proc_staged_α
                        .size            n500_var_ref_bx, .-n500_var_ref_bx
                        .type            n501_call_proc_staged_bx, @function
n501_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n501_call_proc_staged_α:
                        mov              r11, 193
                        mov              qword ptr [rbp + 512], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_531_200
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_531_201
.Lcall_proc_staged_α_531_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_531_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_531_202
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_531_203
.Lcall_proc_staged_α_531_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_531_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_531_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 23
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_531_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_531_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_531_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_531_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_531_3:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_531_21
                        add              rsp, 32
.Lcall_proc_staged_α_531_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_531_2
.Lcall_proc_staged_α_531_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 512], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_531_2
.Lcall_proc_staged_α_531_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_531_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   cousin$2F2_step
.Lcall_proc_staged_α_531_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_531_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
.Lcall_proc_staged_α_531_29:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    cousin$2F2_step
                                                                              jmp   n502_var_ref_α
n501_call_proc_staged_β:
                        mov              r11, 193
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_531_22
                        mov              rax, qword ptr [rbp + 512]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_531_22
                        mov              rcx, qword ptr [rbp + 520]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_531_22:
                                                                              jmp   cousin$2F2_step
.Lcall_proc_staged_α_531_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    cousin$2F2_step
                                                                              jmp   n502_var_ref_α
.Lcall_proc_staged_α_531_0:
                        .quad            .Lcall_proc_staged_α_531_0_s
.Lcall_proc_staged_α_531_0_s:
                        .string          "parent/2"
                        .size            n501_call_proc_staged_bx, .-n501_call_proc_staged_bx
                        .type            n502_var_ref_bx, @function
n502_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n502_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n503_var_ref_α
                        .size            n502_var_ref_bx, .-n502_var_ref_bx
                        .type            n503_var_ref_bx, @function
n503_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n503_var_ref_α:         mov              r11, 195
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n504_call_proc_staged_α
                        .size            n503_var_ref_bx, .-n503_var_ref_bx
                        .type            n504_call_proc_staged_bx, @function
n504_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n504_call_proc_staged_α:
                        mov              r11, 196
                        mov              qword ptr [rbp + 400], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_537_200
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_537_201
.Lcall_proc_staged_α_537_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_537_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_537_202
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_537_203
.Lcall_proc_staged_α_537_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_537_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_537_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 23
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_537_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_537_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_537_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_537_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_537_3:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_537_21
                        add              rsp, 32
.Lcall_proc_staged_α_537_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_537_2
.Lcall_proc_staged_α_537_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 400], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_537_2
.Lcall_proc_staged_α_537_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_537_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n501_call_proc_staged_β
.Lcall_proc_staged_α_537_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_537_29
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
.Lcall_proc_staged_α_537_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n501_call_proc_staged_β
                                                                              jmp   n505_var_ref_α
n504_call_proc_staged_β:
                        mov              r11, 196
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_537_22
                        mov              rax, qword ptr [rbp + 400]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_537_22
                        mov              rcx, qword ptr [rbp + 408]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_537_22:
                                                                              jmp   n501_call_proc_staged_β
.Lcall_proc_staged_α_537_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n501_call_proc_staged_β
                                                                              jmp   n505_var_ref_α
.Lcall_proc_staged_α_537_0:
                        .quad            .Lcall_proc_staged_α_537_0_s
.Lcall_proc_staged_α_537_0_s:
                        .string          "parent/2"
                        .size            n504_call_proc_staged_bx, .-n504_call_proc_staged_bx
                        .type            n505_var_ref_bx, @function
n505_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n505_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n506_var_ref_α
                        .size            n505_var_ref_bx, .-n505_var_ref_bx
                        .type            n506_var_ref_bx, @function
n506_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n506_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n507_call_proc_staged_α
                        .size            n506_var_ref_bx, .-n506_var_ref_bx
                        .type            n507_call_proc_staged_bx, @function
n507_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n507_call_proc_staged_α:
                        mov              r11, 199
                        mov              qword ptr [rbp + 288], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_543_200
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_543_201
.Lcall_proc_staged_α_543_200:
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
.Lcall_proc_staged_α_543_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_543_202
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_543_203
.Lcall_proc_staged_α_543_202:
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
.Lcall_proc_staged_α_543_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_543_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 8
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_543_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_543_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_543_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_543_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_543_3:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_543_21
                        add              rsp, 32
.Lcall_proc_staged_α_543_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_543_2
.Lcall_proc_staged_α_543_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 288], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_543_2
.Lcall_proc_staged_α_543_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_543_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n504_call_proc_staged_β
.Lcall_proc_staged_α_543_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_543_29
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
.Lcall_proc_staged_α_543_29:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n504_call_proc_staged_β
                                                                              jmp   n508_bound_α
n507_call_proc_staged_β:
                        mov              r11, 199
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_543_22
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_543_22
                        mov              rcx, qword ptr [rbp + 296]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_543_22:
                                                                              jmp   n504_call_proc_staged_β
.Lcall_proc_staged_α_543_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n504_call_proc_staged_β
                                                                              jmp   n508_bound_α
.Lcall_proc_staged_α_543_0:
                        .quad            .Lcall_proc_staged_α_543_0_s
.Lcall_proc_staged_α_543_0_s:
                        .string          "sibling/2"
                        .size            n507_call_proc_staged_bx, .-n507_call_proc_staged_bx
                        .type            n508_bound_bx, @function
n508_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n508_bound_α:           mov              r11, 200
                        mov              qword ptr [rbp + 80], r12
                        lea              rdi, [rbp + 848]
                        mov              rsi, rbp
                        call             rt_pl_disj_open@PLT;                 jmp   n509_var_ref_α
                        .size            n508_bound_bx, .-n508_bound_bx
                        .type            n509_var_ref_bx, @function
n509_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n509_var_ref_α:         mov              r11, 201
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n510_var_ref_α
                        .size            n509_var_ref_bx, .-n509_var_ref_bx
                        .type            n510_var_ref_bx, @function
n510_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n510_var_ref_α:         mov              r11, 202
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n511_call_α
                        .size            n510_var_ref_bx, .-n510_var_ref_bx
                        .type            n511_call_bx, @function
n511_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n511_call_α:            mov              r11, 203
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    n513_unmark_α
                                                                              jmp   n512_unmark_α
n511_call_β:            mov              r11, 203;                            jmp   n513_unmark_α
                        .size            n511_call_bx, .-n511_call_bx
                        .type            n512_unmark_bx, @function
n512_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n512_unmark_α:          mov              r11, 204
                        mov              rdi, qword ptr [rbp + 80]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   cousin$2F2_step
                                                                              jmp   n515_indirect_goto_α
                        .size            n512_unmark_bx, .-n512_unmark_bx
                        .type            n513_unmark_bx, @function
n513_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n513_unmark_α:          mov              r11, 205
                        mov              rdi, qword ptr [rbp + 80]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   cousin$2F2_step
                                                                              jmp   n514_move_label_α
                        .size            n513_unmark_bx, .-n513_unmark_bx
                        .type            n514_move_label_bx, @function
n514_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n514_move_label_α:      mov              r11, 206
                        lea              rax, [rip + n515_indirect_goto_α]
                        mov              qword ptr [rbp + 64], rax;           jmp   cousin$2F2_γ
                        .size            n514_move_label_bx, .-n514_move_label_bx
                        .type            n515_indirect_goto_bx, @function
n515_indirect_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n515_indirect_goto_α:   mov              r11, 207;                            jmp   n507_call_proc_staged_β
n515_indirect_goto_β:   mov              r11, 207;                            jmp   qword ptr [rbp + 64]
                        .size            n515_indirect_goto_bx, .-n515_indirect_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
cousin$2F2_ret0:
                        lea              rax, [rip + n515_indirect_goto_β]
                        mov              qword ptr [rbp + 864], rax
                                                                              jmp   cousin$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
cousin$2F2_step:
                        mov              rdi, qword ptr [rbp + 848]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 864], 0
                        mov              qword ptr [rbp + 768], 0
                        mov              qword ptr [rbp + 776], 0
                        mov              qword ptr [rbp + 784], 0
                        mov              qword ptr [rbp + 792], 0
                        mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              qword ptr [rbp + 816], 0
                        mov              qword ptr [rbp + 824], 0
                        mov              rax, qword ptr [rbp + 856]
                        test             rax, rax
                                                                              je    cousin$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
cousin$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
cousin$2F2_β:
                        test             r15, r15
                                                                              jne   cousin$2F2_ω
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 864], 0
                        test             rax, rax
                                                                              jne   cousin$2F2_βres
                                                                              jmp   cousin$2F2_step
cousin$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
cousin$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 888]
                        mov              rax, qword ptr [rbp + 872]
                        cmp              r13, rax;                            je    cousin$2F2_altdet
                        lea              rdx, [rip + cousin$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 904];          jmp   rcx
cousin$2F2_altdet:      xor              eax, eax
                        lea              rsp, [rbp + 912]
                        mov              rbp, qword ptr [rbp + 904];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
cousin$2F2_ω:
                        mov              rcx, qword ptr [rbp + 896]
                        mov              r13, qword ptr [rbp + 872]
                        lea              rsp, [rbp + 912]
                        mov              rbp, qword ptr [rbp + 904];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__scrip_init$2F0:
                        sub              rsp, 80
                        mov              qword ptr [rsp + 56], rcx
                        mov              qword ptr [rsp + 64], rdx
                        mov              qword ptr [rsp + 72], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 40], r13
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 16], r12
                        mov              rdi, rsp
                        mov              esi, 16
                        mov              edx, 16
                        call             rt_jmp_frame_lexprep2@PLT
scrip_init$2F0_α_body:
                                                                              jmp   scrip_init$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
scrip_init$2F0_step:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], 0
                        mov              rax, qword ptr [rbp + 24]
                        test             rax, rax
                                                                              je    scrip_init$2F0_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
scrip_init$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
scrip_init$2F0_β:
                        test             r15, r15
                                                                              jne   scrip_init$2F0_ω
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 32], 0
                        test             rax, rax
                                                                              jne   scrip_init$2F0_βres
                                                                              jmp   scrip_init$2F0_step
scrip_init$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
scrip_init$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 56]
                        mov              rax, qword ptr [rbp + 40]
                        cmp              r13, rax;                            je    scrip_init$2F0_altdet
                        lea              rdx, [rip + scrip_init$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 72];           jmp   rcx
scrip_init$2F0_altdet:  xor              eax, eax
                        lea              rsp, [rbp + 80]
                        mov              rbp, qword ptr [rbp + 72];           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
scrip_init$2F0_ω:
                        mov              rcx, qword ptr [rbp + 64]
                        mov              r13, qword ptr [rbp + 40]
                        lea              rsp, [rbp + 80]
                        mov              rbp, qword ptr [rbp + 72];           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__gen_line$2F1:
                        sub              rsp, 1088
                        mov              qword ptr [rsp + 1064], rcx
                        mov              qword ptr [rsp + 1072], rdx
                        mov              qword ptr [rsp + 1080], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1048], r13
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1024], r12
                        mov              rdi, rsp
                        mov              esi, 864
                        mov              edx, 1024
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
gen_line$2F1_α_body:
                        .type            n559_var_ref_bx, @function
n559_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n559_var_ref_α:         mov              r11, 208
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n560_var_ref_α
                        .size            n559_var_ref_bx, .-n559_var_ref_bx
                        .type            n560_var_ref_bx, @function
n560_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n560_var_ref_α:         mov              r11, 209
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n561_call_α
                        .size            n560_var_ref_bx, .-n560_var_ref_bx
                        .type            n561_call_bx, @function
n561_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n561_call_α:            mov              r11, 210
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              al, 104;                             je    gen_line$2F1_step
                                                                              jmp   n562_var_ref_α
n561_call_β:            mov              r11, 210;                            jmp   gen_line$2F1_step
                        .size            n561_call_bx, .-n561_call_bx
                        .type            n562_var_ref_bx, @function
n562_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n562_var_ref_α:         mov              r11, 211
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n563_var_ref_α
                        .size            n562_var_ref_bx, .-n562_var_ref_bx
                        .type            n563_var_ref_bx, @function
n563_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n563_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n564_var_ref_α
                        .size            n563_var_ref_bx, .-n563_var_ref_bx
                        .type            n564_var_ref_bx, @function
n564_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n564_var_ref_α:         mov              r11, 213
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n565_var_ref_α
                        .size            n564_var_ref_bx, .-n564_var_ref_bx
                        .type            n565_var_ref_bx, @function
n565_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n565_var_ref_α:         mov              r11, 214
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n566_call_proc_staged_α
                        .size            n565_var_ref_bx, .-n565_var_ref_bx
                        .type            n566_call_proc_staged_bx, @function
n566_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n566_call_proc_staged_α:
                        mov              r11, 215
                        mov              qword ptr [rbp + 672], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_598_200
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_598_201
.Lcall_proc_staged_α_598_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_598_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_598_202
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_598_203
.Lcall_proc_staged_α_598_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_598_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_598_204
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_598_205
.Lcall_proc_staged_α_598_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_598_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_598_206
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_598_207
.Lcall_proc_staged_α_598_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_598_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_598_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 22
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_598_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_598_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_598_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_598_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_598_3:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_598_21
                        add              rsp, 32
.Lcall_proc_staged_α_598_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_598_2
.Lcall_proc_staged_α_598_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 672], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_598_2
.Lcall_proc_staged_α_598_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_598_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   gen_line$2F1_step
.Lcall_proc_staged_α_598_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_598_29
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
.Lcall_proc_staged_α_598_29:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    gen_line$2F1_step
                                                                              jmp   n567_var_ref_α
n566_call_proc_staged_β:
                        mov              r11, 215
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_598_22
                        mov              rax, qword ptr [rbp + 672]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_598_22
                        mov              rcx, qword ptr [rbp + 680]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_598_22:
                                                                              jmp   gen_line$2F1_step
.Lcall_proc_staged_α_598_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    gen_line$2F1_step
                                                                              jmp   n567_var_ref_α
.Lcall_proc_staged_α_598_0:
                        .quad            .Lcall_proc_staged_α_598_0_s
.Lcall_proc_staged_α_598_0_s:
                        .string          "person/4"
                        .size            n566_call_proc_staged_bx, .-n566_call_proc_staged_bx
                        .type            n567_var_ref_bx, @function
n567_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n567_var_ref_α:         mov              r11, 216
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n568_var_ref_α
                        .size            n567_var_ref_bx, .-n567_var_ref_bx
                        .type            n568_var_ref_bx, @function
n568_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n568_var_ref_α:         mov              r11, 217
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n569_call_proc_staged_α
                        .size            n568_var_ref_bx, .-n568_var_ref_bx
                        .type            n569_call_proc_staged_bx, @function
n569_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n569_call_proc_staged_α:
                        mov              r11, 218
                        mov              qword ptr [rbp + 528], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_604_200
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_604_201
.Lcall_proc_staged_α_604_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_604_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_604_202
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_604_203
.Lcall_proc_staged_α_604_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_604_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_604_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 21
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_604_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_604_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_604_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_604_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_604_3:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_604_21
                        add              rsp, 32
.Lcall_proc_staged_α_604_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_604_2
.Lcall_proc_staged_α_604_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 528], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_604_2
.Lcall_proc_staged_α_604_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_604_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n566_call_proc_staged_β
.Lcall_proc_staged_α_604_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_604_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
.Lcall_proc_staged_α_604_29:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    n566_call_proc_staged_β
                                                                              jmp   n570_var_ref_α
n569_call_proc_staged_β:
                        mov              r11, 218
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_604_22
                        mov              rax, qword ptr [rbp + 528]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_604_22
                        mov              rcx, qword ptr [rbp + 536]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_604_22:
                                                                              jmp   n566_call_proc_staged_β
.Lcall_proc_staged_α_604_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    n566_call_proc_staged_β
                                                                              jmp   n570_var_ref_α
.Lcall_proc_staged_α_604_0:
                        .quad            .Lcall_proc_staged_α_604_0_s
.Lcall_proc_staged_α_604_0_s:
                        .string          "generation/2"
                        .size            n569_call_proc_staged_bx, .-n569_call_proc_staged_bx
                        .type            n570_var_ref_bx, @function
n570_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n570_var_ref_α:         mov              r11, 219
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n571_var_ref_α
                        .size            n570_var_ref_bx, .-n570_var_ref_bx
                        .type            n571_var_ref_bx, @function
n571_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n571_var_ref_α:         mov              r11, 220
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n572_call_α
                        .size            n571_var_ref_bx, .-n571_var_ref_bx
                        .type            n572_call_bx, @function
n572_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n572_call_α:            mov              r11, 221
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_number_codes@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    n569_call_proc_staged_β
                                                                              jmp   n573_var_ref_α
n572_call_β:            mov              r11, 221;                            jmp   n569_call_proc_staged_β
                        .size            n572_call_bx, .-n572_call_bx
                        .type            n573_var_ref_bx, @function
n573_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n573_var_ref_α:         mov              r11, 222
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n574_var_ref_α
                        .size            n573_var_ref_bx, .-n573_var_ref_bx
                        .type            n574_var_ref_bx, @function
n574_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n574_var_ref_α:         mov              r11, 223
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n575_call_α
                        .size            n574_var_ref_bx, .-n574_var_ref_bx
                        .type            n575_call_bx, @function
n575_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n575_call_α:            mov              r11, 224
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
                        call             rt_pl_dop_atom_codes@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    n569_call_proc_staged_β
                                                                              jmp   n576_var_ref_α
n575_call_β:            mov              r11, 224;                            jmp   n569_call_proc_staged_β
                        .size            n575_call_bx, .-n575_call_bx
                        .type            n576_var_ref_bx, @function
n576_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n576_var_ref_α:         mov              r11, 225
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n577_lit_string_α
                        .size            n576_var_ref_bx, .-n576_var_ref_bx
                        .type            n577_lit_string_bx, @function
n577_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n577_lit_string_α:      mov              r11, 226
                        mov              qword ptr [rbp + 256], 2             # result
                        mov              dword ptr [rbp + 260], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_617_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n578_var_ref_α
.Llit_string_α_617_0:   .quad            .Llit_string_α_617_0_s
.Llit_string_α_617_0_s: .string          "|"
                        .size            n577_lit_string_bx, .-n577_lit_string_bx
                        .type            n578_var_ref_bx, @function
n578_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n578_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n579_call_α
                        .size            n578_var_ref_bx, .-n578_var_ref_bx
                        .type            n579_call_bx, @function
n579_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n579_call_α:            mov              r11, 228
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_atom_concat@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n569_call_proc_staged_β
                                                                              jmp   n580_var_ref_α
n579_call_β:            mov              r11, 228;                            jmp   n569_call_proc_staged_β
                        .size            n579_call_bx, .-n579_call_bx
                        .type            n580_var_ref_bx, @function
n580_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n580_var_ref_α:         mov              r11, 229
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n581_var_ref_α
                        .size            n580_var_ref_bx, .-n580_var_ref_bx
                        .type            n581_var_ref_bx, @function
n581_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n581_var_ref_α:         mov              r11, 230
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n582_var_ref_α
                        .size            n581_var_ref_bx, .-n581_var_ref_bx
                        .type            n582_var_ref_bx, @function
n582_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n582_var_ref_α:         mov              r11, 231
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n583_call_α
                        .size            n582_var_ref_bx, .-n582_var_ref_bx
                        .type            n583_call_bx, @function
n583_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n583_call_α:            mov              r11, 232
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_atom_concat@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    n569_call_proc_staged_β
                                                                              jmp   gen_line$2F1_ret0
n583_call_β:            mov              r11, 232;                            jmp   n569_call_proc_staged_β
                        .size            n583_call_bx, .-n583_call_bx
#-----------------------------------------------------------------------------------------------------------------------
gen_line$2F1_ret0:
                        lea              rax, [rip + n569_call_proc_staged_β]
                        mov              qword ptr [rbp + 1040], rax
                                                                              jmp   gen_line$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
gen_line$2F1_step:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1040], 0
                        mov              qword ptr [rbp + 896], 0
                        mov              qword ptr [rbp + 904], 0
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 968], 0
                        mov              qword ptr [rbp + 976], 0
                        mov              qword ptr [rbp + 984], 0
                        mov              qword ptr [rbp + 992], 0
                        mov              qword ptr [rbp + 1000], 0
                        mov              qword ptr [rbp + 944], 0
                        mov              qword ptr [rbp + 952], 0
                        mov              qword ptr [rbp + 928], 0
                        mov              qword ptr [rbp + 936], 0
                        mov              qword ptr [rbp + 912], 0
                        mov              qword ptr [rbp + 920], 0
                        mov              qword ptr [rbp + 864], 0
                        mov              qword ptr [rbp + 872], 0
                        mov              rax, qword ptr [rbp + 1032]
                        test             rax, rax
                                                                              je    gen_line$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
gen_line$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
gen_line$2F1_β:
                        test             r15, r15
                                                                              jne   gen_line$2F1_ω
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1040], 0
                        test             rax, rax
                                                                              jne   gen_line$2F1_βres
                                                                              jmp   gen_line$2F1_step
gen_line$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
gen_line$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1064]
                        mov              rax, qword ptr [rbp + 1048]
                        cmp              r13, rax;                            je    gen_line$2F1_altdet
                        lea              rdx, [rip + gen_line$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1080];         jmp   rcx
gen_line$2F1_altdet:    xor              eax, eax
                        lea              rsp, [rbp + 1088]
                        mov              rbp, qword ptr [rbp + 1080];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
gen_line$2F1_ω:
                        mov              rcx, qword ptr [rbp + 1072]
                        mov              r13, qword ptr [rbp + 1048]
                        lea              rsp, [rbp + 1088]
                        mov              rbp, qword ptr [rbp + 1080];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__sib_line$2F1:
                        sub              rsp, 1088
                        mov              qword ptr [rsp + 1064], rcx
                        mov              qword ptr [rsp + 1072], rdx
                        mov              qword ptr [rsp + 1080], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1048], r13
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1024], r12
                        mov              rdi, rsp
                        mov              esi, 848
                        mov              edx, 1024
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
sib_line$2F1_α_body:
                        .type            n628_var_ref_bx, @function
n628_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n628_var_ref_α:         mov              r11, 233
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n629_var_ref_α
                        .size            n628_var_ref_bx, .-n628_var_ref_bx
                        .type            n629_var_ref_bx, @function
n629_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n629_var_ref_α:         mov              r11, 234
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n630_call_α
                        .size            n629_var_ref_bx, .-n629_var_ref_bx
                        .type            n630_call_bx, @function
n630_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n630_call_α:            mov              r11, 235
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              al, 104;                             je    sib_line$2F1_step
                                                                              jmp   n631_var_ref_α
n630_call_β:            mov              r11, 235;                            jmp   sib_line$2F1_step
                        .size            n630_call_bx, .-n630_call_bx
                        .type            n631_var_ref_bx, @function
n631_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n631_var_ref_α:         mov              r11, 236
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n632_var_ref_α
                        .size            n631_var_ref_bx, .-n631_var_ref_bx
                        .type            n632_var_ref_bx, @function
n632_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n632_var_ref_α:         mov              r11, 237
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n633_call_proc_staged_α
                        .size            n632_var_ref_bx, .-n632_var_ref_bx
                        .type            n633_call_proc_staged_bx, @function
n633_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n633_call_proc_staged_α:
                        mov              r11, 238
                        mov              qword ptr [rbp + 688], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_662_200
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_662_201
.Lcall_proc_staged_α_662_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_662_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_662_202
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_662_203
.Lcall_proc_staged_α_662_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_662_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_662_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 8
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_662_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_662_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_662_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_662_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_662_3:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_662_21
                        add              rsp, 32
.Lcall_proc_staged_α_662_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_662_2
.Lcall_proc_staged_α_662_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 688], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_662_2
.Lcall_proc_staged_α_662_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_662_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   sib_line$2F1_step
.Lcall_proc_staged_α_662_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_662_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
.Lcall_proc_staged_α_662_29:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    sib_line$2F1_step
                                                                              jmp   n634_var_ref_α
n633_call_proc_staged_β:
                        mov              r11, 238
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_662_22
                        mov              rax, qword ptr [rbp + 688]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_662_22
                        mov              rcx, qword ptr [rbp + 696]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_662_22:
                                                                              jmp   sib_line$2F1_step
.Lcall_proc_staged_α_662_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    sib_line$2F1_step
                                                                              jmp   n634_var_ref_α
.Lcall_proc_staged_α_662_0:
                        .quad            .Lcall_proc_staged_α_662_0_s
.Lcall_proc_staged_α_662_0_s:
                        .string          "sibling/2"
                        .size            n633_call_proc_staged_bx, .-n633_call_proc_staged_bx
                        .type            n634_var_ref_bx, @function
n634_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n634_var_ref_α:         mov              r11, 239
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n635_var_ref_α
                        .size            n634_var_ref_bx, .-n634_var_ref_bx
                        .type            n635_var_ref_bx, @function
n635_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n635_var_ref_α:         mov              r11, 240
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n636_var_ref_α
                        .size            n635_var_ref_bx, .-n635_var_ref_bx
                        .type            n636_var_ref_bx, @function
n636_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n636_var_ref_α:         mov              r11, 241
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n637_var_ref_α
                        .size            n636_var_ref_bx, .-n636_var_ref_bx
                        .type            n637_var_ref_bx, @function
n637_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n637_var_ref_α:         mov              r11, 242
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n638_call_proc_staged_α
                        .size            n637_var_ref_bx, .-n637_var_ref_bx
                        .type            n638_call_proc_staged_bx, @function
n638_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n638_call_proc_staged_α:
                        mov              r11, 243
                        mov              qword ptr [rbp + 544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_672_200
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_672_201
.Lcall_proc_staged_α_672_200:
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
.Lcall_proc_staged_α_672_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_672_202
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_672_203
.Lcall_proc_staged_α_672_202:
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
.Lcall_proc_staged_α_672_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_672_204
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_672_205
.Lcall_proc_staged_α_672_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_672_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_672_206
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_672_207
.Lcall_proc_staged_α_672_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_672_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_672_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 22
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_672_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_672_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_672_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_672_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_672_3:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_672_21
                        add              rsp, 32
.Lcall_proc_staged_α_672_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_672_2
.Lcall_proc_staged_α_672_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 544], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_672_2
.Lcall_proc_staged_α_672_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_672_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n633_call_proc_staged_β
.Lcall_proc_staged_α_672_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_672_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
.Lcall_proc_staged_α_672_29:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    n633_call_proc_staged_β
                                                                              jmp   n639_var_ref_α
n638_call_proc_staged_β:
                        mov              r11, 243
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_672_22
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_672_22
                        mov              rcx, qword ptr [rbp + 552]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_672_22:
                                                                              jmp   n633_call_proc_staged_β
.Lcall_proc_staged_α_672_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    n633_call_proc_staged_β
                                                                              jmp   n639_var_ref_α
.Lcall_proc_staged_α_672_0:
                        .quad            .Lcall_proc_staged_α_672_0_s
.Lcall_proc_staged_α_672_0_s:
                        .string          "person/4"
                        .size            n638_call_proc_staged_bx, .-n638_call_proc_staged_bx
                        .type            n639_var_ref_bx, @function
n639_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n639_var_ref_α:         mov              r11, 244
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n640_var_ref_α
                        .size            n639_var_ref_bx, .-n639_var_ref_bx
                        .type            n640_var_ref_bx, @function
n640_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n640_var_ref_α:         mov              r11, 245
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n641_var_ref_α
                        .size            n640_var_ref_bx, .-n640_var_ref_bx
                        .type            n641_var_ref_bx, @function
n641_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n641_var_ref_α:         mov              r11, 246
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n642_var_ref_α
                        .size            n641_var_ref_bx, .-n641_var_ref_bx
                        .type            n642_var_ref_bx, @function
n642_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n642_var_ref_α:         mov              r11, 247
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n643_call_proc_staged_α
                        .size            n642_var_ref_bx, .-n642_var_ref_bx
                        .type            n643_call_proc_staged_bx, @function
n643_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n643_call_proc_staged_α:
                        mov              r11, 248
                        mov              qword ptr [rbp + 368], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_682_200
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_682_201
.Lcall_proc_staged_α_682_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_682_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_682_202
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_682_203
.Lcall_proc_staged_α_682_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_682_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_682_204
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_682_205
.Lcall_proc_staged_α_682_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_682_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_682_206
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_682_207
.Lcall_proc_staged_α_682_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_682_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_682_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 22
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_682_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_682_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_682_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_682_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_682_3:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_682_21
                        add              rsp, 32
.Lcall_proc_staged_α_682_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_682_2
.Lcall_proc_staged_α_682_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 368], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_682_2
.Lcall_proc_staged_α_682_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_682_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n638_call_proc_staged_β
.Lcall_proc_staged_α_682_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_682_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
.Lcall_proc_staged_α_682_29:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    n638_call_proc_staged_β
                                                                              jmp   n644_var_ref_α
n643_call_proc_staged_β:
                        mov              r11, 248
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_682_22
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_682_22
                        mov              rcx, qword ptr [rbp + 376]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_682_22:
                                                                              jmp   n638_call_proc_staged_β
.Lcall_proc_staged_α_682_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    n638_call_proc_staged_β
                                                                              jmp   n644_var_ref_α
.Lcall_proc_staged_α_682_0:
                        .quad            .Lcall_proc_staged_α_682_0_s
.Lcall_proc_staged_α_682_0_s:
                        .string          "person/4"
                        .size            n643_call_proc_staged_bx, .-n643_call_proc_staged_bx
                        .type            n644_var_ref_bx, @function
n644_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n644_var_ref_α:         mov              r11, 249
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n645_lit_string_α
                        .size            n644_var_ref_bx, .-n644_var_ref_bx
                        .type            n645_lit_string_bx, @function
n645_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n645_lit_string_α:      mov              r11, 250
                        mov              qword ptr [rbp + 256], 2             # result
                        mov              dword ptr [rbp + 260], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_685_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n646_var_ref_α
.Llit_string_α_685_0:   .quad            .Llit_string_α_685_0_s
.Llit_string_α_685_0_s: .string          "|"
                        .size            n645_lit_string_bx, .-n645_lit_string_bx
                        .type            n646_var_ref_bx, @function
n646_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n646_var_ref_α:         mov              r11, 251
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n647_call_α
                        .size            n646_var_ref_bx, .-n646_var_ref_bx
                        .type            n647_call_bx, @function
n647_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n647_call_α:            mov              r11, 252
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_atom_concat@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n643_call_proc_staged_β
                                                                              jmp   n648_var_ref_α
n647_call_β:            mov              r11, 252;                            jmp   n643_call_proc_staged_β
                        .size            n647_call_bx, .-n647_call_bx
                        .type            n648_var_ref_bx, @function
n648_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n648_var_ref_α:         mov              r11, 253
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n649_var_ref_α
                        .size            n648_var_ref_bx, .-n648_var_ref_bx
                        .type            n649_var_ref_bx, @function
n649_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n649_var_ref_α:         mov              r11, 254
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n650_var_ref_α
                        .size            n649_var_ref_bx, .-n649_var_ref_bx
                        .type            n650_var_ref_bx, @function
n650_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n650_var_ref_α:         mov              r11, 255
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n651_call_α
                        .size            n650_var_ref_bx, .-n650_var_ref_bx
                        .type            n651_call_bx, @function
n651_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n651_call_α:            mov              r11, 256
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_atom_concat@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    n643_call_proc_staged_β
                                                                              jmp   sib_line$2F1_ret0
n651_call_β:            mov              r11, 256;                            jmp   n643_call_proc_staged_β
                        .size            n651_call_bx, .-n651_call_bx
#-----------------------------------------------------------------------------------------------------------------------
sib_line$2F1_ret0:
                        lea              rax, [rip + n643_call_proc_staged_β]
                        mov              qword ptr [rbp + 1040], rax
                                                                              jmp   sib_line$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
sib_line$2F1_step:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1040], 0
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 968], 0
                        mov              qword ptr [rbp + 912], 0
                        mov              qword ptr [rbp + 920], 0
                        mov              qword ptr [rbp + 896], 0
                        mov              qword ptr [rbp + 904], 0
                        mov              qword ptr [rbp + 976], 0
                        mov              qword ptr [rbp + 984], 0
                        mov              qword ptr [rbp + 992], 0
                        mov              qword ptr [rbp + 1000], 0
                        mov              qword ptr [rbp + 864], 0
                        mov              qword ptr [rbp + 872], 0
                        mov              qword ptr [rbp + 928], 0
                        mov              qword ptr [rbp + 936], 0
                        mov              qword ptr [rbp + 944], 0
                        mov              qword ptr [rbp + 952], 0
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                        mov              rax, qword ptr [rbp + 1032]
                        test             rax, rax
                                                                              je    sib_line$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sib_line$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
sib_line$2F1_β:
                        test             r15, r15
                                                                              jne   sib_line$2F1_ω
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1040], 0
                        test             rax, rax
                                                                              jne   sib_line$2F1_βres
                                                                              jmp   sib_line$2F1_step
sib_line$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sib_line$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1064]
                        mov              rax, qword ptr [rbp + 1048]
                        cmp              r13, rax;                            je    sib_line$2F1_altdet
                        lea              rdx, [rip + sib_line$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1080];         jmp   rcx
sib_line$2F1_altdet:    xor              eax, eax
                        lea              rsp, [rbp + 1088]
                        mov              rbp, qword ptr [rbp + 1080];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sib_line$2F1_ω:
                        mov              rcx, qword ptr [rbp + 1072]
                        mov              r13, qword ptr [rbp + 1048]
                        lea              rsp, [rbp + 1088]
                        mov              rbp, qword ptr [rbp + 1080];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__assert_parent$2F2:
                        sub              rsp, 560
                        mov              qword ptr [rsp + 536], rcx
                        mov              qword ptr [rsp + 544], rdx
                        mov              qword ptr [rsp + 552], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 520], r13
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 496], r12
                        mov              rdi, rsp
                        mov              esi, 448
                        mov              edx, 496
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
assert_parent$2F2_α_body:
                        .type            n696_var_ref_bx, @function
n696_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n696_var_ref_α:         mov              r11, 257
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n697_var_ref_α
                        .size            n696_var_ref_bx, .-n696_var_ref_bx
                        .type            n697_var_ref_bx, @function
n697_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n697_var_ref_α:         mov              r11, 258
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n698_call_α
                        .size            n697_var_ref_bx, .-n697_var_ref_bx
                        .type            n698_call_bx, @function
n698_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n698_call_α:            mov              r11, 259
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    assert_parent$2F2_step
                                                                              jmp   n699_var_ref_α
n698_call_β:            mov              r11, 259;                            jmp   assert_parent$2F2_step
                        .size            n698_call_bx, .-n698_call_bx
                        .type            n699_var_ref_bx, @function
n699_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n699_var_ref_α:         mov              r11, 260
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n700_var_ref_α
                        .size            n699_var_ref_bx, .-n699_var_ref_bx
                        .type            n700_var_ref_bx, @function
n700_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n700_var_ref_α:         mov              r11, 261
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n701_call_α
                        .size            n700_var_ref_bx, .-n700_var_ref_bx
                        .type            n701_call_bx, @function
n701_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n701_call_α:            mov              r11, 262
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    assert_parent$2F2_step
                                                                              jmp   n702_lit_integer_α
n701_call_β:            mov              r11, 262;                            jmp   assert_parent$2F2_step
                        .size            n701_call_bx, .-n701_call_bx
                        .type            n702_lit_integer_bx, @function
n702_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n702_lit_integer_α:     mov              r11, 263
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_718_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n703_lit_string_α
.Llit_integer_α_718_0:  .quad            1
                        .size            n702_lit_integer_bx, .-n702_lit_integer_bx
                        .type            n703_lit_string_bx, @function
n703_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n703_lit_string_α:      mov              r11, 264
                        mov              qword ptr [rbp + 240], 2             # result
                        mov              dword ptr [rbp + 244], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_719_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n704_var_ref_α
.Llit_string_α_719_0:   .quad            .Llit_string_α_719_0_s
.Llit_string_α_719_0_s: .string          "parent"
                        .size            n703_lit_string_bx, .-n703_lit_string_bx
                        .type            n704_var_ref_bx, @function
n704_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n704_var_ref_α:         mov              r11, 265
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n705_var_ref_α
                        .size            n704_var_ref_bx, .-n704_var_ref_bx
                        .type            n705_var_ref_bx, @function
n705_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n705_var_ref_α:         mov              r11, 266
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n706_call_α
                        .size            n705_var_ref_bx, .-n705_var_ref_bx
                        .type            n706_call_bx, @function
n706_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n706_call_α:            mov              r11, 267
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    assert_parent$2F2_step
                                                                              jmp   n707_call_α
n706_call_β:            mov              r11, 267;                            jmp   assert_parent$2F2_step
                        .size            n706_call_bx, .-n706_call_bx
                        .type            n707_call_bx, @function
n707_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n707_call_α:            mov              r11, 268
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_db_assertz@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    assert_parent$2F2_step
                                                                              jmp   assert_parent$2F2_γ
n707_call_β:            mov              r11, 268;                            jmp   assert_parent$2F2_step
                        .size            n707_call_bx, .-n707_call_bx
#-----------------------------------------------------------------------------------------------------------------------
assert_parent$2F2_step:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 448], 0
                        mov              qword ptr [rbp + 456], 0
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              rax, qword ptr [rbp + 504]
                        test             rax, rax
                                                                              je    assert_parent$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
assert_parent$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
assert_parent$2F2_β:
                        test             r15, r15
                                                                              jne   assert_parent$2F2_ω
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 512], 0
                        test             rax, rax
                                                                              jne   assert_parent$2F2_βres
                                                                              jmp   assert_parent$2F2_step
assert_parent$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
assert_parent$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 536]
                        mov              rax, qword ptr [rbp + 520]
                        cmp              r13, rax;                            je    assert_parent$2F2_altdet
                        lea              rdx, [rip + assert_parent$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 552];          jmp   rcx
assert_parent$2F2_altdet:
                        xor              eax, eax
                        lea              rsp, [rbp + 560]
                        mov              rbp, qword ptr [rbp + 552];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
assert_parent$2F2_ω:
                        mov              rcx, qword ptr [rbp + 544]
                        mov              r13, qword ptr [rbp + 520]
                        lea              rsp, [rbp + 560]
                        mov              rbp, qword ptr [rbp + 552];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__gp_line$2F1:
                        sub              rsp, 1088
                        mov              qword ptr [rsp + 1064], rcx
                        mov              qword ptr [rsp + 1072], rdx
                        mov              qword ptr [rsp + 1080], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1048], r13
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1024], r12
                        mov              rdi, rsp
                        mov              esi, 848
                        mov              edx, 1024
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
gp_line$2F1_α_body:
                        .type            n726_var_ref_bx, @function
n726_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n726_var_ref_α:         mov              r11, 269
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n727_var_ref_α
                        .size            n726_var_ref_bx, .-n726_var_ref_bx
                        .type            n727_var_ref_bx, @function
n727_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n727_var_ref_α:         mov              r11, 270
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n728_call_α
                        .size            n727_var_ref_bx, .-n727_var_ref_bx
                        .type            n728_call_bx, @function
n728_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n728_call_α:            mov              r11, 271
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              al, 104;                             je    gp_line$2F1_step
                                                                              jmp   n729_var_ref_α
n728_call_β:            mov              r11, 271;                            jmp   gp_line$2F1_step
                        .size            n728_call_bx, .-n728_call_bx
                        .type            n729_var_ref_bx, @function
n729_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n729_var_ref_α:         mov              r11, 272
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n730_var_ref_α
                        .size            n729_var_ref_bx, .-n729_var_ref_bx
                        .type            n730_var_ref_bx, @function
n730_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n730_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n731_call_proc_staged_α
                        .size            n730_var_ref_bx, .-n730_var_ref_bx
                        .type            n731_call_proc_staged_bx, @function
n731_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n731_call_proc_staged_α:
                        mov              r11, 274
                        mov              qword ptr [rbp + 688], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_760_200
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_760_201
.Lcall_proc_staged_α_760_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_760_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_760_202
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_760_203
.Lcall_proc_staged_α_760_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_760_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_760_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 15
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_760_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_760_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_760_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_760_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_760_3:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_760_21
                        add              rsp, 32
.Lcall_proc_staged_α_760_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_760_2
.Lcall_proc_staged_α_760_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 688], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_760_2
.Lcall_proc_staged_α_760_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_760_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   gp_line$2F1_step
.Lcall_proc_staged_α_760_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_760_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
.Lcall_proc_staged_α_760_29:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    gp_line$2F1_step
                                                                              jmp   n732_var_ref_α
n731_call_proc_staged_β:
                        mov              r11, 274
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_760_22
                        mov              rax, qword ptr [rbp + 688]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_760_22
                        mov              rcx, qword ptr [rbp + 696]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_760_22:
                                                                              jmp   gp_line$2F1_step
.Lcall_proc_staged_α_760_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    gp_line$2F1_step
                                                                              jmp   n732_var_ref_α
.Lcall_proc_staged_α_760_0:
                        .quad            .Lcall_proc_staged_α_760_0_s
.Lcall_proc_staged_α_760_0_s:
                        .string          "grandparent/2"
                        .size            n731_call_proc_staged_bx, .-n731_call_proc_staged_bx
                        .type            n732_var_ref_bx, @function
n732_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n732_var_ref_α:         mov              r11, 275
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n733_var_ref_α
                        .size            n732_var_ref_bx, .-n732_var_ref_bx
                        .type            n733_var_ref_bx, @function
n733_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n733_var_ref_α:         mov              r11, 276
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n734_var_ref_α
                        .size            n733_var_ref_bx, .-n733_var_ref_bx
                        .type            n734_var_ref_bx, @function
n734_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n734_var_ref_α:         mov              r11, 277
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n735_var_ref_α
                        .size            n734_var_ref_bx, .-n734_var_ref_bx
                        .type            n735_var_ref_bx, @function
n735_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n735_var_ref_α:         mov              r11, 278
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n736_call_proc_staged_α
                        .size            n735_var_ref_bx, .-n735_var_ref_bx
                        .type            n736_call_proc_staged_bx, @function
n736_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n736_call_proc_staged_α:
                        mov              r11, 279
                        mov              qword ptr [rbp + 544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_770_200
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_770_201
.Lcall_proc_staged_α_770_200:
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
.Lcall_proc_staged_α_770_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_770_202
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_770_203
.Lcall_proc_staged_α_770_202:
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
.Lcall_proc_staged_α_770_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_770_204
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_770_205
.Lcall_proc_staged_α_770_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_770_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_770_206
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_770_207
.Lcall_proc_staged_α_770_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_770_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_770_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 22
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_770_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_770_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_770_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_770_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_770_3:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_770_21
                        add              rsp, 32
.Lcall_proc_staged_α_770_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_770_2
.Lcall_proc_staged_α_770_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 544], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_770_2
.Lcall_proc_staged_α_770_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_770_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n731_call_proc_staged_β
.Lcall_proc_staged_α_770_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_770_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
.Lcall_proc_staged_α_770_29:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    n731_call_proc_staged_β
                                                                              jmp   n737_var_ref_α
n736_call_proc_staged_β:
                        mov              r11, 279
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_770_22
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_770_22
                        mov              rcx, qword ptr [rbp + 552]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_770_22:
                                                                              jmp   n731_call_proc_staged_β
.Lcall_proc_staged_α_770_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    n731_call_proc_staged_β
                                                                              jmp   n737_var_ref_α
.Lcall_proc_staged_α_770_0:
                        .quad            .Lcall_proc_staged_α_770_0_s
.Lcall_proc_staged_α_770_0_s:
                        .string          "person/4"
                        .size            n736_call_proc_staged_bx, .-n736_call_proc_staged_bx
                        .type            n737_var_ref_bx, @function
n737_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n737_var_ref_α:         mov              r11, 280
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n738_var_ref_α
                        .size            n737_var_ref_bx, .-n737_var_ref_bx
                        .type            n738_var_ref_bx, @function
n738_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n738_var_ref_α:         mov              r11, 281
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n739_var_ref_α
                        .size            n738_var_ref_bx, .-n738_var_ref_bx
                        .type            n739_var_ref_bx, @function
n739_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n739_var_ref_α:         mov              r11, 282
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n740_var_ref_α
                        .size            n739_var_ref_bx, .-n739_var_ref_bx
                        .type            n740_var_ref_bx, @function
n740_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n740_var_ref_α:         mov              r11, 283
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n741_call_proc_staged_α
                        .size            n740_var_ref_bx, .-n740_var_ref_bx
                        .type            n741_call_proc_staged_bx, @function
n741_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n741_call_proc_staged_α:
                        mov              r11, 284
                        mov              qword ptr [rbp + 368], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_780_200
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_780_201
.Lcall_proc_staged_α_780_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_780_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_780_202
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_780_203
.Lcall_proc_staged_α_780_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_780_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_780_204
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_780_205
.Lcall_proc_staged_α_780_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_780_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_780_206
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_780_207
.Lcall_proc_staged_α_780_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_780_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_780_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 22
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_780_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_780_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_780_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_780_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_780_3:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_780_21
                        add              rsp, 32
.Lcall_proc_staged_α_780_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_780_2
.Lcall_proc_staged_α_780_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 368], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_780_2
.Lcall_proc_staged_α_780_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_780_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n736_call_proc_staged_β
.Lcall_proc_staged_α_780_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_780_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
.Lcall_proc_staged_α_780_29:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    n736_call_proc_staged_β
                                                                              jmp   n742_var_ref_α
n741_call_proc_staged_β:
                        mov              r11, 284
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_780_22
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_780_22
                        mov              rcx, qword ptr [rbp + 376]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_780_22:
                                                                              jmp   n736_call_proc_staged_β
.Lcall_proc_staged_α_780_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    n736_call_proc_staged_β
                                                                              jmp   n742_var_ref_α
.Lcall_proc_staged_α_780_0:
                        .quad            .Lcall_proc_staged_α_780_0_s
.Lcall_proc_staged_α_780_0_s:
                        .string          "person/4"
                        .size            n741_call_proc_staged_bx, .-n741_call_proc_staged_bx
                        .type            n742_var_ref_bx, @function
n742_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n742_var_ref_α:         mov              r11, 285
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n743_lit_string_α
                        .size            n742_var_ref_bx, .-n742_var_ref_bx
                        .type            n743_lit_string_bx, @function
n743_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n743_lit_string_α:      mov              r11, 286
                        mov              qword ptr [rbp + 256], 2             # result
                        mov              dword ptr [rbp + 260], 19
                        mov              rax, qword ptr [rip + .Llit_string_α_783_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n744_var_ref_α
.Llit_string_α_783_0:   .quad            .Llit_string_α_783_0_s
.Llit_string_α_783_0_s: .string          " is grandparent of "
                        .size            n743_lit_string_bx, .-n743_lit_string_bx
                        .type            n744_var_ref_bx, @function
n744_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n744_var_ref_α:         mov              r11, 287
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n745_call_α
                        .size            n744_var_ref_bx, .-n744_var_ref_bx
                        .type            n745_call_bx, @function
n745_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n745_call_α:            mov              r11, 288
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_atom_concat@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n741_call_proc_staged_β
                                                                              jmp   n746_var_ref_α
n745_call_β:            mov              r11, 288;                            jmp   n741_call_proc_staged_β
                        .size            n745_call_bx, .-n745_call_bx
                        .type            n746_var_ref_bx, @function
n746_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n746_var_ref_α:         mov              r11, 289
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n747_var_ref_α
                        .size            n746_var_ref_bx, .-n746_var_ref_bx
                        .type            n747_var_ref_bx, @function
n747_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n747_var_ref_α:         mov              r11, 290
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n748_var_ref_α
                        .size            n747_var_ref_bx, .-n747_var_ref_bx
                        .type            n748_var_ref_bx, @function
n748_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n748_var_ref_α:         mov              r11, 291
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n749_call_α
                        .size            n748_var_ref_bx, .-n748_var_ref_bx
                        .type            n749_call_bx, @function
n749_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n749_call_α:            mov              r11, 292
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_atom_concat@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    n741_call_proc_staged_β
                                                                              jmp   gp_line$2F1_ret0
n749_call_β:            mov              r11, 292;                            jmp   n741_call_proc_staged_β
                        .size            n749_call_bx, .-n749_call_bx
#-----------------------------------------------------------------------------------------------------------------------
gp_line$2F1_ret0:
                        lea              rax, [rip + n741_call_proc_staged_β]
                        mov              qword ptr [rbp + 1040], rax
                                                                              jmp   gp_line$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
gp_line$2F1_step:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1040], 0
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 968], 0
                        mov              qword ptr [rbp + 912], 0
                        mov              qword ptr [rbp + 920], 0
                        mov              qword ptr [rbp + 896], 0
                        mov              qword ptr [rbp + 904], 0
                        mov              qword ptr [rbp + 976], 0
                        mov              qword ptr [rbp + 984], 0
                        mov              qword ptr [rbp + 992], 0
                        mov              qword ptr [rbp + 1000], 0
                        mov              qword ptr [rbp + 864], 0
                        mov              qword ptr [rbp + 872], 0
                        mov              qword ptr [rbp + 928], 0
                        mov              qword ptr [rbp + 936], 0
                        mov              qword ptr [rbp + 944], 0
                        mov              qword ptr [rbp + 952], 0
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                        mov              rax, qword ptr [rbp + 1032]
                        test             rax, rax
                                                                              je    gp_line$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
gp_line$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
gp_line$2F1_β:
                        test             r15, r15
                                                                              jne   gp_line$2F1_ω
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1040], 0
                        test             rax, rax
                                                                              jne   gp_line$2F1_βres
                                                                              jmp   gp_line$2F1_step
gp_line$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
gp_line$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1064]
                        mov              rax, qword ptr [rbp + 1048]
                        cmp              r13, rax;                            je    gp_line$2F1_altdet
                        lea              rdx, [rip + gp_line$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1080];         jmp   rcx
gp_line$2F1_altdet:     xor              eax, eax
                        lea              rsp, [rbp + 1088]
                        mov              rbp, qword ptr [rbp + 1080];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
gp_line$2F1_ω:
                        mov              rcx, qword ptr [rbp + 1072]
                        mov              r13, qword ptr [rbp + 1048]
                        lea              rsp, [rbp + 1088]
                        mov              rbp, qword ptr [rbp + 1080];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__grandparent$2F2:
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
                        mov              rdi, rsp
                        mov              esi, 464
                        mov              edx, 528
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
grandparent$2F2_α_body:
                        .type            n794_var_ref_bx, @function
n794_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n794_var_ref_α:         mov              r11, 293
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n795_var_ref_α
                        .size            n794_var_ref_bx, .-n794_var_ref_bx
                        .type            n795_var_ref_bx, @function
n795_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n795_var_ref_α:         mov              r11, 294
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n796_call_α
                        .size            n795_var_ref_bx, .-n795_var_ref_bx
                        .type            n796_call_bx, @function
n796_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n796_call_α:            mov              r11, 295
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 384]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              al, 104;                             je    grandparent$2F2_step
                                                                              jmp   n797_var_ref_α
n796_call_β:            mov              r11, 295;                            jmp   grandparent$2F2_step
                        .size            n796_call_bx, .-n796_call_bx
                        .type            n797_var_ref_bx, @function
n797_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n797_var_ref_α:         mov              r11, 296
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n798_var_ref_α
                        .size            n797_var_ref_bx, .-n797_var_ref_bx
                        .type            n798_var_ref_bx, @function
n798_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n798_var_ref_α:         mov              r11, 297
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n799_call_α
                        .size            n798_var_ref_bx, .-n798_var_ref_bx
                        .type            n799_call_bx, @function
n799_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n799_call_α:            mov              r11, 298
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    grandparent$2F2_step
                                                                              jmp   n800_var_ref_α
n799_call_β:            mov              r11, 298;                            jmp   grandparent$2F2_step
                        .size            n799_call_bx, .-n799_call_bx
                        .type            n800_var_ref_bx, @function
n800_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n800_var_ref_α:         mov              r11, 299
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n801_var_ref_α
                        .size            n800_var_ref_bx, .-n800_var_ref_bx
                        .type            n801_var_ref_bx, @function
n801_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n801_var_ref_α:         mov              r11, 300
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n802_call_proc_staged_α
                        .size            n801_var_ref_bx, .-n801_var_ref_bx
                        .type            n802_call_proc_staged_bx, @function
n802_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n802_call_proc_staged_α:
                        mov              r11, 301
                        mov              qword ptr [rbp + 208], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_821_200
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_821_201
.Lcall_proc_staged_α_821_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_821_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_821_202
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_821_203
.Lcall_proc_staged_α_821_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_821_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_821_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 23
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_821_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_821_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_821_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_821_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_821_3:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_821_21
                        add              rsp, 32
.Lcall_proc_staged_α_821_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_821_2
.Lcall_proc_staged_α_821_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 208], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_821_2
.Lcall_proc_staged_α_821_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_821_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   grandparent$2F2_step
.Lcall_proc_staged_α_821_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_821_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
.Lcall_proc_staged_α_821_29:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    grandparent$2F2_step
                                                                              jmp   n803_var_ref_α
n802_call_proc_staged_β:
                        mov              r11, 301
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_821_22
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_821_22
                        mov              rcx, qword ptr [rbp + 216]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_821_22:
                                                                              jmp   grandparent$2F2_step
.Lcall_proc_staged_α_821_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    grandparent$2F2_step
                                                                              jmp   n803_var_ref_α
.Lcall_proc_staged_α_821_0:
                        .quad            .Lcall_proc_staged_α_821_0_s
.Lcall_proc_staged_α_821_0_s:
                        .string          "parent/2"
                        .size            n802_call_proc_staged_bx, .-n802_call_proc_staged_bx
                        .type            n803_var_ref_bx, @function
n803_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n803_var_ref_α:         mov              r11, 302
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n804_var_ref_α
                        .size            n803_var_ref_bx, .-n803_var_ref_bx
                        .type            n804_var_ref_bx, @function
n804_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n804_var_ref_α:         mov              r11, 303
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n805_call_proc_staged_α
                        .size            n804_var_ref_bx, .-n804_var_ref_bx
                        .type            n805_call_proc_staged_bx, @function
n805_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n805_call_proc_staged_α:
                        mov              r11, 304
                        mov              qword ptr [rbp + 96], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_827_200
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_827_201
.Lcall_proc_staged_α_827_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_827_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_827_202
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_827_203
.Lcall_proc_staged_α_827_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_827_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_827_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 23
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_827_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 592]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_827_99
                        mov              r10, qword ptr [rbp + 552]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_827_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_827_99
                        mov              rcx, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 576]
                        lea              rsp, [rbp + 592]
                        mov              rbp, qword ptr [rbp + 584];          jmp   rax
.Lcall_proc_staged_α_827_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_827_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_827_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_827_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_827_3:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_827_21
                        add              rsp, 32
.Lcall_proc_staged_α_827_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_827_2
.Lcall_proc_staged_α_827_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 96], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_827_2
.Lcall_proc_staged_α_827_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_827_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n802_call_proc_staged_β
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
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
.Lcall_proc_staged_α_827_29:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n802_call_proc_staged_β
                                                                              jmp   grandparent$2F2_ret0
n805_call_proc_staged_β:
                        mov              r11, 304
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_827_22
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_827_22
                        mov              rcx, qword ptr [rbp + 104]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_827_22:
                                                                              jmp   n802_call_proc_staged_β
.Lcall_proc_staged_α_827_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n802_call_proc_staged_β
                                                                              jmp   grandparent$2F2_ret0
.Lcall_proc_staged_α_827_0:
                        .quad            .Lcall_proc_staged_α_827_0_s
.Lcall_proc_staged_α_827_0_s:
                        .string          "parent/2"
                        .size            n805_call_proc_staged_bx, .-n805_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
grandparent$2F2_ret0:
                        lea              rax, [rip + n805_call_proc_staged_β]
                        mov              qword ptr [rbp + 544], rax
                                                                              jmp   grandparent$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
grandparent$2F2_step:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 480], 0
                        mov              qword ptr [rbp + 488], 0
                        mov              qword ptr [rbp + 496], 0
                        mov              qword ptr [rbp + 504], 0
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              rax, qword ptr [rbp + 536]
                        test             rax, rax
                                                                              je    grandparent$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
grandparent$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
grandparent$2F2_β:
                        test             r15, r15
                                                                              jne   grandparent$2F2_ω
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 544], 0
                        test             rax, rax
                                                                              jne   grandparent$2F2_βres
                                                                              jmp   grandparent$2F2_step
grandparent$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
grandparent$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 568]
                        mov              rax, qword ptr [rbp + 552]
                        cmp              r13, rax;                            je    grandparent$2F2_altdet
                        lea              rdx, [rip + grandparent$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 584];          jmp   rcx
grandparent$2F2_altdet: xor              eax, eax
                        lea              rsp, [rbp + 592]
                        mov              rbp, qword ptr [rbp + 584];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
grandparent$2F2_ω:
                        mov              rcx, qword ptr [rbp + 576]
                        mov              r13, qword ptr [rbp + 552]
                        lea              rsp, [rbp + 592]
                        mov              rbp, qword ptr [rbp + 584];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__cou_line$2F1:
                        sub              rsp, 1088
                        mov              qword ptr [rsp + 1064], rcx
                        mov              qword ptr [rsp + 1072], rdx
                        mov              qword ptr [rsp + 1080], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1048], r13
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1024], r12
                        mov              rdi, rsp
                        mov              esi, 848
                        mov              edx, 1024
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
cou_line$2F1_α_body:
                        .type            n828_var_ref_bx, @function
n828_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n828_var_ref_α:         mov              r11, 305
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n829_var_ref_α
                        .size            n828_var_ref_bx, .-n828_var_ref_bx
                        .type            n829_var_ref_bx, @function
n829_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n829_var_ref_α:         mov              r11, 306
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n830_call_α
                        .size            n829_var_ref_bx, .-n829_var_ref_bx
                        .type            n830_call_bx, @function
n830_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n830_call_α:            mov              r11, 307
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              al, 104;                             je    cou_line$2F1_step
                                                                              jmp   n831_var_ref_α
n830_call_β:            mov              r11, 307;                            jmp   cou_line$2F1_step
                        .size            n830_call_bx, .-n830_call_bx
                        .type            n831_var_ref_bx, @function
n831_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n831_var_ref_α:         mov              r11, 308
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n832_var_ref_α
                        .size            n831_var_ref_bx, .-n831_var_ref_bx
                        .type            n832_var_ref_bx, @function
n832_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n832_var_ref_α:         mov              r11, 309
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n833_call_proc_staged_α
                        .size            n832_var_ref_bx, .-n832_var_ref_bx
                        .type            n833_call_proc_staged_bx, @function
n833_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n833_call_proc_staged_α:
                        mov              r11, 310
                        mov              qword ptr [rbp + 688], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_862_200
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_862_201
.Lcall_proc_staged_α_862_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_862_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_862_202
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_862_203
.Lcall_proc_staged_α_862_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_862_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_862_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 9
                        mov              esi, 2
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
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_862_21
                        add              rsp, 32
.Lcall_proc_staged_α_862_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_862_2
.Lcall_proc_staged_α_862_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 688], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_862_2
.Lcall_proc_staged_α_862_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_862_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   cou_line$2F1_step
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
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
.Lcall_proc_staged_α_862_29:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    cou_line$2F1_step
                                                                              jmp   n834_var_ref_α
n833_call_proc_staged_β:
                        mov              r11, 310
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_862_22
                        mov              rax, qword ptr [rbp + 688]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_862_22
                        mov              rcx, qword ptr [rbp + 696]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_862_22:
                                                                              jmp   cou_line$2F1_step
.Lcall_proc_staged_α_862_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    cou_line$2F1_step
                                                                              jmp   n834_var_ref_α
.Lcall_proc_staged_α_862_0:
                        .quad            .Lcall_proc_staged_α_862_0_s
.Lcall_proc_staged_α_862_0_s:
                        .string          "cousin/2"
                        .size            n833_call_proc_staged_bx, .-n833_call_proc_staged_bx
                        .type            n834_var_ref_bx, @function
n834_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n834_var_ref_α:         mov              r11, 311
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n835_var_ref_α
                        .size            n834_var_ref_bx, .-n834_var_ref_bx
                        .type            n835_var_ref_bx, @function
n835_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n835_var_ref_α:         mov              r11, 312
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n836_var_ref_α
                        .size            n835_var_ref_bx, .-n835_var_ref_bx
                        .type            n836_var_ref_bx, @function
n836_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n836_var_ref_α:         mov              r11, 313
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n837_var_ref_α
                        .size            n836_var_ref_bx, .-n836_var_ref_bx
                        .type            n837_var_ref_bx, @function
n837_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n837_var_ref_α:         mov              r11, 314
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n838_call_proc_staged_α
                        .size            n837_var_ref_bx, .-n837_var_ref_bx
                        .type            n838_call_proc_staged_bx, @function
n838_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n838_call_proc_staged_α:
                        mov              r11, 315
                        mov              qword ptr [rbp + 544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_872_200
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_872_201
.Lcall_proc_staged_α_872_200:
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
.Lcall_proc_staged_α_872_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_872_202
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_872_203
.Lcall_proc_staged_α_872_202:
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
.Lcall_proc_staged_α_872_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_872_204
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_872_205
.Lcall_proc_staged_α_872_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_872_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_872_206
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_872_207
.Lcall_proc_staged_α_872_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_872_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_872_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 22
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_872_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_872_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_872_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_872_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_872_3:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_872_21
                        add              rsp, 32
.Lcall_proc_staged_α_872_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_872_2
.Lcall_proc_staged_α_872_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 544], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_872_2
.Lcall_proc_staged_α_872_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_872_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n833_call_proc_staged_β
.Lcall_proc_staged_α_872_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_872_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
.Lcall_proc_staged_α_872_29:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    n833_call_proc_staged_β
                                                                              jmp   n839_var_ref_α
n838_call_proc_staged_β:
                        mov              r11, 315
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_872_22
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_872_22
                        mov              rcx, qword ptr [rbp + 552]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_872_22:
                                                                              jmp   n833_call_proc_staged_β
.Lcall_proc_staged_α_872_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    n833_call_proc_staged_β
                                                                              jmp   n839_var_ref_α
.Lcall_proc_staged_α_872_0:
                        .quad            .Lcall_proc_staged_α_872_0_s
.Lcall_proc_staged_α_872_0_s:
                        .string          "person/4"
                        .size            n838_call_proc_staged_bx, .-n838_call_proc_staged_bx
                        .type            n839_var_ref_bx, @function
n839_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n839_var_ref_α:         mov              r11, 316
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n840_var_ref_α
                        .size            n839_var_ref_bx, .-n839_var_ref_bx
                        .type            n840_var_ref_bx, @function
n840_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n840_var_ref_α:         mov              r11, 317
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n841_var_ref_α
                        .size            n840_var_ref_bx, .-n840_var_ref_bx
                        .type            n841_var_ref_bx, @function
n841_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n841_var_ref_α:         mov              r11, 318
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n842_var_ref_α
                        .size            n841_var_ref_bx, .-n841_var_ref_bx
                        .type            n842_var_ref_bx, @function
n842_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n842_var_ref_α:         mov              r11, 319
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n843_call_proc_staged_α
                        .size            n842_var_ref_bx, .-n842_var_ref_bx
                        .type            n843_call_proc_staged_bx, @function
n843_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n843_call_proc_staged_α:
                        mov              r11, 320
                        mov              qword ptr [rbp + 368], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_882_200
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_882_201
.Lcall_proc_staged_α_882_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
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
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_882_203
.Lcall_proc_staged_α_882_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
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
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_882_205
.Lcall_proc_staged_α_882_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_882_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_882_206
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_882_207
.Lcall_proc_staged_α_882_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_882_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_882_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 22
                        mov              esi, 4
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
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_882_21
                        add              rsp, 32
.Lcall_proc_staged_α_882_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_882_2
.Lcall_proc_staged_α_882_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 368], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_882_2
.Lcall_proc_staged_α_882_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_882_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n838_call_proc_staged_β
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
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
.Lcall_proc_staged_α_882_29:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    n838_call_proc_staged_β
                                                                              jmp   n844_var_ref_α
n843_call_proc_staged_β:
                        mov              r11, 320
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_882_22
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_882_22
                        mov              rcx, qword ptr [rbp + 376]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_882_22:
                                                                              jmp   n838_call_proc_staged_β
.Lcall_proc_staged_α_882_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    n838_call_proc_staged_β
                                                                              jmp   n844_var_ref_α
.Lcall_proc_staged_α_882_0:
                        .quad            .Lcall_proc_staged_α_882_0_s
.Lcall_proc_staged_α_882_0_s:
                        .string          "person/4"
                        .size            n843_call_proc_staged_bx, .-n843_call_proc_staged_bx
                        .type            n844_var_ref_bx, @function
n844_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n844_var_ref_α:         mov              r11, 321
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n845_lit_string_α
                        .size            n844_var_ref_bx, .-n844_var_ref_bx
                        .type            n845_lit_string_bx, @function
n845_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n845_lit_string_α:      mov              r11, 322
                        mov              qword ptr [rbp + 256], 2             # result
                        mov              dword ptr [rbp + 260], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_885_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n846_var_ref_α
.Llit_string_α_885_0:   .quad            .Llit_string_α_885_0_s
.Llit_string_α_885_0_s: .string          "|"
                        .size            n845_lit_string_bx, .-n845_lit_string_bx
                        .type            n846_var_ref_bx, @function
n846_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n846_var_ref_α:         mov              r11, 323
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n847_call_α
                        .size            n846_var_ref_bx, .-n846_var_ref_bx
                        .type            n847_call_bx, @function
n847_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n847_call_α:            mov              r11, 324
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_atom_concat@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n843_call_proc_staged_β
                                                                              jmp   n848_var_ref_α
n847_call_β:            mov              r11, 324;                            jmp   n843_call_proc_staged_β
                        .size            n847_call_bx, .-n847_call_bx
                        .type            n848_var_ref_bx, @function
n848_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n848_var_ref_α:         mov              r11, 325
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n849_var_ref_α
                        .size            n848_var_ref_bx, .-n848_var_ref_bx
                        .type            n849_var_ref_bx, @function
n849_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n849_var_ref_α:         mov              r11, 326
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n850_var_ref_α
                        .size            n849_var_ref_bx, .-n849_var_ref_bx
                        .type            n850_var_ref_bx, @function
n850_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n850_var_ref_α:         mov              r11, 327
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n851_call_α
                        .size            n850_var_ref_bx, .-n850_var_ref_bx
                        .type            n851_call_bx, @function
n851_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n851_call_α:            mov              r11, 328
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_atom_concat@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    n843_call_proc_staged_β
                                                                              jmp   cou_line$2F1_ret0
n851_call_β:            mov              r11, 328;                            jmp   n843_call_proc_staged_β
                        .size            n851_call_bx, .-n851_call_bx
#-----------------------------------------------------------------------------------------------------------------------
cou_line$2F1_ret0:
                        lea              rax, [rip + n843_call_proc_staged_β]
                        mov              qword ptr [rbp + 1040], rax
                                                                              jmp   cou_line$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
cou_line$2F1_step:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1040], 0
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 968], 0
                        mov              qword ptr [rbp + 912], 0
                        mov              qword ptr [rbp + 920], 0
                        mov              qword ptr [rbp + 896], 0
                        mov              qword ptr [rbp + 904], 0
                        mov              qword ptr [rbp + 976], 0
                        mov              qword ptr [rbp + 984], 0
                        mov              qword ptr [rbp + 992], 0
                        mov              qword ptr [rbp + 1000], 0
                        mov              qword ptr [rbp + 864], 0
                        mov              qword ptr [rbp + 872], 0
                        mov              qword ptr [rbp + 928], 0
                        mov              qword ptr [rbp + 936], 0
                        mov              qword ptr [rbp + 944], 0
                        mov              qword ptr [rbp + 952], 0
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                        mov              rax, qword ptr [rbp + 1032]
                        test             rax, rax
                                                                              je    cou_line$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
cou_line$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
cou_line$2F1_β:
                        test             r15, r15
                                                                              jne   cou_line$2F1_ω
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1040], 0
                        test             rax, rax
                                                                              jne   cou_line$2F1_βres
                                                                              jmp   cou_line$2F1_step
cou_line$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
cou_line$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1064]
                        mov              rax, qword ptr [rbp + 1048]
                        cmp              r13, rax;                            je    cou_line$2F1_altdet
                        lea              rdx, [rip + cou_line$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1080];         jmp   rcx
cou_line$2F1_altdet:    xor              eax, eax
                        lea              rsp, [rbp + 1088]
                        mov              rbp, qword ptr [rbp + 1080];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
cou_line$2F1_ω:
                        mov              rcx, qword ptr [rbp + 1072]
                        mov              r13, qword ptr [rbp + 1048]
                        lea              rsp, [rbp + 1088]
                        mov              rbp, qword ptr [rbp + 1080];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__ancestor$2F2:
                        sub              rsp, 896
                        mov              qword ptr [rsp + 872], rcx
                        mov              qword ptr [rsp + 880], rdx
                        mov              qword ptr [rsp + 888], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 856], r13
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 832], r12
                        lea              rax, [rip + ancestor$2F2_alt1]
                        mov              qword ptr [rsp + 840], rax
                        lea              rdi, [rsp + 832]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 768
                        mov              edx, 832
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
ancestor$2F2_α_body:
                        .type            n896_var_ref_bx, @function
n896_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n896_var_ref_α:         mov              r11, 329
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n897_var_ref_α
                        .size            n896_var_ref_bx, .-n896_var_ref_bx
                        .type            n897_var_ref_bx, @function
n897_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n897_var_ref_α:         mov              r11, 330
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n898_call_α
                        .size            n897_var_ref_bx, .-n897_var_ref_bx
                        .type            n898_call_bx, @function
n898_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n898_call_α:            mov              r11, 331
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    ancestor$2F2_step
                                                                              jmp   n899_var_ref_α
n898_call_β:            mov              r11, 331;                            jmp   ancestor$2F2_step
                        .size            n898_call_bx, .-n898_call_bx
                        .type            n899_var_ref_bx, @function
n899_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n899_var_ref_α:         mov              r11, 332
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n900_var_ref_α
                        .size            n899_var_ref_bx, .-n899_var_ref_bx
                        .type            n900_var_ref_bx, @function
n900_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n900_var_ref_α:         mov              r11, 333
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n901_call_α
                        .size            n900_var_ref_bx, .-n900_var_ref_bx
                        .type            n901_call_bx, @function
n901_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n901_call_α:            mov              r11, 334
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
                        cmp              al, 104;                             je    ancestor$2F2_step
                                                                              jmp   n902_var_ref_α
n901_call_β:            mov              r11, 334;                            jmp   ancestor$2F2_step
                        .size            n901_call_bx, .-n901_call_bx
                        .type            n902_var_ref_bx, @function
n902_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n902_var_ref_α:         mov              r11, 335
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n903_var_ref_α
                        .size            n902_var_ref_bx, .-n902_var_ref_bx
                        .type            n903_var_ref_bx, @function
n903_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n903_var_ref_α:         mov              r11, 336
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n904_call_proc_staged_α
                        .size            n903_var_ref_bx, .-n903_var_ref_bx
                        .type            n904_call_proc_staged_bx, @function
n904_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n904_call_proc_staged_α:
                        mov              r11, 337
                        mov              qword ptr [rbp + 96], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_932_200
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_932_201
.Lcall_proc_staged_α_932_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_932_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_932_202
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_932_203
.Lcall_proc_staged_α_932_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_932_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_932_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 23
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_932_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 896]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_932_99
                        mov              r10, qword ptr [rbp + 856]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_932_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_932_99
                        mov              rcx, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 880]
                        lea              rsp, [rbp + 896]
                        mov              rbp, qword ptr [rbp + 888];          jmp   rax
.Lcall_proc_staged_α_932_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_932_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_932_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_932_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_932_3:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_932_21
                        add              rsp, 32
.Lcall_proc_staged_α_932_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_932_2
.Lcall_proc_staged_α_932_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 96], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_932_2
.Lcall_proc_staged_α_932_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_932_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   ancestor$2F2_step
.Lcall_proc_staged_α_932_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_932_29
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
.Lcall_proc_staged_α_932_29:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    ancestor$2F2_step
                                                                              jmp   ancestor$2F2_ret0
n904_call_proc_staged_β:
                        mov              r11, 337
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_932_22
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_932_22
                        mov              rcx, qword ptr [rbp + 104]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_932_22:
                                                                              jmp   ancestor$2F2_step
.Lcall_proc_staged_α_932_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    ancestor$2F2_step
                                                                              jmp   ancestor$2F2_ret0
.Lcall_proc_staged_α_932_0:
                        .quad            .Lcall_proc_staged_α_932_0_s
.Lcall_proc_staged_α_932_0_s:
                        .string          "parent/2"
                        .size            n904_call_proc_staged_bx, .-n904_call_proc_staged_bx
                        .type            n905_var_ref_bx, @function
n905_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n905_var_ref_α:         mov              r11, 338
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n906_var_ref_α
                        .size            n905_var_ref_bx, .-n905_var_ref_bx
                        .type            n906_var_ref_bx, @function
n906_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n906_var_ref_α:         mov              r11, 339
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n907_call_α
                        .size            n906_var_ref_bx, .-n906_var_ref_bx
                        .type            n907_call_bx, @function
n907_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n907_call_α:            mov              r11, 340
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    ancestor$2F2_step
                                                                              jmp   n908_var_ref_α
n907_call_β:            mov              r11, 340;                            jmp   ancestor$2F2_step
                        .size            n907_call_bx, .-n907_call_bx
                        .type            n908_var_ref_bx, @function
n908_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n908_var_ref_α:         mov              r11, 341
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n909_var_ref_α
                        .size            n908_var_ref_bx, .-n908_var_ref_bx
                        .type            n909_var_ref_bx, @function
n909_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n909_var_ref_α:         mov              r11, 342
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n910_call_α
                        .size            n909_var_ref_bx, .-n909_var_ref_bx
                        .type            n910_call_bx, @function
n910_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n910_call_α:            mov              r11, 343
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    ancestor$2F2_step
                                                                              jmp   n911_var_ref_α
n910_call_β:            mov              r11, 343;                            jmp   ancestor$2F2_step
                        .size            n910_call_bx, .-n910_call_bx
                        .type            n911_var_ref_bx, @function
n911_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n911_var_ref_α:         mov              r11, 344
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n912_var_ref_α
                        .size            n911_var_ref_bx, .-n911_var_ref_bx
                        .type            n912_var_ref_bx, @function
n912_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n912_var_ref_α:         mov              r11, 345
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n913_call_proc_staged_α
                        .size            n912_var_ref_bx, .-n912_var_ref_bx
                        .type            n913_call_proc_staged_bx, @function
n913_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n913_call_proc_staged_α:
                        mov              r11, 346
                        mov              qword ptr [rbp + 512], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_948_200
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_948_201
.Lcall_proc_staged_α_948_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_948_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_948_202
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_948_203
.Lcall_proc_staged_α_948_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_948_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_948_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 23
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_948_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_948_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_948_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_948_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_948_3:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_948_21
                        add              rsp, 32
.Lcall_proc_staged_α_948_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_948_2
.Lcall_proc_staged_α_948_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 512], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_948_2
.Lcall_proc_staged_α_948_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_948_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   ancestor$2F2_step
.Lcall_proc_staged_α_948_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_948_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
.Lcall_proc_staged_α_948_29:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    ancestor$2F2_step
                                                                              jmp   n914_var_ref_α
n913_call_proc_staged_β:
                        mov              r11, 346
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_948_22
                        mov              rax, qword ptr [rbp + 512]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_948_22
                        mov              rcx, qword ptr [rbp + 520]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_948_22:
                                                                              jmp   ancestor$2F2_step
.Lcall_proc_staged_α_948_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    ancestor$2F2_step
                                                                              jmp   n914_var_ref_α
.Lcall_proc_staged_α_948_0:
                        .quad            .Lcall_proc_staged_α_948_0_s
.Lcall_proc_staged_α_948_0_s:
                        .string          "parent/2"
                        .size            n913_call_proc_staged_bx, .-n913_call_proc_staged_bx
                        .type            n914_var_ref_bx, @function
n914_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n914_var_ref_α:         mov              r11, 347
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n915_var_ref_α
                        .size            n914_var_ref_bx, .-n914_var_ref_bx
                        .type            n915_var_ref_bx, @function
n915_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n915_var_ref_α:         mov              r11, 348
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n916_call_proc_staged_α
                        .size            n915_var_ref_bx, .-n915_var_ref_bx
                        .type            n916_call_proc_staged_bx, @function
n916_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n916_call_proc_staged_α:
                        mov              r11, 349
                        mov              qword ptr [rbp + 400], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_954_200
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_954_201
.Lcall_proc_staged_α_954_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_954_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_954_202
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_954_203
.Lcall_proc_staged_α_954_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_954_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_954_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 17
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_954_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 896]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_954_99
                        mov              r10, qword ptr [rbp + 856]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_954_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_954_99
                        mov              rcx, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 880]
                        lea              rsp, [rbp + 896]
                        mov              rbp, qword ptr [rbp + 888];          jmp   rax
.Lcall_proc_staged_α_954_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_954_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_954_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_954_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_954_3:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_954_21
                        add              rsp, 32
.Lcall_proc_staged_α_954_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_954_2
.Lcall_proc_staged_α_954_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 400], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_954_2
.Lcall_proc_staged_α_954_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_954_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n913_call_proc_staged_β
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
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
.Lcall_proc_staged_α_954_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n913_call_proc_staged_β
                                                                              jmp   ancestor$2F2_ret1
n916_call_proc_staged_β:
                        mov              r11, 349
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_954_22
                        mov              rax, qword ptr [rbp + 400]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_954_22
                        mov              rcx, qword ptr [rbp + 408]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_954_22:
                                                                              jmp   n913_call_proc_staged_β
.Lcall_proc_staged_α_954_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n913_call_proc_staged_β
                                                                              jmp   ancestor$2F2_ret1
.Lcall_proc_staged_α_954_0:
                        .quad            .Lcall_proc_staged_α_954_0_s
.Lcall_proc_staged_α_954_0_s:
                        .string          "ancestor/2"
                        .size            n916_call_proc_staged_bx, .-n916_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
ancestor$2F2_ret0:
                        lea              rax, [rip + n904_call_proc_staged_β]
                        mov              qword ptr [rbp + 848], rax
                                                                              jmp   ancestor$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
ancestor$2F2_ret1:
                        lea              rax, [rip + n916_call_proc_staged_β]
                        mov              qword ptr [rbp + 848], rax
                                                                              jmp   ancestor$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
ancestor$2F2_step:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 784], 0
                        mov              qword ptr [rbp + 792], 0
                        mov              qword ptr [rbp + 768], 0
                        mov              qword ptr [rbp + 776], 0
                        mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              rax, qword ptr [rbp + 840]
                        test             rax, rax
                                                                              je    ancestor$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
ancestor$2F2_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 840], rax
                        mov              r13, qword ptr [rbp + 856]
                                                                              jmp   n905_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
ancestor$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
ancestor$2F2_β:
                        test             r15, r15
                                                                              jne   ancestor$2F2_ω
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 848], 0
                        test             rax, rax
                                                                              jne   ancestor$2F2_βres
                                                                              jmp   ancestor$2F2_step
ancestor$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
ancestor$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 872]
                        mov              rax, qword ptr [rbp + 856]
                        cmp              r13, rax;                            je    ancestor$2F2_altdet
                        lea              rdx, [rip + ancestor$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 888];          jmp   rcx
ancestor$2F2_altdet:    xor              eax, eax
                        lea              rsp, [rbp + 896]
                        mov              rbp, qword ptr [rbp + 888];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
ancestor$2F2_ω:
                        mov              rcx, qword ptr [rbp + 880]
                        mov              r13, qword ptr [rbp + 856]
                        lea              rsp, [rbp + 896]
                        mov              rbp, qword ptr [rbp + 888];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__query_ancestors$2F2:
                        sub              rsp, 800
                        mov              qword ptr [rsp + 776], rcx
                        mov              qword ptr [rsp + 784], rdx
                        mov              qword ptr [rsp + 792], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 760], r13
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 736], r12
                        mov              rdi, rsp
                        mov              esi, 656
                        mov              edx, 736
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
query_ancestors$2F2_α_body:
                        .type            n955_var_ref_bx, @function
n955_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n955_var_ref_α:         mov              r11, 350
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n956_var_ref_α
                        .size            n955_var_ref_bx, .-n955_var_ref_bx
                        .type            n956_var_ref_bx, @function
n956_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n956_var_ref_α:         mov              r11, 351
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n957_call_α
                        .size            n956_var_ref_bx, .-n956_var_ref_bx
                        .type            n957_call_bx, @function
n957_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n957_call_α:            mov              r11, 352
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
                        cmp              al, 104;                             je    query_ancestors$2F2_step
                                                                              jmp   n958_var_ref_α
n957_call_β:            mov              r11, 352;                            jmp   query_ancestors$2F2_step
                        .size            n957_call_bx, .-n957_call_bx
                        .type            n958_var_ref_bx, @function
n958_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n958_var_ref_α:         mov              r11, 353
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n959_var_ref_α
                        .size            n958_var_ref_bx, .-n958_var_ref_bx
                        .type            n959_var_ref_bx, @function
n959_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n959_var_ref_α:         mov              r11, 354
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n960_call_α
                        .size            n959_var_ref_bx, .-n959_var_ref_bx
                        .type            n960_call_bx, @function
n960_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n960_call_α:            mov              r11, 355
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 480]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    query_ancestors$2F2_step
                                                                              jmp   n961_var_ref_α
n960_call_β:            mov              r11, 355;                            jmp   query_ancestors$2F2_step
                        .size            n960_call_bx, .-n960_call_bx
                        .type            n961_var_ref_bx, @function
n961_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n961_var_ref_α:         mov              r11, 356
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n962_call_α
                        .size            n961_var_ref_bx, .-n961_var_ref_bx
                        .type            n962_call_bx, @function
n962_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n962_call_α:            mov              r11, 357
                        lea              rdi, [rbp + 240]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_findall_new@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    query_ancestors$2F2_step
                                                                              jmp   n963_var_ref_α
n962_call_β:            mov              r11, 357;                            jmp   query_ancestors$2F2_step
                        .size            n962_call_bx, .-n962_call_bx
                        .type            n963_var_ref_bx, @function
n963_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n963_var_ref_α:         mov              r11, 358
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n964_var_ref_α
                        .size            n963_var_ref_bx, .-n963_var_ref_bx
                        .type            n964_var_ref_bx, @function
n964_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n964_var_ref_α:         mov              r11, 359
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n965_call_proc_staged_α
                        .size            n964_var_ref_bx, .-n964_var_ref_bx
                        .type            n965_call_proc_staged_bx, @function
n965_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n965_call_proc_staged_α:
                        mov              r11, 360
                        mov              qword ptr [rbp + 384], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_990_200
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_990_201
.Lcall_proc_staged_α_990_200:
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
.Lcall_proc_staged_α_990_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_990_202
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_990_203
.Lcall_proc_staged_α_990_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_990_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_990_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 7
                        mov              esi, 2
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
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_990_21
                        add              rsp, 32
.Lcall_proc_staged_α_990_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_990_2
.Lcall_proc_staged_α_990_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 384], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_990_2
.Lcall_proc_staged_α_990_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_990_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n968_call_α
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
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
.Lcall_proc_staged_α_990_29:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    n968_call_α
                                                                              jmp   n966_var_α
n965_call_proc_staged_β:
                        mov              r11, 360
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_990_22
                        mov              rax, qword ptr [rbp + 384]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_990_22
                        mov              rcx, qword ptr [rbp + 392]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_990_22:
                                                                              jmp   n968_call_α
.Lcall_proc_staged_α_990_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    n968_call_α
                                                                              jmp   n966_var_α
.Lcall_proc_staged_α_990_0:
                        .quad            .Lcall_proc_staged_α_990_0_s
.Lcall_proc_staged_α_990_0_s:
                        .string          "anc_line/2"
                        .size            n965_call_proc_staged_bx, .-n965_call_proc_staged_bx
                        .type            n966_var_bx, @function
n966_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n966_var_α:             mov              r11, 361
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 328], rax;          jmp   n967_call_α
                        .size            n966_var_bx, .-n966_var_bx
                        .type            n967_call_bx, @function
n967_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n967_call_α:            mov              r11, 362
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 272]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_findall_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    n968_call_α
                                                                              jmp   n965_call_proc_staged_β
n967_call_β:            mov              r11, 362;                            jmp   n968_call_α
                        .size            n967_call_bx, .-n967_call_bx
                        .type            n968_call_bx, @function
n968_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n968_call_α:            mov              r11, 363
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 456]
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
                        call             rt_pl_dop_findall_result@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    query_ancestors$2F2_step
                                                                              jmp   n969_var_ref_α
n968_call_β:            mov              r11, 363;                            jmp   query_ancestors$2F2_step
                        .size            n968_call_bx, .-n968_call_bx
                        .type            n969_var_ref_bx, @function
n969_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n969_var_ref_α:         mov              r11, 364
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n970_var_ref_α
                        .size            n969_var_ref_bx, .-n969_var_ref_bx
                        .type            n970_var_ref_bx, @function
n970_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n970_var_ref_α:         mov              r11, 365
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n971_call_proc_staged_α
                        .size            n970_var_ref_bx, .-n970_var_ref_bx
                        .type            n971_call_proc_staged_bx, @function
n971_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n971_call_proc_staged_α:
                        mov              r11, 366
                        mov              qword ptr [rbp + 96], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1000_200
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1000_201
.Lcall_proc_staged_α_1000_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1000_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1000_202
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1000_203
.Lcall_proc_staged_α_1000_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1000_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1000_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1000_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 800]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_1000_99
                        mov              r10, qword ptr [rbp + 760]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_1000_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_1000_99
                        mov              rcx, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 784]
                        lea              rsp, [rbp + 800]
                        mov              rbp, qword ptr [rbp + 792];          jmp   rax
.Lcall_proc_staged_α_1000_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1000_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1000_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1000_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1000_3:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1000_21
                        add              rsp, 32
.Lcall_proc_staged_α_1000_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1000_2
.Lcall_proc_staged_α_1000_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 96], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1000_2
.Lcall_proc_staged_α_1000_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1000_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   query_ancestors$2F2_step
.Lcall_proc_staged_α_1000_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1000_29
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
.Lcall_proc_staged_α_1000_29:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    query_ancestors$2F2_step
                                                                              jmp   query_ancestors$2F2_ret0
n971_call_proc_staged_β:
                        mov              r11, 366
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1000_22
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1000_22
                        mov              rcx, qword ptr [rbp + 104]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1000_22:
                                                                              jmp   query_ancestors$2F2_step
.Lcall_proc_staged_α_1000_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    query_ancestors$2F2_step
                                                                              jmp   query_ancestors$2F2_ret0
.Lcall_proc_staged_α_1000_0:
                        .quad            .Lcall_proc_staged_α_1000_0_s
.Lcall_proc_staged_α_1000_0_s:
                        .string          "join_lines/2"
                        .size            n971_call_proc_staged_bx, .-n971_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
query_ancestors$2F2_ret0:
                        lea              rax, [rip + n971_call_proc_staged_β]
                        mov              qword ptr [rbp + 752], rax
                                                                              jmp   query_ancestors$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
query_ancestors$2F2_step:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 752], 0
                        mov              qword ptr [rbp + 704], 0
                        mov              qword ptr [rbp + 712], 0
                        mov              qword ptr [rbp + 672], 0
                        mov              qword ptr [rbp + 680], 0
                        mov              qword ptr [rbp + 688], 0
                        mov              qword ptr [rbp + 696], 0
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              rax, qword ptr [rbp + 744]
                        test             rax, rax
                                                                              je    query_ancestors$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
query_ancestors$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
query_ancestors$2F2_β:
                        test             r15, r15
                                                                              jne   query_ancestors$2F2_ω
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 752], 0
                        test             rax, rax
                                                                              jne   query_ancestors$2F2_βres
                                                                              jmp   query_ancestors$2F2_step
query_ancestors$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
query_ancestors$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 776]
                        mov              rax, qword ptr [rbp + 760]
                        cmp              r13, rax;                            je    query_ancestors$2F2_altdet
                        lea              rdx, [rip + query_ancestors$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 792];          jmp   rcx
query_ancestors$2F2_altdet:
                        xor              eax, eax
                        lea              rsp, [rbp + 800]
                        mov              rbp, qword ptr [rbp + 792];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
query_ancestors$2F2_ω:
                        mov              rcx, qword ptr [rbp + 784]
                        mov              r13, qword ptr [rbp + 760]
                        lea              rsp, [rbp + 800]
                        mov              rbp, qword ptr [rbp + 792];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__query_count$2F1:
                        sub              rsp, 1008
                        mov              qword ptr [rsp + 984], rcx
                        mov              qword ptr [rsp + 992], rdx
                        mov              qword ptr [rsp + 1000], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 968], r13
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 944], r12
                        mov              rdi, rsp
                        mov              esi, 800
                        mov              edx, 944
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
query_count$2F1_α_body:
                        .type            n1001_var_ref_bx, @function
n1001_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1001_var_ref_α:        mov              r11, 367
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n1002_var_ref_α
                        .size            n1001_var_ref_bx, .-n1001_var_ref_bx
                        .type            n1002_var_ref_bx, @function
n1002_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1002_var_ref_α:        mov              r11, 368
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n1003_call_α
                        .size            n1002_var_ref_bx, .-n1002_var_ref_bx
                        .type            n1003_call_bx, @function
n1003_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1003_call_α:           mov              r11, 369
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
                        cmp              al, 104;                             je    query_count$2F1_step
                                                                              jmp   n1004_var_ref_α
n1003_call_β:           mov              r11, 369;                            jmp   query_count$2F1_step
                        .size            n1003_call_bx, .-n1003_call_bx
                        .type            n1004_var_ref_bx, @function
n1004_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1004_var_ref_α:        mov              r11, 370
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n1005_call_α
                        .size            n1004_var_ref_bx, .-n1004_var_ref_bx
                        .type            n1005_call_bx, @function
n1005_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1005_call_α:           mov              r11, 371
                        lea              rdi, [rbp + 416]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_findall_new@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              al, 104;                             je    query_count$2F1_step
                                                                              jmp   n1006_var_ref_α
n1005_call_β:           mov              r11, 371;                            jmp   query_count$2F1_step
                        .size            n1005_call_bx, .-n1005_call_bx
                        .type            n1006_var_ref_bx, @function
n1006_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1006_var_ref_α:        mov              r11, 372
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n1007_var_ref_α
                        .size            n1006_var_ref_bx, .-n1006_var_ref_bx
                        .type            n1007_var_ref_bx, @function
n1007_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1007_var_ref_α:        mov              r11, 373
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n1008_var_ref_α
                        .size            n1007_var_ref_bx, .-n1007_var_ref_bx
                        .type            n1008_var_ref_bx, @function
n1008_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1008_var_ref_α:        mov              r11, 374
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n1009_var_ref_α
                        .size            n1008_var_ref_bx, .-n1008_var_ref_bx
                        .type            n1009_var_ref_bx, @function
n1009_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1009_var_ref_α:        mov              r11, 375
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n1010_call_proc_staged_α
                        .size            n1009_var_ref_bx, .-n1009_var_ref_bx
                        .type            n1010_call_proc_staged_bx, @function
n1010_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1010_call_proc_staged_α:
                        mov              r11, 376
                        mov              qword ptr [rbp + 592], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1040_200
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1040_201
.Lcall_proc_staged_α_1040_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1040_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1040_202
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1040_203
.Lcall_proc_staged_α_1040_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1040_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1040_204
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_1040_205
.Lcall_proc_staged_α_1040_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1040_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1040_206
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_1040_207
.Lcall_proc_staged_α_1040_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1040_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1040_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 22
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1040_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1040_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1040_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1040_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1040_3:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1040_21
                        add              rsp, 32
.Lcall_proc_staged_α_1040_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1040_2
.Lcall_proc_staged_α_1040_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 592], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1040_2
.Lcall_proc_staged_α_1040_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1040_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1013_call_α
.Lcall_proc_staged_α_1040_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1040_29
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
.Lcall_proc_staged_α_1040_29:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n1013_call_α
                                                                              jmp   n1011_lit_string_α
n1010_call_proc_staged_β:
                        mov              r11, 376
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1040_22
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1040_22
                        mov              rcx, qword ptr [rbp + 600]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1040_22:
                                                                              jmp   n1013_call_α
.Lcall_proc_staged_α_1040_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n1013_call_α
                                                                              jmp   n1011_lit_string_α
.Lcall_proc_staged_α_1040_0:
                        .quad            .Lcall_proc_staged_α_1040_0_s
.Lcall_proc_staged_α_1040_0_s:
                        .string          "person/4"
                        .size            n1010_call_proc_staged_bx, .-n1010_call_proc_staged_bx
                        .type            n1011_lit_string_bx, @function
n1011_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1011_lit_string_α:     mov              r11, 377
                        mov              qword ptr [rbp + 496], 2             # result
                        mov              dword ptr [rbp + 500], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1041_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n1012_call_α
.Llit_string_α_1041_0:  .quad            .Llit_string_α_1041_0_s
.Llit_string_α_1041_0_s:
                        .string          "x"
                        .size            n1011_lit_string_bx, .-n1011_lit_string_bx
                        .type            n1012_call_bx, @function
n1012_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1012_call_α:           mov              r11, 378
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_findall_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n1013_call_α
                                                                              jmp   n1010_call_proc_staged_β
n1012_call_β:           mov              r11, 378;                            jmp   n1013_call_α
                        .size            n1012_call_bx, .-n1012_call_bx
                        .type            n1013_call_bx, @function
n1013_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1013_call_α:           mov              r11, 379
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 696]
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
                        call             rt_pl_dop_findall_result@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    query_count$2F1_step
                                                                              jmp   n1014_var_ref_α
n1013_call_β:           mov              r11, 379;                            jmp   query_count$2F1_step
                        .size            n1013_call_bx, .-n1013_call_bx
                        .type            n1014_var_ref_bx, @function
n1014_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1014_var_ref_α:        mov              r11, 380
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n1015_var_ref_α
                        .size            n1014_var_ref_bx, .-n1014_var_ref_bx
                        .type            n1015_var_ref_bx, @function
n1015_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1015_var_ref_α:        mov              r11, 381
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n1016_call_proc_staged_α
                        .size            n1015_var_ref_bx, .-n1015_var_ref_bx
                        .type            n1016_call_proc_staged_bx, @function
n1016_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1016_call_proc_staged_α:
                        mov              r11, 382
                        mov              qword ptr [rbp + 272], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1049_200
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1049_201
.Lcall_proc_staged_α_1049_200:
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
.Lcall_proc_staged_α_1049_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1049_202
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1049_203
.Lcall_proc_staged_α_1049_202:
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
.Lcall_proc_staged_α_1049_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1049_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 6
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1049_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1049_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1049_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1049_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1049_3:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1049_21
                        add              rsp, 32
.Lcall_proc_staged_α_1049_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1049_2
.Lcall_proc_staged_α_1049_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 272], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1049_2
.Lcall_proc_staged_α_1049_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1049_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   query_count$2F1_step
.Lcall_proc_staged_α_1049_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1049_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
.Lcall_proc_staged_α_1049_29:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    query_count$2F1_step
                                                                              jmp   n1017_var_ref_α
n1016_call_proc_staged_β:
                        mov              r11, 382
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1049_22
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1049_22
                        mov              rcx, qword ptr [rbp + 280]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1049_22:
                                                                              jmp   query_count$2F1_step
.Lcall_proc_staged_α_1049_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    query_count$2F1_step
                                                                              jmp   n1017_var_ref_α
.Lcall_proc_staged_α_1049_0:
                        .quad            .Lcall_proc_staged_α_1049_0_s
.Lcall_proc_staged_α_1049_0_s:
                        .string          "findall_length/2"
                        .size            n1016_call_proc_staged_bx, .-n1016_call_proc_staged_bx
                        .type            n1017_var_ref_bx, @function
n1017_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1017_var_ref_α:        mov              r11, 383
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n1018_var_ref_α
                        .size            n1017_var_ref_bx, .-n1017_var_ref_bx
                        .type            n1018_var_ref_bx, @function
n1018_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1018_var_ref_α:        mov              r11, 384
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n1019_call_α
                        .size            n1018_var_ref_bx, .-n1018_var_ref_bx
                        .type            n1019_call_bx, @function
n1019_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1019_call_α:           mov              r11, 385
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_number_codes@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    n1016_call_proc_staged_β
                                                                              jmp   n1020_var_ref_α
n1019_call_β:           mov              r11, 385;                            jmp   n1016_call_proc_staged_β
                        .size            n1019_call_bx, .-n1019_call_bx
                        .type            n1020_var_ref_bx, @function
n1020_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1020_var_ref_α:        mov              r11, 386
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n1021_var_ref_α
                        .size            n1020_var_ref_bx, .-n1020_var_ref_bx
                        .type            n1021_var_ref_bx, @function
n1021_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1021_var_ref_α:        mov              r11, 387
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n1022_call_α
                        .size            n1021_var_ref_bx, .-n1021_var_ref_bx
                        .type            n1022_call_bx, @function
n1022_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1022_call_α:           mov              r11, 388
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_atom_codes@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    n1016_call_proc_staged_β
                                                                              jmp   query_count$2F1_ret0
n1022_call_β:           mov              r11, 388;                            jmp   n1016_call_proc_staged_β
                        .size            n1022_call_bx, .-n1022_call_bx
#-----------------------------------------------------------------------------------------------------------------------
query_count$2F1_ret0:
                        lea              rax, [rip + n1016_call_proc_staged_β]
                        mov              qword ptr [rbp + 960], rax
                                                                              jmp   query_count$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
query_count$2F1_step:
                        mov              rdi, qword ptr [rbp + 944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              qword ptr [rbp + 864], 0
                        mov              qword ptr [rbp + 872], 0
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              qword ptr [rbp + 896], 0
                        mov              qword ptr [rbp + 904], 0
                        mov              qword ptr [rbp + 912], 0
                        mov              qword ptr [rbp + 920], 0
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                        mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 840], 0
                        mov              qword ptr [rbp + 816], 0
                        mov              qword ptr [rbp + 824], 0
                        mov              rax, qword ptr [rbp + 952]
                        test             rax, rax
                                                                              je    query_count$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
query_count$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
query_count$2F1_β:
                        test             r15, r15
                                                                              jne   query_count$2F1_ω
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 960], 0
                        test             rax, rax
                                                                              jne   query_count$2F1_βres
                                                                              jmp   query_count$2F1_step
query_count$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
query_count$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 984]
                        mov              rax, qword ptr [rbp + 968]
                        cmp              r13, rax;                            je    query_count$2F1_altdet
                        lea              rdx, [rip + query_count$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1000];         jmp   rcx
query_count$2F1_altdet: xor              eax, eax
                        lea              rsp, [rbp + 1008]
                        mov              rbp, qword ptr [rbp + 1000];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
query_count$2F1_ω:
                        mov              rcx, qword ptr [rbp + 992]
                        mov              r13, qword ptr [rbp + 968]
                        lea              rsp, [rbp + 1008]
                        mov              rbp, qword ptr [rbp + 1000];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__main$2F0:
                        sub              rsp, 80
                        mov              qword ptr [rsp + 56], rcx
                        mov              qword ptr [rsp + 64], rdx
                        mov              qword ptr [rsp + 72], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 40], r13
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 16], r12
                        mov              rdi, rsp
                        mov              esi, 16
                        mov              edx, 16
                        call             rt_jmp_frame_lexprep2@PLT
main$2F0_α_body:
                                                                              jmp   main$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_step:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], 0
                        mov              rax, qword ptr [rbp + 24]
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
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 32], 0
                        test             rax, rax
                                                                              jne   main$2F0_βres
                                                                              jmp   main$2F0_step
main$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 56]
                        mov              rax, qword ptr [rbp + 40]
                        cmp              r13, rax;                            je    main$2F0_altdet
                        lea              rdx, [rip + main$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 72];           jmp   rcx
main$2F0_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 80]
                        mov              rbp, qword ptr [rbp + 72];           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ω:
                        mov              rcx, qword ptr [rbp + 64]
                        mov              r13, qword ptr [rbp + 40]
                        lea              rsp, [rbp + 80]
                        mov              rbp, qword ptr [rbp + 72];           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__generation$2F2:
                        sub              rsp, 1184
                        mov              qword ptr [rsp + 1160], rcx
                        mov              qword ptr [rsp + 1168], rdx
                        mov              qword ptr [rsp + 1176], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1184]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1144], r13
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1120], r12
                        lea              rax, [rip + generation$2F2_alt1]
                        mov              qword ptr [rsp + 1128], rax
                        lea              rdi, [rsp + 1120]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 1040
                        mov              edx, 1120
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
generation$2F2_α_body:
                        .type            n1060_var_ref_bx, @function
n1060_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1060_var_ref_α:        mov              r11, 389
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n1061_var_ref_α
                        .size            n1060_var_ref_bx, .-n1060_var_ref_bx
                        .type            n1061_var_ref_bx, @function
n1061_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1061_var_ref_α:        mov              r11, 390
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n1062_call_α
                        .size            n1061_var_ref_bx, .-n1061_var_ref_bx
                        .type            n1062_call_bx, @function
n1062_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1062_call_α:           mov              r11, 391
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    generation$2F2_step
                                                                              jmp   n1063_var_ref_α
n1062_call_β:           mov              r11, 391;                            jmp   generation$2F2_step
                        .size            n1062_call_bx, .-n1062_call_bx
                        .type            n1063_var_ref_bx, @function
n1063_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1063_var_ref_α:        mov              r11, 392
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n1064_lit_integer_α
                        .size            n1063_var_ref_bx, .-n1063_var_ref_bx
                        .type            n1064_lit_integer_bx, @function
n1064_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1064_lit_integer_α:    mov              r11, 393
                        mov              qword ptr [rbp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1098_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n1065_call_α
.Llit_integer_α_1098_0: .quad            0
                        .size            n1064_lit_integer_bx, .-n1064_lit_integer_bx
                        .type            n1065_call_bx, @function
n1065_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1065_call_α:           mov              r11, 394
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 272]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    generation$2F2_step
                                                                              jmp   n1066_bound_α
n1065_call_β:           mov              r11, 394;                            jmp   generation$2F2_step
                        .size            n1065_call_bx, .-n1065_call_bx
                        .type            n1066_bound_bx, @function
n1066_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1066_bound_α:          mov              r11, 395
                        mov              qword ptr [rbp + 80], r12
                        lea              rdi, [rbp + 1120]
                        mov              rsi, rbp
                        call             rt_pl_disj_open@PLT;                 jmp   n1067_var_ref_α
                        .size            n1066_bound_bx, .-n1066_bound_bx
                        .type            n1067_var_ref_bx, @function
n1067_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1067_var_ref_α:        mov              r11, 396
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n1068_var_ref_α
                        .size            n1067_var_ref_bx, .-n1067_var_ref_bx
                        .type            n1068_var_ref_bx, @function
n1068_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1068_var_ref_α:        mov              r11, 397
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n1069_call_proc_staged_α
                        .size            n1068_var_ref_bx, .-n1068_var_ref_bx
                        .type            n1069_call_proc_staged_bx, @function
n1069_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1069_call_proc_staged_α:
                        mov              r11, 398
                        mov              qword ptr [rbp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1107_200
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1107_201
.Lcall_proc_staged_α_1107_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1107_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1107_202
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1107_203
.Lcall_proc_staged_α_1107_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1107_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1107_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 23
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1107_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1107_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1107_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1107_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1107_3:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1107_21
                        add              rsp, 32
.Lcall_proc_staged_α_1107_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1107_2
.Lcall_proc_staged_α_1107_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 192], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1107_2
.Lcall_proc_staged_α_1107_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1107_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1071_unmark_α
.Lcall_proc_staged_α_1107_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1107_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
.Lcall_proc_staged_α_1107_29:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    n1071_unmark_α
                                                                              jmp   n1070_unmark_α
n1069_call_proc_staged_β:
                        mov              r11, 398
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1107_22
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1107_22
                        mov              rcx, qword ptr [rbp + 200]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1107_22:
                                                                              jmp   n1071_unmark_α
.Lcall_proc_staged_α_1107_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    n1071_unmark_α
                                                                              jmp   n1070_unmark_α
.Lcall_proc_staged_α_1107_0:
                        .quad            .Lcall_proc_staged_α_1107_0_s
.Lcall_proc_staged_α_1107_0_s:
                        .string          "parent/2"
                        .size            n1069_call_proc_staged_bx, .-n1069_call_proc_staged_bx
                        .type            n1070_unmark_bx, @function
n1070_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1070_unmark_α:         mov              r11, 399
                        mov              rdi, qword ptr [rbp + 80]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   generation$2F2_step
                                                                              jmp   n1073_indirect_goto_α
                        .size            n1070_unmark_bx, .-n1070_unmark_bx
                        .type            n1071_unmark_bx, @function
n1071_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1071_unmark_α:         mov              r11, 400
                        mov              rdi, qword ptr [rbp + 80]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   generation$2F2_step
                                                                              jmp   n1072_move_label_α
                        .size            n1071_unmark_bx, .-n1071_unmark_bx
                        .type            n1072_move_label_bx, @function
n1072_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1072_move_label_α:     mov              r11, 401
                        lea              rax, [rip + n1073_indirect_goto_α]
                        mov              qword ptr [rbp + 64], rax;           jmp   generation$2F2_γ
                        .size            n1072_move_label_bx, .-n1072_move_label_bx
                        .type            n1073_indirect_goto_bx, @function
n1073_indirect_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1073_indirect_goto_α:  mov              r11, 402;                            jmp   generation$2F2_step
n1073_indirect_goto_β:  mov              r11, 402;                            jmp   qword ptr [rbp + 64]
                        .size            n1073_indirect_goto_bx, .-n1073_indirect_goto_bx
                        .type            n1074_var_ref_bx, @function
n1074_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1074_var_ref_α:        mov              r11, 403
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n1075_var_ref_α
                        .size            n1074_var_ref_bx, .-n1074_var_ref_bx
                        .type            n1075_var_ref_bx, @function
n1075_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1075_var_ref_α:        mov              r11, 404
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx;         jmp   n1076_call_α
                        .size            n1075_var_ref_bx, .-n1075_var_ref_bx
                        .type            n1076_call_bx, @function
n1076_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1076_call_α:           mov              r11, 405
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1032]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              al, 104;                             je    generation$2F2_step
                                                                              jmp   n1077_var_ref_α
n1076_call_β:           mov              r11, 405;                            jmp   generation$2F2_step
                        .size            n1076_call_bx, .-n1076_call_bx
                        .type            n1077_var_ref_bx, @function
n1077_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1077_var_ref_α:        mov              r11, 406
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n1078_var_ref_α
                        .size            n1077_var_ref_bx, .-n1077_var_ref_bx
                        .type            n1078_var_ref_bx, @function
n1078_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1078_var_ref_α:        mov              r11, 407
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1072]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n1079_call_α
                        .size            n1078_var_ref_bx, .-n1078_var_ref_bx
                        .type            n1079_call_bx, @function
n1079_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1079_call_α:           mov              r11, 408
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              al, 104;                             je    generation$2F2_step
                                                                              jmp   n1080_var_ref_α
n1079_call_β:           mov              r11, 408;                            jmp   generation$2F2_step
                        .size            n1079_call_bx, .-n1079_call_bx
                        .type            n1080_var_ref_bx, @function
n1080_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1080_var_ref_α:        mov              r11, 409
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n1081_var_ref_α
                        .size            n1080_var_ref_bx, .-n1080_var_ref_bx
                        .type            n1081_var_ref_bx, @function
n1081_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1081_var_ref_α:        mov              r11, 410
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n1082_call_proc_staged_α
                        .size            n1081_var_ref_bx, .-n1081_var_ref_bx
                        .type            n1082_call_proc_staged_bx, @function
n1082_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1082_call_proc_staged_α:
                        mov              r11, 411
                        mov              qword ptr [rbp + 784], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1131_200
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1131_201
.Lcall_proc_staged_α_1131_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1131_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1131_202
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1131_203
.Lcall_proc_staged_α_1131_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1131_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1131_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 23
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1131_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1131_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1131_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1131_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1131_3:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1131_21
                        add              rsp, 32
.Lcall_proc_staged_α_1131_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1131_2
.Lcall_proc_staged_α_1131_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 784], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1131_2
.Lcall_proc_staged_α_1131_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1131_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   generation$2F2_step
.Lcall_proc_staged_α_1131_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1131_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
.Lcall_proc_staged_α_1131_29:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    generation$2F2_step
                                                                              jmp   n1083_var_ref_α
n1082_call_proc_staged_β:
                        mov              r11, 411
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1131_22
                        mov              rax, qword ptr [rbp + 784]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1131_22
                        mov              rcx, qword ptr [rbp + 792]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1131_22:
                                                                              jmp   generation$2F2_step
.Lcall_proc_staged_α_1131_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    generation$2F2_step
                                                                              jmp   n1083_var_ref_α
.Lcall_proc_staged_α_1131_0:
                        .quad            .Lcall_proc_staged_α_1131_0_s
.Lcall_proc_staged_α_1131_0_s:
                        .string          "parent/2"
                        .size            n1082_call_proc_staged_bx, .-n1082_call_proc_staged_bx
                        .type            n1083_var_ref_bx, @function
n1083_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1083_var_ref_α:        mov              r11, 412
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n1084_var_ref_α
                        .size            n1083_var_ref_bx, .-n1083_var_ref_bx
                        .type            n1084_var_ref_bx, @function
n1084_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1084_var_ref_α:        mov              r11, 413
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1088]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n1085_call_proc_staged_α
                        .size            n1084_var_ref_bx, .-n1084_var_ref_bx
                        .type            n1085_call_proc_staged_bx, @function
n1085_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1085_call_proc_staged_α:
                        mov              r11, 414
                        mov              qword ptr [rbp + 672], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1137_200
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1137_201
.Lcall_proc_staged_α_1137_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1137_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1137_202
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1137_203
.Lcall_proc_staged_α_1137_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1137_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1137_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 21
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1137_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1137_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1137_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1137_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1137_3:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1137_21
                        add              rsp, 32
.Lcall_proc_staged_α_1137_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1137_2
.Lcall_proc_staged_α_1137_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 672], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1137_2
.Lcall_proc_staged_α_1137_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1137_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1082_call_proc_staged_β
.Lcall_proc_staged_α_1137_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1137_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
.Lcall_proc_staged_α_1137_29:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    n1082_call_proc_staged_β
                                                                              jmp   n1086_var_ref_α
n1085_call_proc_staged_β:
                        mov              r11, 414
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1137_22
                        mov              rax, qword ptr [rbp + 672]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1137_22
                        mov              rcx, qword ptr [rbp + 680]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1137_22:
                                                                              jmp   n1082_call_proc_staged_β
.Lcall_proc_staged_α_1137_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    n1082_call_proc_staged_β
                                                                              jmp   n1086_var_ref_α
.Lcall_proc_staged_α_1137_0:
                        .quad            .Lcall_proc_staged_α_1137_0_s
.Lcall_proc_staged_α_1137_0_s:
                        .string          "generation/2"
                        .size            n1085_call_proc_staged_bx, .-n1085_call_proc_staged_bx
                        .type            n1086_var_ref_bx, @function
n1086_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1086_var_ref_α:        mov              r11, 415
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1072]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx;          jmp   n1087_var_α
                        .size            n1086_var_ref_bx, .-n1086_var_ref_bx
                        .type            n1087_var_bx, @function
n1087_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1087_var_α:            mov              r11, 416
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 600], rax;          jmp   n1088_lit_integer_α
                        .size            n1087_var_bx, .-n1087_var_bx
                        .type            n1088_lit_integer_bx, @function
n1088_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1088_lit_integer_α:    mov              r11, 417
                        mov              qword ptr [rbp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1142_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n1089_call_α
.Llit_integer_α_1142_0: .quad            1
                        .size            n1088_lit_integer_bx, .-n1088_lit_integer_bx
                        .type            n1089_call_bx, @function
n1089_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1089_call_α:           mov              r11, 418
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              al, 104;                             je    generation$2F2_step
                                                                              jmp   n1090_call_α
n1089_call_β:           mov              r11, 418;                            jmp   generation$2F2_step
                        .size            n1089_call_bx, .-n1089_call_bx
                        .type            n1090_call_bx, @function
n1090_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1090_call_α:           mov              r11, 419
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              al, 104;                             je    n1085_call_proc_staged_β
                                                                              jmp   generation$2F2_ret1
n1090_call_β:           mov              r11, 419;                            jmp   n1085_call_proc_staged_β
                        .size            n1090_call_bx, .-n1090_call_bx
#-----------------------------------------------------------------------------------------------------------------------
generation$2F2_ret0:
                        lea              rax, [rip + n1073_indirect_goto_β]
                        mov              qword ptr [rbp + 1136], rax
                                                                              jmp   generation$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
generation$2F2_ret1:
                        lea              rax, [rip + n1085_call_proc_staged_β]
                        mov              qword ptr [rbp + 1136], rax
                                                                              jmp   generation$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
generation$2F2_step:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1136], 0
                        mov              qword ptr [rbp + 1040], 0
                        mov              qword ptr [rbp + 1048], 0
                        mov              qword ptr [rbp + 1072], 0
                        mov              qword ptr [rbp + 1080], 0
                        mov              qword ptr [rbp + 1056], 0
                        mov              qword ptr [rbp + 1064], 0
                        mov              qword ptr [rbp + 1088], 0
                        mov              qword ptr [rbp + 1096], 0
                        mov              rax, qword ptr [rbp + 1128]
                        test             rax, rax
                                                                              je    generation$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
generation$2F2_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1128], rax
                        mov              r13, qword ptr [rbp + 1144]
                                                                              jmp   n1074_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
generation$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
generation$2F2_β:
                        test             r15, r15
                                                                              jne   generation$2F2_ω
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1136], 0
                        test             rax, rax
                                                                              jne   generation$2F2_βres
                                                                              jmp   generation$2F2_step
generation$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
generation$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1160]
                        mov              rax, qword ptr [rbp + 1144]
                        cmp              r13, rax;                            je    generation$2F2_altdet
                        lea              rdx, [rip + generation$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1176];         jmp   rcx
generation$2F2_altdet:  xor              eax, eax
                        lea              rsp, [rbp + 1184]
                        mov              rbp, qword ptr [rbp + 1176];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
generation$2F2_ω:
                        mov              rcx, qword ptr [rbp + 1168]
                        mov              r13, qword ptr [rbp + 1144]
                        lea              rsp, [rbp + 1184]
                        mov              rbp, qword ptr [rbp + 1176];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__person$2F4:
                        sub              rsp, 608
                        mov              qword ptr [rsp + 584], rcx
                        mov              qword ptr [rsp + 592], rdx
                        mov              qword ptr [rsp + 600], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 568], r13
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 544], r12
                        mov              rdi, rsp
                        mov              esi, 464
                        mov              edx, 544
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
person$2F4_α_body:
                        .type            n1145_var_ref_bx, @function
n1145_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1145_var_ref_α:        mov              r11, 420
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n1146_var_ref_α
                        .size            n1145_var_ref_bx, .-n1145_var_ref_bx
                        .type            n1146_var_ref_bx, @function
n1146_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1146_var_ref_α:        mov              r11, 421
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n1147_call_α
                        .size            n1146_var_ref_bx, .-n1146_var_ref_bx
                        .type            n1147_call_bx, @function
n1147_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1147_call_α:           mov              r11, 422
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 384]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              al, 104;                             je    person$2F4_step
                                                                              jmp   n1148_var_ref_α
n1147_call_β:           mov              r11, 422;                            jmp   person$2F4_step
                        .size            n1147_call_bx, .-n1147_call_bx
                        .type            n1148_var_ref_bx, @function
n1148_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1148_var_ref_α:        mov              r11, 423
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n1149_var_ref_α
                        .size            n1148_var_ref_bx, .-n1148_var_ref_bx
                        .type            n1149_var_ref_bx, @function
n1149_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1149_var_ref_α:        mov              r11, 424
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n1150_call_α
                        .size            n1149_var_ref_bx, .-n1149_var_ref_bx
                        .type            n1150_call_bx, @function
n1150_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1150_call_α:           mov              r11, 425
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    person$2F4_step
                                                                              jmp   n1151_var_ref_α
n1150_call_β:           mov              r11, 425;                            jmp   person$2F4_step
                        .size            n1150_call_bx, .-n1150_call_bx
                        .type            n1151_var_ref_bx, @function
n1151_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1151_var_ref_α:        mov              r11, 426
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n1152_var_ref_α
                        .size            n1151_var_ref_bx, .-n1151_var_ref_bx
                        .type            n1152_var_ref_bx, @function
n1152_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1152_var_ref_α:        mov              r11, 427
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n1153_call_α
                        .size            n1152_var_ref_bx, .-n1152_var_ref_bx
                        .type            n1153_call_bx, @function
n1153_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1153_call_α:           mov              r11, 428
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    person$2F4_step
                                                                              jmp   n1154_var_ref_α
n1153_call_β:           mov              r11, 428;                            jmp   person$2F4_step
                        .size            n1153_call_bx, .-n1153_call_bx
                        .type            n1154_var_ref_bx, @function
n1154_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1154_var_ref_α:        mov              r11, 429
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n1155_var_ref_α
                        .size            n1154_var_ref_bx, .-n1154_var_ref_bx
                        .type            n1155_var_ref_bx, @function
n1155_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1155_var_ref_α:        mov              r11, 430
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n1156_call_α
                        .size            n1155_var_ref_bx, .-n1155_var_ref_bx
                        .type            n1156_call_bx, @function
n1156_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1156_call_α:           mov              r11, 431
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    person$2F4_step
                                                                              jmp   person$2F4_step
n1156_call_β:           mov              r11, 431;                            jmp   person$2F4_step
                        .size            n1156_call_bx, .-n1156_call_bx
#-----------------------------------------------------------------------------------------------------------------------
person$2F4_step:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                        mov              qword ptr [rbp + 496], 0
                        mov              qword ptr [rbp + 504], 0
                        mov              qword ptr [rbp + 480], 0
                        mov              qword ptr [rbp + 488], 0
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              rax, qword ptr [rbp + 552]
                        test             rax, rax
                                                                              je    person$2F4_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
person$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
person$2F4_β:
                        test             r15, r15
                                                                              jne   person$2F4_ω
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 560], 0
                        test             rax, rax
                                                                              jne   person$2F4_βres
                                                                              jmp   person$2F4_step
person$2F4_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
person$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 584]
                        mov              rax, qword ptr [rbp + 568]
                        cmp              r13, rax;                            je    person$2F4_altdet
                        lea              rdx, [rip + person$2F4_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 600];          jmp   rcx
person$2F4_altdet:      xor              eax, eax
                        lea              rsp, [rbp + 608]
                        mov              rbp, qword ptr [rbp + 600];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
person$2F4_ω:
                        mov              rcx, qword ptr [rbp + 592]
                        mov              r13, qword ptr [rbp + 568]
                        lea              rsp, [rbp + 608]
                        mov              rbp, qword ptr [rbp + 600];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__parent$2F2:
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rcx
                        mov              qword ptr [rsp + 336], rdx
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 312], r13
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 288], r12
                        mov              rdi, rsp
                        mov              esi, 240
                        mov              edx, 288
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
parent$2F2_α_body:
                        .type            n1177_var_ref_bx, @function
n1177_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1177_var_ref_α:        mov              r11, 432
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n1178_var_ref_α
                        .size            n1177_var_ref_bx, .-n1177_var_ref_bx
                        .type            n1178_var_ref_bx, @function
n1178_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1178_var_ref_α:        mov              r11, 433
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n1179_call_α
                        .size            n1178_var_ref_bx, .-n1178_var_ref_bx
                        .type            n1179_call_bx, @function
n1179_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1179_call_α:           mov              r11, 434
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    parent$2F2_step
                                                                              jmp   n1180_var_ref_α
n1179_call_β:           mov              r11, 434;                            jmp   parent$2F2_step
                        .size            n1179_call_bx, .-n1179_call_bx
                        .type            n1180_var_ref_bx, @function
n1180_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1180_var_ref_α:        mov              r11, 435
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n1181_var_ref_α
                        .size            n1180_var_ref_bx, .-n1180_var_ref_bx
                        .type            n1181_var_ref_bx, @function
n1181_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1181_var_ref_α:        mov              r11, 436
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 240]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n1182_call_α
                        .size            n1181_var_ref_bx, .-n1181_var_ref_bx
                        .type            n1182_call_bx, @function
n1182_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1182_call_α:           mov              r11, 437
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    parent$2F2_step
                                                                              jmp   parent$2F2_step
n1182_call_β:           mov              r11, 437;                            jmp   parent$2F2_step
                        .size            n1182_call_bx, .-n1182_call_bx
#-----------------------------------------------------------------------------------------------------------------------
parent$2F2_step:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 304], 0
                        mov              qword ptr [rbp + 256], 0
                        mov              qword ptr [rbp + 264], 0
                        mov              qword ptr [rbp + 240], 0
                        mov              qword ptr [rbp + 248], 0
                        mov              rax, qword ptr [rbp + 296]
                        test             rax, rax
                                                                              je    parent$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
parent$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
parent$2F2_β:
                        test             r15, r15
                                                                              jne   parent$2F2_ω
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 304], 0
                        test             rax, rax
                                                                              jne   parent$2F2_βres
                                                                              jmp   parent$2F2_step
parent$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
parent$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 328]
                        mov              rax, qword ptr [rbp + 312]
                        cmp              r13, rax;                            je    parent$2F2_altdet
                        lea              rdx, [rip + parent$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 344];          jmp   rcx
parent$2F2_altdet:      xor              eax, eax
                        lea              rsp, [rbp + 352]
                        mov              rbp, qword ptr [rbp + 344];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
parent$2F2_ω:
                        mov              rcx, qword ptr [rbp + 336]
                        mov              r13, qword ptr [rbp + 312]
                        lea              rsp, [rbp + 352]
                        mov              rbp, qword ptr [rbp + 344];          jmp   rcx
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
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        lea              rdi, [rsp + 80]
                        call             rt_pl_quad_seed@PLT
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 48], 0
                        lea              rax, [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 104], r13
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 80], r12
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 80
                        rep              stosb
main_α_body:
                        .type            n1193_call_proc_staged_bx, @function
n1193_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1193_call_proc_staged_α:
                        mov              r11, 438
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1195_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 20
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1195_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1195_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1195_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1195_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1195_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1195_21
                        add              rsp, 32
.Lcall_proc_staged_α_1195_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1195_2
.Lcall_proc_staged_α_1195_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1195_2
.Lcall_proc_staged_α_1195_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1195_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_1195_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1195_29
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
.Lcall_proc_staged_α_1195_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n1193_call_proc_staged_β:
                        mov              r11, 438
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1195_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1195_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1195_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_1195_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_1195_0:
                        .quad            .Lcall_proc_staged_α_1195_0_s
.Lcall_proc_staged_α_1195_0_s:
                        .string          "main/0"
                        .size            n1193_call_proc_staged_bx, .-n1193_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
main_step:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 96], 0
                        mov              rax, qword ptr [rbp + 88]
                        test             rax, rax
                                                                              je    main_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                        test             r15, r15
                                                                              jne   main_ω
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 96], 0
                        test             rax, rax
                                                                              jne   main_βres
                                                                              jmp   main_step
main_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 120]
                        xor              eax, eax
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rbp + 128]
                        mov              r13, qword ptr [rbp + 104]
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136];          jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "query_siblings/1"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__query_siblings$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            560
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "query_cousins/1"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__query_cousins$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            560
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "join_lines/2"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__join_lines$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1280
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "query_generations/1"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__query_generations$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            560
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "assert_person/4"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__assert_person$2F4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            800
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "query_grandparents/1"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__query_grandparents$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            560
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "findall_length/2"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__findall_length$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            896
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "anc_line/2"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__anc_line$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1248
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "sibling/2"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__sibling$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            704
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "cousin/2"
                        .align           8
.Lstartup_prec9:
                        .quad            .Lstartup_pname9
                        .quad            FN__cousin$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            832
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec9]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "scrip_init/0"
                        .align           8
.Lstartup_prec10:
                        .quad            .Lstartup_pname10
                        .quad            FN__scrip_init$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec10]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "gen_line/1"
                        .align           8
.Lstartup_prec11:
                        .quad            .Lstartup_pname11
                        .quad            FN__gen_line$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1008
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec11]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "sib_line/1"
                        .align           8
.Lstartup_prec12:
                        .quad            .Lstartup_pname12
                        .quad            FN__sib_line$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1008
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec12]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "assert_parent/2"
                        .align           8
.Lstartup_prec13:
                        .quad            .Lstartup_pname13
                        .quad            FN__assert_parent$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            480
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec13]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "gp_line/1"
                        .align           8
.Lstartup_prec14:
                        .quad            .Lstartup_pname14
                        .quad            FN__gp_line$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1008
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec14]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "grandparent/2"
                        .align           8
.Lstartup_prec15:
                        .quad            .Lstartup_pname15
                        .quad            FN__grandparent$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            512
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec15]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "cou_line/1"
                        .align           8
.Lstartup_prec16:
                        .quad            .Lstartup_pname16
                        .quad            FN__cou_line$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1008
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec16]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "ancestor/2"
                        .align           8
.Lstartup_prec17:
                        .quad            .Lstartup_pname17
                        .quad            FN__ancestor$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            816
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec17]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname18:      .string          "query_ancestors/2"
                        .align           8
.Lstartup_prec18:
                        .quad            .Lstartup_pname18
                        .quad            FN__query_ancestors$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            720
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec18]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname19:      .string          "query_count/1"
                        .align           8
.Lstartup_prec19:
                        .quad            .Lstartup_pname19
                        .quad            FN__query_count$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            928
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec19]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname20:      .string          "main/0"
                        .align           8
.Lstartup_prec20:
                        .quad            .Lstartup_pname20
                        .quad            FN__main$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec20]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname21:      .string          "generation/2"
                        .align           8
.Lstartup_prec21:
                        .quad            .Lstartup_pname21
                        .quad            FN__generation$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1104
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec21]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname22:      .string          "person/4"
                        .align           8
.Lstartup_prec22:
                        .quad            .Lstartup_pname22
                        .quad            FN__person$2F4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            528
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec22]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname23:      .string          "parent/2"
                        .align           8
.Lstartup_prec23:
                        .quad            .Lstartup_pname23
                        .quad            FN__parent$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            272
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec23]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
