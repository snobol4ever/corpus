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
                        sub              rsp, 544
                        mov              qword ptr [rsp + 520], rcx
                        mov              qword ptr [rsp + 528], rdx
                        mov              qword ptr [rsp + 536], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 504], r13
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 480], r12
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 480
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
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n351_var_ref_α
                        .size            n350_var_ref_bx, .-n350_var_ref_bx
                        .type            n351_var_ref_bx, @function
n351_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:         mov              r11, 135
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n352_call_α
                        .size            n351_var_ref_bx, .-n351_var_ref_bx
                        .type            n352_call_bx, @function
n352_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_call_α:            mov              r11, 136
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
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
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n354_var_ref_α
                        .size            n353_var_ref_bx, .-n353_var_ref_bx
                        .type            n354_var_ref_bx, @function
n354_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n355_call_α
                        .size            n354_var_ref_bx, .-n354_var_ref_bx
                        .type            n355_call_bx, @function
n355_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_call_α:            mov              r11, 139
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    anc_line$2F2_step
                                                                              jmp   n356_var_ref_α
n355_call_β:            mov              r11, 139;                            jmp   anc_line$2F2_step
                        .size            n355_call_bx, .-n355_call_bx
                        .type            n356_var_ref_bx, @function
n356_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n357_var_ref_α
                        .size            n356_var_ref_bx, .-n356_var_ref_bx
                        .type            n357_var_ref_bx, @function
n357_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n358_call_proc_staged_α
                        .size            n357_var_ref_bx, .-n357_var_ref_bx
                        .type            n358_call_proc_staged_bx, @function
n358_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_call_proc_staged_α:
                        mov              r11, 142
                        mov              qword ptr [rbp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_376_200
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_376_201
.Lcall_proc_staged_α_376_200:
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
.Lcall_proc_staged_α_376_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_376_202
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_376_203
.Lcall_proc_staged_α_376_202:
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
.Lcall_proc_staged_α_376_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_376_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_376_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_376_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_376_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_376_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_376_3:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_376_21
                        add              rsp, 32
.Lcall_proc_staged_α_376_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_376_2
.Lcall_proc_staged_α_376_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_376_2
.Lcall_proc_staged_α_376_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_376_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   anc_line$2F2_step
.Lcall_proc_staged_α_376_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_376_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
.Lcall_proc_staged_α_376_29:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    anc_line$2F2_step
                                                                              jmp   n359_lit_string_α
n358_call_proc_staged_β:
                        mov              r11, 142
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_376_22
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_376_22
                        mov              rcx, qword ptr [rbp + 168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_376_22:
                                                                              jmp   anc_line$2F2_step
.Lcall_proc_staged_α_376_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    anc_line$2F2_step
                                                                              jmp   n359_lit_string_α
.Lcall_proc_staged_α_376_0:
                        .quad            .Lcall_proc_staged_α_376_0_s
.Lcall_proc_staged_α_376_0_s:
                        .string          "ancestor/2"
                        .size            n358_call_proc_staged_bx, .-n358_call_proc_staged_bx
                        .type            n359_lit_string_bx, @function
n359_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:      mov              r11, 143
                        mov              qword ptr [rbp + 96], 2              # result
                        mov              dword ptr [rbp + 100], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_377_0]
                        mov              qword ptr [rbp + 104], rax;          jmp   n360_call_α
.Llit_string_α_377_0:   .quad            .Llit_string_α_377_0_s
.Llit_string_α_377_0_s: .string          "person/4"
                        .size            n359_lit_string_bx, .-n359_lit_string_bx
                        .type            n360_call_bx, @function
n360_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_call_α:            mov              r11, 144
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n358_call_proc_staged_β
                                                                              jmp   anc_line$2F2_step
n360_call_β:            mov              r11, 144;                            jmp   n358_call_proc_staged_β
                        .size            n360_call_bx, .-n360_call_bx
#-----------------------------------------------------------------------------------------------------------------------
anc_line$2F2_step:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], 0
                        mov              qword ptr [rbp + 432], 0
                        mov              qword ptr [rbp + 440], 0
                        mov              qword ptr [rbp + 448], 0
                        mov              qword ptr [rbp + 456], 0
                        mov              qword ptr [rbp + 416], 0
                        mov              qword ptr [rbp + 424], 0
                        mov              rax, qword ptr [rbp + 488]
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
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 496], 0
                        test             rax, rax
                                                                              jne   anc_line$2F2_βres
                                                                              jmp   anc_line$2F2_step
anc_line$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
anc_line$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 520]
                        mov              rax, qword ptr [rbp + 504]
                        cmp              r13, rax;                            je    anc_line$2F2_altdet
                        lea              rdx, [rip + anc_line$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 536];          jmp   rcx
anc_line$2F2_altdet:    xor              eax, eax
                        lea              rsp, [rbp + 544]
                        mov              rbp, qword ptr [rbp + 536];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
anc_line$2F2_ω:
                        mov              rcx, qword ptr [rbp + 528]
                        mov              r13, qword ptr [rbp + 504]
                        lea              rsp, [rbp + 544]
                        mov              rbp, qword ptr [rbp + 536];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__sibling$2F2:
                        sub              rsp, 672
                        mov              qword ptr [rsp + 648], rcx
                        mov              qword ptr [rsp + 656], rdx
                        mov              qword ptr [rsp + 664], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 632], r13
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 608], r12
                        mov              rdi, rsp
                        mov              esi, 560
                        mov              edx, 608
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
sibling$2F2_α_body:
                        .type            n379_var_ref_bx, @function
n379_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n380_var_ref_α
                        .size            n379_var_ref_bx, .-n379_var_ref_bx
                        .type            n380_var_ref_bx, @function
n380_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n381_call_α
                        .size            n380_var_ref_bx, .-n380_var_ref_bx
                        .type            n381_call_bx, @function
n381_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_call_α:            mov              r11, 147
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
                                                                              jmp   n382_var_ref_α
n381_call_β:            mov              r11, 147;                            jmp   sibling$2F2_step
                        .size            n381_call_bx, .-n381_call_bx
                        .type            n382_var_ref_bx, @function
n382_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_var_ref_α:         mov              r11, 148
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n383_var_ref_α
                        .size            n382_var_ref_bx, .-n382_var_ref_bx
                        .type            n383_var_ref_bx, @function
n383_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n384_call_α
                        .size            n383_var_ref_bx, .-n383_var_ref_bx
                        .type            n384_call_bx, @function
n384_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_call_α:            mov              r11, 150
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
                        cmp              al, 104;                             je    sibling$2F2_step
                                                                              jmp   n385_lit_string_α
n384_call_β:            mov              r11, 150;                            jmp   sibling$2F2_step
                        .size            n384_call_bx, .-n384_call_bx
                        .type            n385_lit_string_bx, @function
n385_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_string_α:      mov              r11, 151
                        mov              qword ptr [rbp + 352], 2             # result
                        mov              dword ptr [rbp + 356], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_397_0]
                        mov              qword ptr [rbp + 360], rax;          jmp   n386_call_α
.Llit_string_α_397_0:   .quad            .Llit_string_α_397_0_s
.Llit_string_α_397_0_s: .string          "parent/2"
                        .size            n385_lit_string_bx, .-n385_lit_string_bx
                        .type            n386_call_bx, @function
n386_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_call_α:            mov              r11, 152
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    sibling$2F2_step
                                                                              jmp   sibling$2F2_step
n386_call_β:            mov              r11, 152;                            jmp   sibling$2F2_step
                        .size            n386_call_bx, .-n386_call_bx
#-----------------------------------------------------------------------------------------------------------------------
sibling$2F2_step:
                        mov              rdi, qword ptr [rbp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              qword ptr [rbp + 576], 0
                        mov              qword ptr [rbp + 584], 0
                        mov              rax, qword ptr [rbp + 616]
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
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 624], 0
                        test             rax, rax
                                                                              jne   sibling$2F2_βres
                                                                              jmp   sibling$2F2_step
sibling$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sibling$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 648]
                        mov              rax, qword ptr [rbp + 632]
                        cmp              r13, rax;                            je    sibling$2F2_altdet
                        lea              rdx, [rip + sibling$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 664];          jmp   rcx
