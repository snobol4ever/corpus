                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__interpret$2F1:
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rcx
                        mov              qword ptr [rsp + 512], rdx
                        mov              qword ptr [rsp + 520], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 488], r13
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 464], r12
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 464
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
interpret$2F1_α_body:
                        .type            n0_var_ref_bx, @function
n0_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:           mov              r11, 1
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n1_var_ref_α
                        .size            n0_var_ref_bx, .-n0_var_ref_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n2_call_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_call_bx, @function
n2_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              mov              r11, 3
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
                        cmp              al, 104;                             je    interpret$2F1_step
                                                                              jmp   n3_var_ref_α
n2_call_β:              mov              r11, 3;                              jmp   interpret$2F1_step
                        .size            n2_call_bx, .-n2_call_bx
                        .type            n3_var_ref_bx, @function
n3_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n4_var_ref_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_var_ref_bx, @function
n4_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n5_call_proc_staged_α
                        .size            n4_var_ref_bx, .-n4_var_ref_bx
                        .type            n5_call_proc_staged_bx, @function
n5_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_proc_staged_α:  mov              r11, 6
                        mov              qword ptr [rbp + 256], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_23_200
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_23_201
.Lcall_proc_staged_α_23_200:
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
.Lcall_proc_staged_α_23_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_23_202
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_23_203
.Lcall_proc_staged_α_23_202:
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
.Lcall_proc_staged_α_23_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_23_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_23_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_23_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_23_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_23_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_23_3:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_23_21
                        add              rsp, 32
.Lcall_proc_staged_α_23_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_23_2
.Lcall_proc_staged_α_23_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 256], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_23_2
.Lcall_proc_staged_α_23_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_23_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   interpret$2F1_step
.Lcall_proc_staged_α_23_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_23_29
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
.Lcall_proc_staged_α_23_29:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    interpret$2F1_step
                                                                              jmp   n6_disjunction_α
n5_call_proc_staged_β:  mov              r11, 6
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_23_22
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_23_22
                        mov              rcx, qword ptr [rbp + 264]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_23_22:
                                                                              jmp   interpret$2F1_step
.Lcall_proc_staged_α_23_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    interpret$2F1_step
                                                                              jmp   n6_disjunction_α
.Lcall_proc_staged_α_23_0:
                        .quad            .Lcall_proc_staged_α_23_0_s
.Lcall_proc_staged_α_23_0_s:
                        .string          "interpret/2"
                        .size            n5_call_proc_staged_bx, .-n5_call_proc_staged_bx
                        .type            n6_disjunction_bx, @function
n6_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:       mov              r11, 7
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                        mov              qword ptr [rbp + 56], r12
                        lea              rdi, [rbp + 464]
                        mov              rsi, rbp
                        call             rt_pl_disj_open@PLT;                 jmp   n8_var_ref_α
.Ldisjunction_γ_6_as:   mov              r11, 7
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_25_0
                                                                              jmp   interpret$2F1_ret0
.Ldisjunction_α_25_0:   cmp              eax, 1;                              jne   .Ldisjunction_α_25_1
                                                                              jmp   interpret$2F1_ret0
.Ldisjunction_α_25_1:                                                         jmp   interpret$2F1_ret0
n6_disjunction_β:       mov              r11, 7
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0;                              je    n5_call_proc_staged_β
                                                                              jmp   .Ldisjunction_ω_6_af
.Ldisjunction_γ_6_af:   mov              r11, 7
.Ldisjunction_ω_6_af:   mov              r11, 7
                        mov              rdi, qword ptr [rbp + 56]
                        call             rt_pl_tr_unwind@PLT
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1;                              je    n7_goto_α
                                                                              jmp   n5_call_proc_staged_β
                        .size            n6_disjunction_bx, .-n6_disjunction_bx
                        .type            n7_goto_bx, @function
n7_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_goto_α:              mov              r11, 8;                              jmp   .Ldisjunction_γ_6_as
n7_goto_β:              mov              r11, 8;                              jmp   .Ldisjunction_ω_6_af
                        .size            n7_goto_bx, .-n7_goto_bx
                        .type            n8_var_ref_bx, @function
n8_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n9_call_α
n8_var_ref_β:           mov              r11, 9;                              jmp   .Ldisjunction_ω_6_af
                        .size            n8_var_ref_bx, .-n8_var_ref_bx
                        .type            n9_call_bx, @function
n9_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_call_α:              mov              r11, 10
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dop_pl_nonvar@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_6_af
                                                                              jmp   n10_cut_α
n9_call_β:              mov              r11, 10;                             jmp   .Ldisjunction_ω_6_af
                        .size            n9_call_bx, .-n9_call_bx
                        .type            n10_cut_bx, @function
n10_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_cut_α:              mov              r11, 11
                        mov              qword ptr [rbp + 472], 0
                        mov              qword ptr [rbp + 480], 0
                        lea              rdi, [rbp + 464]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n11_var_ref_α
                        .size            n10_cut_bx, .-n10_cut_bx
                        .type            n11_var_ref_bx, @function
n11_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:          mov              r11, 12
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n12_call_proc_staged_α
                        .size            n11_var_ref_bx, .-n11_var_ref_bx
                        .type            n12_call_proc_staged_bx, @function
n12_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_call_proc_staged_α: mov              r11, 13
                        mov              qword ptr [rbp + 96], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_35_200
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_35_201
.Lcall_proc_staged_α_35_200:
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
.Lcall_proc_staged_α_35_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_35_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_35_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_35_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_35_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_35_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_35_3:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_35_21
                        add              rsp, 32
.Lcall_proc_staged_α_35_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_35_2
.Lcall_proc_staged_α_35_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 96], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_35_2
.Lcall_proc_staged_α_35_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_35_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   interpret$2F1_ω
.Lcall_proc_staged_α_35_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_35_29
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
.Lcall_proc_staged_α_35_29:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    interpret$2F1_ω
                                                                              jmp   .Ldisjunction_γ_6_as
n12_call_proc_staged_β: mov              r11, 13
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_35_22
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_35_22
                        mov              rcx, qword ptr [rbp + 104]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_35_22:
                                                                              jmp   interpret$2F1_ω
.Lcall_proc_staged_α_35_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    interpret$2F1_ω
                                                                              jmp   .Ldisjunction_γ_6_as
.Lcall_proc_staged_α_35_0:
                        .quad            .Lcall_proc_staged_α_35_0_s
.Lcall_proc_staged_α_35_0_s:
                        .string          "interpret/1"
                        .size            n12_call_proc_staged_bx, .-n12_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F1_ret0:
                        lea              rax, [rip + n6_disjunction_β]
                        mov              qword ptr [rbp + 480], rax
                                                                              jmp   interpret$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F1_step:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 480], 0
                        mov              qword ptr [rbp + 432], 0
                        mov              qword ptr [rbp + 440], 0
                        mov              qword ptr [rbp + 416], 0
                        mov              qword ptr [rbp + 424], 0
                        mov              rax, qword ptr [rbp + 472]
                        test             rax, rax
                                                                              je    interpret$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F1_β:
                        test             r15, r15
                                                                              jne   interpret$2F1_ω
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 480], 0
                        test             rax, rax
                                                                              jne   interpret$2F1_βres
                                                                              jmp   interpret$2F1_step
interpret$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 504]
                        mov              rax, qword ptr [rbp + 488]
                        cmp              r13, rax;                            je    interpret$2F1_altdet
                        lea              rdx, [rip + interpret$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 520];          jmp   rcx
interpret$2F1_altdet:   xor              eax, eax
                        lea              rsp, [rbp + 528]
                        mov              rbp, qword ptr [rbp + 520];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F1_ω:
                        mov              rcx, qword ptr [rbp + 512]
                        mov              r13, qword ptr [rbp + 488]
                        lea              rsp, [rbp + 528]
                        mov              rbp, qword ptr [rbp + 520];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__interpret$2F2:
                        sub              rsp, 4080
                        mov              qword ptr [rsp + 4056], rcx
                        mov              qword ptr [rsp + 4064], rdx
                        mov              qword ptr [rsp + 4072], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 4080]
                        mov              qword ptr [rsp + 4048], rax
                        mov              qword ptr [rsp + 4040], r13
                        mov              qword ptr [rsp + 4032], 0
                        mov              qword ptr [rsp + 4024], 0
                        mov              qword ptr [rsp + 4016], r12
                        lea              rax, [rip + interpret$2F2_alt1]
                        mov              qword ptr [rsp + 4024], rax
                        lea              rdi, [rsp + 4016]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 3920
                        mov              edx, 4016
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
interpret$2F2_α_body:
                        .type            n36_var_ref_bx, @function
n36_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n37_var_ref_α
                        .size            n36_var_ref_bx, .-n36_var_ref_bx
                        .type            n37_var_ref_bx, @function
n37_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3920]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n38_call_α
                        .size            n37_var_ref_bx, .-n37_var_ref_bx
                        .type            n38_call_bx, @function
n38_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:             mov              r11, 16
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
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n39_var_ref_α
n38_call_β:             mov              r11, 16;                             jmp   interpret$2F2_step
                        .size            n38_call_bx, .-n38_call_bx
                        .type            n39_var_ref_bx, @function
n39_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n40_var_ref_α
                        .size            n39_var_ref_bx, .-n39_var_ref_bx
                        .type            n40_var_ref_bx, @function
n40_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3936]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n41_call_α
                        .size            n40_var_ref_bx, .-n40_var_ref_bx
                        .type            n41_call_bx, @function
n41_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_call_α:             mov              r11, 19
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
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n42_var_ref_α
n41_call_β:             mov              r11, 19;                             jmp   interpret$2F2_step
                        .size            n41_call_bx, .-n41_call_bx
                        .type            n42_var_ref_bx, @function
n42_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:          mov              r11, 20
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3920]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n43_call_α
                        .size            n42_var_ref_bx, .-n42_var_ref_bx
                        .type            n43_call_bx, @function
n43_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_call_α:             mov              r11, 21
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dop_pl_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n44_cut_α
n43_call_β:             mov              r11, 21;                             jmp   interpret$2F2_step
                        .size            n43_call_bx, .-n43_call_bx
                        .type            n44_cut_bx, @function
n44_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_cut_α:              mov              r11, 22
                        mov              qword ptr [rbp + 4024], 0
                        mov              qword ptr [rbp + 4032], 0
                        lea              rdi, [rbp + 4016]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   interpret$2F2_ω
                        .size            n44_cut_bx, .-n44_cut_bx
                        .type            n45_var_ref_bx, @function
n45_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n46_lit_string_α
                        .size            n45_var_ref_bx, .-n45_var_ref_bx
                        .type            n46_lit_string_bx, @function
n46_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rbp + 1184], 2            # result
                        mov              dword ptr [rbp + 1188], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_177_0]
                        mov              qword ptr [rbp + 1192], rax;         jmp   n47_var_ref_α
.Llit_string_α_177_0:   .quad            .Llit_string_α_177_0_s
.Llit_string_α_177_0_s: .string          ","
                        .size            n46_lit_string_bx, .-n46_lit_string_bx
                        .type            n47_var_ref_bx, @function
n47_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3936]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n48_var_ref_α
                        .size            n47_var_ref_bx, .-n47_var_ref_bx
                        .type            n48_var_ref_bx, @function
n48_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3984]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n49_call_α
                        .size            n48_var_ref_bx, .-n48_var_ref_bx
                        .type            n49_call_bx, @function
n49_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_call_α:             mov              r11, 27
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1080]
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
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n50_call_α
n49_call_β:             mov              r11, 27;                             jmp   interpret$2F2_step
                        .size            n49_call_bx, .-n49_call_bx
                        .type            n50_call_bx, @function
n50_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_call_α:             mov              r11, 28
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
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n51_var_ref_α
n50_call_β:             mov              r11, 28;                             jmp   interpret$2F2_step
                        .size            n50_call_bx, .-n50_call_bx
                        .type            n51_var_ref_bx, @function
n51_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n52_var_ref_α
                        .size            n51_var_ref_bx, .-n51_var_ref_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3952]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n53_call_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_call_bx, @function
n53_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_call_α:             mov              r11, 31
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
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n54_cut_α
n53_call_β:             mov              r11, 31;                             jmp   interpret$2F2_step
                        .size            n53_call_bx, .-n53_call_bx
                        .type            n54_cut_bx, @function
n54_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_cut_α:              mov              r11, 32
                        mov              qword ptr [rbp + 4024], 0
                        mov              qword ptr [rbp + 4032], 0
                        lea              rdi, [rbp + 4016]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n55_var_ref_α
                        .size            n54_cut_bx, .-n54_cut_bx
                        .type            n55_var_ref_bx, @function
n55_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3936]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n56_var_ref_α
                        .size            n55_var_ref_bx, .-n55_var_ref_bx
                        .type            n56_var_ref_bx, @function
n56_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3968]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n57_call_proc_staged_α
                        .size            n56_var_ref_bx, .-n56_var_ref_bx
                        .type            n57_call_proc_staged_bx, @function
n57_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_call_proc_staged_α: mov              r11, 35
                        mov              qword ptr [rbp + 832], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_196_200
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_196_201
.Lcall_proc_staged_α_196_200:
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
.Lcall_proc_staged_α_196_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_196_202
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_196_203
.Lcall_proc_staged_α_196_202:
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
.Lcall_proc_staged_α_196_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_196_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_196_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_196_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_196_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_196_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_196_3:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_196_21
                        add              rsp, 32
.Lcall_proc_staged_α_196_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_196_2
.Lcall_proc_staged_α_196_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 832], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_196_2
.Lcall_proc_staged_α_196_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_196_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   interpret$2F2_ω
.Lcall_proc_staged_α_196_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_196_29
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
.Lcall_proc_staged_α_196_29:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    interpret$2F2_ω
                                                                              jmp   n58_bound_α
n57_call_proc_staged_β: mov              r11, 35
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_196_22
                        mov              rax, qword ptr [rbp + 832]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_196_22
                        mov              rcx, qword ptr [rbp + 840]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_196_22:
                                                                              jmp   interpret$2F2_ω
.Lcall_proc_staged_α_196_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    interpret$2F2_ω
                                                                              jmp   n58_bound_α
.Lcall_proc_staged_α_196_0:
                        .quad            .Lcall_proc_staged_α_196_0_s
.Lcall_proc_staged_α_196_0_s:
                        .string          "interpret/2"
                        .size            n57_call_proc_staged_bx, .-n57_call_proc_staged_bx
                        .type            n58_bound_bx, @function
n58_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_bound_α:            mov              r11, 36
                        mov              qword ptr [rbp + 336], r12
                        lea              rdi, [rbp + 4016]
                        mov              rsi, rbp
                        call             rt_pl_disj_open@PLT;                 jmp   n59_var_ref_α
                        .size            n58_bound_bx, .-n58_bound_bx
                        .type            n59_var_ref_bx, @function
n59_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3968]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n60_call_α
                        .size            n59_var_ref_bx, .-n59_var_ref_bx
                        .type            n60_call_bx, @function
n60_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_call_α:             mov              r11, 38
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 736]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dop_pl_nonvar@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              al, 104;                             je    n68_unmark_α
                                                                              jmp   n61_var_ref_α
n60_call_β:             mov              r11, 38;                             jmp   n68_unmark_α
                        .size            n60_call_bx, .-n60_call_bx
                        .type            n61_var_ref_bx, @function
n61_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3952]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n62_lit_string_α
                        .size            n61_var_ref_bx, .-n61_var_ref_bx
                        .type            n62_lit_string_bx, @function
n62_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              r11, 40
                        mov              qword ptr [rbp + 592], 2             # result
                        mov              dword ptr [rbp + 596], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_204_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n63_var_ref_α
.Llit_string_α_204_0:   .quad            .Llit_string_α_204_0_s
.Llit_string_α_204_0_s: .string          ","
                        .size            n62_lit_string_bx, .-n62_lit_string_bx
                        .type            n63_var_ref_bx, @function
n63_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3968]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n64_var_ref_α
                        .size            n63_var_ref_bx, .-n63_var_ref_bx
                        .type            n64_var_ref_bx, @function
n64_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3984]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n65_call_α
                        .size            n64_var_ref_bx, .-n64_var_ref_bx
                        .type            n65_call_bx, @function
n65_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_call_α:             mov              r11, 43
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n73_unmark_α
                                                                              jmp   n66_call_α
n65_call_β:             mov              r11, 43;                             jmp   n73_unmark_α
                        .size            n65_call_bx, .-n65_call_bx
                        .type            n66_call_bx, @function
n66_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:             mov              r11, 44
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 520]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              al, 104;                             je    n73_unmark_α
                                                                              jmp   n67_move_label_α
n66_call_β:             mov              r11, 44;                             jmp   n73_unmark_α
                        .size            n66_call_bx, .-n66_call_bx
                        .type            n67_move_label_bx, @function
n67_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_move_label_α:       mov              r11, 45
                        lea              rax, [rip + n74_indirect_goto_α]
                        mov              qword ptr [rbp + 320], rax;          jmp   interpret$2F2_γ
                        .size            n67_move_label_bx, .-n67_move_label_bx
                        .type            n68_unmark_bx, @function
n68_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_unmark_α:           mov              r11, 46
                        mov              rdi, qword ptr [rbp + 336]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   interpret$2F2_step
                                                                              jmp   n69_var_ref_α
                        .size            n68_unmark_bx, .-n68_unmark_bx
                        .type            n69_var_ref_bx, @function
n69_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3984]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n70_var_ref_α
                        .size            n69_var_ref_bx, .-n69_var_ref_bx
                        .type            n70_var_ref_bx, @function
n70_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3952]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n71_call_proc_staged_α
                        .size            n70_var_ref_bx, .-n70_var_ref_bx
                        .type            n71_call_proc_staged_bx, @function
n71_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_call_proc_staged_α: mov              r11, 49
                        mov              qword ptr [rbp + 656], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_220_200
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_220_201
.Lcall_proc_staged_α_220_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_220_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_220_202
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_220_203
.Lcall_proc_staged_α_220_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_220_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_220_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_220_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_220_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_220_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_220_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_220_3:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_220_21
                        add              rsp, 32
.Lcall_proc_staged_α_220_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_220_2
.Lcall_proc_staged_α_220_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 656], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_220_2
.Lcall_proc_staged_α_220_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_220_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n73_unmark_α
.Lcall_proc_staged_α_220_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_220_29
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
.Lcall_proc_staged_α_220_29:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    n73_unmark_α
                                                                              jmp   n72_move_label_α
n71_call_proc_staged_β: mov              r11, 49
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_220_22
                        mov              rax, qword ptr [rbp + 656]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_220_22
                        mov              rcx, qword ptr [rbp + 664]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_220_22:
                                                                              jmp   n73_unmark_α
.Lcall_proc_staged_α_220_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    n73_unmark_α
                                                                              jmp   n72_move_label_α
.Lcall_proc_staged_α_220_0:
                        .quad            .Lcall_proc_staged_α_220_0_s
.Lcall_proc_staged_α_220_0_s:
                        .string          "interpret/2"
                        .size            n71_call_proc_staged_bx, .-n71_call_proc_staged_bx
                        .type            n72_move_label_bx, @function
n72_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_move_label_α:       mov              r11, 50
                        lea              rax, [rip + n71_call_proc_staged_β]
                        mov              qword ptr [rbp + 320], rax;          jmp   interpret$2F2_γ
                        .size            n72_move_label_bx, .-n72_move_label_bx
                        .type            n73_unmark_bx, @function
n73_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_unmark_α:           mov              r11, 51
                        mov              rdi, qword ptr [rbp + 336]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   interpret$2F2_step
                                                                              jmp   n74_indirect_goto_α
                        .size            n73_unmark_bx, .-n73_unmark_bx
                        .type            n74_indirect_goto_bx, @function
n74_indirect_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_indirect_goto_α:    mov              r11, 52;                             jmp   n57_call_proc_staged_β
n74_indirect_goto_β:    mov              r11, 52;                             jmp   qword ptr [rbp + 320]
                        .size            n74_indirect_goto_bx, .-n74_indirect_goto_bx
                        .type            n75_var_ref_bx, @function
n75_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx;         jmp   n76_lit_string_α
                        .size            n75_var_ref_bx, .-n75_var_ref_bx
                        .type            n76_lit_string_bx, @function
n76_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              r11, 54
                        mov              qword ptr [rbp + 1632], 2            # result
                        mov              dword ptr [rbp + 1636], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_229_0]
                        mov              qword ptr [rbp + 1640], rax;         jmp   n77_var_ref_α
.Llit_string_α_229_0:   .quad            .Llit_string_α_229_0_s
.Llit_string_α_229_0_s: .string          ";"
                        .size            n76_lit_string_bx, .-n76_lit_string_bx
                        .type            n77_var_ref_bx, @function
n77_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3936]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n78_var_ref_α
                        .size            n77_var_ref_bx, .-n77_var_ref_bx
                        .type            n78_var_ref_bx, @function
n78_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3984]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx;         jmp   n79_call_α
                        .size            n78_var_ref_bx, .-n78_var_ref_bx
                        .type            n79_call_bx, @function
n79_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_call_α:             mov              r11, 57
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1528]
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
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n80_call_α
n79_call_β:             mov              r11, 57;                             jmp   interpret$2F2_step
                        .size            n79_call_bx, .-n79_call_bx
                        .type            n80_call_bx, @function
n80_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_call_α:             mov              r11, 58
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1464], rax
                        lea              rdi, [rbp + 1456]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n81_var_ref_α
n80_call_β:             mov              r11, 58;                             jmp   interpret$2F2_step
                        .size            n80_call_bx, .-n80_call_bx
                        .type            n81_var_ref_bx, @function
n81_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx;         jmp   n82_var_ref_α
                        .size            n81_var_ref_bx, .-n81_var_ref_bx
                        .type            n82_var_ref_bx, @function
n82_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3952]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n83_call_α
                        .size            n82_var_ref_bx, .-n82_var_ref_bx
                        .type            n83_call_bx, @function
n83_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:             mov              r11, 61
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1360]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n84_cut_α
n83_call_β:             mov              r11, 61;                             jmp   interpret$2F2_step
                        .size            n83_call_bx, .-n83_call_bx
                        .type            n84_cut_bx, @function
n84_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_cut_α:              mov              r11, 62
                        mov              qword ptr [rbp + 4024], 0
                        mov              qword ptr [rbp + 4032], 0
                        lea              rdi, [rbp + 4016]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n85_var_ref_α
                        .size            n84_cut_bx, .-n84_cut_bx
                        .type            n85_var_ref_bx, @function
n85_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:          mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3936]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx;         jmp   n86_var_ref_α
                        .size            n85_var_ref_bx, .-n85_var_ref_bx
                        .type            n86_var_ref_bx, @function
n86_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3984]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx;         jmp   n87_var_ref_α
                        .size            n86_var_ref_bx, .-n86_var_ref_bx
                        .type            n87_var_ref_bx, @function
n87_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:          mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3952]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n88_call_proc_staged_α
                        .size            n87_var_ref_bx, .-n87_var_ref_bx
                        .type            n88_call_proc_staged_bx, @function
n88_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_call_proc_staged_α: mov              r11, 66
                        mov              qword ptr [rbp + 1264], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_250_200
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_250_201
.Lcall_proc_staged_α_250_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_250_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_250_202
                        mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_250_203
.Lcall_proc_staged_α_250_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_250_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_250_204
                        mov              rax, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_250_205
.Lcall_proc_staged_α_250_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_250_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_250_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 6
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_250_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 4080]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_250_99
                        mov              r10, qword ptr [rbp + 4040]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_250_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_250_99
                        mov              rcx, qword ptr [rbp + 4056]
                        mov              rdx, qword ptr [rbp + 4064]
                        lea              rsp, [rbp + 4080]
                        mov              rbp, qword ptr [rbp + 4072];         jmp   rax
.Lcall_proc_staged_α_250_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_250_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_250_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_250_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_250_3:
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_250_21
                        add              rsp, 32
.Lcall_proc_staged_α_250_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_250_2
.Lcall_proc_staged_α_250_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1264], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_250_2
.Lcall_proc_staged_α_250_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_250_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   interpret$2F2_ω
.Lcall_proc_staged_α_250_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_250_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
.Lcall_proc_staged_α_250_29:
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              al, 104;                             je    interpret$2F2_ω
                                                                              jmp   interpret$2F2_ret2
n88_call_proc_staged_β: mov              r11, 66
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_250_22
                        mov              rax, qword ptr [rbp + 1264]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_250_22
                        mov              rcx, qword ptr [rbp + 1272]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_250_22:
                                                                              jmp   interpret$2F2_ω
.Lcall_proc_staged_α_250_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              al, 104;                             je    interpret$2F2_ω
                                                                              jmp   interpret$2F2_ret2
.Lcall_proc_staged_α_250_0:
                        .quad            .Lcall_proc_staged_α_250_0_s
.Lcall_proc_staged_α_250_0_s:
                        .string          "interpret_disjunction/3"
                        .size            n88_call_proc_staged_bx, .-n88_call_proc_staged_bx
                        .type            n89_var_ref_bx, @function
n89_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx;         jmp   n90_lit_string_α
                        .size            n89_var_ref_bx, .-n89_var_ref_bx
                        .type            n90_lit_string_bx, @function
n90_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       mov              r11, 68
                        mov              qword ptr [rbp + 2192], 2            # result
                        mov              dword ptr [rbp + 2196], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_253_0]
                        mov              qword ptr [rbp + 2200], rax;         jmp   n91_var_ref_α
.Llit_string_α_253_0:   .quad            .Llit_string_α_253_0_s
.Llit_string_α_253_0_s: .string          "->"
                        .size            n90_lit_string_bx, .-n90_lit_string_bx
                        .type            n91_var_ref_bx, @function
n91_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3936]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx;         jmp   n92_var_ref_α
                        .size            n91_var_ref_bx, .-n91_var_ref_bx
                        .type            n92_var_ref_bx, @function
n92_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3984]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx;         jmp   n93_call_α
                        .size            n92_var_ref_bx, .-n92_var_ref_bx
                        .type            n93_call_bx, @function
n93_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_call_α:             mov              r11, 71
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2088]
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
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n94_call_α
n93_call_β:             mov              r11, 71;                             jmp   interpret$2F2_step
                        .size            n93_call_bx, .-n93_call_bx
                        .type            n94_call_bx, @function
n94_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_call_α:             mov              r11, 72
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2024], rax
                        lea              rdi, [rbp + 2016]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n95_var_ref_α
n94_call_β:             mov              r11, 72;                             jmp   interpret$2F2_step
                        .size            n94_call_bx, .-n94_call_bx
                        .type            n95_var_ref_bx, @function
n95_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:          mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx;         jmp   n96_var_ref_α
                        .size            n95_var_ref_bx, .-n95_var_ref_bx
                        .type            n96_var_ref_bx, @function
n96_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3952]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx;         jmp   n97_call_α
                        .size            n96_var_ref_bx, .-n96_var_ref_bx
                        .type            n97_call_bx, @function
n97_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_call_α:             mov              r11, 75
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1920]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n98_cut_α
n97_call_β:             mov              r11, 75;                             jmp   interpret$2F2_step
                        .size            n97_call_bx, .-n97_call_bx
                        .type            n98_cut_bx, @function
n98_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_cut_α:              mov              r11, 76
                        mov              qword ptr [rbp + 4024], 0
                        mov              qword ptr [rbp + 4032], 0
                        lea              rdi, [rbp + 4016]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n99_lit_string_α
                        .size            n98_cut_bx, .-n98_cut_bx
                        .type            n99_lit_string_bx, @function
n99_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              r11, 77
                        mov              qword ptr [rbp + 1856], 2            # result
                        mov              dword ptr [rbp + 1860], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_267_0]
                        mov              qword ptr [rbp + 1864], rax;         jmp   n100_var_ref_α
.Llit_string_α_267_0:   .quad            .Llit_string_α_267_0_s
.Llit_string_α_267_0_s: .string          "->"
                        .size            n99_lit_string_bx, .-n99_lit_string_bx
                        .type            n100_var_ref_bx, @function
n100_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3936]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx;         jmp   n101_var_ref_α
                        .size            n100_var_ref_bx, .-n100_var_ref_bx
                        .type            n101_var_ref_bx, @function
n101_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:         mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3984]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n102_call_α
                        .size            n101_var_ref_bx, .-n101_var_ref_bx
                        .type            n102_call_bx, @function
n102_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_call_α:            mov              r11, 80
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1752]
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
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n103_lit_string_α
n102_call_β:            mov              r11, 80;                             jmp   interpret$2F2_step
                        .size            n102_call_bx, .-n102_call_bx
                        .type            n103_lit_string_bx, @function
n103_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:      mov              r11, 81
                        mov              qword ptr [rbp + 1872], 2            # result
                        mov              dword ptr [rbp + 1876], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_273_0]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n104_var_ref_α
.Llit_string_α_273_0:   .quad            .Llit_string_α_273_0_s
.Llit_string_α_273_0_s: .string          "fail"
                        .size            n103_lit_string_bx, .-n103_lit_string_bx
                        .type            n104_var_ref_bx, @function
n104_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3952]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx;         jmp   n105_call_proc_staged_α
                        .size            n104_var_ref_bx, .-n104_var_ref_bx
                        .type            n105_call_proc_staged_bx, @function
n105_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_call_proc_staged_α:
                        mov              r11, 83
                        mov              qword ptr [rbp + 1712], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_277_200
                        mov              rax, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_277_201
.Lcall_proc_staged_α_277_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_277_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_277_202
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_277_203
.Lcall_proc_staged_α_277_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_277_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_277_204
                        mov              rax, qword ptr [rbp + 1888]
                        mov              rdx, qword ptr [rbp + 1896]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_277_205
.Lcall_proc_staged_α_277_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1888]
                        mov              rdx, qword ptr [rbp + 1896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_277_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_277_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 6
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_277_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 4080]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_277_99
                        mov              r10, qword ptr [rbp + 4040]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_277_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_277_99
                        mov              rcx, qword ptr [rbp + 4056]
                        mov              rdx, qword ptr [rbp + 4064]
                        lea              rsp, [rbp + 4080]
                        mov              rbp, qword ptr [rbp + 4072];         jmp   rax
.Lcall_proc_staged_α_277_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_277_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_277_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_277_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_277_3:
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_277_21
                        add              rsp, 32
.Lcall_proc_staged_α_277_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_277_2
.Lcall_proc_staged_α_277_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1712], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_277_2
.Lcall_proc_staged_α_277_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_277_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   interpret$2F2_ω
.Lcall_proc_staged_α_277_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_277_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
.Lcall_proc_staged_α_277_29:
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              al, 104;                             je    interpret$2F2_ω
                                                                              jmp   interpret$2F2_ret3
n105_call_proc_staged_β:
                        mov              r11, 83
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_277_22
                        mov              rax, qword ptr [rbp + 1712]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_277_22
                        mov              rcx, qword ptr [rbp + 1720]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_277_22:
                                                                              jmp   interpret$2F2_ω
.Lcall_proc_staged_α_277_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              al, 104;                             je    interpret$2F2_ω
                                                                              jmp   interpret$2F2_ret3
.Lcall_proc_staged_α_277_0:
                        .quad            .Lcall_proc_staged_α_277_0_s
.Lcall_proc_staged_α_277_0_s:
                        .string          "interpret_disjunction/3"
                        .size            n105_call_proc_staged_bx, .-n105_call_proc_staged_bx
                        .type            n106_var_ref_bx, @function