sibling$2F2_altdet:     xor              eax, eax
                        lea              rsp, [rbp + 672]
                        mov              rbp, qword ptr [rbp + 664];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sibling$2F2_ω:
                        mov              rcx, qword ptr [rbp + 656]
                        mov              r13, qword ptr [rbp + 632]
                        lea              rsp, [rbp + 672]
                        mov              rbp, qword ptr [rbp + 664];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__cousin$2F2:
                        sub              rsp, 816
                        mov              qword ptr [rsp + 792], rcx
                        mov              qword ptr [rsp + 800], rdx
                        mov              qword ptr [rsp + 808], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 776], r13
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 752], r12
                        mov              rdi, rsp
                        mov              esi, 672
                        mov              edx, 752
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
cousin$2F2_α_body:
                        .type            n399_var_ref_bx, @function
n399_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n399_var_ref_α:         mov              r11, 153
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n400_var_ref_α
                        .size            n399_var_ref_bx, .-n399_var_ref_bx
                        .type            n400_var_ref_bx, @function
n400_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_var_ref_α:         mov              r11, 154
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n401_call_α
                        .size            n400_var_ref_bx, .-n400_var_ref_bx
                        .type            n401_call_bx, @function
n401_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_call_α:            mov              r11, 155
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
                                                                              jmp   n402_var_ref_α
n401_call_β:            mov              r11, 155;                            jmp   cousin$2F2_step
                        .size            n401_call_bx, .-n401_call_bx
                        .type            n402_var_ref_bx, @function
n402_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n402_var_ref_α:         mov              r11, 156
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n403_var_ref_α
                        .size            n402_var_ref_bx, .-n402_var_ref_bx
                        .type            n403_var_ref_bx, @function
n403_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_var_ref_α:         mov              r11, 157
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n404_call_α
                        .size            n403_var_ref_bx, .-n403_var_ref_bx
                        .type            n404_call_bx, @function
n404_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_call_α:            mov              r11, 158
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    cousin$2F2_step
                                                                              jmp   n405_lit_string_α
n404_call_β:            mov              r11, 158;                            jmp   cousin$2F2_step
                        .size            n404_call_bx, .-n404_call_bx
                        .type            n405_lit_string_bx, @function
n405_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_string_α:      mov              r11, 159
                        mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_417_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n406_call_α
.Llit_string_α_417_0:   .quad            .Llit_string_α_417_0_s
.Llit_string_α_417_0_s: .string          "parent/2"
                        .size            n405_lit_string_bx, .-n405_lit_string_bx
                        .type            n406_call_bx, @function
n406_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n406_call_α:            mov              r11, 160
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    cousin$2F2_step
                                                                              jmp   cousin$2F2_step
n406_call_β:            mov              r11, 160;                            jmp   cousin$2F2_step
                        .size            n406_call_bx, .-n406_call_bx
#-----------------------------------------------------------------------------------------------------------------------
cousin$2F2_step:
                        mov              rdi, qword ptr [rbp + 752]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 768], 0
                        mov              qword ptr [rbp + 672], 0
                        mov              qword ptr [rbp + 680], 0
                        mov              qword ptr [rbp + 688], 0
                        mov              qword ptr [rbp + 696], 0
                        mov              qword ptr [rbp + 704], 0
                        mov              qword ptr [rbp + 712], 0
                        mov              qword ptr [rbp + 720], 0
                        mov              qword ptr [rbp + 728], 0
                        mov              rax, qword ptr [rbp + 760]
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
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 768], 0
                        test             rax, rax
                                                                              jne   cousin$2F2_βres
                                                                              jmp   cousin$2F2_step
cousin$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
cousin$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 792]
                        mov              rax, qword ptr [rbp + 776]
                        cmp              r13, rax;                            je    cousin$2F2_altdet
                        lea              rdx, [rip + cousin$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 808];          jmp   rcx
cousin$2F2_altdet:      xor              eax, eax
                        lea              rsp, [rbp + 816]
                        mov              rbp, qword ptr [rbp + 808];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
cousin$2F2_ω:
                        mov              rcx, qword ptr [rbp + 800]
                        mov              r13, qword ptr [rbp + 776]
                        lea              rsp, [rbp + 816]
                        mov              rbp, qword ptr [rbp + 808];          jmp   rcx
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
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 248], r13
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 224], r12
                        mov              rdi, rsp
                        mov              esi, 192
                        mov              edx, 224
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
gen_line$2F1_α_body:
                        .type            n419_var_ref_bx, @function
n419_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_var_ref_α:         mov              r11, 161
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n420_var_ref_α
                        .size            n419_var_ref_bx, .-n419_var_ref_bx
                        .type            n420_var_ref_bx, @function
n420_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 192]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n421_call_α
                        .size            n420_var_ref_bx, .-n420_var_ref_bx
                        .type            n421_call_bx, @function
n421_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_call_α:            mov              r11, 163
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    gen_line$2F1_step
                                                                              jmp   n422_lit_string_α
n421_call_β:            mov              r11, 163;                            jmp   gen_line$2F1_step
                        .size            n421_call_bx, .-n421_call_bx
                        .type            n422_lit_string_bx, @function
n422_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:      mov              r11, 164
                        mov              qword ptr [rbp + 80], 2              # result
                        mov              dword ptr [rbp + 84], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_429_0]
                        mov              qword ptr [rbp + 88], rax;           jmp   n423_call_α
.Llit_string_α_429_0:   .quad            .Llit_string_α_429_0_s
.Llit_string_α_429_0_s: .string          "person/4"
                        .size            n422_lit_string_bx, .-n422_lit_string_bx
                        .type            n423_call_bx, @function
n423_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_call_α:            mov              r11, 165
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    gen_line$2F1_step
                                                                              jmp   gen_line$2F1_step
n423_call_β:            mov              r11, 165;                            jmp   gen_line$2F1_step
                        .size            n423_call_bx, .-n423_call_bx
#-----------------------------------------------------------------------------------------------------------------------
gen_line$2F1_step:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 240], 0
                        mov              qword ptr [rbp + 192], 0
                        mov              qword ptr [rbp + 200], 0
                        mov              rax, qword ptr [rbp + 232]
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
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 240], 0
                        test             rax, rax
                                                                              jne   gen_line$2F1_βres
                                                                              jmp   gen_line$2F1_step
gen_line$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
gen_line$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 264]
                        mov              rax, qword ptr [rbp + 248]
                        cmp              r13, rax;                            je    gen_line$2F1_altdet
                        lea              rdx, [rip + gen_line$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 280];          jmp   rcx
gen_line$2F1_altdet:    xor              eax, eax
                        lea              rsp, [rbp + 288]
                        mov              rbp, qword ptr [rbp + 280];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
gen_line$2F1_ω:
                        mov              rcx, qword ptr [rbp + 272]
                        mov              r13, qword ptr [rbp + 248]
                        lea              rsp, [rbp + 288]
                        mov              rbp, qword ptr [rbp + 280];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__sib_line$2F1:
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
                        mov              esi, 304
                        mov              edx, 368
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
sib_line$2F1_α_body:
                        .type            n431_var_ref_bx, @function
n431_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n431_var_ref_α:         mov              r11, 166
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n432_var_ref_α
                        .size            n431_var_ref_bx, .-n431_var_ref_bx
                        .type            n432_var_ref_bx, @function
n432_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n433_call_α
                        .size            n432_var_ref_bx, .-n432_var_ref_bx
                        .type            n433_call_bx, @function
n433_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_call_α:            mov              r11, 168
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
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
                        cmp              al, 104;                             je    sib_line$2F1_step
                                                                              jmp   n434_var_ref_α
n433_call_β:            mov              r11, 168;                            jmp   sib_line$2F1_step
                        .size            n433_call_bx, .-n433_call_bx
                        .type            n434_var_ref_bx, @function
n434_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_var_ref_α:         mov              r11, 169
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n435_var_ref_α
                        .size            n434_var_ref_bx, .-n434_var_ref_bx
                        .type            n435_var_ref_bx, @function
n435_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_var_ref_α:         mov              r11, 170
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 320]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n436_call_proc_staged_α
                        .size            n435_var_ref_bx, .-n435_var_ref_bx
                        .type            n436_call_proc_staged_bx, @function
n436_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_call_proc_staged_α:
                        mov              r11, 171
                        mov              qword ptr [rbp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_449_200
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_449_201
.Lcall_proc_staged_α_449_200:
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
.Lcall_proc_staged_α_449_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_449_202
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_449_203
.Lcall_proc_staged_α_449_202:
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
.Lcall_proc_staged_α_449_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_449_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_449_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_449_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_449_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_449_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_449_3:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_449_21
                        add              rsp, 32
.Lcall_proc_staged_α_449_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_449_2
.Lcall_proc_staged_α_449_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 144], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_449_2
.Lcall_proc_staged_α_449_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_449_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   sib_line$2F1_step
.Lcall_proc_staged_α_449_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_449_29
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
.Lcall_proc_staged_α_449_29:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    sib_line$2F1_step
                                                                              jmp   n437_lit_string_α
n436_call_proc_staged_β:
                        mov              r11, 171
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_449_22
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_449_22
                        mov              rcx, qword ptr [rbp + 152]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_449_22:
                                                                              jmp   sib_line$2F1_step
.Lcall_proc_staged_α_449_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    sib_line$2F1_step
                                                                              jmp   n437_lit_string_α
.Lcall_proc_staged_α_449_0:
                        .quad            .Lcall_proc_staged_α_449_0_s
.Lcall_proc_staged_α_449_0_s:
                        .string          "sibling/2"
                        .size            n436_call_proc_staged_bx, .-n436_call_proc_staged_bx
                        .type            n437_lit_string_bx, @function
n437_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:      mov              r11, 172
                        mov              qword ptr [rbp + 80], 2              # result
                        mov              dword ptr [rbp + 84], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_450_0]
                        mov              qword ptr [rbp + 88], rax;           jmp   n438_call_α
.Llit_string_α_450_0:   .quad            .Llit_string_α_450_0_s
.Llit_string_α_450_0_s: .string          "person/4"
                        .size            n437_lit_string_bx, .-n437_lit_string_bx
                        .type            n438_call_bx, @function
n438_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_call_α:            mov              r11, 173
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    n436_call_proc_staged_β
                                                                              jmp   sib_line$2F1_step
n438_call_β:            mov              r11, 173;                            jmp   n436_call_proc_staged_β
                        .size            n438_call_bx, .-n438_call_bx
#-----------------------------------------------------------------------------------------------------------------------
sib_line$2F1_ret0:
                        lea              rax, [rip + n436_call_proc_staged_β]
                        mov              qword ptr [rbp + 384], rax
                                                                              jmp   sib_line$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
sib_line$2F1_step:
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
                        mov              qword ptr [rbp + 304], 0
                        mov              qword ptr [rbp + 312], 0
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              rax, qword ptr [rbp + 376]
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
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 384], 0
                        test             rax, rax
                                                                              jne   sib_line$2F1_βres
                                                                              jmp   sib_line$2F1_step
sib_line$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sib_line$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 408]
                        mov              rax, qword ptr [rbp + 392]
                        cmp              r13, rax;                            je    sib_line$2F1_altdet
                        lea              rdx, [rip + sib_line$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 424];          jmp   rcx
sib_line$2F1_altdet:    xor              eax, eax
                        lea              rsp, [rbp + 432]
                        mov              rbp, qword ptr [rbp + 424];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sib_line$2F1_ω:
                        mov              rcx, qword ptr [rbp + 416]
                        mov              r13, qword ptr [rbp + 392]
                        lea              rsp, [rbp + 432]
                        mov              rbp, qword ptr [rbp + 424];          jmp   rcx
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
                        .type            n452_var_ref_bx, @function
n452_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_var_ref_α:         mov              r11, 174
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n453_var_ref_α
                        .size            n452_var_ref_bx, .-n452_var_ref_bx
                        .type            n453_var_ref_bx, @function
n453_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n453_var_ref_α:         mov              r11, 175
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n454_call_α
                        .size            n453_var_ref_bx, .-n453_var_ref_bx
                        .type            n454_call_bx, @function
n454_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_call_α:            mov              r11, 176
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
                                                                              jmp   n455_var_ref_α
n454_call_β:            mov              r11, 176;                            jmp   assert_parent$2F2_step
                        .size            n454_call_bx, .-n454_call_bx
                        .type            n455_var_ref_bx, @function
n455_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n455_var_ref_α:         mov              r11, 177
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n456_var_ref_α
                        .size            n455_var_ref_bx, .-n455_var_ref_bx
                        .type            n456_var_ref_bx, @function
n456_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:         mov              r11, 178
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n457_call_α
                        .size            n456_var_ref_bx, .-n456_var_ref_bx
                        .type            n457_call_bx, @function
n457_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n457_call_α:            mov              r11, 179
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
                                                                              jmp   n458_lit_integer_α
n457_call_β:            mov              r11, 179;                            jmp   assert_parent$2F2_step
                        .size            n457_call_bx, .-n457_call_bx
                        .type            n458_lit_integer_bx, @function
n458_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_integer_α:     mov              r11, 180
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_474_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n459_lit_string_α
.Llit_integer_α_474_0:  .quad            1
                        .size            n458_lit_integer_bx, .-n458_lit_integer_bx
                        .type            n459_lit_string_bx, @function
n459_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_string_α:      mov              r11, 181
                        mov              qword ptr [rbp + 240], 2             # result
                        mov              dword ptr [rbp + 244], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_475_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n460_var_ref_α
.Llit_string_α_475_0:   .quad            .Llit_string_α_475_0_s
.Llit_string_α_475_0_s: .string          "parent"
                        .size            n459_lit_string_bx, .-n459_lit_string_bx
                        .type            n460_var_ref_bx, @function
n460_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n460_var_ref_α:         mov              r11, 182
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n461_var_ref_α
                        .size            n460_var_ref_bx, .-n460_var_ref_bx
                        .type            n461_var_ref_bx, @function
n461_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n461_var_ref_α:         mov              r11, 183
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n462_call_α
                        .size            n461_var_ref_bx, .-n461_var_ref_bx
                        .type            n462_call_bx, @function
n462_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n462_call_α:            mov              r11, 184
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
                                                                              jmp   n463_call_α
n462_call_β:            mov              r11, 184;                            jmp   assert_parent$2F2_step
                        .size            n462_call_bx, .-n462_call_bx
                        .type            n463_call_bx, @function
n463_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n463_call_α:            mov              r11, 185
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
n463_call_β:            mov              r11, 185;                            jmp   assert_parent$2F2_step
                        .size            n463_call_bx, .-n463_call_bx
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
                        mov              esi, 304
                        mov              edx, 368
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
gp_line$2F1_α_body:
                        .type            n482_var_ref_bx, @function
n482_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n482_var_ref_α:         mov              r11, 186
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n483_var_ref_α
                        .size            n482_var_ref_bx, .-n482_var_ref_bx
                        .type            n483_var_ref_bx, @function
n483_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n483_var_ref_α:         mov              r11, 187
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n484_call_α
                        .size            n483_var_ref_bx, .-n483_var_ref_bx
                        .type            n484_call_bx, @function
n484_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n484_call_α:            mov              r11, 188
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
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
                        cmp              al, 104;                             je    gp_line$2F1_step
                                                                              jmp   n485_var_ref_α
n484_call_β:            mov              r11, 188;                            jmp   gp_line$2F1_step
                        .size            n484_call_bx, .-n484_call_bx
                        .type            n485_var_ref_bx, @function
n485_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n485_var_ref_α:         mov              r11, 189
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n486_var_ref_α
                        .size            n485_var_ref_bx, .-n485_var_ref_bx
                        .type            n486_var_ref_bx, @function
n486_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n486_var_ref_α:         mov              r11, 190
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 320]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n487_call_proc_staged_α
                        .size            n486_var_ref_bx, .-n486_var_ref_bx
                        .type            n487_call_proc_staged_bx, @function
n487_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n487_call_proc_staged_α:
                        mov              r11, 191
                        mov              qword ptr [rbp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_500_200
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_500_201
.Lcall_proc_staged_α_500_200:
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
.Lcall_proc_staged_α_500_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_500_202
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_500_203
.Lcall_proc_staged_α_500_202:
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
.Lcall_proc_staged_α_500_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_500_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_500_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_500_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_500_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_500_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_500_3:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_500_21
                        add              rsp, 32
.Lcall_proc_staged_α_500_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_500_2
.Lcall_proc_staged_α_500_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 144], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_500_2
.Lcall_proc_staged_α_500_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_500_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   gp_line$2F1_step
.Lcall_proc_staged_α_500_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_500_29
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
.Lcall_proc_staged_α_500_29:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    gp_line$2F1_step
                                                                              jmp   n488_lit_string_α