n106_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx;         jmp   n107_lit_string_α
                        .size            n106_var_ref_bx, .-n106_var_ref_bx
                        .type            n107_lit_string_bx, @function
n107_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      mov              r11, 85
                        mov              qword ptr [rbp + 2720], 2            # result
                        mov              dword ptr [rbp + 2724], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_280_0]
                        mov              qword ptr [rbp + 2728], rax;         jmp   n108_var_ref_α
.Llit_string_α_280_0:   .quad            .Llit_string_α_280_0_s
.Llit_string_α_280_0_s: .string          "\\+"
                        .size            n107_lit_string_bx, .-n107_lit_string_bx
                        .type            n108_var_ref_bx, @function
n108_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3936]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx;         jmp   n109_call_α
                        .size            n108_var_ref_bx, .-n108_var_ref_bx
                        .type            n109_call_bx, @function
n109_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_call_α:            mov              r11, 87
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2648]
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n110_call_α
n109_call_β:            mov              r11, 87;                             jmp   interpret$2F2_step
                        .size            n109_call_bx, .-n109_call_bx
                        .type            n110_call_bx, @function
n110_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_call_α:            mov              r11, 88
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2664]
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
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n111_var_ref_α
n110_call_β:            mov              r11, 88;                             jmp   interpret$2F2_step
                        .size            n110_call_bx, .-n110_call_bx
                        .type            n111_var_ref_bx, @function
n111_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx;         jmp   n112_var_ref_α
                        .size            n111_var_ref_bx, .-n111_var_ref_bx
                        .type            n112_var_ref_bx, @function
n112_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:         mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3952]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n113_call_α
                        .size            n112_var_ref_bx, .-n112_var_ref_bx
                        .type            n113_call_bx, @function
n113_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_call_α:            mov              r11, 91
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
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n114_cut_α
n113_call_β:            mov              r11, 91;                             jmp   interpret$2F2_step
                        .size            n113_call_bx, .-n113_call_bx
                        .type            n114_cut_bx, @function
n114_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_cut_α:             mov              r11, 92
                        mov              qword ptr [rbp + 4024], 0
                        mov              qword ptr [rbp + 4032], 0
                        lea              rdi, [rbp + 4016]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n115_lit_string_α
                        .size            n114_cut_bx, .-n114_cut_bx
                        .type            n115_lit_string_bx, @function
n115_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:      mov              r11, 93
                        mov              qword ptr [rbp + 2416], 2            # result
                        mov              dword ptr [rbp + 2420], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_292_0]
                        mov              qword ptr [rbp + 2424], rax;         jmp   n116_var_ref_α
.Llit_string_α_292_0:   .quad            .Llit_string_α_292_0_s
.Llit_string_α_292_0_s: .string          "->"
                        .size            n115_lit_string_bx, .-n115_lit_string_bx
                        .type            n116_var_ref_bx, @function
n116_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              r11, 94
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3936]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n117_lit_string_α
                        .size            n116_var_ref_bx, .-n116_var_ref_bx
                        .type            n117_lit_string_bx, @function
n117_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:      mov              r11, 95
                        mov              qword ptr [rbp + 2320], 2            # result
                        mov              dword ptr [rbp + 2324], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_295_0]
                        mov              qword ptr [rbp + 2328], rax;         jmp   n118_call_α
.Llit_string_α_295_0:   .quad            .Llit_string_α_295_0_s
.Llit_string_α_295_0_s: .string          "fail"
                        .size            n117_lit_string_bx, .-n117_lit_string_bx
                        .type            n118_call_bx, @function
n118_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_call_α:            mov              r11, 96
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2392], rax
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2312]
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
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n119_lit_string_α
n118_call_β:            mov              r11, 96;                             jmp   interpret$2F2_step
                        .size            n118_call_bx, .-n118_call_bx
                        .type            n119_lit_string_bx, @function
n119_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:      mov              r11, 97
                        mov              qword ptr [rbp + 2432], 2            # result
                        mov              dword ptr [rbp + 2436], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_297_0]
                        mov              qword ptr [rbp + 2440], rax;         jmp   n120_var_ref_α
.Llit_string_α_297_0:   .quad            .Llit_string_α_297_0_s
.Llit_string_α_297_0_s: .string          "true"
                        .size            n119_lit_string_bx, .-n119_lit_string_bx
                        .type            n120_var_ref_bx, @function
n120_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3952]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx;         jmp   n121_call_proc_staged_α
                        .size            n120_var_ref_bx, .-n120_var_ref_bx
                        .type            n121_call_proc_staged_bx, @function
n121_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_call_proc_staged_α:
                        mov              r11, 99
                        mov              qword ptr [rbp + 2272], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_301_200
                        mov              rax, qword ptr [rbp + 2336]
                        mov              rdx, qword ptr [rbp + 2344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_301_201
.Lcall_proc_staged_α_301_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2336]
                        mov              rdx, qword ptr [rbp + 2344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_301_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_301_202
                        mov              rax, qword ptr [rbp + 2432]
                        mov              rdx, qword ptr [rbp + 2440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_301_203
.Lcall_proc_staged_α_301_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2432]
                        mov              rdx, qword ptr [rbp + 2440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_301_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_301_204
                        mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_301_205
.Lcall_proc_staged_α_301_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_301_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_301_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 6
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_301_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 4080]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_301_99
                        mov              r10, qword ptr [rbp + 4040]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_301_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_301_99
                        mov              rcx, qword ptr [rbp + 4056]
                        mov              rdx, qword ptr [rbp + 4064]
                        lea              rsp, [rbp + 4080]
                        mov              rbp, qword ptr [rbp + 4072];         jmp   rax
.Lcall_proc_staged_α_301_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_301_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_301_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_301_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_301_3:
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_301_21
                        add              rsp, 32
.Lcall_proc_staged_α_301_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_301_2
.Lcall_proc_staged_α_301_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2272], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_301_2
.Lcall_proc_staged_α_301_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_301_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   interpret$2F2_ω
.Lcall_proc_staged_α_301_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_301_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2208]
                        mov              rdx, qword ptr [rbp + 2216]
.Lcall_proc_staged_α_301_29:
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              al, 104;                             je    interpret$2F2_ω
                                                                              jmp   interpret$2F2_ret4
n121_call_proc_staged_β:
                        mov              r11, 99
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_301_22
                        mov              rax, qword ptr [rbp + 2272]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_301_22
                        mov              rcx, qword ptr [rbp + 2280]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_301_22:
                                                                              jmp   interpret$2F2_ω
.Lcall_proc_staged_α_301_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              al, 104;                             je    interpret$2F2_ω
                                                                              jmp   interpret$2F2_ret4
.Lcall_proc_staged_α_301_0:
                        .quad            .Lcall_proc_staged_α_301_0_s
.Lcall_proc_staged_α_301_0_s:
                        .string          "interpret_disjunction/3"
                        .size            n121_call_proc_staged_bx, .-n121_call_proc_staged_bx
                        .type            n122_var_ref_bx, @function
n122_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:         mov              r11, 100
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx;         jmp   n123_lit_string_α
                        .size            n122_var_ref_bx, .-n122_var_ref_bx
                        .type            n123_lit_string_bx, @function
n123_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:      mov              r11, 101
                        mov              qword ptr [rbp + 2912], 2            # result
                        mov              dword ptr [rbp + 2916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_304_0]
                        mov              qword ptr [rbp + 2920], rax;         jmp   n124_call_α
.Llit_string_α_304_0:   .quad            .Llit_string_α_304_0_s
.Llit_string_α_304_0_s: .string          "?"
                        .size            n123_lit_string_bx, .-n123_lit_string_bx
                        .type            n124_call_bx, @function
n124_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_call_α:            mov              r11, 102
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2856], rax
                        lea              rdi, [rbp + 2848]
                        mov              rsi, qword ptr [rip + .Lcall_α_305_2]
                                                                              jmp   .Lcall_α_305_3
.Lcall_α_305_2:         .quad            .Lcall_α_305_2_s
.Lcall_α_305_2_s:       .string          "?"
.Lcall_α_305_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n125_var_ref_α
n124_call_β:            mov              r11, 102;                            jmp   interpret$2F2_step
                        .size            n124_call_bx, .-n124_call_bx
                        .type            n125_var_ref_bx, @function
n125_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx;         jmp   n126_lit_string_α
                        .size            n125_var_ref_bx, .-n125_var_ref_bx
                        .type            n126_lit_string_bx, @function
n126_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      mov              r11, 104
                        mov              qword ptr [rbp + 2816], 2            # result
                        mov              dword ptr [rbp + 2820], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_308_0]
                        mov              qword ptr [rbp + 2824], rax;         jmp   n127_call_α
.Llit_string_α_308_0:   .quad            .Llit_string_α_308_0_s
.Llit_string_α_308_0_s: .string          "true"
                        .size            n126_lit_string_bx, .-n126_lit_string_bx
                        .type            n127_call_bx, @function
n127_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_call_α:            mov              r11, 105
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2760], rax
                        lea              rdi, [rbp + 2752]
                        mov              rsi, qword ptr [rip + .Lcall_α_309_2]
                                                                              jmp   .Lcall_α_309_3
.Lcall_α_309_2:         .quad            .Lcall_α_309_2_s
.Lcall_α_309_2_s:       .string          "true"
.Lcall_α_309_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n128_cut_α
n127_call_β:            mov              r11, 105;                            jmp   interpret$2F2_step
                        .size            n127_call_bx, .-n127_call_bx
                        .type            n128_cut_bx, @function
n128_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_cut_α:             mov              r11, 106
                        mov              qword ptr [rbp + 4024], 0
                        mov              qword ptr [rbp + 4032], 0
                        lea              rdi, [rbp + 4016]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   interpret$2F2_γ
                        .size            n128_cut_bx, .-n128_cut_bx
                        .type            n129_var_ref_bx, @function
n129_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx;         jmp   n130_var_ref_α
                        .size            n129_var_ref_bx, .-n129_var_ref_bx
                        .type            n130_var_ref_bx, @function
n130_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:         mov              r11, 108
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3920]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx;         jmp   n131_call_α
                        .size            n130_var_ref_bx, .-n130_var_ref_bx
                        .type            n131_call_bx, @function
n131_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_call_α:            mov              r11, 109
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3128], rax
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3112], rax
                        lea              rdi, [rbp + 3104]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n132_var_ref_α
n131_call_β:            mov              r11, 109;                            jmp   interpret$2F2_step
                        .size            n131_call_bx, .-n131_call_bx
                        .type            n132_var_ref_bx, @function
n132_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:         mov              r11, 110
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx;         jmp   n133_var_ref_α
                        .size            n132_var_ref_bx, .-n132_var_ref_bx
                        .type            n133_var_ref_bx, @function
n133_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3936]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx;         jmp   n134_call_α
                        .size            n133_var_ref_bx, .-n133_var_ref_bx
                        .type            n134_call_bx, @function
n134_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_call_α:            mov              r11, 112
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3032], rax
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3016], rax
                        lea              rdi, [rbp + 3008]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n135_var_ref_α
n134_call_β:            mov              r11, 112;                            jmp   interpret$2F2_step
                        .size            n134_call_bx, .-n134_call_bx
                        .type            n135_var_ref_bx, @function
n135_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:         mov              r11, 113
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3920]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx;         jmp   n136_call_α
                        .size            n135_var_ref_bx, .-n135_var_ref_bx
                        .type            n136_call_bx, @function
n136_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_call_α:            mov              r11, 114
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2952], rax
                        lea              rdi, [rbp + 2944]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dop_pl_number@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n137_cut_α
n136_call_β:            mov              r11, 114;                            jmp   interpret$2F2_step
                        .size            n136_call_bx, .-n136_call_bx
                        .type            n137_cut_bx, @function
n137_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_cut_α:             mov              r11, 115
                        mov              qword ptr [rbp + 4024], 0
                        mov              qword ptr [rbp + 4032], 0
                        lea              rdi, [rbp + 4016]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   interpret$2F2_ω
                        .size            n137_cut_bx, .-n137_cut_bx
                        .type            n138_var_ref_bx, @function
n138_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx;         jmp   n139_var_ref_α
                        .size            n138_var_ref_bx, .-n138_var_ref_bx
                        .type            n139_var_ref_bx, @function
n139_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3920]
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx;         jmp   n140_call_α
                        .size            n139_var_ref_bx, .-n139_var_ref_bx
                        .type            n140_call_bx, @function
n140_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_call_α:            mov              r11, 118
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3480], rax
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3464], rax
                        lea              rdi, [rbp + 3456]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n141_var_ref_α
n140_call_β:            mov              r11, 118;                            jmp   interpret$2F2_step
                        .size            n140_call_bx, .-n140_call_bx
                        .type            n141_var_ref_bx, @function
n141_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx;         jmp   n142_var_ref_α
                        .size            n141_var_ref_bx, .-n141_var_ref_bx
                        .type            n142_var_ref_bx, @function
n142_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3936]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx;         jmp   n143_call_α
                        .size            n142_var_ref_bx, .-n142_var_ref_bx
                        .type            n143_call_bx, @function
n143_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_call_α:            mov              r11, 121
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3384], rax
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3368], rax
                        lea              rdi, [rbp + 3360]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n144_var_ref_α
n143_call_β:            mov              r11, 121;                            jmp   interpret$2F2_step
                        .size            n143_call_bx, .-n143_call_bx
                        .type            n144_var_ref_bx, @function
n144_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3920]
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx;         jmp   n145_call_proc_staged_α
                        .size            n144_var_ref_bx, .-n144_var_ref_bx
                        .type            n145_call_proc_staged_bx, @function
n145_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_call_proc_staged_α:
                        mov              r11, 123
                        mov              qword ptr [rbp + 3296], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_340_200
                        mov              rax, qword ptr [rbp + 3328]
                        mov              rdx, qword ptr [rbp + 3336]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_340_201
.Lcall_proc_staged_α_340_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3328]
                        mov              rdx, qword ptr [rbp + 3336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_340_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_340_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_340_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_340_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_340_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_340_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_340_3:
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_340_21
                        add              rsp, 32
.Lcall_proc_staged_α_340_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_340_2
.Lcall_proc_staged_α_340_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3296], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_340_2
.Lcall_proc_staged_α_340_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_340_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   interpret$2F2_step
.Lcall_proc_staged_α_340_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_340_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3264]
                        mov              rdx, qword ptr [rbp + 3272]
.Lcall_proc_staged_α_340_29:
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n146_cut_α
n145_call_proc_staged_β:
                        mov              r11, 123
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_340_22
                        mov              rax, qword ptr [rbp + 3296]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_340_22
                        mov              rcx, qword ptr [rbp + 3304]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_340_22:
                                                                              jmp   interpret$2F2_step
.Lcall_proc_staged_α_340_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n146_cut_α
.Lcall_proc_staged_α_340_0:
                        .quad            .Lcall_proc_staged_α_340_0_s
.Lcall_proc_staged_α_340_0_s:
                        .string          "is_built_in/1"
                        .size            n145_call_proc_staged_bx, .-n145_call_proc_staged_bx
                        .type            n146_cut_bx, @function
n146_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_cut_α:             mov              r11, 124
                        mov              qword ptr [rbp + 4024], 0
                        mov              qword ptr [rbp + 4032], 0
                        lea              rdi, [rbp + 4016]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n147_var_ref_α
                        .size            n146_cut_bx, .-n146_cut_bx
                        .type            n147_var_ref_bx, @function
n147_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:         mov              r11, 125
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3920]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx;         jmp   n148_call_proc_staged_α
                        .size            n147_var_ref_bx, .-n147_var_ref_bx
                        .type            n148_call_proc_staged_bx, @function
n148_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_call_proc_staged_α:
                        mov              r11, 126
                        mov              qword ptr [rbp + 3216], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_346_200
                        mov              rax, qword ptr [rbp + 3248]
                        mov              rdx, qword ptr [rbp + 3256]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_346_201
.Lcall_proc_staged_α_346_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3248]
                        mov              rdx, qword ptr [rbp + 3256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_346_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_346_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_346_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 1
                        mov              rsi, rbp
                        lea              rdx, [rbp + 4080]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_346_99
                        mov              r10, qword ptr [rbp + 4040]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_346_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_346_99
                        mov              rcx, qword ptr [rbp + 4056]
                        mov              rdx, qword ptr [rbp + 4064]
                        lea              rsp, [rbp + 4080]
                        mov              rbp, qword ptr [rbp + 4072];         jmp   rax
.Lcall_proc_staged_α_346_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_346_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_346_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_346_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_346_3:
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_346_21
                        add              rsp, 32
.Lcall_proc_staged_α_346_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_346_2
.Lcall_proc_staged_α_346_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3216], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_346_2
.Lcall_proc_staged_α_346_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_346_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   interpret$2F2_ω
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
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3184]
                        mov              rdx, qword ptr [rbp + 3192]
.Lcall_proc_staged_α_346_29:
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                        cmp              al, 104;                             je    interpret$2F2_ω
                                                                              jmp   interpret$2F2_ret7
n148_call_proc_staged_β:
                        mov              r11, 126
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_346_22
                        mov              rax, qword ptr [rbp + 3216]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_346_22
                        mov              rcx, qword ptr [rbp + 3224]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_346_22:
                                                                              jmp   interpret$2F2_ω
.Lcall_proc_staged_α_346_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                        cmp              al, 104;                             je    interpret$2F2_ω
                                                                              jmp   interpret$2F2_ret7
.Lcall_proc_staged_α_346_0:
                        .quad            .Lcall_proc_staged_α_346_0_s
.Lcall_proc_staged_α_346_0_s:
                        .string          "interpret_built_in/1"
                        .size            n148_call_proc_staged_bx, .-n148_call_proc_staged_bx
                        .type            n149_var_ref_bx, @function
n149_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx;         jmp   n150_var_ref_α
                        .size            n149_var_ref_bx, .-n149_var_ref_bx
                        .type            n150_var_ref_bx, @function
n150_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:         mov              r11, 128
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3920]
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx;         jmp   n151_call_α
                        .size            n150_var_ref_bx, .-n150_var_ref_bx
                        .type            n151_call_bx, @function
n151_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_call_α:            mov              r11, 129
                        mov              rax, qword ptr [rbp + 3904]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 3912]
                        mov              qword ptr [rbp + 3864], rax
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3848], rax
                        lea              rdi, [rbp + 3840]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n152_var_ref_α
n151_call_β:            mov              r11, 129;                            jmp   interpret$2F2_step
                        .size            n151_call_bx, .-n151_call_bx
                        .type            n152_var_ref_bx, @function
n152_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:         mov              r11, 130
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx;         jmp   n153_var_ref_α
                        .size            n152_var_ref_bx, .-n152_var_ref_bx
                        .type            n153_var_ref_bx, @function
n153_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3936]
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx;         jmp   n154_call_α
                        .size            n153_var_ref_bx, .-n153_var_ref_bx
                        .type            n154_call_bx, @function
n154_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_call_α:            mov              r11, 132
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3816]
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
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n155_var_ref_α
n154_call_β:            mov              r11, 132;                            jmp   interpret$2F2_step
                        .size            n154_call_bx, .-n154_call_bx
                        .type            n155_var_ref_bx, @function
n155_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:         mov              r11, 133
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3920]
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx;         jmp   n156_var_ref_α
                        .size            n155_var_ref_bx, .-n155_var_ref_bx
                        .type            n156_var_ref_bx, @function
n156_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:         mov              r11, 134
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3984]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx;         jmp   n157_call_proc_staged_α
                        .size            n156_var_ref_bx, .-n156_var_ref_bx
                        .type            n157_call_proc_staged_bx, @function
n157_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_call_proc_staged_α:
                        mov              r11, 135
                        mov              qword ptr [rbp + 3664], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_362_200
                        mov              rax, qword ptr [rbp + 3696]
                        mov              rdx, qword ptr [rbp + 3704]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_362_201
.Lcall_proc_staged_α_362_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3696]
                        mov              rdx, qword ptr [rbp + 3704]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_362_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_362_202
                        mov              rax, qword ptr [rbp + 3712]
                        mov              rdx, qword ptr [rbp + 3720]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_362_203
.Lcall_proc_staged_α_362_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3712]
                        mov              rdx, qword ptr [rbp + 3720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_362_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_362_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 4
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_362_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_362_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_362_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_362_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_362_3:
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_362_21
                        add              rsp, 32
.Lcall_proc_staged_α_362_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_362_2
.Lcall_proc_staged_α_362_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3664], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_362_2
.Lcall_proc_staged_α_362_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_362_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   interpret$2F2_step
.Lcall_proc_staged_α_362_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_362_29
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
.Lcall_proc_staged_α_362_29:
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n158_var_ref_α
n157_call_proc_staged_β:
                        mov              r11, 135
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_362_22
                        mov              rax, qword ptr [rbp + 3664]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_362_22
                        mov              rcx, qword ptr [rbp + 3672]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_362_22:
                                                                              jmp   interpret$2F2_step
.Lcall_proc_staged_α_362_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              al, 104;                             je    interpret$2F2_step
                                                                              jmp   n158_var_ref_α
.Lcall_proc_staged_α_362_0:
                        .quad            .Lcall_proc_staged_α_362_0_s
.Lcall_proc_staged_α_362_0_s:
                        .string          "define/2"
                        .size            n157_call_proc_staged_bx, .-n157_call_proc_staged_bx
                        .type            n158_var_ref_bx, @function
n158_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3984]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx;         jmp   n159_call_proc_staged_α
                        .size            n158_var_ref_bx, .-n158_var_ref_bx
                        .type            n159_call_proc_staged_bx, @function
n159_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_call_proc_staged_α:
                        mov              r11, 137
                        mov              qword ptr [rbp + 3568], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_366_200
                        mov              rax, qword ptr [rbp + 3600]
                        mov              rdx, qword ptr [rbp + 3608]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_366_201
.Lcall_proc_staged_α_366_200:
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
.Lcall_proc_staged_α_366_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_366_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_366_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 1
                        mov              rsi, rbp
                        lea              rdx, [rbp + 4080]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_366_99
                        mov              r10, qword ptr [rbp + 4040]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_366_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_366_99
                        mov              rcx, qword ptr [rbp + 4056]
                        mov              rdx, qword ptr [rbp + 4064]
                        lea              rsp, [rbp + 4080]
                        mov              rbp, qword ptr [rbp + 4072];         jmp   rax
.Lcall_proc_staged_α_366_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_366_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_366_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_366_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_366_3:
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_366_21
                        add              rsp, 32
.Lcall_proc_staged_α_366_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_366_2
.Lcall_proc_staged_α_366_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3568], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_366_2
.Lcall_proc_staged_α_366_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_366_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n157_call_proc_staged_β
.Lcall_proc_staged_α_366_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_366_29
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
.Lcall_proc_staged_α_366_29:
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              al, 104;                             je    n157_call_proc_staged_β
                                                                              jmp   interpret$2F2_ret8
n159_call_proc_staged_β:
                        mov              r11, 137
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_366_22
                        mov              rax, qword ptr [rbp + 3568]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_366_22
                        mov              rcx, qword ptr [rbp + 3576]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_366_22:
                                                                              jmp   n157_call_proc_staged_β
.Lcall_proc_staged_α_366_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              al, 104;                             je    n157_call_proc_staged_β
                                                                              jmp   interpret$2F2_ret8
.Lcall_proc_staged_α_366_0:
                        .quad            .Lcall_proc_staged_α_366_0_s
.Lcall_proc_staged_α_366_0_s:
                        .string          "interpret/1"
                        .size            n159_call_proc_staged_bx, .-n159_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F2_ret1:
                        lea              rax, [rip + n74_indirect_goto_β]
                        mov              qword ptr [rbp + 4032], rax
                                                                              jmp   interpret$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F2_ret2:
                        lea              rax, [rip + n88_call_proc_staged_β]
                        mov              qword ptr [rbp + 4032], rax
                                                                              jmp   interpret$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F2_ret3:
                        lea              rax, [rip + n105_call_proc_staged_β]
                        mov              qword ptr [rbp + 4032], rax
                                                                              jmp   interpret$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F2_ret4:
                        lea              rax, [rip + n121_call_proc_staged_β]
                        mov              qword ptr [rbp + 4032], rax
                                                                              jmp   interpret$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F2_ret7:
                        lea              rax, [rip + n148_call_proc_staged_β]
                        mov              qword ptr [rbp + 4032], rax
                                                                              jmp   interpret$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F2_ret8:
                        lea              rax, [rip + n159_call_proc_staged_β]
                        mov              qword ptr [rbp + 4032], rax
                                                                              jmp   interpret$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F2_step:
                        mov              rdi, qword ptr [rbp + 4016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4032], 0
                        mov              qword ptr [rbp + 3920], 0
                        mov              qword ptr [rbp + 3928], 0
                        mov              qword ptr [rbp + 3952], 0
                        mov              qword ptr [rbp + 3960], 0
                        mov              qword ptr [rbp + 3936], 0
                        mov              qword ptr [rbp + 3944], 0
                        mov              qword ptr [rbp + 3984], 0
                        mov              qword ptr [rbp + 3992], 0
                        mov              qword ptr [rbp + 3968], 0
                        mov              qword ptr [rbp + 3976], 0
                        mov              rax, qword ptr [rbp + 4024]
                        test             rax, rax
                                                                              je    interpret$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F2_alt1:
                        lea              rax, [rip + interpret$2F2_alt2]
                        mov              qword ptr [rbp + 4024], rax
                                                                              jmp   n45_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F2_alt2:
                        lea              rax, [rip + interpret$2F2_alt3]
                        mov              qword ptr [rbp + 4024], rax
                                                                              jmp   n75_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F2_alt3:
                        lea              rax, [rip + interpret$2F2_alt4]
                        mov              qword ptr [rbp + 4024], rax
                                                                              jmp   n89_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F2_alt4:
                        lea              rax, [rip + interpret$2F2_alt5]
                        mov              qword ptr [rbp + 4024], rax
                                                                              jmp   n106_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F2_alt5:
                        lea              rax, [rip + interpret$2F2_alt6]
                        mov              qword ptr [rbp + 4024], rax
                                                                              jmp   n122_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F2_alt6:
                        lea              rax, [rip + interpret$2F2_alt7]
                        mov              qword ptr [rbp + 4024], rax
                                                                              jmp   n129_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F2_alt7:
                        lea              rax, [rip + interpret$2F2_alt8]
                        mov              qword ptr [rbp + 4024], rax
                                                                              jmp   n138_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F2_alt8:
                        xor              eax, eax
                        mov              qword ptr [rbp + 4024], rax
                        mov              r13, qword ptr [rbp + 4040]
                                                                              jmp   n149_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F2_β:
                        test             r15, r15
                                                                              jne   interpret$2F2_ω
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 4032], 0
                        test             rax, rax
                                                                              jne   interpret$2F2_βres
                                                                              jmp   interpret$2F2_step
interpret$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 4056]
                        mov              rax, qword ptr [rbp + 4040]
                        cmp              r13, rax;                            je    interpret$2F2_altdet
                        lea              rdx, [rip + interpret$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 4072];         jmp   rcx
interpret$2F2_altdet:   xor              eax, eax
                        lea              rsp, [rbp + 4080]
                        mov              rbp, qword ptr [rbp + 4072];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
interpret$2F2_ω:
                        mov              rcx, qword ptr [rbp + 4064]
                        mov              r13, qword ptr [rbp + 4040]
                        lea              rsp, [rbp + 4080]
                        mov              rbp, qword ptr [rbp + 4072];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__is_built_in$2F1:
                        sub              rsp, 448
                        mov              qword ptr [rsp + 424], rcx
                        mov              qword ptr [rsp + 432], rdx
                        mov              qword ptr [rsp + 440], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 408], r13
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 384], r12
                        lea              rax, [rip + is_built_in$2F1_alt1]
                        mov              qword ptr [rsp + 392], rax
                        lea              rdi, [rsp + 384]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 336
                        mov              edx, 384
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
is_built_in$2F1_α_body:
                        .type            n367_var_ref_bx, @function
n367_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n368_lit_string_α
                        .size            n367_var_ref_bx, .-n367_var_ref_bx
                        .type            n368_lit_string_bx, @function
n368_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:      mov              r11, 139
                        mov              qword ptr [rbp + 112], 2             # result
                        mov              dword ptr [rbp + 116], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_378_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n369_call_α
.Llit_string_α_378_0:   .quad            .Llit_string_α_378_0_s
.Llit_string_α_378_0_s: .string          "true"
                        .size            n368_lit_string_bx, .-n368_lit_string_bx
                        .type            n369_call_bx, @function
n369_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_call_α:            mov              r11, 140
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        mov              rsi, qword ptr [rip + .Lcall_α_379_2]
                                                                              jmp   .Lcall_α_379_3
.Lcall_α_379_2:         .quad            .Lcall_α_379_2_s
.Lcall_α_379_2_s:       .string          "true"
.Lcall_α_379_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    is_built_in$2F1_step
                                                                              jmp   is_built_in$2F1_γ
n369_call_β:            mov              r11, 140;                            jmp   is_built_in$2F1_step
                        .size            n369_call_bx, .-n369_call_bx
                        .type            n370_var_ref_bx, @function
n370_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n371_lit_string_α
                        .size            n370_var_ref_bx, .-n370_var_ref_bx
                        .type            n371_lit_string_bx, @function
n371_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:      mov              r11, 142
                        mov              qword ptr [rbp + 320], 2             # result
                        mov              dword ptr [rbp + 324], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_382_0]
                        mov              qword ptr [rbp + 328], rax;          jmp   n372_var_ref_α
.Llit_string_α_382_0:   .quad            .Llit_string_α_382_0_s
.Llit_string_α_382_0_s: .string          "=<"
                        .size            n371_lit_string_bx, .-n371_lit_string_bx
                        .type            n372_var_ref_bx, @function
n372_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 336]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n373_var_ref_α
                        .size            n372_var_ref_bx, .-n372_var_ref_bx
                        .type            n373_var_ref_bx, @function
n373_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_var_ref_α:         mov              r11, 144
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 352]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n374_call_α
                        .size            n373_var_ref_bx, .-n373_var_ref_bx
                        .type            n374_call_bx, @function
n374_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_call_α:            mov              r11, 145
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 216]
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
                        cmp              al, 104;                             je    is_built_in$2F1_step
                                                                              jmp   n375_call_α
n374_call_β:            mov              r11, 145;                            jmp   is_built_in$2F1_step
                        .size            n374_call_bx, .-n374_call_bx
                        .type            n375_call_bx, @function
n375_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_call_α:            mov              r11, 146
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 248]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    is_built_in$2F1_step
                                                                              jmp   is_built_in$2F1_γ
n375_call_β:            mov              r11, 146;                            jmp   is_built_in$2F1_step
                        .size            n375_call_bx, .-n375_call_bx
#-----------------------------------------------------------------------------------------------------------------------
is_built_in$2F1_step:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 400], 0
                        mov              qword ptr [rbp + 336], 0
                        mov              qword ptr [rbp + 344], 0
                        mov              qword ptr [rbp + 352], 0
                        mov              qword ptr [rbp + 360], 0
                        mov              rax, qword ptr [rbp + 392]
                        test             rax, rax
                                                                              je    is_built_in$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
is_built_in$2F1_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 392], rax
                        mov              r13, qword ptr [rbp + 408]
                                                                              jmp   n370_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