n487_call_proc_staged_β:
                        mov              r11, 191
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_500_22
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_500_22
                        mov              rcx, qword ptr [rbp + 152]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_500_22:
                                                                              jmp   gp_line$2F1_step
.Lcall_proc_staged_α_500_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    gp_line$2F1_step
                                                                              jmp   n488_lit_string_α
.Lcall_proc_staged_α_500_0:
                        .quad            .Lcall_proc_staged_α_500_0_s
.Lcall_proc_staged_α_500_0_s:
                        .string          "grandparent/2"
                        .size            n487_call_proc_staged_bx, .-n487_call_proc_staged_bx
                        .type            n488_lit_string_bx, @function
n488_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_string_α:      mov              r11, 192
                        mov              qword ptr [rbp + 80], 2              # result
                        mov              dword ptr [rbp + 84], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_501_0]
                        mov              qword ptr [rbp + 88], rax;           jmp   n489_call_α
.Llit_string_α_501_0:   .quad            .Llit_string_α_501_0_s
.Llit_string_α_501_0_s: .string          "person/4"
                        .size            n488_lit_string_bx, .-n488_lit_string_bx
                        .type            n489_call_bx, @function
n489_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n489_call_α:            mov              r11, 193
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    n487_call_proc_staged_β
                                                                              jmp   gp_line$2F1_step
n489_call_β:            mov              r11, 193;                            jmp   n487_call_proc_staged_β
                        .size            n489_call_bx, .-n489_call_bx
#-----------------------------------------------------------------------------------------------------------------------
gp_line$2F1_ret0:
                        lea              rax, [rip + n487_call_proc_staged_β]
                        mov              qword ptr [rbp + 384], rax
                                                                              jmp   gp_line$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
gp_line$2F1_step:
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
                        mov              qword ptr [rbp + 304], 0
                        mov              qword ptr [rbp + 312], 0
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              rax, qword ptr [rbp + 376]
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
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 384], 0
                        test             rax, rax
                                                                              jne   gp_line$2F1_βres
                                                                              jmp   gp_line$2F1_step
gp_line$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
gp_line$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 408]
                        mov              rax, qword ptr [rbp + 392]
                        cmp              r13, rax;                            je    gp_line$2F1_altdet
                        lea              rdx, [rip + gp_line$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 424];          jmp   rcx
gp_line$2F1_altdet:     xor              eax, eax
                        lea              rsp, [rbp + 432]
                        mov              rbp, qword ptr [rbp + 424];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
gp_line$2F1_ω:
                        mov              rcx, qword ptr [rbp + 416]
                        mov              r13, qword ptr [rbp + 392]
                        lea              rsp, [rbp + 432]
                        mov              rbp, qword ptr [rbp + 424];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__grandparent$2F2:
                        sub              rsp, 416
                        mov              qword ptr [rsp + 392], rcx
                        mov              qword ptr [rsp + 400], rdx
                        mov              qword ptr [rsp + 408], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 376], r13
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 352], r12
                        mov              rdi, rsp
                        mov              esi, 304
                        mov              edx, 352
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
grandparent$2F2_α_body:
                        .type            n503_var_ref_bx, @function
n503_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n503_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n504_var_ref_α
                        .size            n503_var_ref_bx, .-n503_var_ref_bx
                        .type            n504_var_ref_bx, @function
n504_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n504_var_ref_α:         mov              r11, 195
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n505_call_α
                        .size            n504_var_ref_bx, .-n504_var_ref_bx
                        .type            n505_call_bx, @function
n505_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n505_call_α:            mov              r11, 196
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
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
                        cmp              al, 104;                             je    grandparent$2F2_step
                                                                              jmp   n506_var_ref_α
n505_call_β:            mov              r11, 196;                            jmp   grandparent$2F2_step
                        .size            n505_call_bx, .-n505_call_bx
                        .type            n506_var_ref_bx, @function
n506_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n506_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n507_var_ref_α
                        .size            n506_var_ref_bx, .-n506_var_ref_bx
                        .type            n507_var_ref_bx, @function
n507_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n507_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n508_call_α
                        .size            n507_var_ref_bx, .-n507_var_ref_bx
                        .type            n508_call_bx, @function
n508_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n508_call_α:            mov              r11, 199
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    grandparent$2F2_step
                                                                              jmp   n509_lit_string_α
n508_call_β:            mov              r11, 199;                            jmp   grandparent$2F2_step
                        .size            n508_call_bx, .-n508_call_bx
                        .type            n509_lit_string_bx, @function
n509_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n509_lit_string_α:      mov              r11, 200
                        mov              qword ptr [rbp + 96], 2              # result
                        mov              dword ptr [rbp + 100], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_521_0]
                        mov              qword ptr [rbp + 104], rax;          jmp   n510_call_α
.Llit_string_α_521_0:   .quad            .Llit_string_α_521_0_s
.Llit_string_α_521_0_s: .string          "parent/2"
                        .size            n509_lit_string_bx, .-n509_lit_string_bx
                        .type            n510_call_bx, @function
n510_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n510_call_α:            mov              r11, 201
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    grandparent$2F2_step
                                                                              jmp   grandparent$2F2_step
n510_call_β:            mov              r11, 201;                            jmp   grandparent$2F2_step
                        .size            n510_call_bx, .-n510_call_bx
#-----------------------------------------------------------------------------------------------------------------------
grandparent$2F2_step:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              qword ptr [rbp + 304], 0
                        mov              qword ptr [rbp + 312], 0
                        mov              rax, qword ptr [rbp + 360]
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
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 368], 0
                        test             rax, rax
                                                                              jne   grandparent$2F2_βres
                                                                              jmp   grandparent$2F2_step
grandparent$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
grandparent$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 392]
                        mov              rax, qword ptr [rbp + 376]
                        cmp              r13, rax;                            je    grandparent$2F2_altdet
                        lea              rdx, [rip + grandparent$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 408];          jmp   rcx
grandparent$2F2_altdet: xor              eax, eax
                        lea              rsp, [rbp + 416]
                        mov              rbp, qword ptr [rbp + 408];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
grandparent$2F2_ω:
                        mov              rcx, qword ptr [rbp + 400]
                        mov              r13, qword ptr [rbp + 376]
                        lea              rsp, [rbp + 416]
                        mov              rbp, qword ptr [rbp + 408];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__cou_line$2F1:
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
                        mov              esi, 304
                        mov              edx, 368
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
cou_line$2F1_α_body:
                        .type            n523_var_ref_bx, @function
n523_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n523_var_ref_α:         mov              r11, 202
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n524_var_ref_α
                        .size            n523_var_ref_bx, .-n523_var_ref_bx
                        .type            n524_var_ref_bx, @function
n524_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n524_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n525_call_α
                        .size            n524_var_ref_bx, .-n524_var_ref_bx
                        .type            n525_call_bx, @function
n525_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n525_call_α:            mov              r11, 204
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
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
                        cmp              al, 104;                             je    cou_line$2F1_step
                                                                              jmp   n526_var_ref_α
n525_call_β:            mov              r11, 204;                            jmp   cou_line$2F1_step
                        .size            n525_call_bx, .-n525_call_bx
                        .type            n526_var_ref_bx, @function
n526_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n526_var_ref_α:         mov              r11, 205
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n527_var_ref_α
                        .size            n526_var_ref_bx, .-n526_var_ref_bx
                        .type            n527_var_ref_bx, @function
n527_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n527_var_ref_α:         mov              r11, 206
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 320]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n528_call_proc_staged_α
                        .size            n527_var_ref_bx, .-n527_var_ref_bx
                        .type            n528_call_proc_staged_bx, @function