is_built_in$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
is_built_in$2F1_β:
                        test             r15, r15
                                                                              jne   is_built_in$2F1_ω
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 400], 0
                        test             rax, rax
                                                                              jne   is_built_in$2F1_βres
                                                                              jmp   is_built_in$2F1_step
is_built_in$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
is_built_in$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 424]
                        mov              rax, qword ptr [rbp + 408]
                        cmp              r13, rax;                            je    is_built_in$2F1_altdet
                        lea              rdx, [rip + is_built_in$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 440];          jmp   rcx
is_built_in$2F1_altdet: xor              eax, eax
                        lea              rsp, [rbp + 448]
                        mov              rbp, qword ptr [rbp + 440];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
is_built_in$2F1_ω:
                        mov              rcx, qword ptr [rbp + 432]
                        mov              r13, qword ptr [rbp + 408]
                        lea              rsp, [rbp + 448]
                        mov              rbp, qword ptr [rbp + 440];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__meta_qsort$2F0:
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rcx
                        mov              qword ptr [rsp + 144], rdx
                        mov              qword ptr [rsp + 152], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 120], r13
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 96], r12
                        mov              rdi, rsp
                        mov              esi, 80
                        mov              edx, 96
                        call             rt_jmp_frame_lexprep2@PLT
meta_qsort$2F0_α_body:
                        .type            n389_lit_string_bx, @function
n389_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_string_α:      mov              r11, 147
                        mov              qword ptr [rbp + 64], 2              # result
                        mov              dword ptr [rbp + 68], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_391_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n390_call_proc_staged_α
.Llit_string_α_391_0:   .quad            .Llit_string_α_391_0_s
.Llit_string_α_391_0_s: .string          "qsort"
                        .size            n389_lit_string_bx, .-n389_lit_string_bx
                        .type            n390_call_proc_staged_bx, @function
n390_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_call_proc_staged_α:
                        mov              r11, 148
                        mov              qword ptr [rbp + 32], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_393_200
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_393_201
.Lcall_proc_staged_α_393_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_393_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_393_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_393_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 1
                        mov              rsi, rbp
                        lea              rdx, [rbp + 160]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_393_99
                        mov              r10, qword ptr [rbp + 120]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_393_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_393_99
                        mov              rcx, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 144]
                        lea              rsp, [rbp + 160]
                        mov              rbp, qword ptr [rbp + 152];          jmp   rax
.Lcall_proc_staged_α_393_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_393_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_393_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_393_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_393_3:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_393_21
                        add              rsp, 32
.Lcall_proc_staged_α_393_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_393_2
.Lcall_proc_staged_α_393_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 32], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_393_2
.Lcall_proc_staged_α_393_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_393_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   meta_qsort$2F0_step
.Lcall_proc_staged_α_393_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_393_29
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
.Lcall_proc_staged_α_393_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    meta_qsort$2F0_step
                                                                              jmp   meta_qsort$2F0_ret0
n390_call_proc_staged_β:
                        mov              r11, 148
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_393_22
                        mov              rax, qword ptr [rbp + 32]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_393_22
                        mov              rcx, qword ptr [rbp + 40]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_393_22:
                                                                              jmp   meta_qsort$2F0_step
.Lcall_proc_staged_α_393_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    meta_qsort$2F0_step
                                                                              jmp   meta_qsort$2F0_ret0
.Lcall_proc_staged_α_393_0:
                        .quad            .Lcall_proc_staged_α_393_0_s
.Lcall_proc_staged_α_393_0_s:
                        .string          "interpret/1"
                        .size            n390_call_proc_staged_bx, .-n390_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
meta_qsort$2F0_ret0:
                        lea              rax, [rip + n390_call_proc_staged_β]
                        mov              qword ptr [rbp + 112], rax
                                                                              jmp   meta_qsort$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
meta_qsort$2F0_step:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 112], 0
                        mov              rax, qword ptr [rbp + 104]
                        test             rax, rax
                                                                              je    meta_qsort$2F0_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
meta_qsort$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
meta_qsort$2F0_β:
                        test             r15, r15
                                                                              jne   meta_qsort$2F0_ω
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 112], 0
                        test             rax, rax
                                                                              jne   meta_qsort$2F0_βres
                                                                              jmp   meta_qsort$2F0_step
meta_qsort$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
meta_qsort$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 136]
                        mov              rax, qword ptr [rbp + 120]
                        cmp              r13, rax;                            je    meta_qsort$2F0_altdet
                        lea              rdx, [rip + meta_qsort$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 152];          jmp   rcx
meta_qsort$2F0_altdet:  xor              eax, eax
                        lea              rsp, [rbp + 160]
                        mov              rbp, qword ptr [rbp + 152];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
meta_qsort$2F0_ω:
                        mov              rcx, qword ptr [rbp + 144]
                        mov              r13, qword ptr [rbp + 120]
                        lea              rsp, [rbp + 160]
                        mov              rbp, qword ptr [rbp + 152];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__define$2F2:
                        sub              rsp, 10000
                        mov              qword ptr [rsp + 9976], rcx
                        mov              qword ptr [rsp + 9984], rdx
                        mov              qword ptr [rsp + 9992], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 10000]
                        mov              qword ptr [rsp + 9968], rax
                        mov              qword ptr [rsp + 9960], r13
                        mov              qword ptr [rsp + 9952], 0
                        mov              qword ptr [rsp + 9944], 0
                        mov              qword ptr [rsp + 9936], r12
                        lea              rax, [rip + define$2F2_alt1]
                        mov              qword ptr [rsp + 9944], rax
                        lea              rdi, [rsp + 9936]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 9808
                        mov              edx, 9936
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
define$2F2_α_body:
                        .type            n394_var_ref_bx, @function
n394_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5952], rax
                        mov              qword ptr [rbp + 5960], rdx;         jmp   n395_lit_string_α
                        .size            n394_var_ref_bx, .-n394_var_ref_bx
                        .type            n395_lit_string_bx, @function
n395_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_string_α:      mov              r11, 150
                        mov              qword ptr [rbp + 5968], 2            # result
                        mov              dword ptr [rbp + 5972], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_665_0]
                        mov              qword ptr [rbp + 5976], rax;         jmp   n396_call_α
.Llit_string_α_665_0:   .quad            .Llit_string_α_665_0_s
.Llit_string_α_665_0_s: .string          "qsort"
                        .size            n395_lit_string_bx, .-n395_lit_string_bx
                        .type            n396_call_bx, @function
n396_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_call_α:            mov              r11, 151
                        mov              rax, qword ptr [rbp + 5952]
                        mov              qword ptr [rbp + 5904], rax
                        mov              rax, qword ptr [rbp + 5960]
                        mov              qword ptr [rbp + 5912], rax
                        lea              rdi, [rbp + 5904]
                        mov              rsi, qword ptr [rip + .Lcall_α_666_2]
                                                                              jmp   .Lcall_α_666_3
.Lcall_α_666_2:         .quad            .Lcall_α_666_2_s
.Lcall_α_666_2_s:       .string          "qsort"
.Lcall_α_666_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5888], rax
                        mov              qword ptr [rbp + 5896], rdx
                        cmp              al, 104;                             je    define$2F2_step
                                                                              jmp   n397_var_ref_α
n396_call_β:            mov              r11, 151;                            jmp   define$2F2_step
                        .size            n396_call_bx, .-n396_call_bx
                        .type            n397_var_ref_bx, @function
n397_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_var_ref_α:         mov              r11, 152
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n398_lit_string_α
                        .size            n397_var_ref_bx, .-n397_var_ref_bx
                        .type            n398_lit_string_bx, @function
n398_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_string_α:      mov              r11, 153
                        mov              qword ptr [rbp + 5872], 2            # result
                        mov              dword ptr [rbp + 5876], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_669_0]
                        mov              qword ptr [rbp + 5880], rax;         jmp   n399_lit_string_α
.Llit_string_α_669_0:   .quad            .Llit_string_α_669_0_s
.Llit_string_α_669_0_s: .string          "qsort"
                        .size            n398_lit_string_bx, .-n398_lit_string_bx
                        .type            n399_lit_string_bx, @function
n399_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:      mov              r11, 154
                        mov              qword ptr [rbp + 5728], 2            # result
                        mov              dword ptr [rbp + 5732], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_670_0]
                        mov              qword ptr [rbp + 5736], rax;         jmp   n400_lit_integer_α
.Llit_string_α_670_0:   .quad            .Llit_string_α_670_0_s
.Llit_string_α_670_0_s: .string          "."
                        .size            n399_lit_string_bx, .-n399_lit_string_bx
                        .type            n400_lit_integer_bx, @function
n400_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_integer_α:     mov              r11, 155
                        mov              qword ptr [rbp + 5632], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_671_0]
                        mov              qword ptr [rbp + 5640], rax;         jmp   n401_lit_string_α
.Llit_integer_α_671_0:  .quad            27
                        .size            n400_lit_integer_bx, .-n400_lit_integer_bx
                        .type            n401_lit_string_bx, @function
n401_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:      mov              r11, 156
                        mov              qword ptr [rbp + 5616], 2            # result
                        mov              dword ptr [rbp + 5620], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_672_0]
                        mov              qword ptr [rbp + 5624], rax;         jmp   n402_lit_integer_α
.Llit_string_α_672_0:   .quad            .Llit_string_α_672_0_s
.Llit_string_α_672_0_s: .string          "."
                        .size            n401_lit_string_bx, .-n401_lit_string_bx
                        .type            n402_lit_integer_bx, @function
n402_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_integer_α:     mov              r11, 157
                        mov              qword ptr [rbp + 5520], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_673_0]
                        mov              qword ptr [rbp + 5528], rax;         jmp   n403_lit_string_α
.Llit_integer_α_673_0:  .quad            74
                        .size            n402_lit_integer_bx, .-n402_lit_integer_bx
                        .type            n403_lit_string_bx, @function
n403_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_string_α:      mov              r11, 158
                        mov              qword ptr [rbp + 5504], 2            # result
                        mov              dword ptr [rbp + 5508], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_674_0]
                        mov              qword ptr [rbp + 5512], rax;         jmp   n404_lit_integer_α
.Llit_string_α_674_0:   .quad            .Llit_string_α_674_0_s
.Llit_string_α_674_0_s: .string          "."
                        .size            n403_lit_string_bx, .-n403_lit_string_bx
                        .type            n404_lit_integer_bx, @function
n404_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_integer_α:     mov              r11, 159
                        mov              qword ptr [rbp + 5408], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_675_0]
                        mov              qword ptr [rbp + 5416], rax;         jmp   n405_lit_string_α
.Llit_integer_α_675_0:  .quad            17
                        .size            n404_lit_integer_bx, .-n404_lit_integer_bx
                        .type            n405_lit_string_bx, @function
n405_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_string_α:      mov              r11, 160
                        mov              qword ptr [rbp + 5392], 2            # result
                        mov              dword ptr [rbp + 5396], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_676_0]
                        mov              qword ptr [rbp + 5400], rax;         jmp   n406_lit_integer_α
.Llit_string_α_676_0:   .quad            .Llit_string_α_676_0_s
.Llit_string_α_676_0_s: .string          "."
                        .size            n405_lit_string_bx, .-n405_lit_string_bx
                        .type            n406_lit_integer_bx, @function
n406_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_integer_α:     mov              r11, 161
                        mov              qword ptr [rbp + 5296], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_677_0]
                        mov              qword ptr [rbp + 5304], rax;         jmp   n407_lit_string_α
.Llit_integer_α_677_0:  .quad            33
                        .size            n406_lit_integer_bx, .-n406_lit_integer_bx
                        .type            n407_lit_string_bx, @function
n407_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_string_α:      mov              r11, 162
                        mov              qword ptr [rbp + 5280], 2            # result
                        mov              dword ptr [rbp + 5284], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_678_0]
                        mov              qword ptr [rbp + 5288], rax;         jmp   n408_lit_integer_α
.Llit_string_α_678_0:   .quad            .Llit_string_α_678_0_s
.Llit_string_α_678_0_s: .string          "."
                        .size            n407_lit_string_bx, .-n407_lit_string_bx
                        .type            n408_lit_integer_bx, @function
n408_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_integer_α:     mov              r11, 163
                        mov              qword ptr [rbp + 5184], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_679_0]
                        mov              qword ptr [rbp + 5192], rax;         jmp   n409_lit_string_α
.Llit_integer_α_679_0:  .quad            94
                        .size            n408_lit_integer_bx, .-n408_lit_integer_bx
                        .type            n409_lit_string_bx, @function
n409_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_string_α:      mov              r11, 164
                        mov              qword ptr [rbp + 5168], 2            # result
                        mov              dword ptr [rbp + 5172], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_680_0]
                        mov              qword ptr [rbp + 5176], rax;         jmp   n410_lit_integer_α
.Llit_string_α_680_0:   .quad            .Llit_string_α_680_0_s
.Llit_string_α_680_0_s: .string          "."
                        .size            n409_lit_string_bx, .-n409_lit_string_bx
                        .type            n410_lit_integer_bx, @function
n410_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_integer_α:     mov              r11, 165
                        mov              qword ptr [rbp + 5072], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_681_0]
                        mov              qword ptr [rbp + 5080], rax;         jmp   n411_lit_string_α
.Llit_integer_α_681_0:  .quad            18
                        .size            n410_lit_integer_bx, .-n410_lit_integer_bx
                        .type            n411_lit_string_bx, @function
n411_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_string_α:      mov              r11, 166
                        mov              qword ptr [rbp + 5056], 2            # result
                        mov              dword ptr [rbp + 5060], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_682_0]
                        mov              qword ptr [rbp + 5064], rax;         jmp   n412_lit_integer_α
.Llit_string_α_682_0:   .quad            .Llit_string_α_682_0_s
.Llit_string_α_682_0_s: .string          "."
                        .size            n411_lit_string_bx, .-n411_lit_string_bx
                        .type            n412_lit_integer_bx, @function
n412_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_integer_α:     mov              r11, 167
                        mov              qword ptr [rbp + 4960], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_683_0]
                        mov              qword ptr [rbp + 4968], rax;         jmp   n413_lit_string_α
.Llit_integer_α_683_0:  .quad            46
                        .size            n412_lit_integer_bx, .-n412_lit_integer_bx
                        .type            n413_lit_string_bx, @function
n413_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_string_α:      mov              r11, 168
                        mov              qword ptr [rbp + 4944], 2            # result
                        mov              dword ptr [rbp + 4948], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_684_0]
                        mov              qword ptr [rbp + 4952], rax;         jmp   n414_lit_integer_α
.Llit_string_α_684_0:   .quad            .Llit_string_α_684_0_s
.Llit_string_α_684_0_s: .string          "."
                        .size            n413_lit_string_bx, .-n413_lit_string_bx
                        .type            n414_lit_integer_bx, @function
n414_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_integer_α:     mov              r11, 169
                        mov              qword ptr [rbp + 4848], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_685_0]
                        mov              qword ptr [rbp + 4856], rax;         jmp   n415_lit_string_α
.Llit_integer_α_685_0:  .quad            83
                        .size            n414_lit_integer_bx, .-n414_lit_integer_bx
                        .type            n415_lit_string_bx, @function
n415_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_string_α:      mov              r11, 170
                        mov              qword ptr [rbp + 4832], 2            # result
                        mov              dword ptr [rbp + 4836], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_686_0]
                        mov              qword ptr [rbp + 4840], rax;         jmp   n416_lit_integer_α
.Llit_string_α_686_0:   .quad            .Llit_string_α_686_0_s
.Llit_string_α_686_0_s: .string          "."
                        .size            n415_lit_string_bx, .-n415_lit_string_bx
                        .type            n416_lit_integer_bx, @function
n416_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_integer_α:     mov              r11, 171
                        mov              qword ptr [rbp + 4736], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_687_0]
                        mov              qword ptr [rbp + 4744], rax;         jmp   n417_lit_string_α
.Llit_integer_α_687_0:  .quad            65
                        .size            n416_lit_integer_bx, .-n416_lit_integer_bx
                        .type            n417_lit_string_bx, @function
n417_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_string_α:      mov              r11, 172
                        mov              qword ptr [rbp + 4720], 2            # result
                        mov              dword ptr [rbp + 4724], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_688_0]
                        mov              qword ptr [rbp + 4728], rax;         jmp   n418_lit_integer_α
.Llit_string_α_688_0:   .quad            .Llit_string_α_688_0_s
.Llit_string_α_688_0_s: .string          "."
                        .size            n417_lit_string_bx, .-n417_lit_string_bx
                        .type            n418_lit_integer_bx, @function
n418_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_integer_α:     mov              r11, 173
                        mov              qword ptr [rbp + 4624], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_689_0]
                        mov              qword ptr [rbp + 4632], rax;         jmp   n419_lit_string_α
.Llit_integer_α_689_0:  .quad            2
                        .size            n418_lit_integer_bx, .-n418_lit_integer_bx
                        .type            n419_lit_string_bx, @function
n419_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_string_α:      mov              r11, 174
                        mov              qword ptr [rbp + 4608], 2            # result
                        mov              dword ptr [rbp + 4612], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_690_0]
                        mov              qword ptr [rbp + 4616], rax;         jmp   n420_lit_integer_α
.Llit_string_α_690_0:   .quad            .Llit_string_α_690_0_s
.Llit_string_α_690_0_s: .string          "."
                        .size            n419_lit_string_bx, .-n419_lit_string_bx
                        .type            n420_lit_integer_bx, @function
n420_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_lit_integer_α:     mov              r11, 175
                        mov              qword ptr [rbp + 4512], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_691_0]
                        mov              qword ptr [rbp + 4520], rax;         jmp   n421_lit_string_α
.Llit_integer_α_691_0:  .quad            32
                        .size            n420_lit_integer_bx, .-n420_lit_integer_bx
                        .type            n421_lit_string_bx, @function
n421_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_lit_string_α:      mov              r11, 176
                        mov              qword ptr [rbp + 4496], 2            # result
                        mov              dword ptr [rbp + 4500], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_692_0]
                        mov              qword ptr [rbp + 4504], rax;         jmp   n422_lit_integer_α
.Llit_string_α_692_0:   .quad            .Llit_string_α_692_0_s
.Llit_string_α_692_0_s: .string          "."
                        .size            n421_lit_string_bx, .-n421_lit_string_bx
                        .type            n422_lit_integer_bx, @function
n422_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_integer_α:     mov              r11, 177
                        mov              qword ptr [rbp + 4400], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_693_0]
                        mov              qword ptr [rbp + 4408], rax;         jmp   n423_lit_string_α
.Llit_integer_α_693_0:  .quad            53
                        .size            n422_lit_integer_bx, .-n422_lit_integer_bx
                        .type            n423_lit_string_bx, @function
n423_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_lit_string_α:      mov              r11, 178
                        mov              qword ptr [rbp + 4384], 2            # result
                        mov              dword ptr [rbp + 4388], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_694_0]
                        mov              qword ptr [rbp + 4392], rax;         jmp   n424_lit_integer_α
.Llit_string_α_694_0:   .quad            .Llit_string_α_694_0_s
.Llit_string_α_694_0_s: .string          "."
                        .size            n423_lit_string_bx, .-n423_lit_string_bx
                        .type            n424_lit_integer_bx, @function
n424_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_lit_integer_α:     mov              r11, 179
                        mov              qword ptr [rbp + 4288], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_695_0]
                        mov              qword ptr [rbp + 4296], rax;         jmp   n425_lit_string_α
.Llit_integer_α_695_0:  .quad            28
                        .size            n424_lit_integer_bx, .-n424_lit_integer_bx
                        .type            n425_lit_string_bx, @function
n425_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_string_α:      mov              r11, 180
                        mov              qword ptr [rbp + 4272], 2            # result
                        mov              dword ptr [rbp + 4276], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_696_0]
                        mov              qword ptr [rbp + 4280], rax;         jmp   n426_lit_integer_α
.Llit_string_α_696_0:   .quad            .Llit_string_α_696_0_s
.Llit_string_α_696_0_s: .string          "."
                        .size            n425_lit_string_bx, .-n425_lit_string_bx
                        .type            n426_lit_integer_bx, @function
n426_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_integer_α:     mov              r11, 181
                        mov              qword ptr [rbp + 4176], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_697_0]
                        mov              qword ptr [rbp + 4184], rax;         jmp   n427_lit_string_α
.Llit_integer_α_697_0:  .quad            85
                        .size            n426_lit_integer_bx, .-n426_lit_integer_bx
                        .type            n427_lit_string_bx, @function
n427_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_string_α:      mov              r11, 182
                        mov              qword ptr [rbp + 4160], 2            # result
                        mov              dword ptr [rbp + 4164], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_698_0]
                        mov              qword ptr [rbp + 4168], rax;         jmp   n428_lit_integer_α
.Llit_string_α_698_0:   .quad            .Llit_string_α_698_0_s
.Llit_string_α_698_0_s: .string          "."
                        .size            n427_lit_string_bx, .-n427_lit_string_bx
                        .type            n428_lit_integer_bx, @function
n428_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_integer_α:     mov              r11, 183
                        mov              qword ptr [rbp + 4064], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_699_0]
                        mov              qword ptr [rbp + 4072], rax;         jmp   n429_lit_string_α
.Llit_integer_α_699_0:  .quad            99
                        .size            n428_lit_integer_bx, .-n428_lit_integer_bx
                        .type            n429_lit_string_bx, @function
n429_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_string_α:      mov              r11, 184
                        mov              qword ptr [rbp + 4048], 2            # result
                        mov              dword ptr [rbp + 4052], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_700_0]
                        mov              qword ptr [rbp + 4056], rax;         jmp   n430_lit_integer_α
.Llit_string_α_700_0:   .quad            .Llit_string_α_700_0_s
.Llit_string_α_700_0_s: .string          "."
                        .size            n429_lit_string_bx, .-n429_lit_string_bx
                        .type            n430_lit_integer_bx, @function
n430_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_integer_α:     mov              r11, 185
                        mov              qword ptr [rbp + 3952], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_701_0]
                        mov              qword ptr [rbp + 3960], rax;         jmp   n431_lit_string_α
.Llit_integer_α_701_0:  .quad            47
                        .size            n430_lit_integer_bx, .-n430_lit_integer_bx
                        .type            n431_lit_string_bx, @function
n431_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n431_lit_string_α:      mov              r11, 186
                        mov              qword ptr [rbp + 3936], 2            # result
                        mov              dword ptr [rbp + 3940], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_702_0]
                        mov              qword ptr [rbp + 3944], rax;         jmp   n432_lit_integer_α
.Llit_string_α_702_0:   .quad            .Llit_string_α_702_0_s
.Llit_string_α_702_0_s: .string          "."
                        .size            n431_lit_string_bx, .-n431_lit_string_bx
                        .type            n432_lit_integer_bx, @function
n432_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_integer_α:     mov              r11, 187
                        mov              qword ptr [rbp + 3840], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_703_0]
                        mov              qword ptr [rbp + 3848], rax;         jmp   n433_lit_string_α
.Llit_integer_α_703_0:  .quad            28
                        .size            n432_lit_integer_bx, .-n432_lit_integer_bx
                        .type            n433_lit_string_bx, @function
n433_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:      mov              r11, 188
                        mov              qword ptr [rbp + 3824], 2            # result
                        mov              dword ptr [rbp + 3828], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_704_0]
                        mov              qword ptr [rbp + 3832], rax;         jmp   n434_lit_integer_α
.Llit_string_α_704_0:   .quad            .Llit_string_α_704_0_s
.Llit_string_α_704_0_s: .string          "."
                        .size            n433_lit_string_bx, .-n433_lit_string_bx
                        .type            n434_lit_integer_bx, @function
n434_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_lit_integer_α:     mov              r11, 189
                        mov              qword ptr [rbp + 3728], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_705_0]
                        mov              qword ptr [rbp + 3736], rax;         jmp   n435_lit_string_α
.Llit_integer_α_705_0:  .quad            82
                        .size            n434_lit_integer_bx, .-n434_lit_integer_bx
                        .type            n435_lit_string_bx, @function
n435_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_string_α:      mov              r11, 190
                        mov              qword ptr [rbp + 3712], 2            # result
                        mov              dword ptr [rbp + 3716], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_706_0]
                        mov              qword ptr [rbp + 3720], rax;         jmp   n436_lit_integer_α
.Llit_string_α_706_0:   .quad            .Llit_string_α_706_0_s
.Llit_string_α_706_0_s: .string          "."
                        .size            n435_lit_string_bx, .-n435_lit_string_bx
                        .type            n436_lit_integer_bx, @function
n436_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_integer_α:     mov              r11, 191
                        mov              qword ptr [rbp + 3616], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_707_0]
                        mov              qword ptr [rbp + 3624], rax;         jmp   n437_lit_string_α
.Llit_integer_α_707_0:  .quad            6
                        .size            n436_lit_integer_bx, .-n436_lit_integer_bx
                        .type            n437_lit_string_bx, @function
n437_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:      mov              r11, 192
                        mov              qword ptr [rbp + 3600], 2            # result
                        mov              dword ptr [rbp + 3604], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_708_0]
                        mov              qword ptr [rbp + 3608], rax;         jmp   n438_lit_integer_α
.Llit_string_α_708_0:   .quad            .Llit_string_α_708_0_s
.Llit_string_α_708_0_s: .string          "."
                        .size            n437_lit_string_bx, .-n437_lit_string_bx
                        .type            n438_lit_integer_bx, @function
n438_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_integer_α:     mov              r11, 193
                        mov              qword ptr [rbp + 3504], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_709_0]
                        mov              qword ptr [rbp + 3512], rax;         jmp   n439_lit_string_α
.Llit_integer_α_709_0:  .quad            11
                        .size            n438_lit_integer_bx, .-n438_lit_integer_bx
                        .type            n439_lit_string_bx, @function
n439_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_lit_string_α:      mov              r11, 194
                        mov              qword ptr [rbp + 3488], 2            # result
                        mov              dword ptr [rbp + 3492], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_710_0]
                        mov              qword ptr [rbp + 3496], rax;         jmp   n440_lit_integer_α
.Llit_string_α_710_0:   .quad            .Llit_string_α_710_0_s
.Llit_string_α_710_0_s: .string          "."
                        .size            n439_lit_string_bx, .-n439_lit_string_bx
                        .type            n440_lit_integer_bx, @function
n440_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_lit_integer_α:     mov              r11, 195
                        mov              qword ptr [rbp + 3392], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_711_0]
                        mov              qword ptr [rbp + 3400], rax;         jmp   n441_lit_string_α
.Llit_integer_α_711_0:  .quad            55
                        .size            n440_lit_integer_bx, .-n440_lit_integer_bx
                        .type            n441_lit_string_bx, @function
n441_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_lit_string_α:      mov              r11, 196
                        mov              qword ptr [rbp + 3376], 2            # result
                        mov              dword ptr [rbp + 3380], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_712_0]
                        mov              qword ptr [rbp + 3384], rax;         jmp   n442_lit_integer_α
.Llit_string_α_712_0:   .quad            .Llit_string_α_712_0_s
.Llit_string_α_712_0_s: .string          "."
                        .size            n441_lit_string_bx, .-n441_lit_string_bx
                        .type            n442_lit_integer_bx, @function
n442_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_lit_integer_α:     mov              r11, 197
                        mov              qword ptr [rbp + 3280], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_713_0]
                        mov              qword ptr [rbp + 3288], rax;         jmp   n443_lit_string_α
.Llit_integer_α_713_0:  .quad            29
                        .size            n442_lit_integer_bx, .-n442_lit_integer_bx
                        .type            n443_lit_string_bx, @function
n443_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_lit_string_α:      mov              r11, 198
                        mov              qword ptr [rbp + 3264], 2            # result
                        mov              dword ptr [rbp + 3268], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_714_0]
                        mov              qword ptr [rbp + 3272], rax;         jmp   n444_lit_integer_α
.Llit_string_α_714_0:   .quad            .Llit_string_α_714_0_s
.Llit_string_α_714_0_s: .string          "."
                        .size            n443_lit_string_bx, .-n443_lit_string_bx
                        .type            n444_lit_integer_bx, @function
n444_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_integer_α:     mov              r11, 199
                        mov              qword ptr [rbp + 3168], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_715_0]
                        mov              qword ptr [rbp + 3176], rax;         jmp   n445_lit_string_α
.Llit_integer_α_715_0:  .quad            39
                        .size            n444_lit_integer_bx, .-n444_lit_integer_bx
                        .type            n445_lit_string_bx, @function
n445_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_string_α:      mov              r11, 200
                        mov              qword ptr [rbp + 3152], 2            # result
                        mov              dword ptr [rbp + 3156], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_716_0]
                        mov              qword ptr [rbp + 3160], rax;         jmp   n446_lit_integer_α
.Llit_string_α_716_0:   .quad            .Llit_string_α_716_0_s
.Llit_string_α_716_0_s: .string          "."
                        .size            n445_lit_string_bx, .-n445_lit_string_bx
                        .type            n446_lit_integer_bx, @function
n446_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_lit_integer_α:     mov              r11, 201
                        mov              qword ptr [rbp + 3056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_717_0]
                        mov              qword ptr [rbp + 3064], rax;         jmp   n447_lit_string_α
.Llit_integer_α_717_0:  .quad            81
                        .size            n446_lit_integer_bx, .-n446_lit_integer_bx
                        .type            n447_lit_string_bx, @function
n447_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n447_lit_string_α:      mov              r11, 202
                        mov              qword ptr [rbp + 3040], 2            # result
                        mov              dword ptr [rbp + 3044], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_718_0]
                        mov              qword ptr [rbp + 3048], rax;         jmp   n448_lit_integer_α
.Llit_string_α_718_0:   .quad            .Llit_string_α_718_0_s
.Llit_string_α_718_0_s: .string          "."
                        .size            n447_lit_string_bx, .-n447_lit_string_bx
                        .type            n448_lit_integer_bx, @function
n448_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_integer_α:     mov              r11, 203
                        mov              qword ptr [rbp + 2944], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_719_0]
                        mov              qword ptr [rbp + 2952], rax;         jmp   n449_lit_string_α
.Llit_integer_α_719_0:  .quad            90
                        .size            n448_lit_integer_bx, .-n448_lit_integer_bx
                        .type            n449_lit_string_bx, @function
n449_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_string_α:      mov              r11, 204
                        mov              qword ptr [rbp + 2928], 2            # result
                        mov              dword ptr [rbp + 2932], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_720_0]
                        mov              qword ptr [rbp + 2936], rax;         jmp   n450_lit_integer_α
.Llit_string_α_720_0:   .quad            .Llit_string_α_720_0_s
.Llit_string_α_720_0_s: .string          "."
                        .size            n449_lit_string_bx, .-n449_lit_string_bx
                        .type            n450_lit_integer_bx, @function
n450_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_lit_integer_α:     mov              r11, 205
                        mov              qword ptr [rbp + 2832], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_721_0]
                        mov              qword ptr [rbp + 2840], rax;         jmp   n451_lit_string_α
.Llit_integer_α_721_0:  .quad            37
                        .size            n450_lit_integer_bx, .-n450_lit_integer_bx
                        .type            n451_lit_string_bx, @function
n451_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_lit_string_α:      mov              r11, 206
                        mov              qword ptr [rbp + 2816], 2            # result
                        mov              dword ptr [rbp + 2820], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_722_0]
                        mov              qword ptr [rbp + 2824], rax;         jmp   n452_lit_integer_α
.Llit_string_α_722_0:   .quad            .Llit_string_α_722_0_s
.Llit_string_α_722_0_s: .string          "."
                        .size            n451_lit_string_bx, .-n451_lit_string_bx
                        .type            n452_lit_integer_bx, @function