n528_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n528_call_proc_staged_α:
                        mov              r11, 207
                        mov              qword ptr [rbp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_541_200
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_541_201
.Lcall_proc_staged_α_541_200:
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
.Lcall_proc_staged_α_541_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_541_202
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_541_203
.Lcall_proc_staged_α_541_202:
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
.Lcall_proc_staged_α_541_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_541_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_541_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_541_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_541_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_541_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_541_3:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_541_21
                        add              rsp, 32
.Lcall_proc_staged_α_541_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_541_2
.Lcall_proc_staged_α_541_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 144], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_541_2
.Lcall_proc_staged_α_541_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_541_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   cou_line$2F1_step
.Lcall_proc_staged_α_541_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_541_29
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
.Lcall_proc_staged_α_541_29:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    cou_line$2F1_step
                                                                              jmp   n529_lit_string_α
n528_call_proc_staged_β:
                        mov              r11, 207
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_541_22
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_541_22
                        mov              rcx, qword ptr [rbp + 152]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_541_22:
                                                                              jmp   cou_line$2F1_step
.Lcall_proc_staged_α_541_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    cou_line$2F1_step
                                                                              jmp   n529_lit_string_α
.Lcall_proc_staged_α_541_0:
                        .quad            .Lcall_proc_staged_α_541_0_s
.Lcall_proc_staged_α_541_0_s:
                        .string          "cousin/2"
                        .size            n528_call_proc_staged_bx, .-n528_call_proc_staged_bx
                        .type            n529_lit_string_bx, @function
n529_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n529_lit_string_α:      mov              r11, 208
                        mov              qword ptr [rbp + 80], 2              # result
                        mov              dword ptr [rbp + 84], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_542_0]
                        mov              qword ptr [rbp + 88], rax;           jmp   n530_call_α
.Llit_string_α_542_0:   .quad            .Llit_string_α_542_0_s
.Llit_string_α_542_0_s: .string          "person/4"
                        .size            n529_lit_string_bx, .-n529_lit_string_bx
                        .type            n530_call_bx, @function
n530_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n530_call_α:            mov              r11, 209
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    n528_call_proc_staged_β
                                                                              jmp   cou_line$2F1_step
n530_call_β:            mov              r11, 209;                            jmp   n528_call_proc_staged_β
                        .size            n530_call_bx, .-n530_call_bx
#-----------------------------------------------------------------------------------------------------------------------
cou_line$2F1_ret0:
                        lea              rax, [rip + n528_call_proc_staged_β]
                        mov              qword ptr [rbp + 384], rax
                                                                              jmp   cou_line$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
cou_line$2F1_step:
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
                        mov              qword ptr [rbp + 304], 0
                        mov              qword ptr [rbp + 312], 0
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              rax, qword ptr [rbp + 376]
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
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 384], 0
                        test             rax, rax
                                                                              jne   cou_line$2F1_βres
                                                                              jmp   cou_line$2F1_step
cou_line$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
cou_line$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 408]
                        mov              rax, qword ptr [rbp + 392]
                        cmp              r13, rax;                            je    cou_line$2F1_altdet
                        lea              rdx, [rip + cou_line$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 424];          jmp   rcx
cou_line$2F1_altdet:    xor              eax, eax
                        lea              rsp, [rbp + 432]
                        mov              rbp, qword ptr [rbp + 424];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
cou_line$2F1_ω:
                        mov              rcx, qword ptr [rbp + 416]
                        mov              r13, qword ptr [rbp + 392]
                        lea              rsp, [rbp + 432]
                        mov              rbp, qword ptr [rbp + 424];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__ancestor$2F2:
                        sub              rsp, 672
                        mov              qword ptr [rsp + 648], rcx
                        mov              qword ptr [rsp + 656], rdx
                        mov              qword ptr [rsp + 664], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 632], r13
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 608], r12
                        lea              rax, [rip + ancestor$2F2_alt1]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 560
                        mov              edx, 608
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
ancestor$2F2_α_body:
                        .type            n544_var_ref_bx, @function
n544_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n544_var_ref_α:         mov              r11, 210
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n545_var_ref_α
                        .size            n544_var_ref_bx, .-n544_var_ref_bx
                        .type            n545_var_ref_bx, @function
n545_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n545_var_ref_α:         mov              r11, 211
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n546_call_α
                        .size            n545_var_ref_bx, .-n545_var_ref_bx
                        .type            n546_call_bx, @function
n546_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n546_call_α:            mov              r11, 212
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
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
                        cmp              al, 104;                             je    ancestor$2F2_step
                                                                              jmp   n547_var_ref_α
n546_call_β:            mov              r11, 212;                            jmp   ancestor$2F2_step
                        .size            n546_call_bx, .-n546_call_bx
                        .type            n547_var_ref_bx, @function
n547_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n547_var_ref_α:         mov              r11, 213
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n548_var_ref_α
                        .size            n547_var_ref_bx, .-n547_var_ref_bx
                        .type            n548_var_ref_bx, @function
n548_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n548_var_ref_α:         mov              r11, 214
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n549_call_α
                        .size            n548_var_ref_bx, .-n548_var_ref_bx
                        .type            n549_call_bx, @function
n549_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n549_call_α:            mov              r11, 215
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    ancestor$2F2_step
                                                                              jmp   n550_lit_string_α
n549_call_β:            mov              r11, 215;                            jmp   ancestor$2F2_step
                        .size            n549_call_bx, .-n549_call_bx
                        .type            n550_lit_string_bx, @function
n550_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n550_lit_string_α:      mov              r11, 216
                        mov              qword ptr [rbp + 96], 2              # result
                        mov              dword ptr [rbp + 100], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_570_0]
                        mov              qword ptr [rbp + 104], rax;          jmp   n551_call_α
.Llit_string_α_570_0:   .quad            .Llit_string_α_570_0_s
.Llit_string_α_570_0_s: .string          "parent/2"
                        .size            n550_lit_string_bx, .-n550_lit_string_bx
                        .type            n551_call_bx, @function
n551_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n551_call_α:            mov              r11, 217
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    ancestor$2F2_step
                                                                              jmp   ancestor$2F2_step
n551_call_β:            mov              r11, 217;                            jmp   ancestor$2F2_step
                        .size            n551_call_bx, .-n551_call_bx
                        .type            n552_var_ref_bx, @function
n552_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n552_var_ref_α:         mov              r11, 218
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n553_var_ref_α
                        .size            n552_var_ref_bx, .-n552_var_ref_bx
                        .type            n553_var_ref_bx, @function
n553_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n553_var_ref_α:         mov              r11, 219
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n554_call_α
                        .size            n553_var_ref_bx, .-n553_var_ref_bx
                        .type            n554_call_bx, @function
n554_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n554_call_α:            mov              r11, 220
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
                        cmp              al, 104;                             je    ancestor$2F2_step
                                                                              jmp   n555_var_ref_α
n554_call_β:            mov              r11, 220;                            jmp   ancestor$2F2_step
                        .size            n554_call_bx, .-n554_call_bx
                        .type            n555_var_ref_bx, @function
n555_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n555_var_ref_α:         mov              r11, 221
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n556_var_ref_α
                        .size            n555_var_ref_bx, .-n555_var_ref_bx
                        .type            n556_var_ref_bx, @function
n556_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n556_var_ref_α:         mov              r11, 222
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n557_call_α
                        .size            n556_var_ref_bx, .-n556_var_ref_bx
                        .type            n557_call_bx, @function
n557_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n557_call_α:            mov              r11, 223
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
                        cmp              al, 104;                             je    ancestor$2F2_step
                                                                              jmp   n558_lit_string_α
n557_call_β:            mov              r11, 223;                            jmp   ancestor$2F2_step
                        .size            n557_call_bx, .-n557_call_bx
                        .type            n558_lit_string_bx, @function
n558_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n558_lit_string_α:      mov              r11, 224
                        mov              qword ptr [rbp + 352], 2             # result
                        mov              dword ptr [rbp + 356], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_582_0]
                        mov              qword ptr [rbp + 360], rax;          jmp   n559_call_α
.Llit_string_α_582_0:   .quad            .Llit_string_α_582_0_s
.Llit_string_α_582_0_s: .string          "parent/2"
                        .size            n558_lit_string_bx, .-n558_lit_string_bx
                        .type            n559_call_bx, @function
n559_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n559_call_α:            mov              r11, 225
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    ancestor$2F2_step
                                                                              jmp   ancestor$2F2_step