n452_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_integer_α:     mov              r11, 207
                        mov              qword ptr [rbp + 2720], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_723_0]
                        mov              qword ptr [rbp + 2728], rax;         jmp   n453_lit_string_α
.Llit_integer_α_723_0:  .quad            10
                        .size            n452_lit_integer_bx, .-n452_lit_integer_bx
                        .type            n453_lit_string_bx, @function
n453_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_string_α:      mov              r11, 208
                        mov              qword ptr [rbp + 2704], 2            # result
                        mov              dword ptr [rbp + 2708], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_724_0]
                        mov              qword ptr [rbp + 2712], rax;         jmp   n454_lit_integer_α
.Llit_string_α_724_0:   .quad            .Llit_string_α_724_0_s
.Llit_string_α_724_0_s: .string          "."
                        .size            n453_lit_string_bx, .-n453_lit_string_bx
                        .type            n454_lit_integer_bx, @function
n454_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_lit_integer_α:     mov              r11, 209
                        mov              qword ptr [rbp + 2608], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_725_0]
                        mov              qword ptr [rbp + 2616], rax;         jmp   n455_lit_string_α
.Llit_integer_α_725_0:  .quad            0
                        .size            n454_lit_integer_bx, .-n454_lit_integer_bx
                        .type            n455_lit_string_bx, @function
n455_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n455_lit_string_α:      mov              r11, 210
                        mov              qword ptr [rbp + 2592], 2            # result
                        mov              dword ptr [rbp + 2596], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_726_0]
                        mov              qword ptr [rbp + 2600], rax;         jmp   n456_lit_integer_α
.Llit_string_α_726_0:   .quad            .Llit_string_α_726_0_s
.Llit_string_α_726_0_s: .string          "."
                        .size            n455_lit_string_bx, .-n455_lit_string_bx
                        .type            n456_lit_integer_bx, @function
n456_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_integer_α:     mov              r11, 211
                        mov              qword ptr [rbp + 2496], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_727_0]
                        mov              qword ptr [rbp + 2504], rax;         jmp   n457_lit_string_α
.Llit_integer_α_727_0:  .quad            66
                        .size            n456_lit_integer_bx, .-n456_lit_integer_bx
                        .type            n457_lit_string_bx, @function
n457_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n457_lit_string_α:      mov              r11, 212
                        mov              qword ptr [rbp + 2480], 2            # result
                        mov              dword ptr [rbp + 2484], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_728_0]
                        mov              qword ptr [rbp + 2488], rax;         jmp   n458_lit_integer_α
.Llit_string_α_728_0:   .quad            .Llit_string_α_728_0_s
.Llit_string_α_728_0_s: .string          "."
                        .size            n457_lit_string_bx, .-n457_lit_string_bx
                        .type            n458_lit_integer_bx, @function
n458_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_integer_α:     mov              r11, 213
                        mov              qword ptr [rbp + 2384], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_729_0]
                        mov              qword ptr [rbp + 2392], rax;         jmp   n459_lit_string_α
.Llit_integer_α_729_0:  .quad            51
                        .size            n458_lit_integer_bx, .-n458_lit_integer_bx
                        .type            n459_lit_string_bx, @function
n459_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_string_α:      mov              r11, 214
                        mov              qword ptr [rbp + 2368], 2            # result
                        mov              dword ptr [rbp + 2372], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_730_0]
                        mov              qword ptr [rbp + 2376], rax;         jmp   n460_lit_integer_α
.Llit_string_α_730_0:   .quad            .Llit_string_α_730_0_s
.Llit_string_α_730_0_s: .string          "."
                        .size            n459_lit_string_bx, .-n459_lit_string_bx
                        .type            n460_lit_integer_bx, @function
n460_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n460_lit_integer_α:     mov              r11, 215
                        mov              qword ptr [rbp + 2272], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_731_0]
                        mov              qword ptr [rbp + 2280], rax;         jmp   n461_lit_string_α
.Llit_integer_α_731_0:  .quad            7
                        .size            n460_lit_integer_bx, .-n460_lit_integer_bx
                        .type            n461_lit_string_bx, @function
n461_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n461_lit_string_α:      mov              r11, 216
                        mov              qword ptr [rbp + 2256], 2            # result
                        mov              dword ptr [rbp + 2260], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_732_0]
                        mov              qword ptr [rbp + 2264], rax;         jmp   n462_lit_integer_α
.Llit_string_α_732_0:   .quad            .Llit_string_α_732_0_s
.Llit_string_α_732_0_s: .string          "."
                        .size            n461_lit_string_bx, .-n461_lit_string_bx
                        .type            n462_lit_integer_bx, @function
n462_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n462_lit_integer_α:     mov              r11, 217
                        mov              qword ptr [rbp + 2160], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_733_0]
                        mov              qword ptr [rbp + 2168], rax;         jmp   n463_lit_string_α
.Llit_integer_α_733_0:  .quad            21
                        .size            n462_lit_integer_bx, .-n462_lit_integer_bx
                        .type            n463_lit_string_bx, @function
n463_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n463_lit_string_α:      mov              r11, 218
                        mov              qword ptr [rbp + 2144], 2            # result
                        mov              dword ptr [rbp + 2148], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_734_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n464_lit_integer_α
.Llit_string_α_734_0:   .quad            .Llit_string_α_734_0_s
.Llit_string_α_734_0_s: .string          "."
                        .size            n463_lit_string_bx, .-n463_lit_string_bx
                        .type            n464_lit_integer_bx, @function
n464_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n464_lit_integer_α:     mov              r11, 219
                        mov              qword ptr [rbp + 2048], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_735_0]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n465_lit_string_α
.Llit_integer_α_735_0:  .quad            85
                        .size            n464_lit_integer_bx, .-n464_lit_integer_bx
                        .type            n465_lit_string_bx, @function
n465_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n465_lit_string_α:      mov              r11, 220
                        mov              qword ptr [rbp + 2032], 2            # result
                        mov              dword ptr [rbp + 2036], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_736_0]
                        mov              qword ptr [rbp + 2040], rax;         jmp   n466_lit_integer_α
.Llit_string_α_736_0:   .quad            .Llit_string_α_736_0_s
.Llit_string_α_736_0_s: .string          "."
                        .size            n465_lit_string_bx, .-n465_lit_string_bx
                        .type            n466_lit_integer_bx, @function
n466_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n466_lit_integer_α:     mov              r11, 221
                        mov              qword ptr [rbp + 1936], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_737_0]
                        mov              qword ptr [rbp + 1944], rax;         jmp   n467_lit_string_α
.Llit_integer_α_737_0:  .quad            27
                        .size            n466_lit_integer_bx, .-n466_lit_integer_bx
                        .type            n467_lit_string_bx, @function
n467_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_string_α:      mov              r11, 222
                        mov              qword ptr [rbp + 1920], 2            # result
                        mov              dword ptr [rbp + 1924], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_738_0]
                        mov              qword ptr [rbp + 1928], rax;         jmp   n468_lit_integer_α
.Llit_string_α_738_0:   .quad            .Llit_string_α_738_0_s
.Llit_string_α_738_0_s: .string          "."
                        .size            n467_lit_string_bx, .-n467_lit_string_bx
                        .type            n468_lit_integer_bx, @function
n468_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_integer_α:     mov              r11, 223
                        mov              qword ptr [rbp + 1824], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_739_0]
                        mov              qword ptr [rbp + 1832], rax;         jmp   n469_lit_string_α
.Llit_integer_α_739_0:  .quad            31
                        .size            n468_lit_integer_bx, .-n468_lit_integer_bx
                        .type            n469_lit_string_bx, @function
n469_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n469_lit_string_α:      mov              r11, 224
                        mov              qword ptr [rbp + 1808], 2            # result
                        mov              dword ptr [rbp + 1812], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_740_0]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n470_lit_integer_α
.Llit_string_α_740_0:   .quad            .Llit_string_α_740_0_s
.Llit_string_α_740_0_s: .string          "."
                        .size            n469_lit_string_bx, .-n469_lit_string_bx
                        .type            n470_lit_integer_bx, @function
n470_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n470_lit_integer_α:     mov              r11, 225
                        mov              qword ptr [rbp + 1712], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_741_0]
                        mov              qword ptr [rbp + 1720], rax;         jmp   n471_lit_string_α
.Llit_integer_α_741_0:  .quad            63
                        .size            n470_lit_integer_bx, .-n470_lit_integer_bx
                        .type            n471_lit_string_bx, @function
n471_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_string_α:      mov              r11, 226
                        mov              qword ptr [rbp + 1696], 2            # result
                        mov              dword ptr [rbp + 1700], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_742_0]
                        mov              qword ptr [rbp + 1704], rax;         jmp   n472_lit_integer_α
.Llit_string_α_742_0:   .quad            .Llit_string_α_742_0_s
.Llit_string_α_742_0_s: .string          "."
                        .size            n471_lit_string_bx, .-n471_lit_string_bx
                        .type            n472_lit_integer_bx, @function
n472_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_integer_α:     mov              r11, 227
                        mov              qword ptr [rbp + 1600], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_743_0]
                        mov              qword ptr [rbp + 1608], rax;         jmp   n473_lit_string_α
.Llit_integer_α_743_0:  .quad            75
                        .size            n472_lit_integer_bx, .-n472_lit_integer_bx
                        .type            n473_lit_string_bx, @function
n473_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n473_lit_string_α:      mov              r11, 228
                        mov              qword ptr [rbp + 1584], 2            # result
                        mov              dword ptr [rbp + 1588], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_744_0]
                        mov              qword ptr [rbp + 1592], rax;         jmp   n474_lit_integer_α
.Llit_string_α_744_0:   .quad            .Llit_string_α_744_0_s
.Llit_string_α_744_0_s: .string          "."
                        .size            n473_lit_string_bx, .-n473_lit_string_bx
                        .type            n474_lit_integer_bx, @function
n474_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_integer_α:     mov              r11, 229
                        mov              qword ptr [rbp + 1488], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_745_0]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n475_lit_string_α
.Llit_integer_α_745_0:  .quad            4
                        .size            n474_lit_integer_bx, .-n474_lit_integer_bx
                        .type            n475_lit_string_bx, @function
n475_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n475_lit_string_α:      mov              r11, 230
                        mov              qword ptr [rbp + 1472], 2            # result
                        mov              dword ptr [rbp + 1476], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_746_0]
                        mov              qword ptr [rbp + 1480], rax;         jmp   n476_lit_integer_α
.Llit_string_α_746_0:   .quad            .Llit_string_α_746_0_s
.Llit_string_α_746_0_s: .string          "."
                        .size            n475_lit_string_bx, .-n475_lit_string_bx
                        .type            n476_lit_integer_bx, @function
n476_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n476_lit_integer_α:     mov              r11, 231
                        mov              qword ptr [rbp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_747_0]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n477_lit_string_α
.Llit_integer_α_747_0:  .quad            95
                        .size            n476_lit_integer_bx, .-n476_lit_integer_bx
                        .type            n477_lit_string_bx, @function
n477_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n477_lit_string_α:      mov              r11, 232
                        mov              qword ptr [rbp + 1360], 2            # result
                        mov              dword ptr [rbp + 1364], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_748_0]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n478_lit_integer_α
.Llit_string_α_748_0:   .quad            .Llit_string_α_748_0_s
.Llit_string_α_748_0_s: .string          "."
                        .size            n477_lit_string_bx, .-n477_lit_string_bx
                        .type            n478_lit_integer_bx, @function
n478_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_integer_α:     mov              r11, 233
                        mov              qword ptr [rbp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_749_0]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n479_lit_string_α
.Llit_integer_α_749_0:  .quad            99
                        .size            n478_lit_integer_bx, .-n478_lit_integer_bx
                        .type            n479_lit_string_bx, @function
n479_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_string_α:      mov              r11, 234
                        mov              qword ptr [rbp + 1248], 2            # result
                        mov              dword ptr [rbp + 1252], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_750_0]
                        mov              qword ptr [rbp + 1256], rax;         jmp   n480_lit_integer_α
.Llit_string_α_750_0:   .quad            .Llit_string_α_750_0_s
.Llit_string_α_750_0_s: .string          "."
                        .size            n479_lit_string_bx, .-n479_lit_string_bx
                        .type            n480_lit_integer_bx, @function
n480_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_integer_α:     mov              r11, 235
                        mov              qword ptr [rbp + 1152], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_751_0]
                        mov              qword ptr [rbp + 1160], rax;         jmp   n481_lit_string_α
.Llit_integer_α_751_0:  .quad            11
                        .size            n480_lit_integer_bx, .-n480_lit_integer_bx
                        .type            n481_lit_string_bx, @function
n481_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_string_α:      mov              r11, 236
                        mov              qword ptr [rbp + 1136], 2            # result
                        mov              dword ptr [rbp + 1140], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_752_0]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n482_lit_integer_α
.Llit_string_α_752_0:   .quad            .Llit_string_α_752_0_s
.Llit_string_α_752_0_s: .string          "."
                        .size            n481_lit_string_bx, .-n481_lit_string_bx
                        .type            n482_lit_integer_bx, @function
n482_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n482_lit_integer_α:     mov              r11, 237
                        mov              qword ptr [rbp + 1040], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_753_0]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n483_lit_string_α
.Llit_integer_α_753_0:  .quad            28
                        .size            n482_lit_integer_bx, .-n482_lit_integer_bx
                        .type            n483_lit_string_bx, @function
n483_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n483_lit_string_α:      mov              r11, 238
                        mov              qword ptr [rbp + 1024], 2            # result
                        mov              dword ptr [rbp + 1028], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_754_0]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n484_lit_integer_α
.Llit_string_α_754_0:   .quad            .Llit_string_α_754_0_s
.Llit_string_α_754_0_s: .string          "."
                        .size            n483_lit_string_bx, .-n483_lit_string_bx
                        .type            n484_lit_integer_bx, @function
n484_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n484_lit_integer_α:     mov              r11, 239
                        mov              qword ptr [rbp + 928], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_755_0]
                        mov              qword ptr [rbp + 936], rax;          jmp   n485_lit_string_α
.Llit_integer_α_755_0:  .quad            61
                        .size            n484_lit_integer_bx, .-n484_lit_integer_bx
                        .type            n485_lit_string_bx, @function
n485_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n485_lit_string_α:      mov              r11, 240
                        mov              qword ptr [rbp + 912], 2             # result
                        mov              dword ptr [rbp + 916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_756_0]
                        mov              qword ptr [rbp + 920], rax;          jmp   n486_lit_integer_α
.Llit_string_α_756_0:   .quad            .Llit_string_α_756_0_s
.Llit_string_α_756_0_s: .string          "."
                        .size            n485_lit_string_bx, .-n485_lit_string_bx
                        .type            n486_lit_integer_bx, @function
n486_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n486_lit_integer_α:     mov              r11, 241
                        mov              qword ptr [rbp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_757_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n487_lit_string_α
.Llit_integer_α_757_0:  .quad            74
                        .size            n486_lit_integer_bx, .-n486_lit_integer_bx
                        .type            n487_lit_string_bx, @function
n487_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n487_lit_string_α:      mov              r11, 242
                        mov              qword ptr [rbp + 800], 2             # result
                        mov              dword ptr [rbp + 804], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_758_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n488_lit_integer_α
.Llit_string_α_758_0:   .quad            .Llit_string_α_758_0_s
.Llit_string_α_758_0_s: .string          "."
                        .size            n487_lit_string_bx, .-n487_lit_string_bx
                        .type            n488_lit_integer_bx, @function
n488_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_integer_α:     mov              r11, 243
                        mov              qword ptr [rbp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_759_0]
                        mov              qword ptr [rbp + 712], rax;          jmp   n489_lit_string_α
.Llit_integer_α_759_0:  .quad            18
                        .size            n488_lit_integer_bx, .-n488_lit_integer_bx
                        .type            n489_lit_string_bx, @function
n489_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_string_α:      mov              r11, 244
                        mov              qword ptr [rbp + 688], 2             # result
                        mov              dword ptr [rbp + 692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_760_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n490_lit_integer_α
.Llit_string_α_760_0:   .quad            .Llit_string_α_760_0_s
.Llit_string_α_760_0_s: .string          "."
                        .size            n489_lit_string_bx, .-n489_lit_string_bx
                        .type            n490_lit_integer_bx, @function
n490_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_integer_α:     mov              r11, 245
                        mov              qword ptr [rbp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_761_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n491_lit_string_α
.Llit_integer_α_761_0:  .quad            92
                        .size            n490_lit_integer_bx, .-n490_lit_integer_bx
                        .type            n491_lit_string_bx, @function
n491_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_string_α:      mov              r11, 246
                        mov              qword ptr [rbp + 576], 2             # result
                        mov              dword ptr [rbp + 580], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_762_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n492_lit_integer_α
.Llit_string_α_762_0:   .quad            .Llit_string_α_762_0_s
.Llit_string_α_762_0_s: .string          "."
                        .size            n491_lit_string_bx, .-n491_lit_string_bx
                        .type            n492_lit_integer_bx, @function
n492_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_integer_α:     mov              r11, 247
                        mov              qword ptr [rbp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_763_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n493_lit_string_α
.Llit_integer_α_763_0:  .quad            40
                        .size            n492_lit_integer_bx, .-n492_lit_integer_bx
                        .type            n493_lit_string_bx, @function
n493_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n493_lit_string_α:      mov              r11, 248
                        mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_764_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n494_lit_integer_α
.Llit_string_α_764_0:   .quad            .Llit_string_α_764_0_s
.Llit_string_α_764_0_s: .string          "."
                        .size            n493_lit_string_bx, .-n493_lit_string_bx
                        .type            n494_lit_integer_bx, @function
n494_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n494_lit_integer_α:     mov              r11, 249
                        mov              qword ptr [rbp + 368], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_765_0]
                        mov              qword ptr [rbp + 376], rax;          jmp   n495_lit_string_α
.Llit_integer_α_765_0:  .quad            53
                        .size            n494_lit_integer_bx, .-n494_lit_integer_bx
                        .type            n495_lit_string_bx, @function
n495_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_string_α:      mov              r11, 250
                        mov              qword ptr [rbp + 352], 2             # result
                        mov              dword ptr [rbp + 356], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_766_0]
                        mov              qword ptr [rbp + 360], rax;          jmp   n496_lit_integer_α
.Llit_string_α_766_0:   .quad            .Llit_string_α_766_0_s
.Llit_string_α_766_0_s: .string          "."
                        .size            n495_lit_string_bx, .-n495_lit_string_bx
                        .type            n496_lit_integer_bx, @function
n496_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n496_lit_integer_α:     mov              r11, 251
                        mov              qword ptr [rbp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_767_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n497_lit_string_α
.Llit_integer_α_767_0:  .quad            59
                        .size            n496_lit_integer_bx, .-n496_lit_integer_bx
                        .type            n497_lit_string_bx, @function
n497_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_string_α:      mov              r11, 252
                        mov              qword ptr [rbp + 240], 2             # result
                        mov              dword ptr [rbp + 244], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_768_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n498_lit_integer_α
.Llit_string_α_768_0:   .quad            .Llit_string_α_768_0_s
.Llit_string_α_768_0_s: .string          "."
                        .size            n497_lit_string_bx, .-n497_lit_string_bx
                        .type            n498_lit_integer_bx, @function
n498_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_integer_α:     mov              r11, 253
                        mov              qword ptr [rbp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_769_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n499_lit_string_α
.Llit_integer_α_769_0:  .quad            8
                        .size            n498_lit_integer_bx, .-n498_lit_integer_bx
                        .type            n499_lit_string_bx, @function
n499_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n499_lit_string_α:      mov              r11, 254
                        mov              qword ptr [rbp + 128], 2             # result
                        mov              dword ptr [rbp + 132], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_770_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n500_call_α
.Llit_string_α_770_0:   .quad            .Llit_string_α_770_0_s
.Llit_string_α_770_0_s: .string          "[]"
                        .size            n499_lit_string_bx, .-n499_lit_string_bx
                        .type            n500_call_bx, @function
n500_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n500_call_α:            mov              r11, 255
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 152]
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
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n501_call_α
n500_call_β:            mov              r11, 255;                            jmp   define$2F2_ω
                        .size            n500_call_bx, .-n500_call_bx
                        .type            n501_call_bx, @function
n501_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n501_call_α:            mov              r11, 256
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n502_call_α
n501_call_β:            mov              r11, 256;                            jmp   define$2F2_ω
                        .size            n501_call_bx, .-n501_call_bx
                        .type            n502_call_bx, @function
n502_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n502_call_α:            mov              r11, 257
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 280]
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
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n503_call_α
n502_call_β:            mov              r11, 257;                            jmp   define$2F2_ω
                        .size            n502_call_bx, .-n502_call_bx
                        .type            n503_call_bx, @function
n503_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n503_call_α:            mov              r11, 258
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 392]
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
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n504_call_α
n503_call_β:            mov              r11, 258;                            jmp   define$2F2_ω
                        .size            n503_call_bx, .-n503_call_bx
                        .type            n504_call_bx, @function
n504_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n504_call_α:            mov              r11, 259
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 504]
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
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n505_call_α
n504_call_β:            mov              r11, 259;                            jmp   define$2F2_ω
                        .size            n504_call_bx, .-n504_call_bx
                        .type            n505_call_bx, @function
n505_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n505_call_α:            mov              r11, 260
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 736]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n506_call_α
n505_call_β:            mov              r11, 260;                            jmp   define$2F2_ω
                        .size            n505_call_bx, .-n505_call_bx
                        .type            n506_call_bx, @function
n506_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n506_call_α:            mov              r11, 261
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n507_call_α
n506_call_β:            mov              r11, 261;                            jmp   define$2F2_ω
                        .size            n506_call_bx, .-n506_call_bx
                        .type            n507_call_bx, @function
n507_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n507_call_α:            mov              r11, 262
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 960]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n508_call_α
n507_call_β:            mov              r11, 262;                            jmp   define$2F2_ω
                        .size            n507_call_bx, .-n507_call_bx
                        .type            n508_call_bx, @function
n508_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n508_call_α:            mov              r11, 263
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n509_call_α
n508_call_β:            mov              r11, 263;                            jmp   define$2F2_ω
                        .size            n508_call_bx, .-n508_call_bx
                        .type            n509_call_bx, @function
n509_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n509_call_α:            mov              r11, 264
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1184]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n510_call_α
n509_call_β:            mov              r11, 264;                            jmp   define$2F2_ω
                        .size            n509_call_bx, .-n509_call_bx
                        .type            n510_call_bx, @function
n510_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n510_call_α:            mov              r11, 265
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1176]
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
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n511_call_α
n510_call_β:            mov              r11, 265;                            jmp   define$2F2_ω
                        .size            n510_call_bx, .-n510_call_bx
                        .type            n511_call_bx, @function
n511_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n511_call_α:            mov              r11, 266
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1408]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n512_call_α
n511_call_β:            mov              r11, 266;                            jmp   define$2F2_ω
                        .size            n511_call_bx, .-n511_call_bx
                        .type            n512_call_bx, @function
n512_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n512_call_α:            mov              r11, 267
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1520]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n513_call_α
n512_call_β:            mov              r11, 267;                            jmp   define$2F2_ω
                        .size            n512_call_bx, .-n512_call_bx
                        .type            n513_call_bx, @function
n513_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n513_call_α:            mov              r11, 268
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1640], rax
                        lea              rdi, [rbp + 1632]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n514_call_α
n513_call_β:            mov              r11, 268;                            jmp   define$2F2_ω
                        .size            n513_call_bx, .-n513_call_bx
                        .type            n514_call_bx, @function
n514_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n514_call_α:            mov              r11, 269
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1624]
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
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n515_call_α
n514_call_β:            mov              r11, 269;                            jmp   define$2F2_ω
                        .size            n514_call_bx, .-n514_call_bx
                        .type            n515_call_bx, @function
n515_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n515_call_α:            mov              r11, 270
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
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n516_call_α
n515_call_β:            mov              r11, 270;                            jmp   define$2F2_ω
                        .size            n515_call_bx, .-n515_call_bx
                        .type            n516_call_bx, @function
n516_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n516_call_α:            mov              r11, 271
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
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n517_call_α
n516_call_β:            mov              r11, 271;                            jmp   define$2F2_ω
                        .size            n516_call_bx, .-n516_call_bx
                        .type            n517_call_bx, @function
n517_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n517_call_α:            mov              r11, 272
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
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n518_call_α
n517_call_β:            mov              r11, 272;                            jmp   define$2F2_ω
                        .size            n517_call_bx, .-n517_call_bx
                        .type            n518_call_bx, @function
n518_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n518_call_α:            mov              r11, 273
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2072]
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
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n519_call_α
n518_call_β:            mov              r11, 273;                            jmp   define$2F2_ω
                        .size            n518_call_bx, .-n518_call_bx
                        .type            n519_call_bx, @function
n519_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n519_call_α:            mov              r11, 274
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2344], rax
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2280]
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
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n520_call_α
n519_call_β:            mov              r11, 274;                            jmp   define$2F2_ω
                        .size            n519_call_bx, .-n519_call_bx
                        .type            n520_call_bx, @function
n520_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n520_call_α:            mov              r11, 275
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2456], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2440], rax
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2424], rax
                        lea              rdi, [rbp + 2416]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n521_call_α
n520_call_β:            mov              r11, 275;                            jmp   define$2F2_ω
                        .size            n520_call_bx, .-n520_call_bx
                        .type            n521_call_bx, @function
n521_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n521_call_α:            mov              r11, 276
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2568], rax
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2552], rax
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2536], rax
                        lea              rdi, [rbp + 2528]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n522_call_α
n521_call_β:            mov              r11, 276;                            jmp   define$2F2_ω
                        .size            n521_call_bx, .-n521_call_bx
                        .type            n522_call_bx, @function
n522_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n522_call_α:            mov              r11, 277
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2520]
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
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n523_call_α
n522_call_β:            mov              r11, 277;                            jmp   define$2F2_ω
                        .size            n522_call_bx, .-n522_call_bx
                        .type            n523_call_bx, @function
n523_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n523_call_α:            mov              r11, 278
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2792], rax
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2776], rax
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2760], rax
                        lea              rdi, [rbp + 2752]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n524_call_α
n523_call_β:            mov              r11, 278;                            jmp   define$2F2_ω
                        .size            n523_call_bx, .-n523_call_bx
                        .type            n524_call_bx, @function
n524_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n524_call_α:            mov              r11, 279
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2904], rax
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2888], rax
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2872], rax
                        lea              rdi, [rbp + 2864]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n525_call_α
n524_call_β:            mov              r11, 279;                            jmp   define$2F2_ω
                        .size            n524_call_bx, .-n524_call_bx
                        .type            n525_call_bx, @function
n525_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n525_call_α:            mov              r11, 280
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 3016], rax
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 3000], rax
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 2984], rax
                        lea              rdi, [rbp + 2976]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n526_call_α
n525_call_β:            mov              r11, 280;                            jmp   define$2F2_ω
                        .size            n525_call_bx, .-n525_call_bx
                        .type            n526_call_bx, @function
n526_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n526_call_α:            mov              r11, 281
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 2968]
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
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n527_call_α
n526_call_β:            mov              r11, 281;                            jmp   define$2F2_ω
                        .size            n526_call_bx, .-n526_call_bx
                        .type            n527_call_bx, @function
n527_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n527_call_α:            mov              r11, 282
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
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n528_call_α
n527_call_β:            mov              r11, 282;                            jmp   define$2F2_ω
                        .size            n527_call_bx, .-n527_call_bx
                        .type            n528_call_bx, @function
n528_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n528_call_α:            mov              r11, 283
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3352], rax
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3336], rax
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3320], rax
                        lea              rdi, [rbp + 3312]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n529_call_α
n528_call_β:            mov              r11, 283;                            jmp   define$2F2_ω
                        .size            n528_call_bx, .-n528_call_bx
                        .type            n529_call_bx, @function
n529_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n529_call_α:            mov              r11, 284
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3464], rax
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3448], rax
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3432], rax
                        lea              rdi, [rbp + 3424]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n530_call_α
n529_call_β:            mov              r11, 284;                            jmp   define$2F2_ω
                        .size            n529_call_bx, .-n529_call_bx
                        .type            n530_call_bx, @function
n530_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n530_call_α:            mov              r11, 285
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3576], rax
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3560], rax
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 3544], rax
                        lea              rdi, [rbp + 3536]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n531_call_α
n530_call_β:            mov              r11, 285;                            jmp   define$2F2_ω
                        .size            n530_call_bx, .-n530_call_bx
                        .type            n531_call_bx, @function
n531_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n531_call_α:            mov              r11, 286
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3688], rax
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3672], rax
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3656], rax
                        lea              rdi, [rbp + 3648]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n532_call_α
n531_call_β:            mov              r11, 286;                            jmp   define$2F2_ω
                        .size            n531_call_bx, .-n531_call_bx
                        .type            n532_call_bx, @function
n532_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n532_call_α:            mov              r11, 287
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3800], rax
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 3776], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 3784], rax
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 3768], rax
                        lea              rdi, [rbp + 3760]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n533_call_α
n532_call_β:            mov              r11, 287;                            jmp   define$2F2_ω
                        .size            n532_call_bx, .-n532_call_bx
                        .type            n533_call_bx, @function
n533_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n533_call_α:            mov              r11, 288
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3912], rax
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 3896], rax
                        mov              rax, qword ptr [rbp + 3936]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 3944]
                        mov              qword ptr [rbp + 3880], rax
                        lea              rdi, [rbp + 3872]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n534_call_α
n533_call_β:            mov              r11, 288;                            jmp   define$2F2_ω
                        .size            n533_call_bx, .-n533_call_bx
                        .type            n534_call_bx, @function
n534_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n534_call_α:            mov              r11, 289
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 4024], rax
                        mov              rax, qword ptr [rbp + 3952]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 4008], rax
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 3992], rax
                        lea              rdi, [rbp + 3984]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n535_call_α
n534_call_β:            mov              r11, 289;                            jmp   define$2F2_ω
                        .size            n534_call_bx, .-n534_call_bx
                        .type            n535_call_bx, @function
n535_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n535_call_α:            mov              r11, 290
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 4128], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 4136], rax
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 4120], rax
                        mov              rax, qword ptr [rbp + 4160]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4168]
                        mov              qword ptr [rbp + 4104], rax
                        lea              rdi, [rbp + 4096]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n536_call_α
n535_call_β:            mov              r11, 290;                            jmp   define$2F2_ω
                        .size            n535_call_bx, .-n535_call_bx
                        .type            n536_call_bx, @function
n536_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n536_call_α:            mov              r11, 291
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 4240], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 4248], rax
                        mov              rax, qword ptr [rbp + 4176]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 4232], rax
                        mov              rax, qword ptr [rbp + 4272]
                        mov              qword ptr [rbp + 4208], rax
                        mov              rax, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 4216], rax
                        lea              rdi, [rbp + 4208]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4192], rax
                        mov              qword ptr [rbp + 4200], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n537_call_α
n536_call_β:            mov              r11, 291;                            jmp   define$2F2_ω
                        .size            n536_call_bx, .-n536_call_bx
                        .type            n537_call_bx, @function