n559_call_β:            mov              r11, 225;                            jmp   ancestor$2F2_step
                        .size            n559_call_bx, .-n559_call_bx
#-----------------------------------------------------------------------------------------------------------------------
ancestor$2F2_step:
                        mov              rdi, qword ptr [rbp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 576], 0
                        mov              qword ptr [rbp + 584], 0
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              rax, qword ptr [rbp + 616]
                        test             rax, rax
                                                                              je    ancestor$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
ancestor$2F2_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 616], rax
                        mov              r13, qword ptr [rbp + 632]
                                                                              jmp   n552_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
ancestor$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
ancestor$2F2_β:
                        test             r15, r15
                                                                              jne   ancestor$2F2_ω
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 624], 0
                        test             rax, rax
                                                                              jne   ancestor$2F2_βres
                                                                              jmp   ancestor$2F2_step
ancestor$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
ancestor$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 648]
                        mov              rax, qword ptr [rbp + 632]
                        cmp              r13, rax;                            je    ancestor$2F2_altdet
                        lea              rdx, [rip + ancestor$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 664];          jmp   rcx
ancestor$2F2_altdet:    xor              eax, eax
                        lea              rsp, [rbp + 672]
                        mov              rbp, qword ptr [rbp + 664];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
ancestor$2F2_ω:
                        mov              rcx, qword ptr [rbp + 656]
                        mov              r13, qword ptr [rbp + 632]
                        lea              rsp, [rbp + 672]
                        mov              rbp, qword ptr [rbp + 664];          jmp   rcx
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
                        .type            n584_var_ref_bx, @function
n584_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n584_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n585_var_ref_α
                        .size            n584_var_ref_bx, .-n584_var_ref_bx
                        .type            n585_var_ref_bx, @function
n585_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n585_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n586_call_α
                        .size            n585_var_ref_bx, .-n585_var_ref_bx
                        .type            n586_call_bx, @function
n586_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n586_call_α:            mov              r11, 228
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
                                                                              jmp   n587_var_ref_α
n586_call_β:            mov              r11, 228;                            jmp   query_ancestors$2F2_step
                        .size            n586_call_bx, .-n586_call_bx
                        .type            n587_var_ref_bx, @function
n587_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n587_var_ref_α:         mov              r11, 229
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n588_var_ref_α
                        .size            n587_var_ref_bx, .-n587_var_ref_bx
                        .type            n588_var_ref_bx, @function
n588_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n588_var_ref_α:         mov              r11, 230
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n589_call_α
                        .size            n588_var_ref_bx, .-n588_var_ref_bx
                        .type            n589_call_bx, @function
n589_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n589_call_α:            mov              r11, 231
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
                                                                              jmp   n590_var_ref_α
n589_call_β:            mov              r11, 231;                            jmp   query_ancestors$2F2_step
                        .size            n589_call_bx, .-n589_call_bx
                        .type            n590_var_ref_bx, @function
n590_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n590_var_ref_α:         mov              r11, 232
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n591_call_α
                        .size            n590_var_ref_bx, .-n590_var_ref_bx
                        .type            n591_call_bx, @function
n591_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n591_call_α:            mov              r11, 233
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
                                                                              jmp   n592_var_ref_α
n591_call_β:            mov              r11, 233;                            jmp   query_ancestors$2F2_step
                        .size            n591_call_bx, .-n591_call_bx
                        .type            n592_var_ref_bx, @function
n592_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n592_var_ref_α:         mov              r11, 234
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n593_var_ref_α
                        .size            n592_var_ref_bx, .-n592_var_ref_bx
                        .type            n593_var_ref_bx, @function
n593_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n593_var_ref_α:         mov              r11, 235
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n594_call_proc_staged_α
                        .size            n593_var_ref_bx, .-n593_var_ref_bx
                        .type            n594_call_proc_staged_bx, @function
n594_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n594_call_proc_staged_α:
                        mov              r11, 236
                        mov              qword ptr [rbp + 384], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_619_200
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_619_201
.Lcall_proc_staged_α_619_200:
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
.Lcall_proc_staged_α_619_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_619_202
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_619_203
.Lcall_proc_staged_α_619_202:
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
.Lcall_proc_staged_α_619_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_619_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_619_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_619_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_619_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_619_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_619_3:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_619_21
                        add              rsp, 32
.Lcall_proc_staged_α_619_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_619_2
.Lcall_proc_staged_α_619_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 384], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_619_2
.Lcall_proc_staged_α_619_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_619_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n597_call_α
.Lcall_proc_staged_α_619_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_619_29
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
.Lcall_proc_staged_α_619_29:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    n597_call_α
                                                                              jmp   n595_var_α
n594_call_proc_staged_β:
                        mov              r11, 236
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_619_22
                        mov              rax, qword ptr [rbp + 384]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_619_22
                        mov              rcx, qword ptr [rbp + 392]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_619_22:
                                                                              jmp   n597_call_α
.Lcall_proc_staged_α_619_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    n597_call_α
                                                                              jmp   n595_var_α
.Lcall_proc_staged_α_619_0:
                        .quad            .Lcall_proc_staged_α_619_0_s
.Lcall_proc_staged_α_619_0_s:
                        .string          "anc_line/2"
                        .size            n594_call_proc_staged_bx, .-n594_call_proc_staged_bx
                        .type            n595_var_bx, @function
n595_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n595_var_α:             mov              r11, 237
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 328], rax;          jmp   n596_call_α
                        .size            n595_var_bx, .-n595_var_bx
                        .type            n596_call_bx, @function
n596_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n596_call_α:            mov              r11, 238
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
                        cmp              al, 104;                             je    n597_call_α
                                                                              jmp   n594_call_proc_staged_β
n596_call_β:            mov              r11, 238;                            jmp   n597_call_α
                        .size            n596_call_bx, .-n596_call_bx
                        .type            n597_call_bx, @function
n597_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n597_call_α:            mov              r11, 239
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
                                                                              jmp   n598_var_ref_α
n597_call_β:            mov              r11, 239;                            jmp   query_ancestors$2F2_step
                        .size            n597_call_bx, .-n597_call_bx
                        .type            n598_var_ref_bx, @function
n598_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n598_var_ref_α:         mov              r11, 240
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n599_var_ref_α
                        .size            n598_var_ref_bx, .-n598_var_ref_bx
                        .type            n599_var_ref_bx, @function
n599_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n599_var_ref_α:         mov              r11, 241
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n600_call_proc_staged_α
                        .size            n599_var_ref_bx, .-n599_var_ref_bx
                        .type            n600_call_proc_staged_bx, @function
n600_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n600_call_proc_staged_α:
                        mov              r11, 242
                        mov              qword ptr [rbp + 96], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_629_200
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_629_201
.Lcall_proc_staged_α_629_200:
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
.Lcall_proc_staged_α_629_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_629_202
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_629_203
.Lcall_proc_staged_α_629_202:
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
.Lcall_proc_staged_α_629_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_629_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_629_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_629_99
                        mov              r10, qword ptr [rbp + 760]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_629_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_629_99
                        mov              rcx, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 784]
                        lea              rsp, [rbp + 800]
                        mov              rbp, qword ptr [rbp + 792];          jmp   rax
.Lcall_proc_staged_α_629_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_629_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_629_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_629_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_629_3:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_629_21
                        add              rsp, 32
.Lcall_proc_staged_α_629_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_629_2
.Lcall_proc_staged_α_629_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 96], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_629_2
.Lcall_proc_staged_α_629_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_629_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   query_ancestors$2F2_step
.Lcall_proc_staged_α_629_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_629_29
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
.Lcall_proc_staged_α_629_29:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    query_ancestors$2F2_step
                                                                              jmp   query_ancestors$2F2_ret0
n600_call_proc_staged_β:
                        mov              r11, 242
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_629_22
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_629_22
                        mov              rcx, qword ptr [rbp + 104]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_629_22:
                                                                              jmp   query_ancestors$2F2_step
.Lcall_proc_staged_α_629_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    query_ancestors$2F2_step
                                                                              jmp   query_ancestors$2F2_ret0
.Lcall_proc_staged_α_629_0:
                        .quad            .Lcall_proc_staged_α_629_0_s
.Lcall_proc_staged_α_629_0_s:
                        .string          "join_lines/2"
                        .size            n600_call_proc_staged_bx, .-n600_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