n537_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n537_call_α:            mov              r11, 292
                        mov              rax, qword ptr [rbp + 4192]
                        mov              qword ptr [rbp + 4352], rax
                        mov              rax, qword ptr [rbp + 4200]
                        mov              qword ptr [rbp + 4360], rax
                        mov              rax, qword ptr [rbp + 4288]
                        mov              qword ptr [rbp + 4336], rax
                        mov              rax, qword ptr [rbp + 4296]
                        mov              qword ptr [rbp + 4344], rax
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4328], rax
                        lea              rdi, [rbp + 4320]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n538_call_α
n537_call_β:            mov              r11, 292;                            jmp   define$2F2_ω
                        .size            n537_call_bx, .-n537_call_bx
                        .type            n538_call_bx, @function
n538_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n538_call_α:            mov              r11, 293
                        mov              rax, qword ptr [rbp + 4304]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 4472], rax
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 4456], rax
                        mov              rax, qword ptr [rbp + 4496]
                        mov              qword ptr [rbp + 4432], rax
                        mov              rax, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 4440], rax
                        lea              rdi, [rbp + 4432]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n539_call_α
n538_call_β:            mov              r11, 293;                            jmp   define$2F2_ω
                        .size            n538_call_bx, .-n538_call_bx
                        .type            n539_call_bx, @function
n539_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n539_call_α:            mov              r11, 294
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 4584], rax
                        mov              rax, qword ptr [rbp + 4512]
                        mov              qword ptr [rbp + 4560], rax
                        mov              rax, qword ptr [rbp + 4520]
                        mov              qword ptr [rbp + 4568], rax
                        mov              rax, qword ptr [rbp + 4608]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 4616]
                        mov              qword ptr [rbp + 4552], rax
                        lea              rdi, [rbp + 4544]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n540_call_α
n539_call_β:            mov              r11, 294;                            jmp   define$2F2_ω
                        .size            n539_call_bx, .-n539_call_bx
                        .type            n540_call_bx, @function
n540_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n540_call_α:            mov              r11, 295
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 4688], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 4696], rax
                        mov              rax, qword ptr [rbp + 4624]
                        mov              qword ptr [rbp + 4672], rax
                        mov              rax, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 4680], rax
                        mov              rax, qword ptr [rbp + 4720]
                        mov              qword ptr [rbp + 4656], rax
                        mov              rax, qword ptr [rbp + 4728]
                        mov              qword ptr [rbp + 4664], rax
                        lea              rdi, [rbp + 4656]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4640], rax
                        mov              qword ptr [rbp + 4648], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n541_call_α
n540_call_β:            mov              r11, 295;                            jmp   define$2F2_ω
                        .size            n540_call_bx, .-n540_call_bx
                        .type            n541_call_bx, @function
n541_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n541_call_α:            mov              r11, 296
                        mov              rax, qword ptr [rbp + 4640]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 4648]
                        mov              qword ptr [rbp + 4808], rax
                        mov              rax, qword ptr [rbp + 4736]
                        mov              qword ptr [rbp + 4784], rax
                        mov              rax, qword ptr [rbp + 4744]
                        mov              qword ptr [rbp + 4792], rax
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 4776], rax
                        lea              rdi, [rbp + 4768]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n542_call_α
n541_call_β:            mov              r11, 296;                            jmp   define$2F2_ω
                        .size            n541_call_bx, .-n541_call_bx
                        .type            n542_call_bx, @function
n542_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n542_call_α:            mov              r11, 297
                        mov              rax, qword ptr [rbp + 4752]
                        mov              qword ptr [rbp + 4912], rax
                        mov              rax, qword ptr [rbp + 4760]
                        mov              qword ptr [rbp + 4920], rax
                        mov              rax, qword ptr [rbp + 4848]
                        mov              qword ptr [rbp + 4896], rax
                        mov              rax, qword ptr [rbp + 4856]
                        mov              qword ptr [rbp + 4904], rax
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 4880], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 4888], rax
                        lea              rdi, [rbp + 4880]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n543_call_α
n542_call_β:            mov              r11, 297;                            jmp   define$2F2_ω
                        .size            n542_call_bx, .-n542_call_bx
                        .type            n543_call_bx, @function
n543_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n543_call_α:            mov              r11, 298
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 5024], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 5032], rax
                        mov              rax, qword ptr [rbp + 4960]
                        mov              qword ptr [rbp + 5008], rax
                        mov              rax, qword ptr [rbp + 4968]
                        mov              qword ptr [rbp + 5016], rax
                        mov              rax, qword ptr [rbp + 5056]
                        mov              qword ptr [rbp + 4992], rax
                        mov              rax, qword ptr [rbp + 5064]
                        mov              qword ptr [rbp + 5000], rax
                        lea              rdi, [rbp + 4992]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n544_call_α
n543_call_β:            mov              r11, 298;                            jmp   define$2F2_ω
                        .size            n543_call_bx, .-n543_call_bx
                        .type            n544_call_bx, @function
n544_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n544_call_α:            mov              r11, 299
                        mov              rax, qword ptr [rbp + 4976]
                        mov              qword ptr [rbp + 5136], rax
                        mov              rax, qword ptr [rbp + 4984]
                        mov              qword ptr [rbp + 5144], rax
                        mov              rax, qword ptr [rbp + 5072]
                        mov              qword ptr [rbp + 5120], rax
                        mov              rax, qword ptr [rbp + 5080]
                        mov              qword ptr [rbp + 5128], rax
                        mov              rax, qword ptr [rbp + 5168]
                        mov              qword ptr [rbp + 5104], rax
                        mov              rax, qword ptr [rbp + 5176]
                        mov              qword ptr [rbp + 5112], rax
                        lea              rdi, [rbp + 5104]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n545_call_α
n544_call_β:            mov              r11, 299;                            jmp   define$2F2_ω
                        .size            n544_call_bx, .-n544_call_bx
                        .type            n545_call_bx, @function
n545_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n545_call_α:            mov              r11, 300
                        mov              rax, qword ptr [rbp + 5088]
                        mov              qword ptr [rbp + 5248], rax
                        mov              rax, qword ptr [rbp + 5096]
                        mov              qword ptr [rbp + 5256], rax
                        mov              rax, qword ptr [rbp + 5184]
                        mov              qword ptr [rbp + 5232], rax
                        mov              rax, qword ptr [rbp + 5192]
                        mov              qword ptr [rbp + 5240], rax
                        mov              rax, qword ptr [rbp + 5280]
                        mov              qword ptr [rbp + 5216], rax
                        mov              rax, qword ptr [rbp + 5288]
                        mov              qword ptr [rbp + 5224], rax
                        lea              rdi, [rbp + 5216]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5200], rax
                        mov              qword ptr [rbp + 5208], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n546_call_α
n545_call_β:            mov              r11, 300;                            jmp   define$2F2_ω
                        .size            n545_call_bx, .-n545_call_bx
                        .type            n546_call_bx, @function
n546_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n546_call_α:            mov              r11, 301
                        mov              rax, qword ptr [rbp + 5200]
                        mov              qword ptr [rbp + 5360], rax
                        mov              rax, qword ptr [rbp + 5208]
                        mov              qword ptr [rbp + 5368], rax
                        mov              rax, qword ptr [rbp + 5296]
                        mov              qword ptr [rbp + 5344], rax
                        mov              rax, qword ptr [rbp + 5304]
                        mov              qword ptr [rbp + 5352], rax
                        mov              rax, qword ptr [rbp + 5392]
                        mov              qword ptr [rbp + 5328], rax
                        mov              rax, qword ptr [rbp + 5400]
                        mov              qword ptr [rbp + 5336], rax
                        lea              rdi, [rbp + 5328]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5312], rax
                        mov              qword ptr [rbp + 5320], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n547_call_α
n546_call_β:            mov              r11, 301;                            jmp   define$2F2_ω
                        .size            n546_call_bx, .-n546_call_bx
                        .type            n547_call_bx, @function
n547_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n547_call_α:            mov              r11, 302
                        mov              rax, qword ptr [rbp + 5312]
                        mov              qword ptr [rbp + 5472], rax
                        mov              rax, qword ptr [rbp + 5320]
                        mov              qword ptr [rbp + 5480], rax
                        mov              rax, qword ptr [rbp + 5408]
                        mov              qword ptr [rbp + 5456], rax
                        mov              rax, qword ptr [rbp + 5416]
                        mov              qword ptr [rbp + 5464], rax
                        mov              rax, qword ptr [rbp + 5504]
                        mov              qword ptr [rbp + 5440], rax
                        mov              rax, qword ptr [rbp + 5512]
                        mov              qword ptr [rbp + 5448], rax
                        lea              rdi, [rbp + 5440]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5424], rax
                        mov              qword ptr [rbp + 5432], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n548_call_α
n547_call_β:            mov              r11, 302;                            jmp   define$2F2_ω
                        .size            n547_call_bx, .-n547_call_bx
                        .type            n548_call_bx, @function
n548_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n548_call_α:            mov              r11, 303
                        mov              rax, qword ptr [rbp + 5424]
                        mov              qword ptr [rbp + 5584], rax
                        mov              rax, qword ptr [rbp + 5432]
                        mov              qword ptr [rbp + 5592], rax
                        mov              rax, qword ptr [rbp + 5520]
                        mov              qword ptr [rbp + 5568], rax
                        mov              rax, qword ptr [rbp + 5528]
                        mov              qword ptr [rbp + 5576], rax
                        mov              rax, qword ptr [rbp + 5616]
                        mov              qword ptr [rbp + 5552], rax
                        mov              rax, qword ptr [rbp + 5624]
                        mov              qword ptr [rbp + 5560], rax
                        lea              rdi, [rbp + 5552]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5536], rax
                        mov              qword ptr [rbp + 5544], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n549_call_α
n548_call_β:            mov              r11, 303;                            jmp   define$2F2_ω
                        .size            n548_call_bx, .-n548_call_bx
                        .type            n549_call_bx, @function
n549_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n549_call_α:            mov              r11, 304
                        mov              rax, qword ptr [rbp + 5536]
                        mov              qword ptr [rbp + 5696], rax
                        mov              rax, qword ptr [rbp + 5544]
                        mov              qword ptr [rbp + 5704], rax
                        mov              rax, qword ptr [rbp + 5632]
                        mov              qword ptr [rbp + 5680], rax
                        mov              rax, qword ptr [rbp + 5640]
                        mov              qword ptr [rbp + 5688], rax
                        mov              rax, qword ptr [rbp + 5728]
                        mov              qword ptr [rbp + 5664], rax
                        mov              rax, qword ptr [rbp + 5736]
                        mov              qword ptr [rbp + 5672], rax
                        lea              rdi, [rbp + 5664]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n550_var_ref_α
n549_call_β:            mov              r11, 304;                            jmp   define$2F2_ω
                        .size            n549_call_bx, .-n549_call_bx
                        .type            n550_var_ref_bx, @function
n550_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n550_var_ref_α:         mov              r11, 305
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9808]
                        mov              qword ptr [rbp + 5744], rax
                        mov              qword ptr [rbp + 5752], rdx;         jmp   n551_lit_string_α
                        .size            n550_var_ref_bx, .-n550_var_ref_bx
                        .type            n551_lit_string_bx, @function
n551_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n551_lit_string_α:      mov              r11, 306
                        mov              qword ptr [rbp + 5760], 2            # result
                        mov              dword ptr [rbp + 5764], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_823_0]
                        mov              qword ptr [rbp + 5768], rax;         jmp   n552_call_α
.Llit_string_α_823_0:   .quad            .Llit_string_α_823_0_s
.Llit_string_α_823_0_s: .string          "[]"
                        .size            n551_lit_string_bx, .-n551_lit_string_bx
                        .type            n552_call_bx, @function
n552_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n552_call_α:            mov              r11, 307
                        mov              rax, qword ptr [rbp + 5760]
                        mov              qword ptr [rbp + 5840], rax
                        mov              rax, qword ptr [rbp + 5768]
                        mov              qword ptr [rbp + 5848], rax
                        mov              rax, qword ptr [rbp + 5744]
                        mov              qword ptr [rbp + 5824], rax
                        mov              rax, qword ptr [rbp + 5752]
                        mov              qword ptr [rbp + 5832], rax
                        mov              rax, qword ptr [rbp + 5648]
                        mov              qword ptr [rbp + 5808], rax
                        mov              rax, qword ptr [rbp + 5656]
                        mov              qword ptr [rbp + 5816], rax
                        mov              rax, qword ptr [rbp + 5872]
                        mov              qword ptr [rbp + 5792], rax
                        mov              rax, qword ptr [rbp + 5880]
                        mov              qword ptr [rbp + 5800], rax
                        lea              rdi, [rbp + 5792]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5776], rax
                        mov              qword ptr [rbp + 5784], rdx
                        cmp              al, 104;                             je    define$2F2_step
                                                                              jmp   n553_call_α
n552_call_β:            mov              r11, 307;                            jmp   define$2F2_step
                        .size            n552_call_bx, .-n552_call_bx
                        .type            n553_call_bx, @function
n553_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n553_call_α:            mov              r11, 308
                        mov              rax, qword ptr [rbp + 5776]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 5784]
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
                        cmp              al, 104;                             je    define$2F2_step
                                                                              jmp   define$2F2_γ
n553_call_β:            mov              r11, 308;                            jmp   define$2F2_step
                        .size            n553_call_bx, .-n553_call_bx
                        .type            n554_var_ref_bx, @function
n554_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n554_var_ref_α:         mov              r11, 309
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6944], rax
                        mov              qword ptr [rbp + 6952], rdx;         jmp   n555_lit_string_α
                        .size            n554_var_ref_bx, .-n554_var_ref_bx
                        .type            n555_lit_string_bx, @function
n555_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n555_lit_string_α:      mov              r11, 310
                        mov              qword ptr [rbp + 7216], 2            # result
                        mov              dword ptr [rbp + 7220], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_828_0]
                        mov              qword ptr [rbp + 7224], rax;         jmp   n556_lit_string_α
.Llit_string_α_828_0:   .quad            .Llit_string_α_828_0_s
.Llit_string_α_828_0_s: .string          "qsort"
                        .size            n555_lit_string_bx, .-n555_lit_string_bx
                        .type            n556_lit_string_bx, @function
n556_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n556_lit_string_α:      mov              r11, 311
                        mov              qword ptr [rbp + 7072], 2            # result
                        mov              dword ptr [rbp + 7076], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_829_0]
                        mov              qword ptr [rbp + 7080], rax;         jmp   n557_var_ref_α
.Llit_string_α_829_0:   .quad            .Llit_string_α_829_0_s
.Llit_string_α_829_0_s: .string          "."
                        .size            n556_lit_string_bx, .-n556_lit_string_bx
                        .type            n557_var_ref_bx, @function
n557_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n557_var_ref_α:         mov              r11, 312
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9808]
                        mov              qword ptr [rbp + 6976], rax
                        mov              qword ptr [rbp + 6984], rdx;         jmp   n558_var_ref_α
                        .size            n557_var_ref_bx, .-n557_var_ref_bx
                        .type            n558_var_ref_bx, @function
n558_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n558_var_ref_α:         mov              r11, 313
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9824]
                        mov              qword ptr [rbp + 6960], rax
                        mov              qword ptr [rbp + 6968], rdx;         jmp   n559_call_α
                        .size            n558_var_ref_bx, .-n558_var_ref_bx
                        .type            n559_call_bx, @function
n559_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n559_call_α:            mov              r11, 314
                        mov              rax, qword ptr [rbp + 6960]
                        mov              qword ptr [rbp + 7040], rax
                        mov              rax, qword ptr [rbp + 6968]
                        mov              qword ptr [rbp + 7048], rax
                        mov              rax, qword ptr [rbp + 6976]
                        mov              qword ptr [rbp + 7024], rax
                        mov              rax, qword ptr [rbp + 6984]
                        mov              qword ptr [rbp + 7032], rax
                        mov              rax, qword ptr [rbp + 7072]
                        mov              qword ptr [rbp + 7008], rax
                        mov              rax, qword ptr [rbp + 7080]
                        mov              qword ptr [rbp + 7016], rax
                        lea              rdi, [rbp + 7008]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6992], rax
                        mov              qword ptr [rbp + 7000], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n560_var_ref_α
n559_call_β:            mov              r11, 314;                            jmp   define$2F2_ω
                        .size            n559_call_bx, .-n559_call_bx
                        .type            n560_var_ref_bx, @function
n560_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n560_var_ref_α:         mov              r11, 315
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9904]
                        mov              qword ptr [rbp + 7088], rax
                        mov              qword ptr [rbp + 7096], rdx;         jmp   n561_var_ref_α
                        .size            n560_var_ref_bx, .-n560_var_ref_bx
                        .type            n561_var_ref_bx, @function
n561_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n561_var_ref_α:         mov              r11, 316
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9888]
                        mov              qword ptr [rbp + 7104], rax
                        mov              qword ptr [rbp + 7112], rdx;         jmp   n562_call_α
                        .size            n561_var_ref_bx, .-n561_var_ref_bx
                        .type            n562_call_bx, @function
n562_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n562_call_α:            mov              r11, 317
                        mov              rax, qword ptr [rbp + 7104]
                        mov              qword ptr [rbp + 7184], rax
                        mov              rax, qword ptr [rbp + 7112]
                        mov              qword ptr [rbp + 7192], rax
                        mov              rax, qword ptr [rbp + 7088]
                        mov              qword ptr [rbp + 7168], rax
                        mov              rax, qword ptr [rbp + 7096]
                        mov              qword ptr [rbp + 7176], rax
                        mov              rax, qword ptr [rbp + 6992]
                        mov              qword ptr [rbp + 7152], rax
                        mov              rax, qword ptr [rbp + 7000]
                        mov              qword ptr [rbp + 7160], rax
                        mov              rax, qword ptr [rbp + 7216]
                        mov              qword ptr [rbp + 7136], rax
                        mov              rax, qword ptr [rbp + 7224]
                        mov              qword ptr [rbp + 7144], rax
                        lea              rdi, [rbp + 7136]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7120], rax
                        mov              qword ptr [rbp + 7128], rdx
                        cmp              al, 104;                             je    define$2F2_step
                                                                              jmp   n563_call_α
n562_call_β:            mov              r11, 317;                            jmp   define$2F2_step
                        .size            n562_call_bx, .-n562_call_bx
                        .type            n563_call_bx, @function
n563_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n563_call_α:            mov              r11, 318
                        mov              rax, qword ptr [rbp + 7120]
                        mov              qword ptr [rbp + 6912], rax
                        mov              rax, qword ptr [rbp + 7128]
                        mov              qword ptr [rbp + 6920], rax
                        mov              rax, qword ptr [rbp + 6944]
                        mov              qword ptr [rbp + 6896], rax
                        mov              rax, qword ptr [rbp + 6952]
                        mov              qword ptr [rbp + 6904], rax
                        lea              rdi, [rbp + 6896]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx
                        cmp              al, 104;                             je    define$2F2_step
                                                                              jmp   n564_var_ref_α
n563_call_β:            mov              r11, 318;                            jmp   define$2F2_step
                        .size            n563_call_bx, .-n563_call_bx
                        .type            n564_var_ref_bx, @function
n564_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n564_var_ref_α:         mov              r11, 319
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6048], rax
                        mov              qword ptr [rbp + 6056], rdx;         jmp   n565_lit_string_α
                        .size            n564_var_ref_bx, .-n564_var_ref_bx
                        .type            n565_lit_string_bx, @function
n565_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n565_lit_string_α:      mov              r11, 320
                        mov              qword ptr [rbp + 6864], 2            # result
                        mov              dword ptr [rbp + 6868], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_843_0]
                        mov              qword ptr [rbp + 6872], rax;         jmp   n566_lit_string_α
.Llit_string_α_843_0:   .quad            .Llit_string_α_843_0_s
.Llit_string_α_843_0_s: .string          ","
                        .size            n565_lit_string_bx, .-n565_lit_string_bx
                        .type            n566_lit_string_bx, @function
n566_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n566_lit_string_α:      mov              r11, 321
                        mov              qword ptr [rbp + 6240], 2            # result
                        mov              dword ptr [rbp + 6244], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_844_0]
                        mov              qword ptr [rbp + 6248], rax;         jmp   n567_var_ref_α
.Llit_string_α_844_0:   .quad            .Llit_string_α_844_0_s
.Llit_string_α_844_0_s: .string          "partition"
                        .size            n566_lit_string_bx, .-n566_lit_string_bx
                        .type            n567_var_ref_bx, @function
n567_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n567_var_ref_α:         mov              r11, 322
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9824]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx;         jmp   n568_var_ref_α
                        .size            n567_var_ref_bx, .-n567_var_ref_bx
                        .type            n568_var_ref_bx, @function
n568_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n568_var_ref_α:         mov              r11, 323
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9808]
                        mov              qword ptr [rbp + 6080], rax
                        mov              qword ptr [rbp + 6088], rdx;         jmp   n569_var_ref_α
                        .size            n568_var_ref_bx, .-n568_var_ref_bx
                        .type            n569_var_ref_bx, @function
n569_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n569_var_ref_α:         mov              r11, 324
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9840]
                        mov              qword ptr [rbp + 6096], rax
                        mov              qword ptr [rbp + 6104], rdx;         jmp   n570_var_ref_α
                        .size            n569_var_ref_bx, .-n569_var_ref_bx
                        .type            n570_var_ref_bx, @function
n570_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n570_var_ref_α:         mov              r11, 325
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9856]
                        mov              qword ptr [rbp + 6112], rax
                        mov              qword ptr [rbp + 6120], rdx;         jmp   n571_call_α
                        .size            n570_var_ref_bx, .-n570_var_ref_bx
                        .type            n571_call_bx, @function
n571_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n571_call_α:            mov              r11, 326
                        mov              rax, qword ptr [rbp + 6112]
                        mov              qword ptr [rbp + 6208], rax
                        mov              rax, qword ptr [rbp + 6120]
                        mov              qword ptr [rbp + 6216], rax
                        mov              rax, qword ptr [rbp + 6096]
                        mov              qword ptr [rbp + 6192], rax
                        mov              rax, qword ptr [rbp + 6104]
                        mov              qword ptr [rbp + 6200], rax
                        mov              rax, qword ptr [rbp + 6080]
                        mov              qword ptr [rbp + 6176], rax
                        mov              rax, qword ptr [rbp + 6088]
                        mov              qword ptr [rbp + 6184], rax
                        mov              rax, qword ptr [rbp + 6064]
                        mov              qword ptr [rbp + 6160], rax
                        mov              rax, qword ptr [rbp + 6072]
                        mov              qword ptr [rbp + 6168], rax
                        mov              rax, qword ptr [rbp + 6240]
                        mov              qword ptr [rbp + 6144], rax
                        mov              rax, qword ptr [rbp + 6248]
                        mov              qword ptr [rbp + 6152], rax
                        lea              rdi, [rbp + 6144]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6128], rax
                        mov              qword ptr [rbp + 6136], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n572_lit_string_α
n571_call_β:            mov              r11, 326;                            jmp   define$2F2_ω
                        .size            n571_call_bx, .-n571_call_bx
                        .type            n572_lit_string_bx, @function
n572_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n572_lit_string_α:      mov              r11, 327
                        mov              qword ptr [rbp + 6768], 2            # result
                        mov              dword ptr [rbp + 6772], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_854_0]
                        mov              qword ptr [rbp + 6776], rax;         jmp   n573_lit_string_α
.Llit_string_α_854_0:   .quad            .Llit_string_α_854_0_s
.Llit_string_α_854_0_s: .string          ","
                        .size            n572_lit_string_bx, .-n572_lit_string_bx
                        .type            n573_lit_string_bx, @function
n573_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n573_lit_string_α:      mov              r11, 328
                        mov              qword ptr [rbp + 6400], 2            # result
                        mov              dword ptr [rbp + 6404], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_855_0]
                        mov              qword ptr [rbp + 6408], rax;         jmp   n574_var_ref_α
.Llit_string_α_855_0:   .quad            .Llit_string_α_855_0_s
.Llit_string_α_855_0_s: .string          "qsort"
                        .size            n573_lit_string_bx, .-n573_lit_string_bx
                        .type            n574_var_ref_bx, @function
n574_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n574_var_ref_α:         mov              r11, 329
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9856]
                        mov              qword ptr [rbp + 6256], rax
                        mov              qword ptr [rbp + 6264], rdx;         jmp   n575_var_ref_α
                        .size            n574_var_ref_bx, .-n574_var_ref_bx
                        .type            n575_var_ref_bx, @function
n575_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n575_var_ref_α:         mov              r11, 330
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9872]
                        mov              qword ptr [rbp + 6272], rax
                        mov              qword ptr [rbp + 6280], rdx;         jmp   n576_var_ref_α
                        .size            n575_var_ref_bx, .-n575_var_ref_bx
                        .type            n576_var_ref_bx, @function
n576_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n576_var_ref_α:         mov              r11, 331
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9888]
                        mov              qword ptr [rbp + 6288], rax
                        mov              qword ptr [rbp + 6296], rdx;         jmp   n577_call_α
                        .size            n576_var_ref_bx, .-n576_var_ref_bx
                        .type            n577_call_bx, @function
n577_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n577_call_α:            mov              r11, 332
                        mov              rax, qword ptr [rbp + 6288]
                        mov              qword ptr [rbp + 6368], rax
                        mov              rax, qword ptr [rbp + 6296]
                        mov              qword ptr [rbp + 6376], rax
                        mov              rax, qword ptr [rbp + 6272]
                        mov              qword ptr [rbp + 6352], rax
                        mov              rax, qword ptr [rbp + 6280]
                        mov              qword ptr [rbp + 6360], rax
                        mov              rax, qword ptr [rbp + 6256]
                        mov              qword ptr [rbp + 6336], rax
                        mov              rax, qword ptr [rbp + 6264]
                        mov              qword ptr [rbp + 6344], rax
                        mov              rax, qword ptr [rbp + 6400]
                        mov              qword ptr [rbp + 6320], rax
                        mov              rax, qword ptr [rbp + 6408]
                        mov              qword ptr [rbp + 6328], rax
                        lea              rdi, [rbp + 6320]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6304], rax
                        mov              qword ptr [rbp + 6312], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n578_lit_string_α
n577_call_β:            mov              r11, 332;                            jmp   define$2F2_ω
                        .size            n577_call_bx, .-n577_call_bx
                        .type            n578_lit_string_bx, @function
n578_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n578_lit_string_α:      mov              r11, 333
                        mov              qword ptr [rbp + 6672], 2            # result
                        mov              dword ptr [rbp + 6676], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_863_0]
                        mov              qword ptr [rbp + 6680], rax;         jmp   n579_var_ref_α
.Llit_string_α_863_0:   .quad            .Llit_string_α_863_0_s
.Llit_string_α_863_0_s: .string          "qsort"
                        .size            n578_lit_string_bx, .-n578_lit_string_bx
                        .type            n579_var_ref_bx, @function
n579_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n579_var_ref_α:         mov              r11, 334
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9840]
                        mov              qword ptr [rbp + 6416], rax
                        mov              qword ptr [rbp + 6424], rdx;         jmp   n580_var_ref_α
                        .size            n579_var_ref_bx, .-n579_var_ref_bx
                        .type            n580_var_ref_bx, @function
n580_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n580_var_ref_α:         mov              r11, 335
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9904]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx;         jmp   n581_lit_string_α
                        .size            n580_var_ref_bx, .-n580_var_ref_bx
                        .type            n581_lit_string_bx, @function
n581_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n581_lit_string_α:      mov              r11, 336
                        mov              qword ptr [rbp + 6560], 2            # result
                        mov              dword ptr [rbp + 6564], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_868_0]
                        mov              qword ptr [rbp + 6568], rax;         jmp   n582_var_ref_α
.Llit_string_α_868_0:   .quad            .Llit_string_α_868_0_s
.Llit_string_α_868_0_s: .string          "."
                        .size            n581_lit_string_bx, .-n581_lit_string_bx
                        .type            n582_var_ref_bx, @function
n582_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n582_var_ref_α:         mov              r11, 337
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9808]
                        mov              qword ptr [rbp + 6464], rax
                        mov              qword ptr [rbp + 6472], rdx;         jmp   n583_var_ref_α
                        .size            n582_var_ref_bx, .-n582_var_ref_bx
                        .type            n583_var_ref_bx, @function
n583_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n583_var_ref_α:         mov              r11, 338
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9872]
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx;         jmp   n584_call_α
                        .size            n583_var_ref_bx, .-n583_var_ref_bx
                        .type            n584_call_bx, @function
n584_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n584_call_α:            mov              r11, 339
                        mov              rax, qword ptr [rbp + 6448]
                        mov              qword ptr [rbp + 6528], rax
                        mov              rax, qword ptr [rbp + 6456]
                        mov              qword ptr [rbp + 6536], rax
                        mov              rax, qword ptr [rbp + 6464]
                        mov              qword ptr [rbp + 6512], rax
                        mov              rax, qword ptr [rbp + 6472]
                        mov              qword ptr [rbp + 6520], rax
                        mov              rax, qword ptr [rbp + 6560]
                        mov              qword ptr [rbp + 6496], rax
                        mov              rax, qword ptr [rbp + 6568]
                        mov              qword ptr [rbp + 6504], rax
                        lea              rdi, [rbp + 6496]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6480], rax
                        mov              qword ptr [rbp + 6488], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n585_call_α
n584_call_β:            mov              r11, 339;                            jmp   define$2F2_ω
                        .size            n584_call_bx, .-n584_call_bx
                        .type            n585_call_bx, @function
n585_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n585_call_α:            mov              r11, 340
                        mov              rax, qword ptr [rbp + 6480]
                        mov              qword ptr [rbp + 6640], rax
                        mov              rax, qword ptr [rbp + 6488]
                        mov              qword ptr [rbp + 6648], rax
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 6624], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 6632], rax
                        mov              rax, qword ptr [rbp + 6416]
                        mov              qword ptr [rbp + 6608], rax
                        mov              rax, qword ptr [rbp + 6424]
                        mov              qword ptr [rbp + 6616], rax
                        mov              rax, qword ptr [rbp + 6672]
                        mov              qword ptr [rbp + 6592], rax
                        mov              rax, qword ptr [rbp + 6680]
                        mov              qword ptr [rbp + 6600], rax
                        lea              rdi, [rbp + 6592]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6576], rax
                        mov              qword ptr [rbp + 6584], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n586_call_α
n585_call_β:            mov              r11, 340;                            jmp   define$2F2_ω
                        .size            n585_call_bx, .-n585_call_bx
                        .type            n586_call_bx, @function
n586_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n586_call_α:            mov              r11, 341
                        mov              rax, qword ptr [rbp + 6576]
                        mov              qword ptr [rbp + 6736], rax
                        mov              rax, qword ptr [rbp + 6584]
                        mov              qword ptr [rbp + 6744], rax
                        mov              rax, qword ptr [rbp + 6304]
                        mov              qword ptr [rbp + 6720], rax
                        mov              rax, qword ptr [rbp + 6312]
                        mov              qword ptr [rbp + 6728], rax
                        mov              rax, qword ptr [rbp + 6768]
                        mov              qword ptr [rbp + 6704], rax
                        mov              rax, qword ptr [rbp + 6776]
                        mov              qword ptr [rbp + 6712], rax
                        lea              rdi, [rbp + 6704]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n587_call_α
n586_call_β:            mov              r11, 341;                            jmp   define$2F2_ω
                        .size            n586_call_bx, .-n586_call_bx
                        .type            n587_call_bx, @function
n587_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n587_call_α:            mov              r11, 342
                        mov              rax, qword ptr [rbp + 6688]
                        mov              qword ptr [rbp + 6832], rax
                        mov              rax, qword ptr [rbp + 6696]
                        mov              qword ptr [rbp + 6840], rax
                        mov              rax, qword ptr [rbp + 6128]
                        mov              qword ptr [rbp + 6816], rax
                        mov              rax, qword ptr [rbp + 6136]
                        mov              qword ptr [rbp + 6824], rax
                        mov              rax, qword ptr [rbp + 6864]
                        mov              qword ptr [rbp + 6800], rax
                        mov              rax, qword ptr [rbp + 6872]
                        mov              qword ptr [rbp + 6808], rax
                        lea              rdi, [rbp + 6800]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx
                        cmp              al, 104;                             je    define$2F2_step
                                                                              jmp   n588_call_α
n587_call_β:            mov              r11, 342;                            jmp   define$2F2_step
                        .size            n587_call_bx, .-n587_call_bx
                        .type            n588_call_bx, @function
n588_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n588_call_α:            mov              r11, 343
                        mov              rax, qword ptr [rbp + 6784]
                        mov              qword ptr [rbp + 6016], rax
                        mov              rax, qword ptr [rbp + 6792]
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
                        cmp              al, 104;                             je    define$2F2_step
                                                                              jmp   define$2F2_γ
n588_call_β:            mov              r11, 343;                            jmp   define$2F2_step
                        .size            n588_call_bx, .-n588_call_bx
                        .type            n589_var_ref_bx, @function
n589_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n589_var_ref_α:         mov              r11, 344
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7392], rax
                        mov              qword ptr [rbp + 7400], rdx;         jmp   n590_lit_string_α
                        .size            n589_var_ref_bx, .-n589_var_ref_bx
                        .type            n590_lit_string_bx, @function
n590_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n590_lit_string_α:      mov              r11, 345
                        mov              qword ptr [rbp + 7552], 2            # result
                        mov              dword ptr [rbp + 7556], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_880_0]
                        mov              qword ptr [rbp + 7560], rax;         jmp   n591_lit_string_α
.Llit_string_α_880_0:   .quad            .Llit_string_α_880_0_s
.Llit_string_α_880_0_s: .string          "qsort"
                        .size            n590_lit_string_bx, .-n590_lit_string_bx
                        .type            n591_lit_string_bx, @function
n591_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_string_α:      mov              r11, 346
                        mov              qword ptr [rbp + 7408], 2            # result
                        mov              dword ptr [rbp + 7412], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_881_0]
                        mov              qword ptr [rbp + 7416], rax;         jmp   n592_var_ref_α
.Llit_string_α_881_0:   .quad            .Llit_string_α_881_0_s
.Llit_string_α_881_0_s: .string          "[]"
                        .size            n591_lit_string_bx, .-n591_lit_string_bx
                        .type            n592_var_ref_bx, @function
n592_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n592_var_ref_α:         mov              r11, 347
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9808]
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx;         jmp   n593_var_ref_α
                        .size            n592_var_ref_bx, .-n592_var_ref_bx
                        .type            n593_var_ref_bx, @function
n593_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n593_var_ref_α:         mov              r11, 348
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9808]
                        mov              qword ptr [rbp + 7440], rax
                        mov              qword ptr [rbp + 7448], rdx;         jmp   n594_call_α
                        .size            n593_var_ref_bx, .-n593_var_ref_bx
                        .type            n594_call_bx, @function
n594_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n594_call_α:            mov              r11, 349
                        mov              rax, qword ptr [rbp + 7440]
                        mov              qword ptr [rbp + 7520], rax
                        mov              rax, qword ptr [rbp + 7448]
                        mov              qword ptr [rbp + 7528], rax
                        mov              rax, qword ptr [rbp + 7424]
                        mov              qword ptr [rbp + 7504], rax
                        mov              rax, qword ptr [rbp + 7432]
                        mov              qword ptr [rbp + 7512], rax
                        mov              rax, qword ptr [rbp + 7408]
                        mov              qword ptr [rbp + 7488], rax
                        mov              rax, qword ptr [rbp + 7416]
                        mov              qword ptr [rbp + 7496], rax
                        mov              rax, qword ptr [rbp + 7552]
                        mov              qword ptr [rbp + 7472], rax
                        mov              rax, qword ptr [rbp + 7560]
                        mov              qword ptr [rbp + 7480], rax
                        lea              rdi, [rbp + 7472]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7456], rax
                        mov              qword ptr [rbp + 7464], rdx
                        cmp              al, 104;                             je    define$2F2_step
                                                                              jmp   n595_call_α
n594_call_β:            mov              r11, 349;                            jmp   define$2F2_step
                        .size            n594_call_bx, .-n594_call_bx
                        .type            n595_call_bx, @function
n595_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n595_call_α:            mov              r11, 350
                        mov              rax, qword ptr [rbp + 7456]
                        mov              qword ptr [rbp + 7360], rax
                        mov              rax, qword ptr [rbp + 7464]
                        mov              qword ptr [rbp + 7368], rax
                        mov              rax, qword ptr [rbp + 7392]
                        mov              qword ptr [rbp + 7344], rax
                        mov              rax, qword ptr [rbp + 7400]
                        mov              qword ptr [rbp + 7352], rax
                        lea              rdi, [rbp + 7344]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7328], rax
                        mov              qword ptr [rbp + 7336], rdx
                        cmp              al, 104;                             je    define$2F2_step
                                                                              jmp   n596_var_ref_α
n595_call_β:            mov              r11, 350;                            jmp   define$2F2_step
                        .size            n595_call_bx, .-n595_call_bx
                        .type            n596_var_ref_bx, @function
n596_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n596_var_ref_α:         mov              r11, 351
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7296], rax
                        mov              qword ptr [rbp + 7304], rdx;         jmp   n597_lit_string_α
                        .size            n596_var_ref_bx, .-n596_var_ref_bx
                        .type            n597_lit_string_bx, @function
n597_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n597_lit_string_α:      mov              r11, 352
                        mov              qword ptr [rbp + 7312], 2            # result
                        mov              dword ptr [rbp + 7316], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_890_0]
                        mov              qword ptr [rbp + 7320], rax;         jmp   n598_call_α
.Llit_string_α_890_0:   .quad            .Llit_string_α_890_0_s
.Llit_string_α_890_0_s: .string          "true"
                        .size            n597_lit_string_bx, .-n597_lit_string_bx
                        .type            n598_call_bx, @function
n598_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n598_call_α:            mov              r11, 353
                        mov              rax, qword ptr [rbp + 7296]
                        mov              qword ptr [rbp + 7248], rax
                        mov              rax, qword ptr [rbp + 7304]
                        mov              qword ptr [rbp + 7256], rax
                        lea              rdi, [rbp + 7248]
                        mov              rsi, qword ptr [rip + .Lcall_α_891_2]
                                                                              jmp   .Lcall_α_891_3
.Lcall_α_891_2:         .quad            .Lcall_α_891_2_s
.Lcall_α_891_2_s:       .string          "true"
.Lcall_α_891_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7232], rax
                        mov              qword ptr [rbp + 7240], rdx
                        cmp              al, 104;                             je    define$2F2_step
                                                                              jmp   define$2F2_γ
n598_call_β:            mov              r11, 353;                            jmp   define$2F2_step
                        .size            n598_call_bx, .-n598_call_bx
                        .type            n599_var_ref_bx, @function
n599_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n599_var_ref_α:         mov              r11, 354
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 8240], rax
                        mov              qword ptr [rbp + 8248], rdx;         jmp   n600_lit_string_α
                        .size            n599_var_ref_bx, .-n599_var_ref_bx
                        .type            n600_lit_string_bx, @function
n600_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n600_lit_string_α:      mov              r11, 355
                        mov              qword ptr [rbp + 8656], 2            # result
                        mov              dword ptr [rbp + 8660], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_894_0]
                        mov              qword ptr [rbp + 8664], rax;         jmp   n601_lit_string_α
.Llit_string_α_894_0:   .quad            .Llit_string_α_894_0_s
.Llit_string_α_894_0_s: .string          "partition"
                        .size            n600_lit_string_bx, .-n600_lit_string_bx
                        .type            n601_lit_string_bx, @function
n601_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n601_lit_string_α:      mov              r11, 356
                        mov              qword ptr [rbp + 8368], 2            # result
                        mov              dword ptr [rbp + 8372], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_895_0]
                        mov              qword ptr [rbp + 8376], rax;         jmp   n602_var_ref_α
.Llit_string_α_895_0:   .quad            .Llit_string_α_895_0_s
.Llit_string_α_895_0_s: .string          "."
                        .size            n601_lit_string_bx, .-n601_lit_string_bx
                        .type            n602_var_ref_bx, @function
n602_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n602_var_ref_α:         mov              r11, 357
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9808]
                        mov              qword ptr [rbp + 8272], rax
                        mov              qword ptr [rbp + 8280], rdx;         jmp   n603_var_ref_α
                        .size            n602_var_ref_bx, .-n602_var_ref_bx
                        .type            n603_var_ref_bx, @function
n603_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n603_var_ref_α:         mov              r11, 358
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9824]
                        mov              qword ptr [rbp + 8256], rax
                        mov              qword ptr [rbp + 8264], rdx;         jmp   n604_call_α
                        .size            n603_var_ref_bx, .-n603_var_ref_bx
                        .type            n604_call_bx, @function
n604_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n604_call_α:            mov              r11, 359
                        mov              rax, qword ptr [rbp + 8256]
                        mov              qword ptr [rbp + 8336], rax
                        mov              rax, qword ptr [rbp + 8264]
                        mov              qword ptr [rbp + 8344], rax
                        mov              rax, qword ptr [rbp + 8272]
                        mov              qword ptr [rbp + 8320], rax
                        mov              rax, qword ptr [rbp + 8280]
                        mov              qword ptr [rbp + 8328], rax
                        mov              rax, qword ptr [rbp + 8368]
                        mov              qword ptr [rbp + 8304], rax
                        mov              rax, qword ptr [rbp + 8376]
                        mov              qword ptr [rbp + 8312], rax
                        lea              rdi, [rbp + 8304]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8288], rax
                        mov              qword ptr [rbp + 8296], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n605_var_ref_α
n604_call_β:            mov              r11, 359;                            jmp   define$2F2_ω
                        .size            n604_call_bx, .-n604_call_bx
                        .type            n605_var_ref_bx, @function
n605_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n605_var_ref_α:         mov              r11, 360
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9904]
                        mov              qword ptr [rbp + 8384], rax
                        mov              qword ptr [rbp + 8392], rdx;         jmp   n606_lit_string_α
                        .size            n605_var_ref_bx, .-n605_var_ref_bx
                        .type            n606_lit_string_bx, @function
n606_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n606_lit_string_α:      mov              r11, 361
                        mov              qword ptr [rbp + 8512], 2            # result
                        mov              dword ptr [rbp + 8516], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_903_0]
                        mov              qword ptr [rbp + 8520], rax;         jmp   n607_var_ref_α
.Llit_string_α_903_0:   .quad            .Llit_string_α_903_0_s
.Llit_string_α_903_0_s: .string          "."
                        .size            n606_lit_string_bx, .-n606_lit_string_bx
                        .type            n607_var_ref_bx, @function
n607_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n607_var_ref_α:         mov              r11, 362
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9808]
                        mov              qword ptr [rbp + 8416], rax
                        mov              qword ptr [rbp + 8424], rdx;         jmp   n608_var_ref_α
                        .size            n607_var_ref_bx, .-n607_var_ref_bx
                        .type            n608_var_ref_bx, @function
n608_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n608_var_ref_α:         mov              r11, 363
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9888]
                        mov              qword ptr [rbp + 8400], rax
                        mov              qword ptr [rbp + 8408], rdx;         jmp   n609_call_α
                        .size            n608_var_ref_bx, .-n608_var_ref_bx
                        .type            n609_call_bx, @function
n609_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n609_call_α:            mov              r11, 364
                        mov              rax, qword ptr [rbp + 8400]
                        mov              qword ptr [rbp + 8480], rax
                        mov              rax, qword ptr [rbp + 8408]
                        mov              qword ptr [rbp + 8488], rax
                        mov              rax, qword ptr [rbp + 8416]
                        mov              qword ptr [rbp + 8464], rax
                        mov              rax, qword ptr [rbp + 8424]
                        mov              qword ptr [rbp + 8472], rax
                        mov              rax, qword ptr [rbp + 8512]
                        mov              qword ptr [rbp + 8448], rax
                        mov              rax, qword ptr [rbp + 8520]
                        mov              qword ptr [rbp + 8456], rax
                        lea              rdi, [rbp + 8448]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8432], rax
                        mov              qword ptr [rbp + 8440], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n610_var_ref_α
n609_call_β:            mov              r11, 364;                            jmp   define$2F2_ω
                        .size            n609_call_bx, .-n609_call_bx
                        .type            n610_var_ref_bx, @function
n610_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n610_var_ref_α:         mov              r11, 365
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9840]
                        mov              qword ptr [rbp + 8528], rax
                        mov              qword ptr [rbp + 8536], rdx;         jmp   n611_call_α
                        .size            n610_var_ref_bx, .-n610_var_ref_bx
                        .type            n611_call_bx, @function
n611_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n611_call_α:            mov              r11, 366
                        mov              rax, qword ptr [rbp + 8528]
                        mov              qword ptr [rbp + 8624], rax
                        mov              rax, qword ptr [rbp + 8536]
                        mov              qword ptr [rbp + 8632], rax
                        mov              rax, qword ptr [rbp + 8432]
                        mov              qword ptr [rbp + 8608], rax
                        mov              rax, qword ptr [rbp + 8440]
                        mov              qword ptr [rbp + 8616], rax
                        mov              rax, qword ptr [rbp + 8384]
                        mov              qword ptr [rbp + 8592], rax
                        mov              rax, qword ptr [rbp + 8392]
                        mov              qword ptr [rbp + 8600], rax
                        mov              rax, qword ptr [rbp + 8288]
                        mov              qword ptr [rbp + 8576], rax
                        mov              rax, qword ptr [rbp + 8296]
                        mov              qword ptr [rbp + 8584], rax
                        mov              rax, qword ptr [rbp + 8656]
                        mov              qword ptr [rbp + 8560], rax
                        mov              rax, qword ptr [rbp + 8664]
                        mov              qword ptr [rbp + 8568], rax
                        lea              rdi, [rbp + 8560]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8544], rax
                        mov              qword ptr [rbp + 8552], rdx
                        cmp              al, 104;                             je    define$2F2_step
                                                                              jmp   n612_call_α
n611_call_β:            mov              r11, 366;                            jmp   define$2F2_step
                        .size            n611_call_bx, .-n611_call_bx
                        .type            n612_call_bx, @function
n612_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n612_call_α:            mov              r11, 367
                        mov              rax, qword ptr [rbp + 8544]
                        mov              qword ptr [rbp + 8208], rax
                        mov              rax, qword ptr [rbp + 8552]
                        mov              qword ptr [rbp + 8216], rax
                        mov              rax, qword ptr [rbp + 8240]
                        mov              qword ptr [rbp + 8192], rax
                        mov              rax, qword ptr [rbp + 8248]
                        mov              qword ptr [rbp + 8200], rax
                        lea              rdi, [rbp + 8192]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8176], rax
                        mov              qword ptr [rbp + 8184], rdx
                        cmp              al, 104;                             je    define$2F2_step
                                                                              jmp   n613_var_ref_α
n612_call_β:            mov              r11, 367;                            jmp   define$2F2_step
                        .size            n612_call_bx, .-n612_call_bx
                        .type            n613_var_ref_bx, @function
n613_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n613_var_ref_α:         mov              r11, 368
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7632], rax
                        mov              qword ptr [rbp + 7640], rdx;         jmp   n614_lit_string_α
                        .size            n613_var_ref_bx, .-n613_var_ref_bx
                        .type            n614_lit_string_bx, @function
n614_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n614_lit_string_α:      mov              r11, 369
                        mov              qword ptr [rbp + 8160], 2            # result
                        mov              dword ptr [rbp + 8164], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_915_0]
                        mov              qword ptr [rbp + 8168], rax;         jmp   n615_lit_string_α
.Llit_string_α_915_0:   .quad            .Llit_string_α_915_0_s
.Llit_string_α_915_0_s: .string          ","
                        .size            n614_lit_string_bx, .-n614_lit_string_bx
                        .type            n615_lit_string_bx, @function
n615_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n615_lit_string_α:      mov              r11, 370
                        mov              qword ptr [rbp + 7760], 2            # result
                        mov              dword ptr [rbp + 7764], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_916_0]
                        mov              qword ptr [rbp + 7768], rax;         jmp   n616_var_ref_α
.Llit_string_α_916_0:   .quad            .Llit_string_α_916_0_s
.Llit_string_α_916_0_s: .string          "=<"
                        .size            n615_lit_string_bx, .-n615_lit_string_bx
                        .type            n616_var_ref_bx, @function
n616_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n616_var_ref_α:         mov              r11, 371
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9808]
                        mov              qword ptr [rbp + 7648], rax
                        mov              qword ptr [rbp + 7656], rdx;         jmp   n617_var_ref_α
                        .size            n616_var_ref_bx, .-n616_var_ref_bx
                        .type            n617_var_ref_bx, @function
n617_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n617_var_ref_α:         mov              r11, 372
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9904]
                        mov              qword ptr [rbp + 7664], rax
                        mov              qword ptr [rbp + 7672], rdx;         jmp   n618_call_α
                        .size            n617_var_ref_bx, .-n617_var_ref_bx
                        .type            n618_call_bx, @function
n618_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n618_call_α:            mov              r11, 373
                        mov              rax, qword ptr [rbp + 7664]
                        mov              qword ptr [rbp + 7728], rax
                        mov              rax, qword ptr [rbp + 7672]
                        mov              qword ptr [rbp + 7736], rax
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 7712], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 7720], rax
                        mov              rax, qword ptr [rbp + 7760]
                        mov              qword ptr [rbp + 7696], rax
                        mov              rax, qword ptr [rbp + 7768]
                        mov              qword ptr [rbp + 7704], rax
                        lea              rdi, [rbp + 7696]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7680], rax
                        mov              qword ptr [rbp + 7688], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n619_lit_string_α
n618_call_β:            mov              r11, 373;                            jmp   define$2F2_ω
                        .size            n618_call_bx, .-n618_call_bx
                        .type            n619_lit_string_bx, @function
n619_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n619_lit_string_α:      mov              r11, 374
                        mov              qword ptr [rbp + 8064], 2            # result
                        mov              dword ptr [rbp + 8068], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_922_0]
                        mov              qword ptr [rbp + 8072], rax;         jmp   n620_lit_string_α
.Llit_string_α_922_0:   .quad            .Llit_string_α_922_0_s
.Llit_string_α_922_0_s: .string          ","
                        .size            n619_lit_string_bx, .-n619_lit_string_bx
                        .type            n620_lit_string_bx, @function
n620_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n620_lit_string_α:      mov              r11, 375
                        mov              qword ptr [rbp + 7776], 2            # result
                        mov              dword ptr [rbp + 7780], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_923_0]
                        mov              qword ptr [rbp + 7784], rax;         jmp   n621_lit_string_α
.Llit_string_α_923_0:   .quad            .Llit_string_α_923_0_s
.Llit_string_α_923_0_s: .string          "?"
                        .size            n620_lit_string_bx, .-n620_lit_string_bx
                        .type            n621_lit_string_bx, @function
n621_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n621_lit_string_α:      mov              r11, 376
                        mov              qword ptr [rbp + 7968], 2            # result
                        mov              dword ptr [rbp + 7972], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_924_0]
                        mov              qword ptr [rbp + 7976], rax;         jmp   n622_var_ref_α
.Llit_string_α_924_0:   .quad            .Llit_string_α_924_0_s
.Llit_string_α_924_0_s: .string          "partition"
                        .size            n621_lit_string_bx, .-n621_lit_string_bx
                        .type            n622_var_ref_bx, @function
n622_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n622_var_ref_α:         mov              r11, 377
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9824]
                        mov              qword ptr [rbp + 7792], rax
                        mov              qword ptr [rbp + 7800], rdx;         jmp   n623_var_ref_α
                        .size            n622_var_ref_bx, .-n622_var_ref_bx
                        .type            n623_var_ref_bx, @function
n623_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n623_var_ref_α:         mov              r11, 378
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9904]
                        mov              qword ptr [rbp + 7808], rax
                        mov              qword ptr [rbp + 7816], rdx;         jmp   n624_var_ref_α
                        .size            n623_var_ref_bx, .-n623_var_ref_bx
                        .type            n624_var_ref_bx, @function
n624_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n624_var_ref_α:         mov              r11, 379
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9888]
                        mov              qword ptr [rbp + 7824], rax
                        mov              qword ptr [rbp + 7832], rdx;         jmp   n625_var_ref_α
                        .size            n624_var_ref_bx, .-n624_var_ref_bx
                        .type            n625_var_ref_bx, @function
n625_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n625_var_ref_α:         mov              r11, 380
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9840]
                        mov              qword ptr [rbp + 7840], rax
                        mov              qword ptr [rbp + 7848], rdx;         jmp   n626_call_α
                        .size            n625_var_ref_bx, .-n625_var_ref_bx
                        .type            n626_call_bx, @function
n626_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n626_call_α:            mov              r11, 381
                        mov              rax, qword ptr [rbp + 7840]
                        mov              qword ptr [rbp + 7936], rax
                        mov              rax, qword ptr [rbp + 7848]
                        mov              qword ptr [rbp + 7944], rax
                        mov              rax, qword ptr [rbp + 7824]
                        mov              qword ptr [rbp + 7920], rax
                        mov              rax, qword ptr [rbp + 7832]
                        mov              qword ptr [rbp + 7928], rax
                        mov              rax, qword ptr [rbp + 7808]
                        mov              qword ptr [rbp + 7904], rax
                        mov              rax, qword ptr [rbp + 7816]
                        mov              qword ptr [rbp + 7912], rax
                        mov              rax, qword ptr [rbp + 7792]
                        mov              qword ptr [rbp + 7888], rax
                        mov              rax, qword ptr [rbp + 7800]
                        mov              qword ptr [rbp + 7896], rax
                        mov              rax, qword ptr [rbp + 7968]
                        mov              qword ptr [rbp + 7872], rax
                        mov              rax, qword ptr [rbp + 7976]
                        mov              qword ptr [rbp + 7880], rax
                        lea              rdi, [rbp + 7872]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7856], rax
                        mov              qword ptr [rbp + 7864], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n627_call_α
n626_call_β:            mov              r11, 381;                            jmp   define$2F2_ω
                        .size            n626_call_bx, .-n626_call_bx
                        .type            n627_call_bx, @function
n627_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n627_call_α:            mov              r11, 382
                        mov              rax, qword ptr [rbp + 7856]
                        mov              qword ptr [rbp + 8032], rax
                        mov              rax, qword ptr [rbp + 7864]
                        mov              qword ptr [rbp + 8040], rax
                        mov              rax, qword ptr [rbp + 7776]
                        mov              qword ptr [rbp + 8016], rax
                        mov              rax, qword ptr [rbp + 7784]
                        mov              qword ptr [rbp + 8024], rax
                        mov              rax, qword ptr [rbp + 8064]
                        mov              qword ptr [rbp + 8000], rax
                        mov              rax, qword ptr [rbp + 8072]
                        mov              qword ptr [rbp + 8008], rax
                        lea              rdi, [rbp + 8000]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7984], rax
                        mov              qword ptr [rbp + 7992], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n628_call_α
n627_call_β:            mov              r11, 382;                            jmp   define$2F2_ω
                        .size            n627_call_bx, .-n627_call_bx
                        .type            n628_call_bx, @function
n628_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n628_call_α:            mov              r11, 383
                        mov              rax, qword ptr [rbp + 7984]
                        mov              qword ptr [rbp + 8128], rax
                        mov              rax, qword ptr [rbp + 7992]
                        mov              qword ptr [rbp + 8136], rax
                        mov              rax, qword ptr [rbp + 7680]
                        mov              qword ptr [rbp + 8112], rax
                        mov              rax, qword ptr [rbp + 7688]
                        mov              qword ptr [rbp + 8120], rax
                        mov              rax, qword ptr [rbp + 8160]
                        mov              qword ptr [rbp + 8096], rax
                        mov              rax, qword ptr [rbp + 8168]
                        mov              qword ptr [rbp + 8104], rax
                        lea              rdi, [rbp + 8096]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8080], rax
                        mov              qword ptr [rbp + 8088], rdx
                        cmp              al, 104;                             je    define$2F2_step
                                                                              jmp   n629_call_α
n628_call_β:            mov              r11, 383;                            jmp   define$2F2_step
                        .size            n628_call_bx, .-n628_call_bx
                        .type            n629_call_bx, @function
n629_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n629_call_α:            mov              r11, 384
                        mov              rax, qword ptr [rbp + 8080]
                        mov              qword ptr [rbp + 7600], rax
                        mov              rax, qword ptr [rbp + 8088]
                        mov              qword ptr [rbp + 7608], rax
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 7584], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 7592], rax
                        lea              rdi, [rbp + 7584]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7568], rax
                        mov              qword ptr [rbp + 7576], rdx
                        cmp              al, 104;                             je    define$2F2_step
                                                                              jmp   define$2F2_γ
n629_call_β:            mov              r11, 384;                            jmp   define$2F2_step
                        .size            n629_call_bx, .-n629_call_bx
                        .type            n630_var_ref_bx, @function
n630_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n630_var_ref_α:         mov              r11, 385
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 9008], rax
                        mov              qword ptr [rbp + 9016], rdx;         jmp   n631_lit_string_α
                        .size            n630_var_ref_bx, .-n630_var_ref_bx
                        .type            n631_lit_string_bx, @function
n631_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n631_lit_string_α:      mov              r11, 386
                        mov              qword ptr [rbp + 9424], 2            # result
                        mov              dword ptr [rbp + 9428], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_939_0]
                        mov              qword ptr [rbp + 9432], rax;         jmp   n632_lit_string_α
.Llit_string_α_939_0:   .quad            .Llit_string_α_939_0_s
.Llit_string_α_939_0_s: .string          "partition"
                        .size            n631_lit_string_bx, .-n631_lit_string_bx
                        .type            n632_lit_string_bx, @function
n632_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n632_lit_string_α:      mov              r11, 387
                        mov              qword ptr [rbp + 9136], 2            # result
                        mov              dword ptr [rbp + 9140], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_940_0]
                        mov              qword ptr [rbp + 9144], rax;         jmp   n633_var_ref_α
.Llit_string_α_940_0:   .quad            .Llit_string_α_940_0_s
.Llit_string_α_940_0_s: .string          "."
                        .size            n632_lit_string_bx, .-n632_lit_string_bx
                        .type            n633_var_ref_bx, @function
n633_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n633_var_ref_α:         mov              r11, 388
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9808]
                        mov              qword ptr [rbp + 9040], rax
                        mov              qword ptr [rbp + 9048], rdx;         jmp   n634_var_ref_α
                        .size            n633_var_ref_bx, .-n633_var_ref_bx
                        .type            n634_var_ref_bx, @function
n634_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n634_var_ref_α:         mov              r11, 389
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9824]
                        mov              qword ptr [rbp + 9024], rax
                        mov              qword ptr [rbp + 9032], rdx;         jmp   n635_call_α
                        .size            n634_var_ref_bx, .-n634_var_ref_bx
                        .type            n635_call_bx, @function
n635_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n635_call_α:            mov              r11, 390
                        mov              rax, qword ptr [rbp + 9024]
                        mov              qword ptr [rbp + 9104], rax
                        mov              rax, qword ptr [rbp + 9032]
                        mov              qword ptr [rbp + 9112], rax
                        mov              rax, qword ptr [rbp + 9040]
                        mov              qword ptr [rbp + 9088], rax
                        mov              rax, qword ptr [rbp + 9048]
                        mov              qword ptr [rbp + 9096], rax
                        mov              rax, qword ptr [rbp + 9136]
                        mov              qword ptr [rbp + 9072], rax
                        mov              rax, qword ptr [rbp + 9144]
                        mov              qword ptr [rbp + 9080], rax
                        lea              rdi, [rbp + 9072]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9056], rax
                        mov              qword ptr [rbp + 9064], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n636_var_ref_α
n635_call_β:            mov              r11, 390;                            jmp   define$2F2_ω
                        .size            n635_call_bx, .-n635_call_bx
                        .type            n636_var_ref_bx, @function
n636_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n636_var_ref_α:         mov              r11, 391
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9904]
                        mov              qword ptr [rbp + 9152], rax
                        mov              qword ptr [rbp + 9160], rdx;         jmp   n637_var_ref_α
                        .size            n636_var_ref_bx, .-n636_var_ref_bx
                        .type            n637_var_ref_bx, @function
n637_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n637_var_ref_α:         mov              r11, 392
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9888]
                        mov              qword ptr [rbp + 9168], rax
                        mov              qword ptr [rbp + 9176], rdx;         jmp   n638_lit_string_α
                        .size            n637_var_ref_bx, .-n637_var_ref_bx
                        .type            n638_lit_string_bx, @function
n638_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n638_lit_string_α:      mov              r11, 393
                        mov              qword ptr [rbp + 9296], 2            # result
                        mov              dword ptr [rbp + 9300], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_950_0]
                        mov              qword ptr [rbp + 9304], rax;         jmp   n639_var_ref_α
.Llit_string_α_950_0:   .quad            .Llit_string_α_950_0_s
.Llit_string_α_950_0_s: .string          "."
                        .size            n638_lit_string_bx, .-n638_lit_string_bx
                        .type            n639_var_ref_bx, @function
n639_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n639_var_ref_α:         mov              r11, 394
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9808]
                        mov              qword ptr [rbp + 9200], rax
                        mov              qword ptr [rbp + 9208], rdx;         jmp   n640_var_ref_α
                        .size            n639_var_ref_bx, .-n639_var_ref_bx
                        .type            n640_var_ref_bx, @function
n640_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n640_var_ref_α:         mov              r11, 395
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9840]
                        mov              qword ptr [rbp + 9184], rax
                        mov              qword ptr [rbp + 9192], rdx;         jmp   n641_call_α
                        .size            n640_var_ref_bx, .-n640_var_ref_bx
                        .type            n641_call_bx, @function
n641_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n641_call_α:            mov              r11, 396
                        mov              rax, qword ptr [rbp + 9184]
                        mov              qword ptr [rbp + 9264], rax
                        mov              rax, qword ptr [rbp + 9192]
                        mov              qword ptr [rbp + 9272], rax
                        mov              rax, qword ptr [rbp + 9200]
                        mov              qword ptr [rbp + 9248], rax
                        mov              rax, qword ptr [rbp + 9208]
                        mov              qword ptr [rbp + 9256], rax
                        mov              rax, qword ptr [rbp + 9296]
                        mov              qword ptr [rbp + 9232], rax
                        mov              rax, qword ptr [rbp + 9304]
                        mov              qword ptr [rbp + 9240], rax
                        lea              rdi, [rbp + 9232]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9216], rax
                        mov              qword ptr [rbp + 9224], rdx
                        cmp              al, 104;                             je    define$2F2_ω
                                                                              jmp   n642_call_α
n641_call_β:            mov              r11, 396;                            jmp   define$2F2_ω
                        .size            n641_call_bx, .-n641_call_bx
                        .type            n642_call_bx, @function