query_ancestors$2F2_ret0:
                        lea              rax, [rip + n600_call_proc_staged_β]
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
                        sub              rsp, 752
                        mov              qword ptr [rsp + 728], rcx
                        mov              qword ptr [rsp + 736], rdx
                        mov              qword ptr [rsp + 744], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 712], r13
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 688], r12
                        mov              rdi, rsp
                        mov              esi, 608
                        mov              edx, 688
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
query_count$2F1_α_body:
                        .type            n630_var_ref_bx, @function
n630_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n630_var_ref_α:         mov              r11, 243
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n631_var_ref_α
                        .size            n630_var_ref_bx, .-n630_var_ref_bx
                        .type            n631_var_ref_bx, @function
n631_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n631_var_ref_α:         mov              r11, 244
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n632_call_α
                        .size            n631_var_ref_bx, .-n631_var_ref_bx
                        .type            n632_call_bx, @function
n632_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n632_call_α:            mov              r11, 245
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    query_count$2F1_step
                                                                              jmp   n633_var_ref_α
n632_call_β:            mov              r11, 245;                            jmp   query_count$2F1_step
                        .size            n632_call_bx, .-n632_call_bx
                        .type            n633_var_ref_bx, @function
n633_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n633_var_ref_α:         mov              r11, 246
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n634_call_α
                        .size            n633_var_ref_bx, .-n633_var_ref_bx
                        .type            n634_call_bx, @function
n634_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n634_call_α:            mov              r11, 247
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
                                                                              jmp   n635_lit_string_α
n634_call_β:            mov              r11, 247;                            jmp   query_count$2F1_step
                        .size            n634_call_bx, .-n634_call_bx
                        .type            n635_lit_string_bx, @function
n635_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n635_lit_string_α:      mov              r11, 248
                        mov              qword ptr [rbp + 480], 2             # result
                        mov              dword ptr [rbp + 484], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_655_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n636_call_α
.Llit_string_α_655_0:   .quad            .Llit_string_α_655_0_s
.Llit_string_α_655_0_s: .string          "person/4"
                        .size            n635_lit_string_bx, .-n635_lit_string_bx
                        .type            n636_call_bx, @function
n636_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n636_call_α:            mov              r11, 249
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n637_call_α
                                                                              jmp   n637_call_α
n636_call_β:            mov              r11, 249;                            jmp   n637_call_α
                        .size            n636_call_bx, .-n636_call_bx
                        .type            n637_call_bx, @function
n637_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n637_call_α:            mov              r11, 250
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 504]
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
                                                                              jmp   n638_var_ref_α
n637_call_β:            mov              r11, 250;                            jmp   query_count$2F1_step
                        .size            n637_call_bx, .-n637_call_bx
                        .type            n638_var_ref_bx, @function
n638_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n638_var_ref_α:         mov              r11, 251
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n639_var_ref_α
                        .size            n638_var_ref_bx, .-n638_var_ref_bx
                        .type            n639_var_ref_bx, @function
n639_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n639_var_ref_α:         mov              r11, 252
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 640]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n640_call_proc_staged_α
                        .size            n639_var_ref_bx, .-n639_var_ref_bx
                        .type            n640_call_proc_staged_bx, @function
n640_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n640_call_proc_staged_α:
                        mov              r11, 253
                        mov              qword ptr [rbp + 272], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_663_200
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_663_201
.Lcall_proc_staged_α_663_200:
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
.Lcall_proc_staged_α_663_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_663_202
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_663_203
.Lcall_proc_staged_α_663_202:
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
.Lcall_proc_staged_α_663_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_663_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_663_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_663_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_663_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_663_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_663_3:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_663_21
                        add              rsp, 32
.Lcall_proc_staged_α_663_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_663_2
.Lcall_proc_staged_α_663_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 272], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_663_2
.Lcall_proc_staged_α_663_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_663_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   query_count$2F1_step
.Lcall_proc_staged_α_663_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_663_29
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
.Lcall_proc_staged_α_663_29:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    query_count$2F1_step
                                                                              jmp   n641_var_ref_α
n640_call_proc_staged_β:
                        mov              r11, 253
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_663_22
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_663_22
                        mov              rcx, qword ptr [rbp + 280]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_663_22:
                                                                              jmp   query_count$2F1_step
.Lcall_proc_staged_α_663_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    query_count$2F1_step
                                                                              jmp   n641_var_ref_α
.Lcall_proc_staged_α_663_0:
                        .quad            .Lcall_proc_staged_α_663_0_s
.Lcall_proc_staged_α_663_0_s:
                        .string          "findall_length/2"
                        .size            n640_call_proc_staged_bx, .-n640_call_proc_staged_bx
                        .type            n641_var_ref_bx, @function
n641_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n641_var_ref_α:         mov              r11, 254
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 640]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n642_var_ref_α
                        .size            n641_var_ref_bx, .-n641_var_ref_bx
                        .type            n642_var_ref_bx, @function
n642_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n642_var_ref_α:         mov              r11, 255
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 624]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n643_call_α
                        .size            n642_var_ref_bx, .-n642_var_ref_bx
                        .type            n643_call_bx, @function
n643_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n643_call_α:            mov              r11, 256
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
                        cmp              al, 104;                             je    n640_call_proc_staged_β
                                                                              jmp   n644_var_ref_α
n643_call_β:            mov              r11, 256;                            jmp   n640_call_proc_staged_β
                        .size            n643_call_bx, .-n643_call_bx
                        .type            n644_var_ref_bx, @function
n644_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n644_var_ref_α:         mov              r11, 257
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n645_var_ref_α
                        .size            n644_var_ref_bx, .-n644_var_ref_bx
                        .type            n645_var_ref_bx, @function
n645_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n645_var_ref_α:         mov              r11, 258
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 624]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n646_call_α
                        .size            n645_var_ref_bx, .-n645_var_ref_bx
                        .type            n646_call_bx, @function
n646_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n646_call_α:            mov              r11, 259
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
                        cmp              al, 104;                             je    n640_call_proc_staged_β
                                                                              jmp   query_count$2F1_ret0
n646_call_β:            mov              r11, 259;                            jmp   n640_call_proc_staged_β
                        .size            n646_call_bx, .-n646_call_bx
#-----------------------------------------------------------------------------------------------------------------------
query_count$2F1_ret0:
                        lea              rax, [rip + n640_call_proc_staged_β]
                        mov              qword ptr [rbp + 704], rax
                                                                              jmp   query_count$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
query_count$2F1_step:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 704], 0
                        mov              qword ptr [rbp + 608], 0
                        mov              qword ptr [rbp + 616], 0
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              qword ptr [rbp + 640], 0
                        mov              qword ptr [rbp + 648], 0
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              rax, qword ptr [rbp + 696]
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
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 704], 0
                        test             rax, rax
                                                                              jne   query_count$2F1_βres
                                                                              jmp   query_count$2F1_step
query_count$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
query_count$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 728]
                        mov              rax, qword ptr [rbp + 712]
                        cmp              r13, rax;                            je    query_count$2F1_altdet
                        lea              rdx, [rip + query_count$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 744];          jmp   rcx
query_count$2F1_altdet: xor              eax, eax
                        lea              rsp, [rbp + 752]
                        mov              rbp, qword ptr [rbp + 744];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
query_count$2F1_ω:
                        mov              rcx, qword ptr [rbp + 736]
                        mov              r13, qword ptr [rbp + 712]
                        lea              rsp, [rbp + 752]
                        mov              rbp, qword ptr [rbp + 744];          jmp   rcx
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
                        lea              rax, [rip + generation$2F2_alt1]
                        mov              qword ptr [rsp + 1032], rax
                        lea              rdi, [rsp + 1024]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 944
                        mov              edx, 1024
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
generation$2F2_α_body:
                        .type            n674_var_ref_bx, @function
n674_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n674_var_ref_α:         mov              r11, 260
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n675_var_ref_α
                        .size            n674_var_ref_bx, .-n674_var_ref_bx
                        .type            n675_var_ref_bx, @function
n675_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n675_var_ref_α:         mov              r11, 261
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n676_call_α
                        .size            n675_var_ref_bx, .-n675_var_ref_bx
                        .type            n676_call_bx, @function