n642_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n642_call_α:            mov              r11, 397
                        mov              rax, qword ptr [rbp + 9216]
                        mov              qword ptr [rbp + 9392], rax
                        mov              rax, qword ptr [rbp + 9224]
                        mov              qword ptr [rbp + 9400], rax
                        mov              rax, qword ptr [rbp + 9168]
                        mov              qword ptr [rbp + 9376], rax
                        mov              rax, qword ptr [rbp + 9176]
                        mov              qword ptr [rbp + 9384], rax
                        mov              rax, qword ptr [rbp + 9152]
                        mov              qword ptr [rbp + 9360], rax
                        mov              rax, qword ptr [rbp + 9160]
                        mov              qword ptr [rbp + 9368], rax
                        mov              rax, qword ptr [rbp + 9056]
                        mov              qword ptr [rbp + 9344], rax
                        mov              rax, qword ptr [rbp + 9064]
                        mov              qword ptr [rbp + 9352], rax
                        mov              rax, qword ptr [rbp + 9424]
                        mov              qword ptr [rbp + 9328], rax
                        mov              rax, qword ptr [rbp + 9432]
                        mov              qword ptr [rbp + 9336], rax
                        lea              rdi, [rbp + 9328]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9312], rax
                        mov              qword ptr [rbp + 9320], rdx
                        cmp              al, 104;                             je    define$2F2_step
                                                                              jmp   n643_call_α
n642_call_β:            mov              r11, 397;                            jmp   define$2F2_step
                        .size            n642_call_bx, .-n642_call_bx
                        .type            n643_call_bx, @function
n643_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n643_call_α:            mov              r11, 398
                        mov              rax, qword ptr [rbp + 9312]
                        mov              qword ptr [rbp + 8976], rax
                        mov              rax, qword ptr [rbp + 9320]
                        mov              qword ptr [rbp + 8984], rax
                        mov              rax, qword ptr [rbp + 9008]
                        mov              qword ptr [rbp + 8960], rax
                        mov              rax, qword ptr [rbp + 9016]
                        mov              qword ptr [rbp + 8968], rax
                        lea              rdi, [rbp + 8960]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8944], rax
                        mov              qword ptr [rbp + 8952], rdx
                        cmp              al, 104;                             je    define$2F2_step
                                                                              jmp   n644_var_ref_α
n643_call_β:            mov              r11, 398;                            jmp   define$2F2_step
                        .size            n643_call_bx, .-n643_call_bx
                        .type            n644_var_ref_bx, @function
n644_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n644_var_ref_α:         mov              r11, 399
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 8736], rax
                        mov              qword ptr [rbp + 8744], rdx;         jmp   n645_lit_string_α
                        .size            n644_var_ref_bx, .-n644_var_ref_bx
                        .type            n645_lit_string_bx, @function
n645_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n645_lit_string_α:      mov              r11, 400
                        mov              qword ptr [rbp + 8928], 2            # result
                        mov              dword ptr [rbp + 8932], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_960_0]
                        mov              qword ptr [rbp + 8936], rax;         jmp   n646_var_ref_α
.Llit_string_α_960_0:   .quad            .Llit_string_α_960_0_s
.Llit_string_α_960_0_s: .string          "partition"
                        .size            n645_lit_string_bx, .-n645_lit_string_bx
                        .type            n646_var_ref_bx, @function
n646_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n646_var_ref_α:         mov              r11, 401
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9824]
                        mov              qword ptr [rbp + 8752], rax
                        mov              qword ptr [rbp + 8760], rdx;         jmp   n647_var_ref_α
                        .size            n646_var_ref_bx, .-n646_var_ref_bx
                        .type            n647_var_ref_bx, @function
n647_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n647_var_ref_α:         mov              r11, 402
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9904]
                        mov              qword ptr [rbp + 8768], rax
                        mov              qword ptr [rbp + 8776], rdx;         jmp   n648_var_ref_α
                        .size            n647_var_ref_bx, .-n647_var_ref_bx
                        .type            n648_var_ref_bx, @function
n648_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n648_var_ref_α:         mov              r11, 403
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9888]
                        mov              qword ptr [rbp + 8784], rax
                        mov              qword ptr [rbp + 8792], rdx;         jmp   n649_var_ref_α
                        .size            n648_var_ref_bx, .-n648_var_ref_bx
                        .type            n649_var_ref_bx, @function
n649_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n649_var_ref_α:         mov              r11, 404
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9840]
                        mov              qword ptr [rbp + 8800], rax
                        mov              qword ptr [rbp + 8808], rdx;         jmp   n650_call_α
                        .size            n649_var_ref_bx, .-n649_var_ref_bx
                        .type            n650_call_bx, @function
n650_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n650_call_α:            mov              r11, 405
                        mov              rax, qword ptr [rbp + 8800]
                        mov              qword ptr [rbp + 8896], rax
                        mov              rax, qword ptr [rbp + 8808]
                        mov              qword ptr [rbp + 8904], rax
                        mov              rax, qword ptr [rbp + 8784]
                        mov              qword ptr [rbp + 8880], rax
                        mov              rax, qword ptr [rbp + 8792]
                        mov              qword ptr [rbp + 8888], rax
                        mov              rax, qword ptr [rbp + 8768]
                        mov              qword ptr [rbp + 8864], rax
                        mov              rax, qword ptr [rbp + 8776]
                        mov              qword ptr [rbp + 8872], rax
                        mov              rax, qword ptr [rbp + 8752]
                        mov              qword ptr [rbp + 8848], rax
                        mov              rax, qword ptr [rbp + 8760]
                        mov              qword ptr [rbp + 8856], rax
                        mov              rax, qword ptr [rbp + 8928]
                        mov              qword ptr [rbp + 8832], rax
                        mov              rax, qword ptr [rbp + 8936]
                        mov              qword ptr [rbp + 8840], rax
                        lea              rdi, [rbp + 8832]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8816], rax
                        mov              qword ptr [rbp + 8824], rdx
                        cmp              al, 104;                             je    define$2F2_step
                                                                              jmp   n651_call_α
n650_call_β:            mov              r11, 405;                            jmp   define$2F2_step
                        .size            n650_call_bx, .-n650_call_bx
                        .type            n651_call_bx, @function
n651_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n651_call_α:            mov              r11, 406
                        mov              rax, qword ptr [rbp + 8816]
                        mov              qword ptr [rbp + 8704], rax
                        mov              rax, qword ptr [rbp + 8824]
                        mov              qword ptr [rbp + 8712], rax
                        mov              rax, qword ptr [rbp + 8736]
                        mov              qword ptr [rbp + 8688], rax
                        mov              rax, qword ptr [rbp + 8744]
                        mov              qword ptr [rbp + 8696], rax
                        lea              rdi, [rbp + 8688]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8672], rax
                        mov              qword ptr [rbp + 8680], rdx
                        cmp              al, 104;                             je    define$2F2_step
                                                                              jmp   define$2F2_γ
n651_call_β:            mov              r11, 406;                            jmp   define$2F2_step
                        .size            n651_call_bx, .-n651_call_bx
                        .type            n652_var_ref_bx, @function
n652_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n652_var_ref_α:         mov              r11, 407
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 9600], rax
                        mov              qword ptr [rbp + 9608], rdx;         jmp   n653_lit_string_α
                        .size            n652_var_ref_bx, .-n652_var_ref_bx
                        .type            n653_lit_string_bx, @function
n653_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n653_lit_string_α:      mov              r11, 408
                        mov              qword ptr [rbp + 9792], 2            # result
                        mov              dword ptr [rbp + 9796], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_973_0]
                        mov              qword ptr [rbp + 9800], rax;         jmp   n654_lit_string_α
.Llit_string_α_973_0:   .quad            .Llit_string_α_973_0_s
.Llit_string_α_973_0_s: .string          "partition"
                        .size            n653_lit_string_bx, .-n653_lit_string_bx
                        .type            n654_lit_string_bx, @function
n654_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n654_lit_string_α:      mov              r11, 409
                        mov              qword ptr [rbp + 9616], 2            # result
                        mov              dword ptr [rbp + 9620], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_974_0]
                        mov              qword ptr [rbp + 9624], rax;         jmp   n655_var_ref_α
.Llit_string_α_974_0:   .quad            .Llit_string_α_974_0_s
.Llit_string_α_974_0_s: .string          "[]"
                        .size            n654_lit_string_bx, .-n654_lit_string_bx
                        .type            n655_var_ref_bx, @function
n655_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n655_var_ref_α:         mov              r11, 410
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 9808]
                        mov              qword ptr [rbp + 9632], rax
                        mov              qword ptr [rbp + 9640], rdx;         jmp   n656_lit_string_α
                        .size            n655_var_ref_bx, .-n655_var_ref_bx
                        .type            n656_lit_string_bx, @function
n656_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n656_lit_string_α:      mov              r11, 411
                        mov              qword ptr [rbp + 9648], 2            # result
                        mov              dword ptr [rbp + 9652], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_977_0]
                        mov              qword ptr [rbp + 9656], rax;         jmp   n657_lit_string_α
.Llit_string_α_977_0:   .quad            .Llit_string_α_977_0_s
.Llit_string_α_977_0_s: .string          "[]"
                        .size            n656_lit_string_bx, .-n656_lit_string_bx
                        .type            n657_lit_string_bx, @function
n657_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n657_lit_string_α:      mov              r11, 412
                        mov              qword ptr [rbp + 9664], 2            # result
                        mov              dword ptr [rbp + 9668], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_978_0]
                        mov              qword ptr [rbp + 9672], rax;         jmp   n658_call_α
.Llit_string_α_978_0:   .quad            .Llit_string_α_978_0_s
.Llit_string_α_978_0_s: .string          "[]"
                        .size            n657_lit_string_bx, .-n657_lit_string_bx
                        .type            n658_call_bx, @function
n658_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n658_call_α:            mov              r11, 413
                        mov              rax, qword ptr [rbp + 9664]
                        mov              qword ptr [rbp + 9760], rax
                        mov              rax, qword ptr [rbp + 9672]
                        mov              qword ptr [rbp + 9768], rax
                        mov              rax, qword ptr [rbp + 9648]
                        mov              qword ptr [rbp + 9744], rax
                        mov              rax, qword ptr [rbp + 9656]
                        mov              qword ptr [rbp + 9752], rax
                        mov              rax, qword ptr [rbp + 9632]
                        mov              qword ptr [rbp + 9728], rax
                        mov              rax, qword ptr [rbp + 9640]
                        mov              qword ptr [rbp + 9736], rax
                        mov              rax, qword ptr [rbp + 9616]
                        mov              qword ptr [rbp + 9712], rax
                        mov              rax, qword ptr [rbp + 9624]
                        mov              qword ptr [rbp + 9720], rax
                        mov              rax, qword ptr [rbp + 9792]
                        mov              qword ptr [rbp + 9696], rax
                        mov              rax, qword ptr [rbp + 9800]
                        mov              qword ptr [rbp + 9704], rax
                        lea              rdi, [rbp + 9696]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9680], rax
                        mov              qword ptr [rbp + 9688], rdx
                        cmp              al, 104;                             je    define$2F2_step
                                                                              jmp   n659_call_α
n658_call_β:            mov              r11, 413;                            jmp   define$2F2_step
                        .size            n658_call_bx, .-n658_call_bx
                        .type            n659_call_bx, @function
n659_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n659_call_α:            mov              r11, 414
                        mov              rax, qword ptr [rbp + 9680]
                        mov              qword ptr [rbp + 9568], rax
                        mov              rax, qword ptr [rbp + 9688]
                        mov              qword ptr [rbp + 9576], rax
                        mov              rax, qword ptr [rbp + 9600]
                        mov              qword ptr [rbp + 9552], rax
                        mov              rax, qword ptr [rbp + 9608]
                        mov              qword ptr [rbp + 9560], rax
                        lea              rdi, [rbp + 9552]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9536], rax
                        mov              qword ptr [rbp + 9544], rdx
                        cmp              al, 104;                             je    define$2F2_step
                                                                              jmp   n660_var_ref_α
n659_call_β:            mov              r11, 414;                            jmp   define$2F2_step
                        .size            n659_call_bx, .-n659_call_bx
                        .type            n660_var_ref_bx, @function
n660_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n660_var_ref_α:         mov              r11, 415
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 9504], rax
                        mov              qword ptr [rbp + 9512], rdx;         jmp   n661_lit_string_α
                        .size            n660_var_ref_bx, .-n660_var_ref_bx
                        .type            n661_lit_string_bx, @function
n661_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n661_lit_string_α:      mov              r11, 416
                        mov              qword ptr [rbp + 9520], 2            # result
                        mov              dword ptr [rbp + 9524], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_983_0]
                        mov              qword ptr [rbp + 9528], rax;         jmp   n662_call_α
.Llit_string_α_983_0:   .quad            .Llit_string_α_983_0_s
.Llit_string_α_983_0_s: .string          "true"
                        .size            n661_lit_string_bx, .-n661_lit_string_bx
                        .type            n662_call_bx, @function
n662_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n662_call_α:            mov              r11, 417
                        mov              rax, qword ptr [rbp + 9504]
                        mov              qword ptr [rbp + 9456], rax
                        mov              rax, qword ptr [rbp + 9512]
                        mov              qword ptr [rbp + 9464], rax
                        lea              rdi, [rbp + 9456]
                        mov              rsi, qword ptr [rip + .Lcall_α_984_2]
                                                                              jmp   .Lcall_α_984_3
.Lcall_α_984_2:         .quad            .Lcall_α_984_2_s
.Lcall_α_984_2_s:       .string          "true"
.Lcall_α_984_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9440], rax
                        mov              qword ptr [rbp + 9448], rdx
                        cmp              al, 104;                             je    define$2F2_step
                                                                              jmp   define$2F2_γ
n662_call_β:            mov              r11, 417;                            jmp   define$2F2_step
                        .size            n662_call_bx, .-n662_call_bx
#-----------------------------------------------------------------------------------------------------------------------
define$2F2_step:
                        mov              rdi, qword ptr [rbp + 9936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9952], 0
                        mov              qword ptr [rbp + 9808], 0
                        mov              qword ptr [rbp + 9816], 0
                        mov              qword ptr [rbp + 9824], 0
                        mov              qword ptr [rbp + 9832], 0
                        mov              qword ptr [rbp + 9904], 0
                        mov              qword ptr [rbp + 9912], 0
                        mov              qword ptr [rbp + 9888], 0
                        mov              qword ptr [rbp + 9896], 0
                        mov              qword ptr [rbp + 9840], 0
                        mov              qword ptr [rbp + 9848], 0
                        mov              qword ptr [rbp + 9856], 0
                        mov              qword ptr [rbp + 9864], 0
                        mov              qword ptr [rbp + 9872], 0
                        mov              qword ptr [rbp + 9880], 0
                        mov              rax, qword ptr [rbp + 9944]
                        test             rax, rax
                                                                              je    define$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
define$2F2_alt1:
                        lea              rax, [rip + define$2F2_alt2]
                        mov              qword ptr [rbp + 9944], rax
                                                                              jmp   n554_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
define$2F2_alt2:
                        lea              rax, [rip + define$2F2_alt3]
                        mov              qword ptr [rbp + 9944], rax
                                                                              jmp   n589_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
define$2F2_alt3:
                        lea              rax, [rip + define$2F2_alt4]
                        mov              qword ptr [rbp + 9944], rax
                                                                              jmp   n599_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
define$2F2_alt4:
                        lea              rax, [rip + define$2F2_alt5]
                        mov              qword ptr [rbp + 9944], rax
                                                                              jmp   n630_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
define$2F2_alt5:
                        xor              eax, eax
                        mov              qword ptr [rbp + 9944], rax
                        mov              r13, qword ptr [rbp + 9960]
                                                                              jmp   n652_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
define$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
define$2F2_β:
                        test             r15, r15
                                                                              jne   define$2F2_ω
                        mov              rax, qword ptr [rbp + 9952]
                        mov              qword ptr [rbp + 9952], 0
                        test             rax, rax
                                                                              jne   define$2F2_βres
                                                                              jmp   define$2F2_step
define$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
define$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 9976]
                        mov              rax, qword ptr [rbp + 9960]
                        cmp              r13, rax;                            je    define$2F2_altdet
                        lea              rdx, [rip + define$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 9992];         jmp   rcx
define$2F2_altdet:      xor              eax, eax
                        lea              rsp, [rbp + 10000]
                        mov              rbp, qword ptr [rbp + 9992];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
define$2F2_ω:
                        mov              rcx, qword ptr [rbp + 9984]
                        mov              r13, qword ptr [rbp + 9960]
                        lea              rsp, [rbp + 10000]
                        mov              rbp, qword ptr [rbp + 9992];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__interpret_built_in$2F1:
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
                        lea              rax, [rip + interpret_built_in$2F1_alt1]
                        mov              qword ptr [rsp + 488], rax
                        lea              rdi, [rsp + 480]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 432
                        mov              edx, 480
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
interpret_built_in$2F1_α_body:
                        .type            n985_var_ref_bx, @function
n985_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n985_var_ref_α:         mov              r11, 418
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n986_lit_string_α
                        .size            n985_var_ref_bx, .-n985_var_ref_bx
                        .type            n986_lit_string_bx, @function
n986_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n986_lit_string_α:      mov              r11, 419
                        mov              qword ptr [rbp + 112], 2             # result
                        mov              dword ptr [rbp + 116], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_999_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n987_call_α
.Llit_string_α_999_0:   .quad            .Llit_string_α_999_0_s
.Llit_string_α_999_0_s: .string          "true"
                        .size            n986_lit_string_bx, .-n986_lit_string_bx
                        .type            n987_call_bx, @function
n987_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n987_call_α:            mov              r11, 420
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        mov              rsi, qword ptr [rip + .Lcall_α_1000_2]
                                                                              jmp   .Lcall_α_1000_3
.Lcall_α_1000_2:        .quad            .Lcall_α_1000_2_s
.Lcall_α_1000_2_s:      .string          "true"
.Lcall_α_1000_3:        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    interpret_built_in$2F1_step
                                                                              jmp   interpret_built_in$2F1_γ
n987_call_β:            mov              r11, 420;                            jmp   interpret_built_in$2F1_step
                        .size            n987_call_bx, .-n987_call_bx
                        .type            n988_var_ref_bx, @function
n988_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n988_var_ref_α:         mov              r11, 421
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n989_lit_string_α
                        .size            n988_var_ref_bx, .-n988_var_ref_bx
                        .type            n989_lit_string_bx, @function
n989_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n989_lit_string_α:      mov              r11, 422
                        mov              qword ptr [rbp + 416], 2             # result
                        mov              dword ptr [rbp + 420], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1003_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n990_var_ref_α
.Llit_string_α_1003_0:  .quad            .Llit_string_α_1003_0_s
.Llit_string_α_1003_0_s:
                        .string          "=<"
                        .size            n989_lit_string_bx, .-n989_lit_string_bx
                        .type            n990_var_ref_bx, @function
n990_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n990_var_ref_α:         mov              r11, 423
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n991_var_ref_α
                        .size            n990_var_ref_bx, .-n990_var_ref_bx
                        .type            n991_var_ref_bx, @function
n991_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n991_var_ref_α:         mov              r11, 424
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n992_call_α
                        .size            n991_var_ref_bx, .-n991_var_ref_bx
                        .type            n992_call_bx, @function
n992_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n992_call_α:            mov              r11, 425
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 312]
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
                        cmp              al, 104;                             je    interpret_built_in$2F1_step
                                                                              jmp   n993_call_α
n992_call_β:            mov              r11, 425;                            jmp   interpret_built_in$2F1_step
                        .size            n992_call_bx, .-n992_call_bx
                        .type            n993_call_bx, @function
n993_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n993_call_α:            mov              r11, 426
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 344]
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
                        cmp              al, 104;                             je    interpret_built_in$2F1_step
                                                                              jmp   n994_var_α
n993_call_β:            mov              r11, 426;                            jmp   interpret_built_in$2F1_step
                        .size            n993_call_bx, .-n993_call_bx
                        .type            n994_var_bx, @function
n994_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n994_var_α:             mov              r11, 427
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 200], rax;          jmp   n995_var_α
                        .size            n994_var_bx, .-n994_var_bx
                        .type            n995_var_bx, @function
n995_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n995_var_α:             mov              r11, 428
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 216], rax;          jmp   n996_call_α
                        .size            n995_var_bx, .-n995_var_bx
                        .type            n996_call_bx, @function
n996_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n996_call_α:            mov              r11, 429
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
                        call             rt_pl_dop_cmp_le@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    interpret_built_in$2F1_step
                                                                              jmp   interpret_built_in$2F1_γ
n996_call_β:            mov              r11, 429;                            jmp   interpret_built_in$2F1_step
                        .size            n996_call_bx, .-n996_call_bx
#-----------------------------------------------------------------------------------------------------------------------
interpret_built_in$2F1_step:
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
                        mov              rax, qword ptr [rbp + 488]
                        test             rax, rax
                                                                              je    interpret_built_in$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
interpret_built_in$2F1_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 488], rax
                        mov              r13, qword ptr [rbp + 504]
                                                                              jmp   n988_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
interpret_built_in$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
interpret_built_in$2F1_β:
                        test             r15, r15
                                                                              jne   interpret_built_in$2F1_ω
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 496], 0
                        test             rax, rax
                                                                              jne   interpret_built_in$2F1_βres
                                                                              jmp   interpret_built_in$2F1_step
interpret_built_in$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
interpret_built_in$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 520]
                        mov              rax, qword ptr [rbp + 504]
                        cmp              r13, rax;                            je    interpret_built_in$2F1_altdet
                        lea              rdx, [rip + interpret_built_in$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 536];          jmp   rcx
interpret_built_in$2F1_altdet:
                        xor              eax, eax
                        lea              rsp, [rbp + 544]
                        mov              rbp, qword ptr [rbp + 536];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
interpret_built_in$2F1_ω:
                        mov              rcx, qword ptr [rbp + 528]
                        mov              r13, qword ptr [rbp + 504]
                        lea              rsp, [rbp + 544]
                        mov              rbp, qword ptr [rbp + 536];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__interpret_disjunction$2F3:
                        sub              rsp, 2560
                        mov              qword ptr [rsp + 2536], rcx
                        mov              qword ptr [rsp + 2544], rdx
                        mov              qword ptr [rsp + 2552], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 2560]
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2520], r13
                        mov              qword ptr [rsp + 2512], 0
                        mov              qword ptr [rsp + 2504], 0
                        mov              qword ptr [rsp + 2496], r12
                        lea              rax, [rip + interpret_disjunction$2F3_alt1]
                        mov              qword ptr [rsp + 2504], rax
                        lea              rdi, [rsp + 2496]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 2368
                        mov              edx, 2496
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
interpret_disjunction$2F3_α_body:
                        .type            n1015_var_ref_bx, @function
n1015_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1015_var_ref_α:        mov              r11, 430
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n1016_lit_string_α
                        .size            n1015_var_ref_bx, .-n1015_var_ref_bx
                        .type            n1016_lit_string_bx, @function
n1016_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1016_lit_string_α:     mov              r11, 431
                        mov              qword ptr [rbp + 1040], 2            # result
                        mov              dword ptr [rbp + 1044], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1090_0]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n1017_var_ref_α
.Llit_string_α_1090_0:  .quad            .Llit_string_α_1090_0_s
.Llit_string_α_1090_0_s:
                        .string          "->"
                        .size            n1016_lit_string_bx, .-n1016_lit_string_bx
                        .type            n1017_var_ref_bx, @function
n1017_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1017_var_ref_α:        mov              r11, 432
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2416]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n1018_var_ref_α
                        .size            n1017_var_ref_bx, .-n1017_var_ref_bx
                        .type            n1018_var_ref_bx, @function
n1018_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1018_var_ref_α:        mov              r11, 433
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2400]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n1019_call_α
                        .size            n1018_var_ref_bx, .-n1018_var_ref_bx
                        .type            n1019_call_bx, @function
n1019_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1019_call_α:           mov              r11, 434
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              al, 104;                             je    interpret_disjunction$2F3_step
                                                                              jmp   n1020_call_α
n1019_call_β:           mov              r11, 434;                            jmp   interpret_disjunction$2F3_step
                        .size            n1019_call_bx, .-n1019_call_bx
                        .type            n1020_call_bx, @function
n1020_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1020_call_α:           mov              r11, 435
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 968]
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
                        cmp              al, 104;                             je    interpret_disjunction$2F3_step
                                                                              jmp   n1021_var_ref_α
n1020_call_β:           mov              r11, 435;                            jmp   interpret_disjunction$2F3_step
                        .size            n1020_call_bx, .-n1020_call_bx
                        .type            n1021_var_ref_bx, @function
n1021_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1021_var_ref_α:        mov              r11, 436
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n1022_var_ref_α
                        .size            n1021_var_ref_bx, .-n1021_var_ref_bx
                        .type            n1022_var_ref_bx, @function
n1022_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1022_var_ref_α:        mov              r11, 437
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2432]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n1023_call_α
                        .size            n1022_var_ref_bx, .-n1022_var_ref_bx
                        .type            n1023_call_bx, @function
n1023_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1023_call_α:           mov              r11, 438
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
                        cmp              al, 104;                             je    interpret_disjunction$2F3_step
                                                                              jmp   n1024_var_ref_α
n1023_call_β:           mov              r11, 438;                            jmp   interpret_disjunction$2F3_step
                        .size            n1023_call_bx, .-n1023_call_bx
                        .type            n1024_var_ref_bx, @function
n1024_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1024_var_ref_α:        mov              r11, 439
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n1025_var_ref_α
                        .size            n1024_var_ref_bx, .-n1024_var_ref_bx
                        .type            n1025_var_ref_bx, @function
n1025_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1025_var_ref_α:        mov              r11, 440
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n1026_call_α
                        .size            n1025_var_ref_bx, .-n1025_var_ref_bx
                        .type            n1026_call_bx, @function
n1026_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1026_call_α:           mov              r11, 441
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              al, 104;                             je    interpret_disjunction$2F3_step
                                                                              jmp   n1027_var_ref_α
n1026_call_β:           mov              r11, 441;                            jmp   interpret_disjunction$2F3_step
                        .size            n1026_call_bx, .-n1026_call_bx
                        .type            n1027_var_ref_bx, @function
n1027_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1027_var_ref_α:        mov              r11, 442
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2416]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n1028_var_ref_α
                        .size            n1027_var_ref_bx, .-n1027_var_ref_bx
                        .type            n1028_var_ref_bx, @function
n1028_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1028_var_ref_α:        mov              r11, 443
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2384]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n1029_call_proc_staged_α
                        .size            n1028_var_ref_bx, .-n1028_var_ref_bx
                        .type            n1029_call_proc_staged_bx, @function
n1029_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1029_call_proc_staged_α:
                        mov              r11, 444
                        mov              qword ptr [rbp + 592], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1112_200
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1112_201
.Lcall_proc_staged_α_1112_200:
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
.Lcall_proc_staged_α_1112_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1112_202
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1112_203
.Lcall_proc_staged_α_1112_202:
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
.Lcall_proc_staged_α_1112_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1112_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1112_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1112_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1112_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1112_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1112_3:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1112_21
                        add              rsp, 32
.Lcall_proc_staged_α_1112_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1112_2
.Lcall_proc_staged_α_1112_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 592], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1112_2
.Lcall_proc_staged_α_1112_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1112_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   interpret_disjunction$2F3_step
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
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
.Lcall_proc_staged_α_1112_29:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              al, 104;                             je    interpret_disjunction$2F3_step
                                                                              jmp   n1030_cut_α
n1029_call_proc_staged_β:
                        mov              r11, 444
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1112_22
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1112_22
                        mov              rcx, qword ptr [rbp + 600]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1112_22:
                                                                              jmp   interpret_disjunction$2F3_step
.Lcall_proc_staged_α_1112_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              al, 104;                             je    interpret_disjunction$2F3_step
                                                                              jmp   n1030_cut_α
.Lcall_proc_staged_α_1112_0:
                        .quad            .Lcall_proc_staged_α_1112_0_s
.Lcall_proc_staged_α_1112_0_s:
                        .string          "interpret/2"
                        .size            n1029_call_proc_staged_bx, .-n1029_call_proc_staged_bx
                        .type            n1030_cut_bx, @function
n1030_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1030_cut_α:            mov              r11, 445
                        mov              qword ptr [rbp + 2504], 0
                        mov              qword ptr [rbp + 2512], 0
                        lea              rdi, [rbp + 2496]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n1031_bound_α
                        .size            n1030_cut_bx, .-n1030_cut_bx
                        .type            n1031_bound_bx, @function
n1031_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1031_bound_α:          mov              r11, 446
                        mov              qword ptr [rbp + 96], r12
                        lea              rdi, [rbp + 2496]
                        mov              rsi, rbp
                        call             rt_pl_disj_open@PLT;                 jmp   n1032_var_ref_α
                        .size            n1031_bound_bx, .-n1031_bound_bx
                        .type            n1032_var_ref_bx, @function
n1032_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1032_var_ref_α:        mov              r11, 447
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2384]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n1033_call_α
                        .size            n1032_var_ref_bx, .-n1032_var_ref_bx
                        .type            n1033_call_bx, @function
n1033_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1033_call_α:           mov              r11, 448
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dop_pl_nonvar@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    n1041_unmark_α
                                                                              jmp   n1034_var_ref_α
n1033_call_β:           mov              r11, 448;                            jmp   n1041_unmark_α
                        .size            n1033_call_bx, .-n1033_call_bx
                        .type            n1034_var_ref_bx, @function
n1034_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1034_var_ref_α:        mov              r11, 449
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n1035_lit_string_α
                        .size            n1034_var_ref_bx, .-n1034_var_ref_bx
                        .type            n1035_lit_string_bx, @function
n1035_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1035_lit_string_α:     mov              r11, 450
                        mov              qword ptr [rbp + 352], 2             # result
                        mov              dword ptr [rbp + 356], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1122_0]
                        mov              qword ptr [rbp + 360], rax;          jmp   n1036_var_ref_α
.Llit_string_α_1122_0:  .quad            .Llit_string_α_1122_0_s
.Llit_string_α_1122_0_s:
                        .string          "->"
                        .size            n1035_lit_string_bx, .-n1035_lit_string_bx
                        .type            n1036_var_ref_bx, @function
n1036_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1036_var_ref_α:        mov              r11, 451
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2384]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n1037_var_ref_α
                        .size            n1036_var_ref_bx, .-n1036_var_ref_bx
                        .type            n1037_var_ref_bx, @function
n1037_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1037_var_ref_α:        mov              r11, 452
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2400]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n1038_call_α
                        .size            n1037_var_ref_bx, .-n1037_var_ref_bx
                        .type            n1038_call_bx, @function
n1038_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1038_call_α:           mov              r11, 453
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n1046_unmark_α
                                                                              jmp   n1039_call_α
n1038_call_β:           mov              r11, 453;                            jmp   n1046_unmark_α
                        .size            n1038_call_bx, .-n1038_call_bx
                        .type            n1039_call_bx, @function
n1039_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1039_call_α:           mov              r11, 454
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 280]
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
                        cmp              al, 104;                             je    n1046_unmark_α
                                                                              jmp   n1040_move_label_α
n1039_call_β:           mov              r11, 454;                            jmp   n1046_unmark_α
                        .size            n1039_call_bx, .-n1039_call_bx
                        .type            n1040_move_label_bx, @function