n676_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n676_call_α:            mov              r11, 262
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    generation$2F2_step
                                                                              jmp   n677_var_ref_α
n676_call_β:            mov              r11, 262;                            jmp   generation$2F2_step
                        .size            n676_call_bx, .-n676_call_bx
                        .type            n677_var_ref_bx, @function
n677_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n677_var_ref_α:         mov              r11, 263
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n678_lit_integer_α
                        .size            n677_var_ref_bx, .-n677_var_ref_bx
                        .type            n678_lit_integer_bx, @function
n678_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n678_lit_integer_α:     mov              r11, 264
                        mov              qword ptr [rbp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_701_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n679_call_α
.Llit_integer_α_701_0:  .quad            0
                        .size            n678_lit_integer_bx, .-n678_lit_integer_bx
                        .type            n679_call_bx, @function
n679_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n679_call_α:            mov              r11, 265
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    generation$2F2_step
                                                                              jmp   n680_bound_α
n679_call_β:            mov              r11, 265;                            jmp   generation$2F2_step
                        .size            n679_call_bx, .-n679_call_bx
                        .type            n680_bound_bx, @function
n680_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n680_bound_α:           mov              r11, 266
                        mov              qword ptr [rbp + 80], r12
                        lea              rdi, [rbp + 1024]
                        mov              rsi, rbp
                        call             rt_pl_disj_open@PLT;                 jmp   n681_lit_string_α
                        .size            n680_bound_bx, .-n680_bound_bx
                        .type            n681_lit_string_bx, @function
n681_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n681_lit_string_α:      mov              r11, 267
                        mov              qword ptr [rbp + 192], 2             # result
                        mov              dword ptr [rbp + 196], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_705_0]
                        mov              qword ptr [rbp + 200], rax;          jmp   n682_call_α
.Llit_string_α_705_0:   .quad            .Llit_string_α_705_0_s
.Llit_string_α_705_0_s: .string          "parent/2"
                        .size            n681_lit_string_bx, .-n681_lit_string_bx
                        .type            n682_call_bx, @function
n682_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n682_call_α:            mov              r11, 268
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    n683_unmark_α
                                                                              jmp   n683_unmark_α
n682_call_β:            mov              r11, 268;                            jmp   n683_unmark_α
                        .size            n682_call_bx, .-n682_call_bx
                        .type            n683_unmark_bx, @function
n683_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n683_unmark_α:          mov              r11, 269
                        mov              rdi, qword ptr [rbp + 80]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   generation$2F2_step
                                                                              jmp   n684_move_label_α
                        .size            n683_unmark_bx, .-n683_unmark_bx
                        .type            n684_move_label_bx, @function
n684_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n684_move_label_α:      mov              r11, 270
                        lea              rax, [rip + n685_indirect_goto_α]
                        mov              qword ptr [rbp + 64], rax;           jmp   generation$2F2_γ
                        .size            n684_move_label_bx, .-n684_move_label_bx
                        .type            n685_indirect_goto_bx, @function
n685_indirect_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n685_indirect_goto_α:   mov              r11, 271;                            jmp   generation$2F2_step
n685_indirect_goto_β:   mov              r11, 271;                            jmp   qword ptr [rbp + 64]
                        .size            n685_indirect_goto_bx, .-n685_indirect_goto_bx
                        .type            n686_var_ref_bx, @function
n686_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n686_var_ref_α:         mov              r11, 272
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n687_var_ref_α
                        .size            n686_var_ref_bx, .-n686_var_ref_bx
                        .type            n687_var_ref_bx, @function
n687_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n687_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n688_call_α
                        .size            n687_var_ref_bx, .-n687_var_ref_bx
                        .type            n688_call_bx, @function
n688_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n688_call_α:            mov              r11, 274
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
                                                                              jmp   n689_var_ref_α
n688_call_β:            mov              r11, 274;                            jmp   generation$2F2_step
                        .size            n688_call_bx, .-n688_call_bx
                        .type            n689_var_ref_bx, @function
n689_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n689_var_ref_α:         mov              r11, 275
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n690_var_ref_α
                        .size            n689_var_ref_bx, .-n689_var_ref_bx
                        .type            n690_var_ref_bx, @function
n690_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n690_var_ref_α:         mov              r11, 276
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n691_call_α
                        .size            n690_var_ref_bx, .-n690_var_ref_bx
                        .type            n691_call_bx, @function
n691_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n691_call_α:            mov              r11, 277
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
                        cmp              al, 104;                             je    generation$2F2_step
                                                                              jmp   n692_lit_string_α
n691_call_β:            mov              r11, 277;                            jmp   generation$2F2_step
                        .size            n691_call_bx, .-n691_call_bx
                        .type            n692_lit_string_bx, @function
n692_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n692_lit_string_α:      mov              r11, 278
                        mov              qword ptr [rbp + 736], 2             # result
                        mov              dword ptr [rbp + 740], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_723_0]
                        mov              qword ptr [rbp + 744], rax;          jmp   n693_call_α
.Llit_string_α_723_0:   .quad            .Llit_string_α_723_0_s
.Llit_string_α_723_0_s: .string          "parent/2"
                        .size            n692_lit_string_bx, .-n692_lit_string_bx
                        .type            n693_call_bx, @function
n693_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n693_call_α:            mov              r11, 279
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    generation$2F2_step
                                                                              jmp   generation$2F2_step
n693_call_β:            mov              r11, 279;                            jmp   generation$2F2_step
                        .size            n693_call_bx, .-n693_call_bx
#-----------------------------------------------------------------------------------------------------------------------
generation$2F2_ret0:
                        lea              rax, [rip + n685_indirect_goto_β]
                        mov              qword ptr [rbp + 1040], rax
                                                                              jmp   generation$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
generation$2F2_step:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1040], 0
                        mov              qword ptr [rbp + 944], 0
                        mov              qword ptr [rbp + 952], 0
                        mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 968], 0
                        mov              qword ptr [rbp + 992], 0
                        mov              qword ptr [rbp + 1000], 0
                        mov              qword ptr [rbp + 976], 0
                        mov              qword ptr [rbp + 984], 0
                        mov              rax, qword ptr [rbp + 1032]
                        test             rax, rax
                                                                              je    generation$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
generation$2F2_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1032], rax
                        mov              r13, qword ptr [rbp + 1048]
                                                                              jmp   n686_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
generation$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
generation$2F2_β:
                        test             r15, r15
                                                                              jne   generation$2F2_ω
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1040], 0
                        test             rax, rax
                                                                              jne   generation$2F2_βres
                                                                              jmp   generation$2F2_step
generation$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
generation$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1064]
                        mov              rax, qword ptr [rbp + 1048]
                        cmp              r13, rax;                            je    generation$2F2_altdet
                        lea              rdx, [rip + generation$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1080];         jmp   rcx
generation$2F2_altdet:  xor              eax, eax
                        lea              rsp, [rbp + 1088]
                        mov              rbp, qword ptr [rbp + 1080];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
generation$2F2_ω:
                        mov              rcx, qword ptr [rbp + 1072]
                        mov              r13, qword ptr [rbp + 1048]
                        lea              rsp, [rbp + 1088]
                        mov              rbp, qword ptr [rbp + 1080];         jmp   rcx
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
                        .type            n725_call_proc_staged_bx, @function
n725_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n725_call_proc_staged_α:
                        mov              r11, 280
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_727_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_727_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_727_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_727_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_727_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_727_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_727_21
                        add              rsp, 32
.Lcall_proc_staged_α_727_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_727_2
.Lcall_proc_staged_α_727_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_727_2
.Lcall_proc_staged_α_727_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_727_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_727_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_727_29
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
.Lcall_proc_staged_α_727_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n725_call_proc_staged_β:
                        mov              r11, 280
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_727_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_727_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_727_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_727_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_727_0:
                        .quad            .Lcall_proc_staged_α_727_0_s
.Lcall_proc_staged_α_727_0_s:
                        .string          "main/0"
                        .size            n725_call_proc_staged_bx, .-n725_call_proc_staged_bx
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
                        .long            464
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
                        .long            592
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
                        .long            736
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
                        .long            208
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
                        .long            352
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
                        .long            352
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
                        .long            336
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
                        .long            352
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
                        .long            592
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
                        .long            672
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
                        .long            1008
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec21]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