n1040_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1040_move_label_α:     mov              r11, 455
                        lea              rax, [rip + n1047_indirect_goto_α]
                        mov              qword ptr [rbp + 80], rax;           jmp   interpret_disjunction$2F3_γ
                        .size            n1040_move_label_bx, .-n1040_move_label_bx
                        .type            n1041_unmark_bx, @function
n1041_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1041_unmark_α:         mov              r11, 456
                        mov              rdi, qword ptr [rbp + 96]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   interpret_disjunction$2F3_step
                                                                              jmp   n1042_var_ref_α
                        .size            n1041_unmark_bx, .-n1041_unmark_bx
                        .type            n1042_var_ref_bx, @function
n1042_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1042_var_ref_α:        mov              r11, 457
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2400]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n1043_var_ref_α
                        .size            n1042_var_ref_bx, .-n1042_var_ref_bx
                        .type            n1043_var_ref_bx, @function
n1043_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1043_var_ref_α:        mov              r11, 458
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n1044_call_proc_staged_α
                        .size            n1043_var_ref_bx, .-n1043_var_ref_bx
                        .type            n1044_call_proc_staged_bx, @function
n1044_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1044_call_proc_staged_α:
                        mov              r11, 459
                        mov              qword ptr [rbp + 416], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1138_200
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1138_201
.Lcall_proc_staged_α_1138_200:
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
.Lcall_proc_staged_α_1138_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1138_202
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1138_203
.Lcall_proc_staged_α_1138_202:
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
.Lcall_proc_staged_α_1138_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1138_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1138_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1138_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1138_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1138_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1138_3:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1138_21
                        add              rsp, 32
.Lcall_proc_staged_α_1138_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1138_2
.Lcall_proc_staged_α_1138_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 416], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1138_2
.Lcall_proc_staged_α_1138_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1138_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1046_unmark_α
.Lcall_proc_staged_α_1138_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1138_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
.Lcall_proc_staged_α_1138_29:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              al, 104;                             je    n1046_unmark_α
                                                                              jmp   n1045_move_label_α
n1044_call_proc_staged_β:
                        mov              r11, 459
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1138_22
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1138_22
                        mov              rcx, qword ptr [rbp + 424]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1138_22:
                                                                              jmp   n1046_unmark_α
.Lcall_proc_staged_α_1138_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              al, 104;                             je    n1046_unmark_α
                                                                              jmp   n1045_move_label_α
.Lcall_proc_staged_α_1138_0:
                        .quad            .Lcall_proc_staged_α_1138_0_s
.Lcall_proc_staged_α_1138_0_s:
                        .string          "interpret/2"
                        .size            n1044_call_proc_staged_bx, .-n1044_call_proc_staged_bx
                        .type            n1045_move_label_bx, @function
n1045_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1045_move_label_α:     mov              r11, 460
                        lea              rax, [rip + n1044_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   interpret_disjunction$2F3_γ
                        .size            n1045_move_label_bx, .-n1045_move_label_bx
                        .type            n1046_unmark_bx, @function
n1046_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1046_unmark_α:         mov              r11, 461
                        mov              rdi, qword ptr [rbp + 96]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   interpret_disjunction$2F3_step
                                                                              jmp   n1047_indirect_goto_α
                        .size            n1046_unmark_bx, .-n1046_unmark_bx
                        .type            n1047_indirect_goto_bx, @function
n1047_indirect_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1047_indirect_goto_α:  mov              r11, 462;                            jmp   interpret_disjunction$2F3_ω
n1047_indirect_goto_β:  mov              r11, 462;                            jmp   qword ptr [rbp + 80]
                        .size            n1047_indirect_goto_bx, .-n1047_indirect_goto_bx
                        .type            n1048_var_ref_bx, @function
n1048_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1048_var_ref_α:        mov              r11, 463
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n1049_lit_string_α
                        .size            n1048_var_ref_bx, .-n1048_var_ref_bx
                        .type            n1049_lit_string_bx, @function
n1049_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1049_lit_string_α:     mov              r11, 464
                        mov              qword ptr [rbp + 1552], 2            # result
                        mov              dword ptr [rbp + 1556], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1147_0]
                        mov              qword ptr [rbp + 1560], rax;         jmp   n1050_var_ref_α
.Llit_string_α_1147_0:  .quad            .Llit_string_α_1147_0_s
.Llit_string_α_1147_0_s:
                        .string          "->"
                        .size            n1049_lit_string_bx, .-n1049_lit_string_bx
                        .type            n1050_var_ref_bx, @function
n1050_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1050_var_ref_α:        mov              r11, 465
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2416]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n1051_var_ref_α
                        .size            n1050_var_ref_bx, .-n1050_var_ref_bx
                        .type            n1051_var_ref_bx, @function
n1051_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1051_var_ref_α:        mov              r11, 466
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2400]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n1052_call_α
                        .size            n1051_var_ref_bx, .-n1051_var_ref_bx
                        .type            n1052_call_bx, @function
n1052_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1052_call_α:           mov              r11, 467
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1496], rax
                        lea              rdi, [rbp + 1488]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              al, 104;                             je    interpret_disjunction$2F3_step
                                                                              jmp   n1053_call_α
n1052_call_β:           mov              r11, 467;                            jmp   interpret_disjunction$2F3_step
                        .size            n1052_call_bx, .-n1052_call_bx
                        .type            n1053_call_bx, @function
n1053_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1053_call_α:           mov              r11, 468
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1480]
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
                        cmp              al, 104;                             je    interpret_disjunction$2F3_step
                                                                              jmp   n1054_var_ref_α
n1053_call_β:           mov              r11, 468;                            jmp   interpret_disjunction$2F3_step
                        .size            n1053_call_bx, .-n1053_call_bx
                        .type            n1054_var_ref_bx, @function
n1054_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1054_var_ref_α:        mov              r11, 469
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n1055_var_ref_α
                        .size            n1054_var_ref_bx, .-n1054_var_ref_bx
                        .type            n1055_var_ref_bx, @function
n1055_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1055_var_ref_α:        mov              r11, 470
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2448]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx;         jmp   n1056_call_α
                        .size            n1055_var_ref_bx, .-n1055_var_ref_bx
                        .type            n1056_call_bx, @function
n1056_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1056_call_α:           mov              r11, 471
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1352]
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
                        cmp              al, 104;                             je    interpret_disjunction$2F3_step
                                                                              jmp   n1057_var_ref_α
n1056_call_β:           mov              r11, 471;                            jmp   interpret_disjunction$2F3_step
                        .size            n1056_call_bx, .-n1056_call_bx
                        .type            n1057_var_ref_bx, @function
n1057_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1057_var_ref_α:        mov              r11, 472
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n1058_var_ref_α
                        .size            n1057_var_ref_bx, .-n1057_var_ref_bx
                        .type            n1058_var_ref_bx, @function
n1058_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1058_var_ref_α:        mov              r11, 473
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n1059_call_α
                        .size            n1058_var_ref_bx, .-n1058_var_ref_bx
                        .type            n1059_call_bx, @function
n1059_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1059_call_α:           mov              r11, 474
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
                        cmp              al, 104;                             je    interpret_disjunction$2F3_step
                                                                              jmp   n1060_cut_α
n1059_call_β:           mov              r11, 474;                            jmp   interpret_disjunction$2F3_step
                        .size            n1059_call_bx, .-n1059_call_bx
                        .type            n1060_cut_bx, @function
n1060_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1060_cut_α:            mov              r11, 475
                        mov              qword ptr [rbp + 2504], 0
                        mov              qword ptr [rbp + 2512], 0
                        lea              rdi, [rbp + 2496]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n1061_var_ref_α
                        .size            n1060_cut_bx, .-n1060_cut_bx
                        .type            n1061_var_ref_bx, @function
n1061_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1061_var_ref_α:        mov              r11, 476
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2448]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n1062_var_ref_α
                        .size            n1061_var_ref_bx, .-n1061_var_ref_bx
                        .type            n1062_var_ref_bx, @function
n1062_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1062_var_ref_α:        mov              r11, 477
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx;         jmp   n1063_call_proc_staged_α
                        .size            n1062_var_ref_bx, .-n1062_var_ref_bx
                        .type            n1063_call_proc_staged_bx, @function
n1063_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1063_call_proc_staged_α:
                        mov              r11, 478
                        mov              qword ptr [rbp + 1104], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1171_200
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1171_201
.Lcall_proc_staged_α_1171_200:
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
.Lcall_proc_staged_α_1171_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1171_202
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1171_203
.Lcall_proc_staged_α_1171_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1171_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1171_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1171_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 2560]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_1171_99
                        mov              r10, qword ptr [rbp + 2520]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_1171_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_1171_99
                        mov              rcx, qword ptr [rbp + 2536]
                        mov              rdx, qword ptr [rbp + 2544]
                        lea              rsp, [rbp + 2560]
                        mov              rbp, qword ptr [rbp + 2552];         jmp   rax
.Lcall_proc_staged_α_1171_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1171_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1171_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1171_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1171_3:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1171_21
                        add              rsp, 32
.Lcall_proc_staged_α_1171_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1171_2
.Lcall_proc_staged_α_1171_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1104], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1171_2
.Lcall_proc_staged_α_1171_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1171_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   interpret_disjunction$2F3_ω
.Lcall_proc_staged_α_1171_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1171_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
.Lcall_proc_staged_α_1171_29:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              al, 104;                             je    interpret_disjunction$2F3_ω
                                                                              jmp   interpret_disjunction$2F3_ret1
n1063_call_proc_staged_β:
                        mov              r11, 478
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1171_22
                        mov              rax, qword ptr [rbp + 1104]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1171_22
                        mov              rcx, qword ptr [rbp + 1112]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1171_22:
                                                                              jmp   interpret_disjunction$2F3_ω
.Lcall_proc_staged_α_1171_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              al, 104;                             je    interpret_disjunction$2F3_ω
                                                                              jmp   interpret_disjunction$2F3_ret1
.Lcall_proc_staged_α_1171_0:
                        .quad            .Lcall_proc_staged_α_1171_0_s
.Lcall_proc_staged_α_1171_0_s:
                        .string          "interpret/2"
                        .size            n1063_call_proc_staged_bx, .-n1063_call_proc_staged_bx
                        .type            n1064_var_ref_bx, @function
n1064_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1064_var_ref_α:        mov              r11, 479
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n1065_var_ref_α
                        .size            n1064_var_ref_bx, .-n1064_var_ref_bx
                        .type            n1065_var_ref_bx, @function
n1065_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1065_var_ref_α:        mov              r11, 480
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2464]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx;         jmp   n1066_call_α
                        .size            n1065_var_ref_bx, .-n1065_var_ref_bx
                        .type            n1066_call_bx, @function
n1066_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1066_call_α:           mov              r11, 481
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1888]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              al, 104;                             je    interpret_disjunction$2F3_step
                                                                              jmp   n1067_var_ref_α
n1066_call_β:           mov              r11, 481;                            jmp   interpret_disjunction$2F3_step
                        .size            n1066_call_bx, .-n1066_call_bx
                        .type            n1067_var_ref_bx, @function
n1067_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1067_var_ref_α:        mov              r11, 482
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx;         jmp   n1068_var_ref_α
                        .size            n1067_var_ref_bx, .-n1067_var_ref_bx
                        .type            n1068_var_ref_bx, @function
n1068_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1068_var_ref_α:        mov              r11, 483
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2416]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx;         jmp   n1069_call_α
                        .size            n1068_var_ref_bx, .-n1068_var_ref_bx
                        .type            n1069_call_bx, @function
n1069_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1069_call_α:           mov              r11, 484
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
                        cmp              al, 104;                             je    interpret_disjunction$2F3_step
                                                                              jmp   n1070_var_ref_α
n1069_call_β:           mov              r11, 484;                            jmp   interpret_disjunction$2F3_step
                        .size            n1069_call_bx, .-n1069_call_bx
                        .type            n1070_var_ref_bx, @function
n1070_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1070_var_ref_α:        mov              r11, 485
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx;         jmp   n1071_var_ref_α
                        .size            n1070_var_ref_bx, .-n1070_var_ref_bx
                        .type            n1071_var_ref_bx, @function
n1071_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1071_var_ref_α:        mov              r11, 486
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n1072_call_α
                        .size            n1071_var_ref_bx, .-n1071_var_ref_bx
                        .type            n1072_call_bx, @function
n1072_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1072_call_α:           mov              r11, 487
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1768]
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
                        cmp              al, 104;                             je    interpret_disjunction$2F3_step
                                                                              jmp   n1073_var_ref_α
n1072_call_β:           mov              r11, 487;                            jmp   interpret_disjunction$2F3_step
                        .size            n1072_call_bx, .-n1072_call_bx
                        .type            n1073_var_ref_bx, @function
n1073_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1073_var_ref_α:        mov              r11, 488
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2464]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx;         jmp   n1074_var_ref_α
                        .size            n1073_var_ref_bx, .-n1073_var_ref_bx
                        .type            n1074_var_ref_bx, @function
n1074_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1074_var_ref_α:        mov              r11, 489
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx;         jmp   n1075_call_proc_staged_α
                        .size            n1074_var_ref_bx, .-n1074_var_ref_bx
                        .type            n1075_call_proc_staged_bx, @function
n1075_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1075_call_proc_staged_α:
                        mov              r11, 490
                        mov              qword ptr [rbp + 1616], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1192_200
                        mov              rax, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1192_201
.Lcall_proc_staged_α_1192_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1192_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1192_202
                        mov              rax, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1192_203
.Lcall_proc_staged_α_1192_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1192_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1192_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1192_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 2560]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_1192_99
                        mov              r10, qword ptr [rbp + 2520]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_1192_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_1192_99
                        mov              rcx, qword ptr [rbp + 2536]
                        mov              rdx, qword ptr [rbp + 2544]
                        lea              rsp, [rbp + 2560]
                        mov              rbp, qword ptr [rbp + 2552];         jmp   rax
.Lcall_proc_staged_α_1192_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1192_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1192_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1192_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1192_3:
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1192_21
                        add              rsp, 32
.Lcall_proc_staged_α_1192_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1192_2
.Lcall_proc_staged_α_1192_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1616], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1192_2
.Lcall_proc_staged_α_1192_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1192_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   interpret_disjunction$2F3_step
.Lcall_proc_staged_α_1192_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1192_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1568]
                        mov              rdx, qword ptr [rbp + 1576]
.Lcall_proc_staged_α_1192_29:
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              al, 104;                             je    interpret_disjunction$2F3_step
                                                                              jmp   interpret_disjunction$2F3_ret2
n1075_call_proc_staged_β:
                        mov              r11, 490
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1192_22
                        mov              rax, qword ptr [rbp + 1616]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1192_22
                        mov              rcx, qword ptr [rbp + 1624]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1192_22:
                                                                              jmp   interpret_disjunction$2F3_step
.Lcall_proc_staged_α_1192_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              al, 104;                             je    interpret_disjunction$2F3_step
                                                                              jmp   interpret_disjunction$2F3_ret2
.Lcall_proc_staged_α_1192_0:
                        .quad            .Lcall_proc_staged_α_1192_0_s
.Lcall_proc_staged_α_1192_0_s:
                        .string          "interpret/2"
                        .size            n1075_call_proc_staged_bx, .-n1075_call_proc_staged_bx
                        .type            n1076_var_ref_bx, @function
n1076_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1076_var_ref_α:        mov              r11, 491
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx;         jmp   n1077_var_ref_α
                        .size            n1076_var_ref_bx, .-n1076_var_ref_bx
                        .type            n1077_var_ref_bx, @function
n1077_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1077_var_ref_α:        mov              r11, 492
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2416]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx;         jmp   n1078_call_α
                        .size            n1077_var_ref_bx, .-n1077_var_ref_bx
                        .type            n1078_call_bx, @function
n1078_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1078_call_α:           mov              r11, 493
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
                        cmp              al, 104;                             je    interpret_disjunction$2F3_step
                                                                              jmp   n1079_var_ref_α
n1078_call_β:           mov              r11, 493;                            jmp   interpret_disjunction$2F3_step
                        .size            n1078_call_bx, .-n1078_call_bx
                        .type            n1079_var_ref_bx, @function
n1079_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1079_var_ref_α:        mov              r11, 494
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n1080_var_ref_α
                        .size            n1079_var_ref_bx, .-n1079_var_ref_bx
                        .type            n1080_var_ref_bx, @function
n1080_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1080_var_ref_α:        mov              r11, 495
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2448]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx;         jmp   n1081_call_α
                        .size            n1080_var_ref_bx, .-n1080_var_ref_bx
                        .type            n1081_call_bx, @function
n1081_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1081_call_α:           mov              r11, 496
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
                        cmp              al, 104;                             je    interpret_disjunction$2F3_step
                                                                              jmp   n1082_var_ref_α
n1081_call_β:           mov              r11, 496;                            jmp   interpret_disjunction$2F3_step
                        .size            n1081_call_bx, .-n1081_call_bx
                        .type            n1082_var_ref_bx, @function
n1082_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1082_var_ref_α:        mov              r11, 497
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx;         jmp   n1083_var_ref_α
                        .size            n1082_var_ref_bx, .-n1082_var_ref_bx
                        .type            n1083_var_ref_bx, @function
n1083_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1083_var_ref_α:        mov              r11, 498
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx;         jmp   n1084_call_α
                        .size            n1083_var_ref_bx, .-n1083_var_ref_bx
                        .type            n1084_call_bx, @function
n1084_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1084_call_α:           mov              r11, 499
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
                        cmp              al, 104;                             je    interpret_disjunction$2F3_step
                                                                              jmp   n1085_var_ref_α
n1084_call_β:           mov              r11, 499;                            jmp   interpret_disjunction$2F3_step
                        .size            n1084_call_bx, .-n1084_call_bx
                        .type            n1085_var_ref_bx, @function
n1085_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1085_var_ref_α:        mov              r11, 500
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2448]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx;         jmp   n1086_var_ref_α
                        .size            n1085_var_ref_bx, .-n1085_var_ref_bx
                        .type            n1086_var_ref_bx, @function
n1086_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1086_var_ref_α:        mov              r11, 501
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx;         jmp   n1087_call_proc_staged_α
                        .size            n1086_var_ref_bx, .-n1086_var_ref_bx
                        .type            n1087_call_proc_staged_bx, @function
n1087_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1087_call_proc_staged_α:
                        mov              r11, 502
                        mov              qword ptr [rbp + 2016], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1213_200
                        mov              rax, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1213_201
.Lcall_proc_staged_α_1213_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1213_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1213_202
                        mov              rax, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1213_203
.Lcall_proc_staged_α_1213_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1213_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1213_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1213_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 2560]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_1213_99
                        mov              r10, qword ptr [rbp + 2520]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_1213_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_1213_99
                        mov              rcx, qword ptr [rbp + 2536]
                        mov              rdx, qword ptr [rbp + 2544]
                        lea              rsp, [rbp + 2560]
                        mov              rbp, qword ptr [rbp + 2552];         jmp   rax
.Lcall_proc_staged_α_1213_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1213_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1213_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1213_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1213_3:
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1213_21
                        add              rsp, 32
.Lcall_proc_staged_α_1213_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1213_2
.Lcall_proc_staged_α_1213_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2016], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1213_2
.Lcall_proc_staged_α_1213_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1213_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   interpret_disjunction$2F3_step
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
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1968]
                        mov              rdx, qword ptr [rbp + 1976]
.Lcall_proc_staged_α_1213_29:
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              al, 104;                             je    interpret_disjunction$2F3_step
                                                                              jmp   interpret_disjunction$2F3_ret3
n1087_call_proc_staged_β:
                        mov              r11, 502
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1213_22
                        mov              rax, qword ptr [rbp + 2016]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1213_22
                        mov              rcx, qword ptr [rbp + 2024]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1213_22:
                                                                              jmp   interpret_disjunction$2F3_step
.Lcall_proc_staged_α_1213_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              al, 104;                             je    interpret_disjunction$2F3_step
                                                                              jmp   interpret_disjunction$2F3_ret3
.Lcall_proc_staged_α_1213_0:
                        .quad            .Lcall_proc_staged_α_1213_0_s
.Lcall_proc_staged_α_1213_0_s:
                        .string          "interpret/2"
                        .size            n1087_call_proc_staged_bx, .-n1087_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
interpret_disjunction$2F3_ret0:
                        lea              rax, [rip + n1047_indirect_goto_β]
                        mov              qword ptr [rbp + 2512], rax
                                                                              jmp   interpret_disjunction$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
interpret_disjunction$2F3_ret1:
                        lea              rax, [rip + n1063_call_proc_staged_β]
                        mov              qword ptr [rbp + 2512], rax
                                                                              jmp   interpret_disjunction$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
interpret_disjunction$2F3_ret2:
                        lea              rax, [rip + n1075_call_proc_staged_β]
                        mov              qword ptr [rbp + 2512], rax
                                                                              jmp   interpret_disjunction$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
interpret_disjunction$2F3_ret3:
                        lea              rax, [rip + n1087_call_proc_staged_β]
                        mov              qword ptr [rbp + 2512], rax
                                                                              jmp   interpret_disjunction$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
interpret_disjunction$2F3_step:
                        mov              rdi, qword ptr [rbp + 2496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2512], 0
                        mov              qword ptr [rbp + 2464], 0
                        mov              qword ptr [rbp + 2472], 0
                        mov              qword ptr [rbp + 2448], 0
                        mov              qword ptr [rbp + 2456], 0
                        mov              qword ptr [rbp + 2368], 0
                        mov              qword ptr [rbp + 2376], 0
                        mov              qword ptr [rbp + 2416], 0
                        mov              qword ptr [rbp + 2424], 0
                        mov              qword ptr [rbp + 2400], 0
                        mov              qword ptr [rbp + 2408], 0
                        mov              qword ptr [rbp + 2432], 0
                        mov              qword ptr [rbp + 2440], 0
                        mov              qword ptr [rbp + 2384], 0
                        mov              qword ptr [rbp + 2392], 0
                        mov              rax, qword ptr [rbp + 2504]
                        test             rax, rax
                                                                              je    interpret_disjunction$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
interpret_disjunction$2F3_alt1:
                        lea              rax, [rip + interpret_disjunction$2F3_alt2]
                        mov              qword ptr [rbp + 2504], rax
                                                                              jmp   n1048_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
interpret_disjunction$2F3_alt2:
                        lea              rax, [rip + interpret_disjunction$2F3_alt3]
                        mov              qword ptr [rbp + 2504], rax
                                                                              jmp   n1064_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
interpret_disjunction$2F3_alt3:
                        xor              eax, eax
                        mov              qword ptr [rbp + 2504], rax
                        mov              r13, qword ptr [rbp + 2520]
                                                                              jmp   n1076_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
interpret_disjunction$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
interpret_disjunction$2F3_β:
                        test             r15, r15
                                                                              jne   interpret_disjunction$2F3_ω
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2512], 0
                        test             rax, rax
                                                                              jne   interpret_disjunction$2F3_βres
                                                                              jmp   interpret_disjunction$2F3_step
interpret_disjunction$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
interpret_disjunction$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 2536]
                        mov              rax, qword ptr [rbp + 2520]
                        cmp              r13, rax;                            je    interpret_disjunction$2F3_altdet
                        lea              rdx, [rip + interpret_disjunction$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 2552];         jmp   rcx
interpret_disjunction$2F3_altdet:
                        xor              eax, eax
                        lea              rsp, [rbp + 2560]
                        mov              rbp, qword ptr [rbp + 2552];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
interpret_disjunction$2F3_ω:
                        mov              rcx, qword ptr [rbp + 2544]
                        mov              r13, qword ptr [rbp + 2520]
                        lea              rsp, [rbp + 2560]
                        mov              rbp, qword ptr [rbp + 2552];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__main$2F0:
                        sub              rsp, 384
                        mov              qword ptr [rsp + 360], rcx
                        mov              qword ptr [rsp + 368], rdx
                        mov              qword ptr [rsp + 376], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 344], r13
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 320], r12
                        mov              rdi, rsp
                        mov              esi, 304
                        mov              edx, 320
                        call             rt_jmp_frame_lexprep2@PLT
main$2F0_α_body:
                        .type            n1214_bound_bx, @function
n1214_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1214_bound_α:          mov              r11, 503
                        mov              qword ptr [rbp + 64], r12
                        lea              rdi, [rbp + 320]
                        mov              rsi, rbp
                        call             rt_pl_disj_open@PLT;                 jmp   n1215_call_proc_staged_α
                        .size            n1214_bound_bx, .-n1214_bound_bx
                        .type            n1215_call_proc_staged_bx, @function
n1215_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1215_call_proc_staged_α:
                        mov              r11, 504
                        mov              qword ptr [rbp + 272], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1229_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1229_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1229_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1229_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1229_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1229_3:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1229_21
                        add              rsp, 32
.Lcall_proc_staged_α_1229_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1229_2
.Lcall_proc_staged_α_1229_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 272], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1229_2
.Lcall_proc_staged_α_1229_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1229_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1219_unmark_α
.Lcall_proc_staged_α_1229_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1229_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
.Lcall_proc_staged_α_1229_29:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    n1219_unmark_α
                                                                              jmp   n1216_lit_string_α
n1215_call_proc_staged_β:
                        mov              r11, 504
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1229_22
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1229_22
                        mov              rcx, qword ptr [rbp + 280]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1229_22:
                                                                              jmp   n1219_unmark_α
.Lcall_proc_staged_α_1229_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    n1219_unmark_α
                                                                              jmp   n1216_lit_string_α
.Lcall_proc_staged_α_1229_0:
                        .quad            .Lcall_proc_staged_α_1229_0_s
.Lcall_proc_staged_α_1229_0_s:
                        .string          "meta_qsort/0"
                        .size            n1215_call_proc_staged_bx, .-n1215_call_proc_staged_bx
                        .type            n1216_lit_string_bx, @function
n1216_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1216_lit_string_α:     mov              r11, 505
                        mov              qword ptr [rbp + 176], 2             # result
                        mov              dword ptr [rbp + 180], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1230_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n1217_call_α
.Llit_string_α_1230_0:  .quad            .Llit_string_α_1230_0_s
.Llit_string_α_1230_0_s:
                        .string          "ok"
                        .size            n1216_lit_string_bx, .-n1216_lit_string_bx
                        .type            n1217_call_bx, @function
n1217_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1217_call_α:           mov              r11, 506
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dop_write@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    n1223_unmark_α
                                                                              jmp   n1218_move_label_α
n1217_call_β:           mov              r11, 506;                            jmp   n1223_unmark_α
                        .size            n1217_call_bx, .-n1217_call_bx
                        .type            n1218_move_label_bx, @function
n1218_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1218_move_label_α:     mov              r11, 507
                        lea              rax, [rip + n1224_indirect_goto_α]
                        mov              qword ptr [rbp + 48], rax;           jmp   n1225_call_α
                        .size            n1218_move_label_bx, .-n1218_move_label_bx
                        .type            n1219_unmark_bx, @function
n1219_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1219_unmark_α:         mov              r11, 508
                        mov              rdi, qword ptr [rbp + 64]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   main$2F0_step
                                                                              jmp   n1220_lit_string_α
                        .size            n1219_unmark_bx, .-n1219_unmark_bx
                        .type            n1220_lit_string_bx, @function
n1220_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1220_lit_string_α:     mov              r11, 509
                        mov              qword ptr [rbp + 240], 2             # result
                        mov              dword ptr [rbp + 244], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_1236_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n1221_call_α
.Llit_string_α_1236_0:  .quad            .Llit_string_α_1236_0_s
.Llit_string_α_1236_0_s:
                        .string          "failed"
                        .size            n1220_lit_string_bx, .-n1220_lit_string_bx
                        .type            n1221_call_bx, @function
n1221_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1221_call_α:           mov              r11, 510
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dop_write@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              al, 104;                             je    n1223_unmark_α
                                                                              jmp   n1222_move_label_α
n1221_call_β:           mov              r11, 510;                            jmp   n1223_unmark_α
                        .size            n1221_call_bx, .-n1221_call_bx
                        .type            n1222_move_label_bx, @function
n1222_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1222_move_label_α:     mov              r11, 511
                        lea              rax, [rip + n1224_indirect_goto_α]
                        mov              qword ptr [rbp + 48], rax;           jmp   n1225_call_α
                        .size            n1222_move_label_bx, .-n1222_move_label_bx
                        .type            n1223_unmark_bx, @function
n1223_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1223_unmark_α:         mov              r11, 512
                        mov              rdi, qword ptr [rbp + 64]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   main$2F0_step
                                                                              jmp   n1224_indirect_goto_α
                        .size            n1223_unmark_bx, .-n1223_unmark_bx
                        .type            n1224_indirect_goto_bx, @function
n1224_indirect_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1224_indirect_goto_α:  mov              r11, 513;                            jmp   main$2F0_step
n1224_indirect_goto_β:  mov              r11, 513;                            jmp   qword ptr [rbp + 48]
                        .size            n1224_indirect_goto_bx, .-n1224_indirect_goto_bx
                        .type            n1225_call_bx, @function
n1225_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1225_call_α:           mov              r11, 514
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
                        cmp              al, 104;                             je    n1224_indirect_goto_β
                                                                              jmp   main$2F0_ret0
n1225_call_β:           mov              r11, 514;                            jmp   n1224_indirect_goto_β
                        .size            n1225_call_bx, .-n1225_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ret0:
                        lea              rax, [rip + n1224_indirect_goto_β]
                        mov              qword ptr [rbp + 336], rax
                                                                              jmp   main$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_step:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], 0
                        mov              rax, qword ptr [rbp + 328]
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
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 336], 0
                        test             rax, rax
                                                                              jne   main$2F0_βres
                                                                              jmp   main$2F0_step
main$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 360]
                        mov              rax, qword ptr [rbp + 344]
                        cmp              r13, rax;                            je    main$2F0_altdet
                        lea              rdx, [rip + main$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 376];          jmp   rcx
main$2F0_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 384]
                        mov              rbp, qword ptr [rbp + 376];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ω:
                        mov              rcx, qword ptr [rbp + 368]
                        mov              r13, qword ptr [rbp + 344]
                        lea              rsp, [rbp + 384]
                        mov              rbp, qword ptr [rbp + 376];          jmp   rcx
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
                        .type            n1245_call_proc_staged_bx, @function
n1245_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1245_call_proc_staged_α:
                        mov              r11, 515
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1247_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1247_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1247_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1247_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1247_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1247_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1247_21
                        add              rsp, 32
.Lcall_proc_staged_α_1247_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1247_2
.Lcall_proc_staged_α_1247_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1247_2
.Lcall_proc_staged_α_1247_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1247_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_1247_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1247_29
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
.Lcall_proc_staged_α_1247_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n1245_call_proc_staged_β:
                        mov              r11, 515
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1247_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1247_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1247_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_1247_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_1247_0:
                        .quad            .Lcall_proc_staged_α_1247_0_s
.Lcall_proc_staged_α_1247_0_s:
                        .string          "main/0"
                        .size            n1245_call_proc_staged_bx, .-n1245_call_proc_staged_bx
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
.Lstartup_pname0:       .string          "interpret/1"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__interpret$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            448
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "interpret/2"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__interpret$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            4000
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "is_built_in/1"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__is_built_in$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            368
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "meta_qsort/0"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__meta_qsort$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            80
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "define/2"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__define$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            9920
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "interpret_built_in/1"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__interpret_built_in$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            464
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "interpret_disjunction/3"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__interpret_disjunction$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            2480
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
                        .long            304
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
