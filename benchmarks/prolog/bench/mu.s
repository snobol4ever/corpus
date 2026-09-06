                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__rule$2F3:
                        sub              rsp, 1776
                        mov              qword ptr [rsp + 1752], rcx
                        mov              qword ptr [rsp + 1760], rdx
                        mov              qword ptr [rsp + 1768], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1776]
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1736], r13
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1712], r12
                        lea              rax, [rip + rule$2F3_alt1]
                        mov              qword ptr [rsp + 1720], rax
                        lea              rdi, [rsp + 1712]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 1664
                        mov              edx, 1712
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
rule$2F3_α_body:
                        .type            n0_var_ref_bx, @function
n0_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:           mov              r11, 1
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n1_lit_integer_α
                        .size            n0_var_ref_bx, .-n0_var_ref_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              r11, 2
                        mov              qword ptr [rbp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_50_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n2_call_α
.Llit_integer_α_50_0:   .quad            1
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_call_bx, @function
n2_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              mov              r11, 3
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 384]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              al, 104;                             je    rule$2F3_step
                                                                              jmp   n3_var_ref_α
n2_call_β:              mov              r11, 3;                              jmp   rule$2F3_step
                        .size            n2_call_bx, .-n2_call_bx
                        .type            n3_var_ref_bx, @function
n3_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n4_var_ref_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_var_ref_bx, @function
n4_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n5_call_α
                        .size            n4_var_ref_bx, .-n4_var_ref_bx
                        .type            n5_call_bx, @function
n5_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:              mov              r11, 6
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
                        cmp              al, 104;                             je    rule$2F3_step
                                                                              jmp   n6_var_ref_α
n5_call_β:              mov              r11, 6;                              jmp   rule$2F3_step
                        .size            n5_call_bx, .-n5_call_bx
                        .type            n6_var_ref_bx, @function
n6_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n7_var_ref_α
                        .size            n6_var_ref_bx, .-n6_var_ref_bx
                        .type            n7_var_ref_bx, @function
n7_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n8_call_α
                        .size            n7_var_ref_bx, .-n7_var_ref_bx
                        .type            n8_call_bx, @function
n8_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:              mov              r11, 9
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
                        cmp              al, 104;                             je    rule$2F3_step
                                                                              jmp   n9_var_ref_α
n8_call_β:              mov              r11, 9;                              jmp   rule$2F3_step
                        .size            n8_call_bx, .-n8_call_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n10_var_ref_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_var_ref_bx, @function
n10_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n11_call_proc_staged_α
                        .size            n10_var_ref_bx, .-n10_var_ref_bx
                        .type            n11_call_proc_staged_bx, @function
n11_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_call_proc_staged_α: mov              r11, 12
                        mov              qword ptr [rbp + 112], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_67_200
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_67_201
.Lcall_proc_staged_α_67_200:
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
.Lcall_proc_staged_α_67_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_67_202
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_67_203
.Lcall_proc_staged_α_67_202:
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
.Lcall_proc_staged_α_67_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_67_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_67_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 1776]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_67_99
                        mov              r10, qword ptr [rbp + 1736]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_67_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_67_99
                        mov              rcx, qword ptr [rbp + 1752]
                        mov              rdx, qword ptr [rbp + 1760]
                        lea              rsp, [rbp + 1776]
                        mov              rbp, qword ptr [rbp + 1768];         jmp   rax
.Lcall_proc_staged_α_67_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_67_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_67_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_67_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_67_3:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_67_21
                        add              rsp, 32
.Lcall_proc_staged_α_67_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_67_2
.Lcall_proc_staged_α_67_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 112], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_67_2
.Lcall_proc_staged_α_67_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_67_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   rule$2F3_step
.Lcall_proc_staged_α_67_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_67_29
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
.Lcall_proc_staged_α_67_29:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    rule$2F3_step
                                                                              jmp   rule$2F3_ret0
n11_call_proc_staged_β: mov              r11, 12
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_67_22
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_67_22
                        mov              rcx, qword ptr [rbp + 120]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_67_22:
                                                                              jmp   rule$2F3_step
.Lcall_proc_staged_α_67_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    rule$2F3_step
                                                                              jmp   rule$2F3_ret0
.Lcall_proc_staged_α_67_0:
                        .quad            .Lcall_proc_staged_α_67_0_s
.Lcall_proc_staged_α_67_0_s:
                        .string          "rule1/2"
                        .size            n11_call_proc_staged_bx, .-n11_call_proc_staged_bx
                        .type            n12_var_ref_bx, @function
n12_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n13_lit_integer_α
                        .size            n12_var_ref_bx, .-n12_var_ref_bx
                        .type            n13_lit_integer_bx, @function
n13_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              r11, 14
                        mov              qword ptr [rbp + 848], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_70_0]
                        mov              qword ptr [rbp + 856], rax;          jmp   n14_call_α
.Llit_integer_α_70_0:   .quad            2
                        .size            n13_lit_integer_bx, .-n13_lit_integer_bx
                        .type            n14_call_bx, @function
n14_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:             mov              r11, 15
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              al, 104;                             je    rule$2F3_step
                                                                              jmp   n15_var_ref_α
n14_call_β:             mov              r11, 15;                             jmp   rule$2F3_step
                        .size            n14_call_bx, .-n14_call_bx
                        .type            n15_var_ref_bx, @function
n15_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n16_var_ref_α
                        .size            n15_var_ref_bx, .-n15_var_ref_bx
                        .type            n16_var_ref_bx, @function
n16_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n17_call_α
                        .size            n16_var_ref_bx, .-n16_var_ref_bx
                        .type            n17_call_bx, @function
n17_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_α:             mov              r11, 18
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
                        cmp              al, 104;                             je    rule$2F3_step
                                                                              jmp   n18_var_ref_α
n17_call_β:             mov              r11, 18;                             jmp   rule$2F3_step
                        .size            n17_call_bx, .-n17_call_bx
                        .type            n18_var_ref_bx, @function
n18_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n19_var_ref_α
                        .size            n18_var_ref_bx, .-n18_var_ref_bx
                        .type            n19_var_ref_bx, @function
n19_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          mov              r11, 20
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n20_call_α
                        .size            n19_var_ref_bx, .-n19_var_ref_bx
                        .type            n20_call_bx, @function
n20_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:             mov              r11, 21
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
                        cmp              al, 104;                             je    rule$2F3_step
                                                                              jmp   n21_var_ref_α
n20_call_β:             mov              r11, 21;                             jmp   rule$2F3_step
                        .size            n20_call_bx, .-n20_call_bx
                        .type            n21_var_ref_bx, @function
n21_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n22_var_ref_α
                        .size            n21_var_ref_bx, .-n21_var_ref_bx
                        .type            n22_var_ref_bx, @function
n22_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n23_call_proc_staged_α
                        .size            n22_var_ref_bx, .-n22_var_ref_bx
                        .type            n23_call_proc_staged_bx, @function
n23_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_call_proc_staged_α: mov              r11, 24
                        mov              qword ptr [rbp + 512], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_87_200
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_87_201
.Lcall_proc_staged_α_87_200:
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
.Lcall_proc_staged_α_87_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_87_202
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_87_203
.Lcall_proc_staged_α_87_202:
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
.Lcall_proc_staged_α_87_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_87_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_87_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 1776]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_87_99
                        mov              r10, qword ptr [rbp + 1736]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_87_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_87_99
                        mov              rcx, qword ptr [rbp + 1752]
                        mov              rdx, qword ptr [rbp + 1760]
                        lea              rsp, [rbp + 1776]
                        mov              rbp, qword ptr [rbp + 1768];         jmp   rax
.Lcall_proc_staged_α_87_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_87_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_87_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_87_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_87_3:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_87_21
                        add              rsp, 32
.Lcall_proc_staged_α_87_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_87_2
.Lcall_proc_staged_α_87_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 512], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_87_2
.Lcall_proc_staged_α_87_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_87_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   rule$2F3_step
.Lcall_proc_staged_α_87_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_87_29
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
.Lcall_proc_staged_α_87_29:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    rule$2F3_step
                                                                              jmp   rule$2F3_ret1
n23_call_proc_staged_β: mov              r11, 24
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_87_22
                        mov              rax, qword ptr [rbp + 512]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_87_22
                        mov              rcx, qword ptr [rbp + 520]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_87_22:
                                                                              jmp   rule$2F3_step
.Lcall_proc_staged_α_87_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    rule$2F3_step
                                                                              jmp   rule$2F3_ret1
.Lcall_proc_staged_α_87_0:
                        .quad            .Lcall_proc_staged_α_87_0_s
.Lcall_proc_staged_α_87_0_s:
                        .string          "rule2/2"
                        .size            n23_call_proc_staged_bx, .-n23_call_proc_staged_bx
                        .type            n24_var_ref_bx, @function
n24_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n25_lit_integer_α
                        .size            n24_var_ref_bx, .-n24_var_ref_bx
                        .type            n25_lit_integer_bx, @function
n25_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      mov              r11, 26
                        mov              qword ptr [rbp + 1248], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_90_0]
                        mov              qword ptr [rbp + 1256], rax;         jmp   n26_call_α
.Llit_integer_α_90_0:   .quad            3
                        .size            n25_lit_integer_bx, .-n25_lit_integer_bx
                        .type            n26_call_bx, @function
n26_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_call_α:             mov              r11, 27
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1184]
                        movabs           rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              al, 104;                             je    rule$2F3_step
                                                                              jmp   n27_var_ref_α
n26_call_β:             mov              r11, 27;                             jmp   rule$2F3_step
                        .size            n26_call_bx, .-n26_call_bx
                        .type            n27_var_ref_bx, @function
n27_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n28_var_ref_α
                        .size            n27_var_ref_bx, .-n27_var_ref_bx
                        .type            n28_var_ref_bx, @function
n28_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx;         jmp   n29_call_α
                        .size            n28_var_ref_bx, .-n28_var_ref_bx
                        .type            n29_call_bx, @function
n29_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_call_α:             mov              r11, 30
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
                        cmp              al, 104;                             je    rule$2F3_step
                                                                              jmp   n30_var_ref_α
n29_call_β:             mov              r11, 30;                             jmp   rule$2F3_step
                        .size            n29_call_bx, .-n29_call_bx
                        .type            n30_var_ref_bx, @function
n30_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n31_var_ref_α
                        .size            n30_var_ref_bx, .-n30_var_ref_bx
                        .type            n31_var_ref_bx, @function
n31_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n32_call_α
                        .size            n31_var_ref_bx, .-n31_var_ref_bx
                        .type            n32_call_bx, @function
n32_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:             mov              r11, 33
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 992]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    rule$2F3_step
                                                                              jmp   n33_var_ref_α
n32_call_β:             mov              r11, 33;                             jmp   rule$2F3_step
                        .size            n32_call_bx, .-n32_call_bx
                        .type            n33_var_ref_bx, @function
n33_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n34_var_ref_α
                        .size            n33_var_ref_bx, .-n33_var_ref_bx
                        .type            n34_var_ref_bx, @function
n34_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n35_call_proc_staged_α
                        .size            n34_var_ref_bx, .-n34_var_ref_bx
                        .type            n35_call_proc_staged_bx, @function
n35_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_call_proc_staged_α: mov              r11, 36
                        mov              qword ptr [rbp + 912], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_107_200
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_107_201
.Lcall_proc_staged_α_107_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_107_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_107_202
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_107_203
.Lcall_proc_staged_α_107_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_107_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_107_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_107_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 1776]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_107_99
                        mov              r10, qword ptr [rbp + 1736]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_107_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_107_99
                        mov              rcx, qword ptr [rbp + 1752]
                        mov              rdx, qword ptr [rbp + 1760]
                        lea              rsp, [rbp + 1776]
                        mov              rbp, qword ptr [rbp + 1768];         jmp   rax
.Lcall_proc_staged_α_107_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_107_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_107_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_107_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_107_3:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_107_21
                        add              rsp, 32
.Lcall_proc_staged_α_107_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_107_2
.Lcall_proc_staged_α_107_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 912], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_107_2
.Lcall_proc_staged_α_107_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_107_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   rule$2F3_step
.Lcall_proc_staged_α_107_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_107_29
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
.Lcall_proc_staged_α_107_29:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    rule$2F3_step
                                                                              jmp   rule$2F3_ret2
n35_call_proc_staged_β: mov              r11, 36
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_107_22
                        mov              rax, qword ptr [rbp + 912]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_107_22
                        mov              rcx, qword ptr [rbp + 920]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_107_22:
                                                                              jmp   rule$2F3_step
.Lcall_proc_staged_α_107_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    rule$2F3_step
                                                                              jmp   rule$2F3_ret2
.Lcall_proc_staged_α_107_0:
                        .quad            .Lcall_proc_staged_α_107_0_s
.Lcall_proc_staged_α_107_0_s:
                        .string          "rule3/2"
                        .size            n35_call_proc_staged_bx, .-n35_call_proc_staged_bx
                        .type            n36_var_ref_bx, @function
n36_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx;         jmp   n37_lit_integer_α
                        .size            n36_var_ref_bx, .-n36_var_ref_bx
                        .type            n37_lit_integer_bx, @function
n37_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      mov              r11, 38
                        mov              qword ptr [rbp + 1648], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_110_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n38_call_α
.Llit_integer_α_110_0:  .quad            4
                        .size            n37_lit_integer_bx, .-n37_lit_integer_bx
                        .type            n38_call_bx, @function
n38_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:             mov              r11, 39
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1592], rax
                        lea              rdi, [rbp + 1584]
                        movabs           rsi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              al, 104;                             je    rule$2F3_step
                                                                              jmp   n39_var_ref_α
n38_call_β:             mov              r11, 39;                             jmp   rule$2F3_step
                        .size            n38_call_bx, .-n38_call_bx
                        .type            n39_var_ref_bx, @function
n39_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx;         jmp   n40_var_ref_α
                        .size            n39_var_ref_bx, .-n39_var_ref_bx
                        .type            n40_var_ref_bx, @function
n40_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n41_call_α
                        .size            n40_var_ref_bx, .-n40_var_ref_bx
                        .type            n41_call_bx, @function
n41_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_call_α:             mov              r11, 42
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
                        cmp              al, 104;                             je    rule$2F3_step
                                                                              jmp   n42_var_ref_α
n41_call_β:             mov              r11, 42;                             jmp   rule$2F3_step
                        .size            n41_call_bx, .-n41_call_bx
                        .type            n42_var_ref_bx, @function
n42_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n43_var_ref_α
                        .size            n42_var_ref_bx, .-n42_var_ref_bx
                        .type            n43_var_ref_bx, @function
n43_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n44_call_α
                        .size            n43_var_ref_bx, .-n43_var_ref_bx
                        .type            n44_call_bx, @function
n44_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_call_α:             mov              r11, 45
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
                        cmp              al, 104;                             je    rule$2F3_step
                                                                              jmp   n45_var_ref_α
n44_call_β:             mov              r11, 45;                             jmp   rule$2F3_step
                        .size            n44_call_bx, .-n44_call_bx
                        .type            n45_var_ref_bx, @function
n45_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx;         jmp   n46_var_ref_α
                        .size            n45_var_ref_bx, .-n45_var_ref_bx
                        .type            n46_var_ref_bx, @function
n46_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n47_call_proc_staged_α
                        .size            n46_var_ref_bx, .-n46_var_ref_bx
                        .type            n47_call_proc_staged_bx, @function
n47_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_call_proc_staged_α: mov              r11, 48
                        mov              qword ptr [rbp + 1312], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_127_200
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_127_201
.Lcall_proc_staged_α_127_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_127_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_127_202
                        mov              rax, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_127_203
.Lcall_proc_staged_α_127_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_127_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_127_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_127_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 1776]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_127_99
                        mov              r10, qword ptr [rbp + 1736]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_127_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_127_99
                        mov              rcx, qword ptr [rbp + 1752]
                        mov              rdx, qword ptr [rbp + 1760]
                        lea              rsp, [rbp + 1776]
                        mov              rbp, qword ptr [rbp + 1768];         jmp   rax
.Lcall_proc_staged_α_127_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_127_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_127_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_127_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_127_3:
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_127_21
                        add              rsp, 32
.Lcall_proc_staged_α_127_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_127_2
.Lcall_proc_staged_α_127_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1312], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_127_2
.Lcall_proc_staged_α_127_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_127_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   rule$2F3_step
.Lcall_proc_staged_α_127_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_127_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
.Lcall_proc_staged_α_127_29:
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              al, 104;                             je    rule$2F3_step
                                                                              jmp   rule$2F3_ret3
n47_call_proc_staged_β: mov              r11, 48
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_127_22
                        mov              rax, qword ptr [rbp + 1312]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_127_22
                        mov              rcx, qword ptr [rbp + 1320]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_127_22:
                                                                              jmp   rule$2F3_step
.Lcall_proc_staged_α_127_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              al, 104;                             je    rule$2F3_step
                                                                              jmp   rule$2F3_ret3
.Lcall_proc_staged_α_127_0:
                        .quad            .Lcall_proc_staged_α_127_0_s
.Lcall_proc_staged_α_127_0_s:
                        .string          "rule4/2"
                        .size            n47_call_proc_staged_bx, .-n47_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
rule$2F3_ret0:
                        lea              rax, [rip + n11_call_proc_staged_β]
                        mov              qword ptr [rbp + 1728], rax
                                                                              jmp   rule$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
rule$2F3_ret1:
                        lea              rax, [rip + n23_call_proc_staged_β]
                        mov              qword ptr [rbp + 1728], rax
                                                                              jmp   rule$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
rule$2F3_ret2:
                        lea              rax, [rip + n35_call_proc_staged_β]
                        mov              qword ptr [rbp + 1728], rax
                                                                              jmp   rule$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
rule$2F3_ret3:
                        lea              rax, [rip + n47_call_proc_staged_β]
                        mov              qword ptr [rbp + 1728], rax
                                                                              jmp   rule$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
rule$2F3_step:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1728], 0
                        mov              qword ptr [rbp + 1664], 0
                        mov              qword ptr [rbp + 1672], 0
                        mov              qword ptr [rbp + 1680], 0
                        mov              qword ptr [rbp + 1688], 0
                        mov              rax, qword ptr [rbp + 1720]
                        test             rax, rax
                                                                              je    rule$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
rule$2F3_alt1:
                        lea              rax, [rip + rule$2F3_alt2]
                        mov              qword ptr [rbp + 1720], rax
                                                                              jmp   n12_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
rule$2F3_alt2:
                        lea              rax, [rip + rule$2F3_alt3]
                        mov              qword ptr [rbp + 1720], rax
                                                                              jmp   n24_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
rule$2F3_alt3:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1720], rax
                        mov              r13, qword ptr [rbp + 1736]
                                                                              jmp   n36_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
rule$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
rule$2F3_β:
                        test             r15, r15
                                                                              jne   rule$2F3_ω
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1728], 0
                        test             rax, rax
                                                                              jne   rule$2F3_βres
                                                                              jmp   rule$2F3_step
rule$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
rule$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1752]
                        mov              rax, qword ptr [rbp + 1736]
                        cmp              r13, rax;                            je    rule$2F3_altdet
                        lea              rdx, [rip + rule$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1768];         jmp   rcx
rule$2F3_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 1776]
                        mov              rbp, qword ptr [rbp + 1768];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
rule$2F3_ω:
                        mov              rcx, qword ptr [rbp + 1760]
                        mov              r13, qword ptr [rbp + 1736]
                        lea              rsp, [rbp + 1776]
                        mov              rbp, qword ptr [rbp + 1768];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__rule4$2F2:
                        sub              rsp, 1136
                        mov              qword ptr [rsp + 1112], rcx
                        mov              qword ptr [rsp + 1120], rdx
                        mov              qword ptr [rsp + 1128], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1096], r13
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1072], r12
                        lea              rax, [rip + rule4$2F2_alt1]
                        mov              qword ptr [rsp + 1080], rax
                        lea              rdi, [rsp + 1072]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 992
                        mov              edx, 1072
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
rule4$2F2_α_body:
                        .type            n128_var_ref_bx, @function
n128_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n129_lit_string_α
                        .size            n128_var_ref_bx, .-n128_var_ref_bx
                        .type            n129_lit_string_bx, @function
n129_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:      mov              r11, 50
                        mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_157_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n130_lit_string_α
.Llit_string_α_157_0:   .quad            .Llit_string_α_157_0_s
.Llit_string_α_157_0_s: .string          "."
                        .size            n129_lit_string_bx, .-n129_lit_string_bx
                        .type            n130_lit_string_bx, @function
n130_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:      mov              r11, 51
                        mov              qword ptr [rbp + 352], 2             # result
                        mov              dword ptr [rbp + 356], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_158_0]
                        mov              qword ptr [rbp + 360], rax;          jmp   n131_lit_string_α
.Llit_string_α_158_0:   .quad            .Llit_string_α_158_0_s
.Llit_string_α_158_0_s: .string          "u"
                        .size            n130_lit_string_bx, .-n130_lit_string_bx
                        .type            n131_lit_string_bx, @function
n131_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:      mov              r11, 52
                        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_159_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n132_lit_string_α
.Llit_string_α_159_0:   .quad            .Llit_string_α_159_0_s
.Llit_string_α_159_0_s: .string          "."
                        .size            n131_lit_string_bx, .-n131_lit_string_bx
                        .type            n132_lit_string_bx, @function
n132_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:      mov              r11, 53
                        mov              qword ptr [rbp + 240], 2             # result
                        mov              dword ptr [rbp + 244], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_160_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n133_var_ref_α
.Llit_string_α_160_0:   .quad            .Llit_string_α_160_0_s
.Llit_string_α_160_0_s: .string          "u"
                        .size            n132_lit_string_bx, .-n132_lit_string_bx
                        .type            n133_var_ref_bx, @function
n133_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:         mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n134_call_α
                        .size            n133_var_ref_bx, .-n133_var_ref_bx
                        .type            n134_call_bx, @function
n134_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_call_α:            mov              r11, 55
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 272]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    rule4$2F2_ω
                                                                              jmp   n135_call_α
n134_call_β:            mov              r11, 55;                             jmp   rule4$2F2_ω
                        .size            n134_call_bx, .-n134_call_bx
                        .type            n135_call_bx, @function
n135_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_call_α:            mov              r11, 56
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 384]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              al, 104;                             je    rule4$2F2_step
                                                                              jmp   n136_call_α
n135_call_β:            mov              r11, 56;                             jmp   rule4$2F2_step
                        .size            n135_call_bx, .-n135_call_bx
                        .type            n136_call_bx, @function
n136_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_call_α:            mov              r11, 57
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 376]
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
                        cmp              al, 104;                             je    rule4$2F2_step
                                                                              jmp   n137_var_ref_α
n136_call_β:            mov              r11, 57;                             jmp   rule4$2F2_step
                        .size            n136_call_bx, .-n136_call_bx
                        .type            n137_var_ref_bx, @function
n137_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n138_var_ref_α
                        .size            n137_var_ref_bx, .-n137_var_ref_bx
                        .type            n138_var_ref_bx, @function
n138_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n139_call_α
                        .size            n138_var_ref_bx, .-n138_var_ref_bx
                        .type            n139_call_bx, @function
n139_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_call_α:            mov              r11, 60
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
                        cmp              al, 104;                             je    rule4$2F2_step
                                                                              jmp   rule4$2F2_γ
n139_call_β:            mov              r11, 60;                             jmp   rule4$2F2_step
                        .size            n139_call_bx, .-n139_call_bx
                        .type            n140_var_ref_bx, @function
n140_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:         mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n141_lit_string_α
                        .size            n140_var_ref_bx, .-n140_var_ref_bx
                        .type            n141_lit_string_bx, @function
n141_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:      mov              r11, 62
                        mov              qword ptr [rbp + 976], 2             # result
                        mov              dword ptr [rbp + 980], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_173_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n142_var_ref_α
.Llit_string_α_173_0:   .quad            .Llit_string_α_173_0_s
.Llit_string_α_173_0_s: .string          "."
                        .size            n141_lit_string_bx, .-n141_lit_string_bx
                        .type            n142_var_ref_bx, @function
n142_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:         mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n143_var_ref_α
                        .size            n142_var_ref_bx, .-n142_var_ref_bx
                        .type            n143_var_ref_bx, @function
n143_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:         mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n144_call_α
                        .size            n143_var_ref_bx, .-n143_var_ref_bx
                        .type            n144_call_bx, @function
n144_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_call_α:            mov              r11, 65
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 872]
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
                        cmp              al, 104;                             je    rule4$2F2_step
                                                                              jmp   n145_call_α
n144_call_β:            mov              r11, 65;                             jmp   rule4$2F2_step
                        .size            n144_call_bx, .-n144_call_bx
                        .type            n145_call_bx, @function
n145_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_call_α:            mov              r11, 66
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    rule4$2F2_step
                                                                              jmp   n146_var_ref_α
n145_call_β:            mov              r11, 66;                             jmp   rule4$2F2_step
                        .size            n145_call_bx, .-n145_call_bx
                        .type            n146_var_ref_bx, @function
n146_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:         mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n147_lit_string_α
                        .size            n146_var_ref_bx, .-n146_var_ref_bx
                        .type            n147_lit_string_bx, @function
n147_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:      mov              r11, 68
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_182_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n148_var_ref_α
.Llit_string_α_182_0:   .quad            .Llit_string_α_182_0_s
.Llit_string_α_182_0_s: .string          "."
                        .size            n147_lit_string_bx, .-n147_lit_string_bx
                        .type            n148_var_ref_bx, @function
n148_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:         mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n149_var_ref_α
                        .size            n148_var_ref_bx, .-n148_var_ref_bx
                        .type            n149_var_ref_bx, @function
n149_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:         mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n150_call_α
                        .size            n149_var_ref_bx, .-n149_var_ref_bx
                        .type            n150_call_bx, @function
n150_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_call_α:            mov              r11, 71
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 680]
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
                        cmp              al, 104;                             je    rule4$2F2_step
                                                                              jmp   n151_call_α
n150_call_β:            mov              r11, 71;                             jmp   rule4$2F2_step
                        .size            n150_call_bx, .-n150_call_bx
                        .type            n151_call_bx, @function
n151_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_call_α:            mov              r11, 72
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 696]
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
                        cmp              al, 104;                             je    rule4$2F2_step
                                                                              jmp   n152_var_ref_α
n151_call_β:            mov              r11, 72;                             jmp   rule4$2F2_step
                        .size            n151_call_bx, .-n151_call_bx
                        .type            n152_var_ref_bx, @function
n152_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:         mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n153_var_ref_α
                        .size            n152_var_ref_bx, .-n152_var_ref_bx
                        .type            n153_var_ref_bx, @function
n153_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:         mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n154_call_proc_staged_α
                        .size            n153_var_ref_bx, .-n153_var_ref_bx
                        .type            n154_call_proc_staged_bx, @function
n154_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_call_proc_staged_α:
                        mov              r11, 75
                        mov              qword ptr [rbp + 512], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_194_200
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_194_201
.Lcall_proc_staged_α_194_200:
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
.Lcall_proc_staged_α_194_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_194_202
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_194_203
.Lcall_proc_staged_α_194_202:
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
.Lcall_proc_staged_α_194_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_194_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_194_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 1136]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_194_99
                        mov              r10, qword ptr [rbp + 1096]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_194_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_194_99
                        mov              rcx, qword ptr [rbp + 1112]
                        mov              rdx, qword ptr [rbp + 1120]
                        lea              rsp, [rbp + 1136]
                        mov              rbp, qword ptr [rbp + 1128];         jmp   rax
.Lcall_proc_staged_α_194_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_194_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_194_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_194_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_194_3:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_194_21
                        add              rsp, 32
.Lcall_proc_staged_α_194_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_194_2
.Lcall_proc_staged_α_194_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 512], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_194_2
.Lcall_proc_staged_α_194_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_194_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   rule4$2F2_step
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
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
.Lcall_proc_staged_α_194_29:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    rule4$2F2_step
                                                                              jmp   rule4$2F2_ret1
n154_call_proc_staged_β:
                        mov              r11, 75
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_194_22
                        mov              rax, qword ptr [rbp + 512]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_194_22
                        mov              rcx, qword ptr [rbp + 520]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_194_22:
                                                                              jmp   rule4$2F2_step
.Lcall_proc_staged_α_194_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    rule4$2F2_step
                                                                              jmp   rule4$2F2_ret1
.Lcall_proc_staged_α_194_0:
                        .quad            .Lcall_proc_staged_α_194_0_s
.Lcall_proc_staged_α_194_0_s:
                        .string          "rule4/2"
                        .size            n154_call_proc_staged_bx, .-n154_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
rule4$2F2_ret1:
                        lea              rax, [rip + n154_call_proc_staged_β]
                        mov              qword ptr [rbp + 1088], rax
                                                                              jmp   rule4$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
rule4$2F2_step:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1088], 0
                        mov              qword ptr [rbp + 992], 0
                        mov              qword ptr [rbp + 1000], 0
                        mov              qword ptr [rbp + 1040], 0
                        mov              qword ptr [rbp + 1048], 0
                        mov              qword ptr [rbp + 1008], 0
                        mov              qword ptr [rbp + 1016], 0
                        mov              qword ptr [rbp + 1024], 0
                        mov              qword ptr [rbp + 1032], 0
                        mov              rax, qword ptr [rbp + 1080]
                        test             rax, rax
                                                                              je    rule4$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
rule4$2F2_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1080], rax
                        mov              r13, qword ptr [rbp + 1096]
                                                                              jmp   n140_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
rule4$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
rule4$2F2_β:
                        test             r15, r15
                                                                              jne   rule4$2F2_ω
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1088], 0
                        test             rax, rax
                                                                              jne   rule4$2F2_βres
                                                                              jmp   rule4$2F2_step
rule4$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
rule4$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1112]
                        mov              rax, qword ptr [rbp + 1096]
                        cmp              r13, rax;                            je    rule4$2F2_altdet
                        lea              rdx, [rip + rule4$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1128];         jmp   rcx
rule4$2F2_altdet:       xor              eax, eax
                        lea              rsp, [rbp + 1136]
                        mov              rbp, qword ptr [rbp + 1128];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
rule4$2F2_ω:
                        mov              rcx, qword ptr [rbp + 1120]
                        mov              r13, qword ptr [rbp + 1096]
                        lea              rsp, [rbp + 1136]
                        mov              rbp, qword ptr [rbp + 1128];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__rule2$2F2:
                        sub              rsp, 720
                        mov              qword ptr [rsp + 696], rcx
                        mov              qword ptr [rsp + 704], rdx
                        mov              qword ptr [rsp + 712], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 680], r13
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 656], r12
                        mov              rdi, rsp
                        mov              esi, 608
                        mov              edx, 656
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
rule2$2F2_α_body:
                        .type            n195_var_ref_bx, @function
n195_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:         mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n196_lit_string_α
                        .size            n195_var_ref_bx, .-n195_var_ref_bx
                        .type            n196_lit_string_bx, @function
n196_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:      mov              r11, 77
                        mov              qword ptr [rbp + 592], 2             # result
                        mov              dword ptr [rbp + 596], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_213_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n197_lit_string_α
.Llit_string_α_213_0:   .quad            .Llit_string_α_213_0_s
.Llit_string_α_213_0_s: .string          "."
                        .size            n196_lit_string_bx, .-n196_lit_string_bx
                        .type            n197_lit_string_bx, @function
n197_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:      mov              r11, 78
                        mov              qword ptr [rbp + 496], 2             # result
                        mov              dword ptr [rbp + 500], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_214_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n198_var_ref_α
.Llit_string_α_214_0:   .quad            .Llit_string_α_214_0_s
.Llit_string_α_214_0_s: .string          "m"
                        .size            n197_lit_string_bx, .-n197_lit_string_bx
                        .type            n198_var_ref_bx, @function
n198_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:         mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n199_call_α
                        .size            n198_var_ref_bx, .-n198_var_ref_bx
                        .type            n199_call_bx, @function
n199_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_call_α:            mov              r11, 80
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 504]
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
                        cmp              al, 104;                             je    rule2$2F2_step
                                                                              jmp   n200_call_α
n199_call_β:            mov              r11, 80;                             jmp   rule2$2F2_step
                        .size            n199_call_bx, .-n199_call_bx
                        .type            n200_call_bx, @function
n200_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_call_α:            mov              r11, 81
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
                        cmp              al, 104;                             je    rule2$2F2_step
                                                                              jmp   n201_var_ref_α
n200_call_β:            mov              r11, 81;                             jmp   rule2$2F2_step
                        .size            n200_call_bx, .-n200_call_bx
                        .type            n201_var_ref_bx, @function
n201_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n202_lit_string_α
                        .size            n201_var_ref_bx, .-n201_var_ref_bx
                        .type            n202_lit_string_bx, @function
n202_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:      mov              r11, 83
                        mov              qword ptr [rbp + 384], 2             # result
                        mov              dword ptr [rbp + 388], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_221_0]
                        mov              qword ptr [rbp + 392], rax;          jmp   n203_lit_string_α
.Llit_string_α_221_0:   .quad            .Llit_string_α_221_0_s
.Llit_string_α_221_0_s: .string          "."
                        .size            n202_lit_string_bx, .-n202_lit_string_bx
                        .type            n203_lit_string_bx, @function
n203_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:      mov              r11, 84
                        mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_222_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n204_var_ref_α
.Llit_string_α_222_0:   .quad            .Llit_string_α_222_0_s
.Llit_string_α_222_0_s: .string          "m"
                        .size            n203_lit_string_bx, .-n203_lit_string_bx
                        .type            n204_var_ref_bx, @function
n204_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:         mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 624]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n205_call_α
                        .size            n204_var_ref_bx, .-n204_var_ref_bx
                        .type            n205_call_bx, @function
n205_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_call_α:            mov              r11, 86
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    rule2$2F2_step
                                                                              jmp   n206_call_α
n205_call_β:            mov              r11, 86;                             jmp   rule2$2F2_step
                        .size            n205_call_bx, .-n205_call_bx
                        .type            n206_call_bx, @function
n206_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_call_α:            mov              r11, 87
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 312]
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
                        cmp              al, 104;                             je    rule2$2F2_step
                                                                              jmp   n207_var_ref_α
n206_call_β:            mov              r11, 87;                             jmp   rule2$2F2_step
                        .size            n206_call_bx, .-n206_call_bx
                        .type            n207_var_ref_bx, @function
n207_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:         mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n208_var_ref_α
                        .size            n207_var_ref_bx, .-n207_var_ref_bx
                        .type            n208_var_ref_bx, @function
n208_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n209_var_ref_α
                        .size            n208_var_ref_bx, .-n208_var_ref_bx
                        .type            n209_var_ref_bx, @function
n209_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:         mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 624]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n210_call_proc_staged_α
                        .size            n209_var_ref_bx, .-n209_var_ref_bx
                        .type            n210_call_proc_staged_bx, @function
n210_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_call_proc_staged_α:
                        mov              r11, 91
                        mov              qword ptr [rbp + 112], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_234_200
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_234_201
.Lcall_proc_staged_α_234_200:
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
.Lcall_proc_staged_α_234_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_234_202
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_234_203
.Lcall_proc_staged_α_234_202:
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
.Lcall_proc_staged_α_234_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_234_204
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_234_205
.Lcall_proc_staged_α_234_204:
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
.Lcall_proc_staged_α_234_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_234_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 7
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_234_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 720]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_234_99
                        mov              r10, qword ptr [rbp + 680]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_234_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_234_99
                        mov              rcx, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 704]
                        lea              rsp, [rbp + 720]
                        mov              rbp, qword ptr [rbp + 712];          jmp   rax
.Lcall_proc_staged_α_234_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_234_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_234_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_234_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_234_3:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_234_21
                        add              rsp, 32
.Lcall_proc_staged_α_234_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_234_2
.Lcall_proc_staged_α_234_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 112], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_234_2
.Lcall_proc_staged_α_234_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_234_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   rule2$2F2_step
.Lcall_proc_staged_α_234_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_234_29
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
.Lcall_proc_staged_α_234_29:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    rule2$2F2_step
                                                                              jmp   rule2$2F2_ret0
n210_call_proc_staged_β:
                        mov              r11, 91
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_234_22
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_234_22
                        mov              rcx, qword ptr [rbp + 120]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_234_22:
                                                                              jmp   rule2$2F2_step
.Lcall_proc_staged_α_234_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    rule2$2F2_step
                                                                              jmp   rule2$2F2_ret0
.Lcall_proc_staged_α_234_0:
                        .quad            .Lcall_proc_staged_α_234_0_s
.Lcall_proc_staged_α_234_0_s:
                        .string          "my_append/3"
                        .size            n210_call_proc_staged_bx, .-n210_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
rule2$2F2_ret0:
                        lea              rax, [rip + n210_call_proc_staged_β]
                        mov              qword ptr [rbp + 672], rax
                                                                              jmp   rule2$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
rule2$2F2_step:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 672], 0
                        mov              qword ptr [rbp + 608], 0
                        mov              qword ptr [rbp + 616], 0
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              rax, qword ptr [rbp + 664]
                        test             rax, rax
                                                                              je    rule2$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
rule2$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
rule2$2F2_β:
                        test             r15, r15
                                                                              jne   rule2$2F2_ω
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 672], 0
                        test             rax, rax
                                                                              jne   rule2$2F2_βres
                                                                              jmp   rule2$2F2_step
rule2$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
rule2$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 696]
                        mov              rax, qword ptr [rbp + 680]
                        cmp              r13, rax;                            je    rule2$2F2_altdet
                        lea              rdx, [rip + rule2$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 712];          jmp   rcx
rule2$2F2_altdet:       xor              eax, eax
                        lea              rsp, [rbp + 720]
                        mov              rbp, qword ptr [rbp + 712];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
rule2$2F2_ω:
                        mov              rcx, qword ptr [rbp + 704]
                        mov              r13, qword ptr [rbp + 680]
                        lea              rsp, [rbp + 720]
                        mov              rbp, qword ptr [rbp + 712];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__theorem$2F3:
                        sub              rsp, 2416
                        mov              qword ptr [rsp + 2392], rcx
                        mov              qword ptr [rsp + 2400], rdx
                        mov              qword ptr [rsp + 2408], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 2416]
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2376], r13
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              qword ptr [rsp + 2352], r12
                        lea              rax, [rip + theorem$2F3_alt1]
                        mov              qword ptr [rsp + 2360], rax
                        lea              rdi, [rsp + 2352]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 2240
                        mov              edx, 2352
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
theorem$2F3_α_body:
                        .type            n235_var_ref_bx, @function
n235_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:         mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n236_lit_string_α
                        .size            n235_var_ref_bx, .-n235_var_ref_bx
                        .type            n236_lit_string_bx, @function
n236_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_string_α:      mov              r11, 93
                        mov              qword ptr [rbp + 1008], 2            # result
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_298_0]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n237_lit_string_α
.Llit_string_α_298_0:   .quad            .Llit_string_α_298_0_s
.Llit_string_α_298_0_s: .string          "."
                        .size            n236_lit_string_bx, .-n236_lit_string_bx
                        .type            n237_lit_string_bx, @function
n237_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_string_α:      mov              r11, 94
                        mov              qword ptr [rbp + 912], 2             # result
                        mov              dword ptr [rbp + 916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_299_0]
                        mov              qword ptr [rbp + 920], rax;          jmp   n238_lit_string_α
.Llit_string_α_299_0:   .quad            .Llit_string_α_299_0_s
.Llit_string_α_299_0_s: .string          "m"
                        .size            n237_lit_string_bx, .-n237_lit_string_bx
                        .type            n238_lit_string_bx, @function
n238_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:      mov              r11, 95
                        mov              qword ptr [rbp + 896], 2             # result
                        mov              dword ptr [rbp + 900], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_300_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n239_lit_string_α
.Llit_string_α_300_0:   .quad            .Llit_string_α_300_0_s
.Llit_string_α_300_0_s: .string          "."
                        .size            n238_lit_string_bx, .-n238_lit_string_bx
                        .type            n239_lit_string_bx, @function
n239_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_string_α:      mov              r11, 96
                        mov              qword ptr [rbp + 800], 2             # result
                        mov              dword ptr [rbp + 804], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_301_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n240_lit_string_α
.Llit_string_α_301_0:   .quad            .Llit_string_α_301_0_s
.Llit_string_α_301_0_s: .string          "i"
                        .size            n239_lit_string_bx, .-n239_lit_string_bx
                        .type            n240_lit_string_bx, @function
n240_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:      mov              r11, 97
                        mov              qword ptr [rbp + 784], 2             # result
                        mov              dword ptr [rbp + 788], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_302_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n241_call_α
.Llit_string_α_302_0:   .quad            .Llit_string_α_302_0_s
.Llit_string_α_302_0_s: .string          "[]"
                        .size            n240_lit_string_bx, .-n240_lit_string_bx
                        .type            n241_call_bx, @function
n241_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_call_α:            mov              r11, 98
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              al, 104;                             je    theorem$2F3_ω
                                                                              jmp   n242_call_α
n241_call_β:            mov              r11, 98;                             jmp   theorem$2F3_ω
                        .size            n241_call_bx, .-n241_call_bx
                        .type            n242_call_bx, @function
n242_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_call_α:            mov              r11, 99
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 944]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              al, 104;                             je    theorem$2F3_step
                                                                              jmp   n243_call_α
n242_call_β:            mov              r11, 99;                             jmp   theorem$2F3_step
                        .size            n242_call_bx, .-n242_call_bx
                        .type            n243_call_bx, @function
n243_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_call_α:            mov              r11, 100
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 936]
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
                        cmp              al, 104;                             je    theorem$2F3_step
                                                                              jmp   n244_var_ref_α
n243_call_β:            mov              r11, 100;                            jmp   theorem$2F3_step
                        .size            n243_call_bx, .-n243_call_bx
                        .type            n244_var_ref_bx, @function
n244_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n245_var_ref_α
                        .size            n244_var_ref_bx, .-n244_var_ref_bx
                        .type            n245_var_ref_bx, @function
n245_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2240]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n246_call_α
                        .size            n245_var_ref_bx, .-n245_var_ref_bx
                        .type            n246_call_bx, @function
n246_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_call_α:            mov              r11, 103
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
                        cmp              al, 104;                             je    theorem$2F3_step
                                                                              jmp   n247_var_ref_α
n246_call_β:            mov              r11, 103;                            jmp   theorem$2F3_step
                        .size            n246_call_bx, .-n246_call_bx
                        .type            n247_var_ref_bx, @function
n247_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n248_lit_string_α
                        .size            n247_var_ref_bx, .-n247_var_ref_bx
                        .type            n248_lit_string_bx, @function
n248_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_string_α:      mov              r11, 105
                        mov              qword ptr [rbp + 592], 2             # result
                        mov              dword ptr [rbp + 596], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_313_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n249_lit_string_α
.Llit_string_α_313_0:   .quad            .Llit_string_α_313_0_s
.Llit_string_α_313_0_s: .string          "."
                        .size            n248_lit_string_bx, .-n248_lit_string_bx
                        .type            n249_lit_string_bx, @function
n249_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:      mov              r11, 106
                        mov              qword ptr [rbp + 496], 2             # result
                        mov              dword ptr [rbp + 500], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_314_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n250_lit_string_α
.Llit_string_α_314_0:   .quad            .Llit_string_α_314_0_s
.Llit_string_α_314_0_s: .string          "."
                        .size            n249_lit_string_bx, .-n249_lit_string_bx
                        .type            n250_lit_string_bx, @function
n250_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:      mov              r11, 107
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_315_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n251_lit_string_α
.Llit_string_α_315_0:   .quad            .Llit_string_α_315_0_s
.Llit_string_α_315_0_s: .string          "a"
                        .size            n250_lit_string_bx, .-n250_lit_string_bx
                        .type            n251_lit_string_bx, @function
n251_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:      mov              r11, 108
                        mov              qword ptr [rbp + 384], 2             # result
                        mov              dword ptr [rbp + 388], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_316_0]
                        mov              qword ptr [rbp + 392], rax;          jmp   n252_lit_string_α
.Llit_string_α_316_0:   .quad            .Llit_string_α_316_0_s
.Llit_string_α_316_0_s: .string          "."
                        .size            n251_lit_string_bx, .-n251_lit_string_bx
                        .type            n252_lit_string_bx, @function
n252_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_string_α:      mov              r11, 109
                        mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_317_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n253_lit_string_α
.Llit_string_α_317_0:   .quad            .Llit_string_α_317_0_s
.Llit_string_α_317_0_s: .string          "m"
                        .size            n252_lit_string_bx, .-n252_lit_string_bx
                        .type            n253_lit_string_bx, @function
n253_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:      mov              r11, 110
                        mov              qword ptr [rbp + 272], 2             # result
                        mov              dword ptr [rbp + 276], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_318_0]
                        mov              qword ptr [rbp + 280], rax;          jmp   n254_lit_string_α
.Llit_string_α_318_0:   .quad            .Llit_string_α_318_0_s
.Llit_string_α_318_0_s: .string          "."
                        .size            n253_lit_string_bx, .-n253_lit_string_bx
                        .type            n254_lit_string_bx, @function
n254_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_string_α:      mov              r11, 111
                        mov              qword ptr [rbp + 176], 2             # result
                        mov              dword ptr [rbp + 180], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_319_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n255_lit_string_α
.Llit_string_α_319_0:   .quad            .Llit_string_α_319_0_s
.Llit_string_α_319_0_s: .string          "i"
                        .size            n254_lit_string_bx, .-n254_lit_string_bx
                        .type            n255_lit_string_bx, @function
n255_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:      mov              r11, 112
                        mov              qword ptr [rbp + 160], 2             # result
                        mov              dword ptr [rbp + 164], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_320_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n256_call_α
.Llit_string_α_320_0:   .quad            .Llit_string_α_320_0_s
.Llit_string_α_320_0_s: .string          "[]"
                        .size            n255_lit_string_bx, .-n255_lit_string_bx
                        .type            n256_call_bx, @function
n256_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_call_α:            mov              r11, 113
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
                        cmp              al, 104;                             je    theorem$2F3_ω
                                                                              jmp   n257_call_α
n256_call_β:            mov              r11, 113;                            jmp   theorem$2F3_ω
                        .size            n256_call_bx, .-n256_call_bx
                        .type            n257_call_bx, @function
n257_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_call_α:            mov              r11, 114
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    theorem$2F3_ω
                                                                              jmp   n258_call_α
n257_call_β:            mov              r11, 114;                            jmp   theorem$2F3_ω
                        .size            n257_call_bx, .-n257_call_bx
                        .type            n258_call_bx, @function
n258_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_call_α:            mov              r11, 115
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    theorem$2F3_ω
                                                                              jmp   n259_lit_string_α
n258_call_β:            mov              r11, 115;                            jmp   theorem$2F3_ω
                        .size            n258_call_bx, .-n258_call_bx
                        .type            n259_lit_string_bx, @function
n259_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:      mov              r11, 116
                        mov              qword ptr [rbp + 144], 2             # result
                        mov              dword ptr [rbp + 148], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_324_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n260_call_α
.Llit_string_α_324_0:   .quad            .Llit_string_α_324_0_s
.Llit_string_α_324_0_s: .string          "[]"
                        .size            n259_lit_string_bx, .-n259_lit_string_bx
                        .type            n260_call_bx, @function
n260_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_call_α:            mov              r11, 117
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 424]
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
                        cmp              al, 104;                             je    theorem$2F3_step
                                                                              jmp   n261_call_α
n260_call_β:            mov              r11, 117;                            jmp   theorem$2F3_step
                        .size            n260_call_bx, .-n260_call_bx
                        .type            n261_call_bx, @function
n261_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_call_α:            mov              r11, 118
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 520]
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
                        cmp              al, 104;                             je    theorem$2F3_step
                                                                              jmp   theorem$2F3_γ
n261_call_β:            mov              r11, 118;                            jmp   theorem$2F3_step
                        .size            n261_call_bx, .-n261_call_bx
                        .type            n262_var_ref_bx, @function
n262_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx;         jmp   n263_var_ref_α
                        .size            n262_var_ref_bx, .-n262_var_ref_bx
                        .type            n263_var_ref_bx, @function
n263_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2272]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n264_call_α
                        .size            n263_var_ref_bx, .-n263_var_ref_bx
                        .type            n264_call_bx, @function
n264_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_call_α:            mov              r11, 121
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
                        cmp              al, 104;                             je    theorem$2F3_step
                                                                              jmp   n265_var_ref_α
n264_call_β:            mov              r11, 121;                            jmp   theorem$2F3_step
                        .size            n264_call_bx, .-n264_call_bx
                        .type            n265_var_ref_bx, @function
n265_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx;         jmp   n266_var_ref_α
                        .size            n265_var_ref_bx, .-n265_var_ref_bx
                        .type            n266_var_ref_bx, @function
n266_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_var_ref_α:         mov              r11, 123
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2320]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx;         jmp   n267_call_α
                        .size            n266_var_ref_bx, .-n266_var_ref_bx
                        .type            n267_call_bx, @function
n267_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_call_α:            mov              r11, 124
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2072], rax
                        lea              rdi, [rbp + 2064]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              al, 104;                             je    theorem$2F3_step
                                                                              jmp   n268_var_ref_α
n267_call_β:            mov              r11, 124;                            jmp   theorem$2F3_step
                        .size            n267_call_bx, .-n267_call_bx
                        .type            n268_var_ref_bx, @function
n268_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_var_ref_α:         mov              r11, 125
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n269_lit_string_α
                        .size            n268_var_ref_bx, .-n268_var_ref_bx
                        .type            n269_lit_string_bx, @function
n269_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_string_α:      mov              r11, 126
                        mov              qword ptr [rbp + 2032], 2            # result
                        mov              dword ptr [rbp + 2036], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_339_0]
                        mov              qword ptr [rbp + 2040], rax;         jmp   n270_lit_string_α
.Llit_string_α_339_0:   .quad            .Llit_string_α_339_0_s
.Llit_string_α_339_0_s: .string          "."
                        .size            n269_lit_string_bx, .-n269_lit_string_bx
                        .type            n270_lit_string_bx, @function
n270_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:      mov              r11, 127
                        mov              qword ptr [rbp + 1936], 2            # result
                        mov              dword ptr [rbp + 1940], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_340_0]
                        mov              qword ptr [rbp + 1944], rax;         jmp   n271_var_ref_α
.Llit_string_α_340_0:   .quad            .Llit_string_α_340_0_s
.Llit_string_α_340_0_s: .string          "."
                        .size            n270_lit_string_bx, .-n270_lit_string_bx
                        .type            n271_var_ref_bx, @function
n271_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:         mov              r11, 128
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2240]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx;         jmp   n272_var_ref_α
                        .size            n271_var_ref_bx, .-n271_var_ref_bx
                        .type            n272_var_ref_bx, @function
n272_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:         mov              r11, 129
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2272]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx;         jmp   n273_call_α
                        .size            n272_var_ref_bx, .-n272_var_ref_bx
                        .type            n273_call_bx, @function
n273_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_call_α:            mov              r11, 130
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1880], rax
                        lea              rdi, [rbp + 1872]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              al, 104;                             je    theorem$2F3_ω
                                                                              jmp   n274_var_ref_α
n273_call_β:            mov              r11, 130;                            jmp   theorem$2F3_ω
                        .size            n273_call_bx, .-n273_call_bx
                        .type            n274_var_ref_bx, @function
n274_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2304]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx;         jmp   n275_call_α
                        .size            n274_var_ref_bx, .-n274_var_ref_bx
                        .type            n275_call_bx, @function
n275_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_call_α:            mov              r11, 132
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 1864]
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
                        cmp              al, 104;                             je    theorem$2F3_step
                                                                              jmp   n276_call_α
n275_call_β:            mov              r11, 132;                            jmp   theorem$2F3_step
                        .size            n275_call_bx, .-n275_call_bx
                        .type            n276_call_bx, @function
n276_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_call_α:            mov              r11, 133
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1960]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              al, 104;                             je    theorem$2F3_step
                                                                              jmp   n277_var_α
n276_call_β:            mov              r11, 133;                            jmp   theorem$2F3_step
                        .size            n276_call_bx, .-n276_call_bx
                        .type            n277_var_bx, @function
n277_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:             mov              r11, 134
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 1608], rax;         jmp   n278_call_α
                        .size            n277_var_bx, .-n277_var_bx
                        .type            n278_call_bx, @function
n278_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_call_α:            mov              r11, 135
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1656], rax
                        lea              rdi, [rbp + 1648]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              al, 104;                             je    theorem$2F3_step
                                                                              jmp   n279_lit_integer_α
n278_call_β:            mov              r11, 135;                            jmp   theorem$2F3_step
                        .size            n278_call_bx, .-n278_call_bx
                        .type            n279_lit_integer_bx, @function
n279_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_integer_α:     mov              r11, 136
                        mov              qword ptr [rbp + 1616], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_353_0]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n280_call_α
.Llit_integer_α_353_0:  .quad            0
                        .size            n279_lit_integer_bx, .-n279_lit_integer_bx
                        .type            n280_call_bx, @function
n280_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_call_α:            mov              r11, 137
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1696]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              al, 104;                             je    theorem$2F3_step
                                                                              jmp   n281_call_α
n280_call_β:            mov              r11, 137;                            jmp   theorem$2F3_step
                        .size            n280_call_bx, .-n280_call_bx
                        .type            n281_call_bx, @function
n281_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_call_α:            mov              r11, 138
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1624]
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
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              al, 104;                             je    theorem$2F3_step
                                                                              jmp   n282_var_ref_α
n281_call_β:            mov              r11, 138;                            jmp   theorem$2F3_step
                        .size            n281_call_bx, .-n281_call_bx
                        .type            n282_var_ref_bx, @function
n282_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx;         jmp   n283_var_α
                        .size            n282_var_ref_bx, .-n282_var_ref_bx
                        .type            n283_var_bx, @function
n283_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:             mov              r11, 140
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 1464], rax;         jmp   n284_lit_integer_α
                        .size            n283_var_bx, .-n283_var_bx
                        .type            n284_lit_integer_bx, @function
n284_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_integer_α:     mov              r11, 141
                        mov              qword ptr [rbp + 1472], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_360_0]
                        mov              qword ptr [rbp + 1480], rax;         jmp   n285_call_α
.Llit_integer_α_360_0:  .quad            1
                        .size            n284_lit_integer_bx, .-n284_lit_integer_bx
                        .type            n285_call_bx, @function
n285_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_call_α:            mov              r11, 142
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1408]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              al, 104;                             je    theorem$2F3_step
                                                                              jmp   n286_call_α
n285_call_β:            mov              r11, 142;                            jmp   theorem$2F3_step
                        .size            n285_call_bx, .-n285_call_bx
                        .type            n286_call_bx, @function
n286_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_call_α:            mov              r11, 143
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1512], rax
                        lea              rdi, [rbp + 1504]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              al, 104;                             je    theorem$2F3_step
                                                                              jmp   n287_call_α
n286_call_β:            mov              r11, 143;                            jmp   theorem$2F3_step
                        .size            n286_call_bx, .-n286_call_bx
                        .type            n287_call_bx, @function
n287_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_call_α:            mov              r11, 144
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1328]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              al, 104;                             je    theorem$2F3_step
                                                                              jmp   n288_var_ref_α
n287_call_β:            mov              r11, 144;                            jmp   theorem$2F3_step
                        .size            n287_call_bx, .-n287_call_bx
                        .type            n288_var_ref_bx, @function
n288_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2256]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx;         jmp   n289_var_ref_α
                        .size            n288_var_ref_bx, .-n288_var_ref_bx
                        .type            n289_var_ref_bx, @function
n289_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx;         jmp   n290_var_ref_α
                        .size            n289_var_ref_bx, .-n289_var_ref_bx
                        .type            n290_var_ref_bx, @function
n290_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_var_ref_α:         mov              r11, 147
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2304]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx;         jmp   n291_call_proc_staged_α
                        .size            n290_var_ref_bx, .-n290_var_ref_bx
                        .type            n291_call_proc_staged_bx, @function
n291_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_call_proc_staged_α:
                        mov              r11, 148
                        mov              qword ptr [rbp + 1232], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_371_200
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_371_201
.Lcall_proc_staged_α_371_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_371_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_371_202
                        mov              rax, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_371_203
.Lcall_proc_staged_α_371_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_371_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_371_204
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_371_205
.Lcall_proc_staged_α_371_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_371_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_371_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_371_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_371_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_371_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_371_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_371_3:
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_371_21
                        add              rsp, 32
.Lcall_proc_staged_α_371_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_371_2
.Lcall_proc_staged_α_371_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1232], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_371_2
.Lcall_proc_staged_α_371_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_371_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   theorem$2F3_step
.Lcall_proc_staged_α_371_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_371_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
.Lcall_proc_staged_α_371_29:
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              al, 104;                             je    theorem$2F3_step
                                                                              jmp   n292_var_ref_α
n291_call_proc_staged_β:
                        mov              r11, 148
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_371_22
                        mov              rax, qword ptr [rbp + 1232]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_371_22
                        mov              rcx, qword ptr [rbp + 1240]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_371_22:
                                                                              jmp   theorem$2F3_step
.Lcall_proc_staged_α_371_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              al, 104;                             je    theorem$2F3_step
                                                                              jmp   n292_var_ref_α
.Lcall_proc_staged_α_371_0:
                        .quad            .Lcall_proc_staged_α_371_0_s
.Lcall_proc_staged_α_371_0_s:
                        .string          "theorem/3"
                        .size            n291_call_proc_staged_bx, .-n291_call_proc_staged_bx
                        .type            n292_var_ref_bx, @function
n292_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2240]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n293_var_ref_α
                        .size            n292_var_ref_bx, .-n292_var_ref_bx
                        .type            n293_var_ref_bx, @function
n293_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_var_ref_α:         mov              r11, 150
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2256]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n294_var_ref_α
                        .size            n293_var_ref_bx, .-n293_var_ref_bx
                        .type            n294_var_ref_bx, @function
n294_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2272]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx;         jmp   n295_call_proc_staged_α
                        .size            n294_var_ref_bx, .-n294_var_ref_bx
                        .type            n295_call_proc_staged_bx, @function
n295_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_call_proc_staged_α:
                        mov              r11, 152
                        mov              qword ptr [rbp + 1088], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_379_200
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_379_201
.Lcall_proc_staged_α_379_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_379_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_379_202
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_379_203
.Lcall_proc_staged_α_379_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_379_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_379_204
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_379_205
.Lcall_proc_staged_α_379_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_379_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_379_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_379_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 2416]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_379_99
                        mov              r10, qword ptr [rbp + 2376]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_379_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_379_99
                        mov              rcx, qword ptr [rbp + 2392]
                        mov              rdx, qword ptr [rbp + 2400]
                        lea              rsp, [rbp + 2416]
                        mov              rbp, qword ptr [rbp + 2408];         jmp   rax
.Lcall_proc_staged_α_379_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_379_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_379_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_379_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_379_3:
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_379_21
                        add              rsp, 32
.Lcall_proc_staged_α_379_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_379_2
.Lcall_proc_staged_α_379_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1088], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_379_2
.Lcall_proc_staged_α_379_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_379_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n291_call_proc_staged_β
.Lcall_proc_staged_α_379_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_379_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
.Lcall_proc_staged_α_379_29:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    n291_call_proc_staged_β
                                                                              jmp   theorem$2F3_ret1
n295_call_proc_staged_β:
                        mov              r11, 152
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_379_22
                        mov              rax, qword ptr [rbp + 1088]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_379_22
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_379_22:
                                                                              jmp   n291_call_proc_staged_β
.Lcall_proc_staged_α_379_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    n291_call_proc_staged_β
                                                                              jmp   theorem$2F3_ret1
.Lcall_proc_staged_α_379_0:
                        .quad            .Lcall_proc_staged_α_379_0_s
.Lcall_proc_staged_α_379_0_s:
                        .string          "rule/3"
                        .size            n295_call_proc_staged_bx, .-n295_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
theorem$2F3_ret1:
                        lea              rax, [rip + n295_call_proc_staged_β]
                        mov              qword ptr [rbp + 2368], rax
                                                                              jmp   theorem$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
theorem$2F3_step:
                        mov              rdi, qword ptr [rbp + 2352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2368], 0
                        mov              qword ptr [rbp + 2272], 0
                        mov              qword ptr [rbp + 2280], 0
                        mov              qword ptr [rbp + 2320], 0
                        mov              qword ptr [rbp + 2328], 0
                        mov              qword ptr [rbp + 2240], 0
                        mov              qword ptr [rbp + 2248], 0
                        mov              qword ptr [rbp + 2304], 0
                        mov              qword ptr [rbp + 2312], 0
                        mov              qword ptr [rbp + 2288], 0
                        mov              qword ptr [rbp + 2296], 0
                        mov              qword ptr [rbp + 2256], 0
                        mov              qword ptr [rbp + 2264], 0
                        mov              rax, qword ptr [rbp + 2360]
                        test             rax, rax
                                                                              je    theorem$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
theorem$2F3_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 2360], rax
                        mov              r13, qword ptr [rbp + 2376]
                                                                              jmp   n262_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
theorem$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
theorem$2F3_β:
                        test             r15, r15
                                                                              jne   theorem$2F3_ω
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2368], 0
                        test             rax, rax
                                                                              jne   theorem$2F3_βres
                                                                              jmp   theorem$2F3_step
theorem$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
theorem$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 2392]
                        mov              rax, qword ptr [rbp + 2376]
                        cmp              r13, rax;                            je    theorem$2F3_altdet
                        lea              rdx, [rip + theorem$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 2408];         jmp   rcx
theorem$2F3_altdet:     xor              eax, eax
                        lea              rsp, [rbp + 2416]
                        mov              rbp, qword ptr [rbp + 2408];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
theorem$2F3_ω:
                        mov              rcx, qword ptr [rbp + 2400]
                        mov              r13, qword ptr [rbp + 2376]
                        lea              rsp, [rbp + 2416]
                        mov              rbp, qword ptr [rbp + 2408];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__mu$2F0:
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
                        mov              esi, 704
                        mov              edx, 736
                        call             rt_jmp_frame_lexprep2@PLT
mu$2F0_α_body:
                        .type            n380_lit_string_bx, @function
n380_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_string_α:      mov              r11, 153
                        mov              qword ptr [rbp + 656], 2             # result
                        mov              dword ptr [rbp + 660], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_400_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n381_lit_string_α
.Llit_string_α_400_0:   .quad            .Llit_string_α_400_0_s
.Llit_string_α_400_0_s: .string          "."
                        .size            n380_lit_string_bx, .-n380_lit_string_bx
                        .type            n381_lit_string_bx, @function
n381_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:      mov              r11, 154
                        mov              qword ptr [rbp + 560], 2             # result
                        mov              dword ptr [rbp + 564], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_401_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n382_lit_string_α
.Llit_string_α_401_0:   .quad            .Llit_string_α_401_0_s
.Llit_string_α_401_0_s: .string          "m"
                        .size            n381_lit_string_bx, .-n381_lit_string_bx
                        .type            n382_lit_string_bx, @function
n382_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:      mov              r11, 155
                        mov              qword ptr [rbp + 544], 2             # result
                        mov              dword ptr [rbp + 548], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_402_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n383_lit_string_α
.Llit_string_α_402_0:   .quad            .Llit_string_α_402_0_s
.Llit_string_α_402_0_s: .string          "."
                        .size            n382_lit_string_bx, .-n382_lit_string_bx
                        .type            n383_lit_string_bx, @function
n383_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_string_α:      mov              r11, 156
                        mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_403_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n384_lit_string_α
.Llit_string_α_403_0:   .quad            .Llit_string_α_403_0_s
.Llit_string_α_403_0_s: .string          "u"
                        .size            n383_lit_string_bx, .-n383_lit_string_bx
                        .type            n384_lit_string_bx, @function
n384_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_string_α:      mov              r11, 157
                        mov              qword ptr [rbp + 432], 2             # result
                        mov              dword ptr [rbp + 436], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_404_0]
                        mov              qword ptr [rbp + 440], rax;          jmp   n385_lit_string_α
.Llit_string_α_404_0:   .quad            .Llit_string_α_404_0_s
.Llit_string_α_404_0_s: .string          "."
                        .size            n384_lit_string_bx, .-n384_lit_string_bx
                        .type            n385_lit_string_bx, @function
n385_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_string_α:      mov              r11, 158
                        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_405_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n386_lit_string_α
.Llit_string_α_405_0:   .quad            .Llit_string_α_405_0_s
.Llit_string_α_405_0_s: .string          "i"
                        .size            n385_lit_string_bx, .-n385_lit_string_bx
                        .type            n386_lit_string_bx, @function
n386_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_string_α:      mov              r11, 159
                        mov              qword ptr [rbp + 320], 2             # result
                        mov              dword ptr [rbp + 324], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_406_0]
                        mov              qword ptr [rbp + 328], rax;          jmp   n387_lit_string_α
.Llit_string_α_406_0:   .quad            .Llit_string_α_406_0_s
.Llit_string_α_406_0_s: .string          "."
                        .size            n386_lit_string_bx, .-n386_lit_string_bx
                        .type            n387_lit_string_bx, @function
n387_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_lit_string_α:      mov              r11, 160
                        mov              qword ptr [rbp + 224], 2             # result
                        mov              dword ptr [rbp + 228], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_407_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n388_lit_string_α
.Llit_string_α_407_0:   .quad            .Llit_string_α_407_0_s
.Llit_string_α_407_0_s: .string          "i"
                        .size            n387_lit_string_bx, .-n387_lit_string_bx
                        .type            n388_lit_string_bx, @function
n388_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:      mov              r11, 161
                        mov              qword ptr [rbp + 208], 2             # result
                        mov              dword ptr [rbp + 212], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_408_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n389_lit_string_α
.Llit_string_α_408_0:   .quad            .Llit_string_α_408_0_s
.Llit_string_α_408_0_s: .string          "."
                        .size            n388_lit_string_bx, .-n388_lit_string_bx
                        .type            n389_lit_string_bx, @function
n389_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_string_α:      mov              r11, 162
                        mov              qword ptr [rbp + 112], 2             # result
                        mov              dword ptr [rbp + 116], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_409_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n390_lit_string_α
.Llit_string_α_409_0:   .quad            .Llit_string_α_409_0_s
.Llit_string_α_409_0_s: .string          "u"
                        .size            n389_lit_string_bx, .-n389_lit_string_bx
                        .type            n390_lit_string_bx, @function
n390_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:      mov              r11, 163
                        mov              qword ptr [rbp + 96], 2              # result
                        mov              dword ptr [rbp + 100], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_410_0]
                        mov              qword ptr [rbp + 104], rax;          jmp   n391_call_α
.Llit_string_α_410_0:   .quad            .Llit_string_α_410_0_s
.Llit_string_α_410_0_s: .string          "[]"
                        .size            n390_lit_string_bx, .-n390_lit_string_bx
                        .type            n391_call_bx, @function
n391_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n391_call_α:            mov              r11, 164
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 120]
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
                        cmp              al, 104;                             je    mu$2F0_ω
                                                                              jmp   n392_call_α
n391_call_β:            mov              r11, 164;                            jmp   mu$2F0_ω
                        .size            n391_call_bx, .-n391_call_bx
                        .type            n392_call_bx, @function
n392_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_call_α:            mov              r11, 165
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 232]
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
                        cmp              al, 104;                             je    mu$2F0_ω
                                                                              jmp   n393_call_α
n392_call_β:            mov              r11, 165;                            jmp   mu$2F0_ω
                        .size            n392_call_bx, .-n392_call_bx
                        .type            n393_call_bx, @function
n393_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n393_call_α:            mov              r11, 166
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 344]
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
                        cmp              al, 104;                             je    mu$2F0_ω
                                                                              jmp   n394_call_α
n393_call_β:            mov              r11, 166;                            jmp   mu$2F0_ω
                        .size            n393_call_bx, .-n393_call_bx
                        .type            n394_call_bx, @function
n394_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_call_α:            mov              r11, 167
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 456]
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
                        cmp              al, 104;                             je    mu$2F0_ω
                                                                              jmp   n395_call_α
n394_call_β:            mov              r11, 167;                            jmp   mu$2F0_ω
                        .size            n394_call_bx, .-n394_call_bx
                        .type            n395_call_bx, @function
n395_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_call_α:            mov              r11, 168
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 568]
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
                        cmp              al, 104;                             je    mu$2F0_step
                                                                              jmp   n396_lit_integer_α
n395_call_β:            mov              r11, 168;                            jmp   mu$2F0_step
                        .size            n395_call_bx, .-n395_call_bx
                        .type            n396_lit_integer_bx, @function
n396_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_integer_α:     mov              r11, 169
                        mov              qword ptr [rbp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_416_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n397_var_ref_α
.Llit_integer_α_416_0:  .quad            5
                        .size            n396_lit_integer_bx, .-n396_lit_integer_bx
                        .type            n397_var_ref_bx, @function
n397_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_var_ref_α:         mov              r11, 170
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n398_call_proc_staged_α
                        .size            n397_var_ref_bx, .-n397_var_ref_bx
                        .type            n398_call_proc_staged_bx, @function
n398_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_call_proc_staged_α:
                        mov              r11, 171
                        mov              qword ptr [rbp + 64], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_420_200
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_420_201
.Lcall_proc_staged_α_420_200:
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
.Lcall_proc_staged_α_420_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_420_202
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_420_203
.Lcall_proc_staged_α_420_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_420_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_420_204
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_420_205
.Lcall_proc_staged_α_420_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_420_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_420_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_420_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_420_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_420_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_420_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_420_3:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_420_21
                        add              rsp, 32
.Lcall_proc_staged_α_420_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_420_2
.Lcall_proc_staged_α_420_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 64], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_420_2
.Lcall_proc_staged_α_420_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_420_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   mu$2F0_step
.Lcall_proc_staged_α_420_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_420_29
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
.Lcall_proc_staged_α_420_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    mu$2F0_step
                                                                              jmp   n399_cut_α
n398_call_proc_staged_β:
                        mov              r11, 171
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_420_22
                        mov              rax, qword ptr [rbp + 64]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_420_22
                        mov              rcx, qword ptr [rbp + 72]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_420_22:
                                                                              jmp   mu$2F0_step
.Lcall_proc_staged_α_420_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    mu$2F0_step
                                                                              jmp   n399_cut_α
.Lcall_proc_staged_α_420_0:
                        .quad            .Lcall_proc_staged_α_420_0_s
.Lcall_proc_staged_α_420_0_s:
                        .string          "theorem/3"
                        .size            n398_call_proc_staged_bx, .-n398_call_proc_staged_bx
                        .type            n399_cut_bx, @function
n399_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n399_cut_α:             mov              r11, 172
                        mov              qword ptr [rbp + 744], 0
                        mov              qword ptr [rbp + 752], 0
                        lea              rdi, [rbp + 736]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   mu$2F0_γ
                        .size            n399_cut_bx, .-n399_cut_bx
#-----------------------------------------------------------------------------------------------------------------------
mu$2F0_step:
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
                        mov              rax, qword ptr [rbp + 744]
                        test             rax, rax
                                                                              je    mu$2F0_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
mu$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
mu$2F0_β:
                        test             r15, r15
                                                                              jne   mu$2F0_ω
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 752], 0
                        test             rax, rax
                                                                              jne   mu$2F0_βres
                                                                              jmp   mu$2F0_step
mu$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
mu$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 776]
                        mov              rax, qword ptr [rbp + 760]
                        cmp              r13, rax;                            je    mu$2F0_altdet
                        lea              rdx, [rip + mu$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 792];          jmp   rcx
mu$2F0_altdet:          xor              eax, eax
                        lea              rsp, [rbp + 800]
                        mov              rbp, qword ptr [rbp + 792];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
mu$2F0_ω:
                        mov              rcx, qword ptr [rbp + 784]
                        mov              r13, qword ptr [rbp + 760]
                        lea              rsp, [rbp + 800]
                        mov              rbp, qword ptr [rbp + 792];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__rule3$2F2:
                        sub              rsp, 1344
                        mov              qword ptr [rsp + 1320], rcx
                        mov              qword ptr [rsp + 1328], rdx
                        mov              qword ptr [rsp + 1336], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1344]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1304], r13
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1280], r12
                        lea              rax, [rip + rule3$2F2_alt1]
                        mov              qword ptr [rsp + 1288], rax
                        lea              rdi, [rsp + 1280]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 1216
                        mov              edx, 1280
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
rule3$2F2_α_body:
                        .type            n423_var_ref_bx, @function
n423_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_var_ref_α:         mov              r11, 173
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n424_lit_string_α
                        .size            n423_var_ref_bx, .-n423_var_ref_bx
                        .type            n424_lit_string_bx, @function
n424_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_lit_string_α:      mov              r11, 174
                        mov              qword ptr [rbp + 672], 2             # result
                        mov              dword ptr [rbp + 676], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_458_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n425_lit_string_α
.Llit_string_α_458_0:   .quad            .Llit_string_α_458_0_s
.Llit_string_α_458_0_s: .string          "."
                        .size            n424_lit_string_bx, .-n424_lit_string_bx
                        .type            n425_lit_string_bx, @function
n425_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_string_α:      mov              r11, 175
                        mov              qword ptr [rbp + 576], 2             # result
                        mov              dword ptr [rbp + 580], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_459_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n426_lit_string_α
.Llit_string_α_459_0:   .quad            .Llit_string_α_459_0_s
.Llit_string_α_459_0_s: .string          "i"
                        .size            n425_lit_string_bx, .-n425_lit_string_bx
                        .type            n426_lit_string_bx, @function
n426_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_string_α:      mov              r11, 176
                        mov              qword ptr [rbp + 560], 2             # result
                        mov              dword ptr [rbp + 564], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_460_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n427_lit_string_α
.Llit_string_α_460_0:   .quad            .Llit_string_α_460_0_s
.Llit_string_α_460_0_s: .string          "."
                        .size            n426_lit_string_bx, .-n426_lit_string_bx
                        .type            n427_lit_string_bx, @function
n427_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_string_α:      mov              r11, 177
                        mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_461_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n428_lit_string_α
.Llit_string_α_461_0:   .quad            .Llit_string_α_461_0_s
.Llit_string_α_461_0_s: .string          "i"
                        .size            n427_lit_string_bx, .-n427_lit_string_bx
                        .type            n428_lit_string_bx, @function
n428_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_string_α:      mov              r11, 178
                        mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_462_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n429_lit_string_α
.Llit_string_α_462_0:   .quad            .Llit_string_α_462_0_s
.Llit_string_α_462_0_s: .string          "."
                        .size            n428_lit_string_bx, .-n428_lit_string_bx
                        .type            n429_lit_string_bx, @function
n429_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_string_α:      mov              r11, 179
                        mov              qword ptr [rbp + 352], 2             # result
                        mov              dword ptr [rbp + 356], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_463_0]
                        mov              qword ptr [rbp + 360], rax;          jmp   n430_var_ref_α
.Llit_string_α_463_0:   .quad            .Llit_string_α_463_0_s
.Llit_string_α_463_0_s: .string          "i"
                        .size            n429_lit_string_bx, .-n429_lit_string_bx
                        .type            n430_var_ref_bx, @function
n430_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_var_ref_α:         mov              r11, 180
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n431_call_α
                        .size            n430_var_ref_bx, .-n430_var_ref_bx
                        .type            n431_call_bx, @function
n431_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n431_call_α:            mov              r11, 181
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 384]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              al, 104;                             je    rule3$2F2_ω
                                                                              jmp   n432_call_α
n431_call_β:            mov              r11, 181;                            jmp   rule3$2F2_ω
                        .size            n431_call_bx, .-n431_call_bx
                        .type            n432_call_bx, @function
n432_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_call_α:            mov              r11, 182
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    rule3$2F2_ω
                                                                              jmp   n433_call_α
n432_call_β:            mov              r11, 182;                            jmp   rule3$2F2_ω
                        .size            n432_call_bx, .-n432_call_bx
                        .type            n433_call_bx, @function
n433_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_call_α:            mov              r11, 183
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    rule3$2F2_step
                                                                              jmp   n434_call_α
n433_call_β:            mov              r11, 183;                            jmp   rule3$2F2_step
                        .size            n433_call_bx, .-n433_call_bx
                        .type            n434_call_bx, @function
n434_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_call_α:            mov              r11, 184
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 600]
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
                        cmp              al, 104;                             je    rule3$2F2_step
                                                                              jmp   n435_var_ref_α
n434_call_β:            mov              r11, 184;                            jmp   rule3$2F2_step
                        .size            n434_call_bx, .-n434_call_bx
                        .type            n435_var_ref_bx, @function
n435_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_var_ref_α:         mov              r11, 185
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n436_lit_string_α
                        .size            n435_var_ref_bx, .-n435_var_ref_bx
                        .type            n436_lit_string_bx, @function
n436_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_string_α:      mov              r11, 186
                        mov              qword ptr [rbp + 240], 2             # result
                        mov              dword ptr [rbp + 244], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_472_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n437_lit_string_α
.Llit_string_α_472_0:   .quad            .Llit_string_α_472_0_s
.Llit_string_α_472_0_s: .string          "."
                        .size            n436_lit_string_bx, .-n436_lit_string_bx
                        .type            n437_lit_string_bx, @function
n437_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:      mov              r11, 187
                        mov              qword ptr [rbp + 144], 2             # result
                        mov              dword ptr [rbp + 148], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_473_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n438_var_ref_α
.Llit_string_α_473_0:   .quad            .Llit_string_α_473_0_s
.Llit_string_α_473_0_s: .string          "u"
                        .size            n437_lit_string_bx, .-n437_lit_string_bx
                        .type            n438_var_ref_bx, @function
n438_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n439_call_α
                        .size            n438_var_ref_bx, .-n438_var_ref_bx
                        .type            n439_call_bx, @function
n439_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_call_α:            mov              r11, 189
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
                        cmp              al, 104;                             je    rule3$2F2_step
                                                                              jmp   n440_call_α
n439_call_β:            mov              r11, 189;                            jmp   rule3$2F2_step
                        .size            n439_call_bx, .-n439_call_bx
                        .type            n440_call_bx, @function
n440_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_call_α:            mov              r11, 190
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    rule3$2F2_step
                                                                              jmp   rule3$2F2_γ
n440_call_β:            mov              r11, 190;                            jmp   rule3$2F2_step
                        .size            n440_call_bx, .-n440_call_bx
                        .type            n441_var_ref_bx, @function
n441_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n442_lit_string_α
                        .size            n441_var_ref_bx, .-n441_var_ref_bx
                        .type            n442_lit_string_bx, @function
n442_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_lit_string_α:      mov              r11, 192
                        mov              qword ptr [rbp + 1200], 2            # result
                        mov              dword ptr [rbp + 1204], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_480_0]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n443_var_ref_α
.Llit_string_α_480_0:   .quad            .Llit_string_α_480_0_s
.Llit_string_α_480_0_s: .string          "."
                        .size            n442_lit_string_bx, .-n442_lit_string_bx
                        .type            n443_var_ref_bx, @function
n443_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_var_ref_α:         mov              r11, 193
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n444_var_ref_α
                        .size            n443_var_ref_bx, .-n443_var_ref_bx
                        .type            n444_var_ref_bx, @function
n444_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n445_call_α
                        .size            n444_var_ref_bx, .-n444_var_ref_bx
                        .type            n445_call_bx, @function
n445_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_call_α:            mov              r11, 195
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1096]
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
                        cmp              al, 104;                             je    rule3$2F2_step
                                                                              jmp   n446_call_α
n445_call_β:            mov              r11, 195;                            jmp   rule3$2F2_step
                        .size            n445_call_bx, .-n445_call_bx
                        .type            n446_call_bx, @function
n446_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_call_α:            mov              r11, 196
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1128]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    rule3$2F2_step
                                                                              jmp   n447_var_ref_α
n446_call_β:            mov              r11, 196;                            jmp   rule3$2F2_step
                        .size            n446_call_bx, .-n446_call_bx
                        .type            n447_var_ref_bx, @function
n447_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n447_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n448_lit_string_α
                        .size            n447_var_ref_bx, .-n447_var_ref_bx
                        .type            n448_lit_string_bx, @function
n448_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_string_α:      mov              r11, 198
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_489_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n449_var_ref_α
.Llit_string_α_489_0:   .quad            .Llit_string_α_489_0_s
.Llit_string_α_489_0_s: .string          "."
                        .size            n448_lit_string_bx, .-n448_lit_string_bx
                        .type            n449_var_ref_bx, @function
n449_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n450_var_ref_α
                        .size            n449_var_ref_bx, .-n449_var_ref_bx
                        .type            n450_var_ref_bx, @function
n450_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_var_ref_α:         mov              r11, 200
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n451_call_α
                        .size            n450_var_ref_bx, .-n450_var_ref_bx
                        .type            n451_call_bx, @function
n451_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_call_α:            mov              r11, 201
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
                        cmp              al, 104;                             je    rule3$2F2_step
                                                                              jmp   n452_call_α
n451_call_β:            mov              r11, 201;                            jmp   rule3$2F2_step
                        .size            n451_call_bx, .-n451_call_bx
                        .type            n452_call_bx, @function
n452_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_call_α:            mov              r11, 202
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
                        cmp              al, 104;                             je    rule3$2F2_step
                                                                              jmp   n453_var_ref_α
n452_call_β:            mov              r11, 202;                            jmp   rule3$2F2_step
                        .size            n452_call_bx, .-n452_call_bx
                        .type            n453_var_ref_bx, @function
n453_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n453_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n454_var_ref_α
                        .size            n453_var_ref_bx, .-n453_var_ref_bx
                        .type            n454_var_ref_bx, @function
n454_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_var_ref_α:         mov              r11, 204
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n455_call_proc_staged_α
                        .size            n454_var_ref_bx, .-n454_var_ref_bx
                        .type            n455_call_proc_staged_bx, @function
n455_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n455_call_proc_staged_α:
                        mov              r11, 205
                        mov              qword ptr [rbp + 736], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_501_200
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_501_201
.Lcall_proc_staged_α_501_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_501_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_501_202
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_501_203
.Lcall_proc_staged_α_501_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_501_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_501_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_501_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 1344]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_501_99
                        mov              r10, qword ptr [rbp + 1304]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_501_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_501_99
                        mov              rcx, qword ptr [rbp + 1320]
                        mov              rdx, qword ptr [rbp + 1328]
                        lea              rsp, [rbp + 1344]
                        mov              rbp, qword ptr [rbp + 1336];         jmp   rax
.Lcall_proc_staged_α_501_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_501_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_501_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_501_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_501_3:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_501_21
                        add              rsp, 32
.Lcall_proc_staged_α_501_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_501_2
.Lcall_proc_staged_α_501_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 736], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_501_2
.Lcall_proc_staged_α_501_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_501_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   rule3$2F2_step
.Lcall_proc_staged_α_501_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_501_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
.Lcall_proc_staged_α_501_29:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    rule3$2F2_step
                                                                              jmp   rule3$2F2_ret1
n455_call_proc_staged_β:
                        mov              r11, 205
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_501_22
                        mov              rax, qword ptr [rbp + 736]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_501_22
                        mov              rcx, qword ptr [rbp + 744]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_501_22:
                                                                              jmp   rule3$2F2_step
.Lcall_proc_staged_α_501_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    rule3$2F2_step
                                                                              jmp   rule3$2F2_ret1
.Lcall_proc_staged_α_501_0:
                        .quad            .Lcall_proc_staged_α_501_0_s
.Lcall_proc_staged_α_501_0_s:
                        .string          "rule3/2"
                        .size            n455_call_proc_staged_bx, .-n455_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
rule3$2F2_ret1:
                        lea              rax, [rip + n455_call_proc_staged_β]
                        mov              qword ptr [rbp + 1296], rax
                                                                              jmp   rule3$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
rule3$2F2_step:
                        mov              rdi, qword ptr [rbp + 1280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1296], 0
                        mov              qword ptr [rbp + 1216], 0
                        mov              qword ptr [rbp + 1224], 0
                        mov              qword ptr [rbp + 1232], 0
                        mov              qword ptr [rbp + 1240], 0
                        mov              qword ptr [rbp + 1248], 0
                        mov              qword ptr [rbp + 1256], 0
                        mov              rax, qword ptr [rbp + 1288]
                        test             rax, rax
                                                                              je    rule3$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
rule3$2F2_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1288], rax
                        mov              r13, qword ptr [rbp + 1304]
                                                                              jmp   n441_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
rule3$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
rule3$2F2_β:
                        test             r15, r15
                                                                              jne   rule3$2F2_ω
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1296], 0
                        test             rax, rax
                                                                              jne   rule3$2F2_βres
                                                                              jmp   rule3$2F2_step
rule3$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
rule3$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1320]
                        mov              rax, qword ptr [rbp + 1304]
                        cmp              r13, rax;                            je    rule3$2F2_altdet
                        lea              rdx, [rip + rule3$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1336];         jmp   rcx
rule3$2F2_altdet:       xor              eax, eax
                        lea              rsp, [rbp + 1344]
                        mov              rbp, qword ptr [rbp + 1336];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
rule3$2F2_ω:
                        mov              rcx, qword ptr [rbp + 1328]
                        mov              r13, qword ptr [rbp + 1304]
                        lea              rsp, [rbp + 1344]
                        mov              rbp, qword ptr [rbp + 1336];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__rule1$2F2:
                        sub              rsp, 1232
                        mov              qword ptr [rsp + 1208], rcx
                        mov              qword ptr [rsp + 1216], rdx
                        mov              qword ptr [rsp + 1224], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1232]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1192], r13
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1168], r12
                        lea              rax, [rip + rule1$2F2_alt1]
                        mov              qword ptr [rsp + 1176], rax
                        lea              rdi, [rsp + 1168]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 1104
                        mov              edx, 1168
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
rule1$2F2_α_body:
                        .type            n502_var_ref_bx, @function
n502_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n502_var_ref_α:         mov              r11, 206
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n503_lit_string_α
                        .size            n502_var_ref_bx, .-n502_var_ref_bx
                        .type            n503_lit_string_bx, @function
n503_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n503_lit_string_α:      mov              r11, 207
                        mov              qword ptr [rbp + 560], 2             # result
                        mov              dword ptr [rbp + 564], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_534_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n504_lit_string_α
.Llit_string_α_534_0:   .quad            .Llit_string_α_534_0_s
.Llit_string_α_534_0_s: .string          "."
                        .size            n503_lit_string_bx, .-n503_lit_string_bx
                        .type            n504_lit_string_bx, @function
n504_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n504_lit_string_α:      mov              r11, 208
                        mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_535_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n505_lit_string_α
.Llit_string_α_535_0:   .quad            .Llit_string_α_535_0_s
.Llit_string_α_535_0_s: .string          "i"
                        .size            n504_lit_string_bx, .-n504_lit_string_bx
                        .type            n505_lit_string_bx, @function
n505_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n505_lit_string_α:      mov              r11, 209
                        mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_536_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n506_call_α
.Llit_string_α_536_0:   .quad            .Llit_string_α_536_0_s
.Llit_string_α_536_0_s: .string          "[]"
                        .size            n505_lit_string_bx, .-n505_lit_string_bx
                        .type            n506_call_bx, @function
n506_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n506_call_α:            mov              r11, 210
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    rule1$2F2_step
                                                                              jmp   n507_call_α
n506_call_β:            mov              r11, 210;                            jmp   rule1$2F2_step
                        .size            n506_call_bx, .-n506_call_bx
                        .type            n507_call_bx, @function
n507_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n507_call_α:            mov              r11, 211
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 488]
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
                        cmp              al, 104;                             je    rule1$2F2_step
                                                                              jmp   n508_var_ref_α
n507_call_β:            mov              r11, 211;                            jmp   rule1$2F2_step
                        .size            n507_call_bx, .-n507_call_bx
                        .type            n508_var_ref_bx, @function
n508_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n508_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n509_lit_string_α
                        .size            n508_var_ref_bx, .-n508_var_ref_bx
                        .type            n509_lit_string_bx, @function
n509_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n509_lit_string_α:      mov              r11, 213
                        mov              qword ptr [rbp + 352], 2             # result
                        mov              dword ptr [rbp + 356], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_541_0]
                        mov              qword ptr [rbp + 360], rax;          jmp   n510_lit_string_α
.Llit_string_α_541_0:   .quad            .Llit_string_α_541_0_s
.Llit_string_α_541_0_s: .string          "."
                        .size            n509_lit_string_bx, .-n509_lit_string_bx
                        .type            n510_lit_string_bx, @function
n510_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n510_lit_string_α:      mov              r11, 214
                        mov              qword ptr [rbp + 256], 2             # result
                        mov              dword ptr [rbp + 260], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_542_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n511_lit_string_α
.Llit_string_α_542_0:   .quad            .Llit_string_α_542_0_s
.Llit_string_α_542_0_s: .string          "i"
                        .size            n510_lit_string_bx, .-n510_lit_string_bx
                        .type            n511_lit_string_bx, @function
n511_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n511_lit_string_α:      mov              r11, 215
                        mov              qword ptr [rbp + 240], 2             # result
                        mov              dword ptr [rbp + 244], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_543_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n512_lit_string_α
.Llit_string_α_543_0:   .quad            .Llit_string_α_543_0_s
.Llit_string_α_543_0_s: .string          "."
                        .size            n511_lit_string_bx, .-n511_lit_string_bx
                        .type            n512_lit_string_bx, @function
n512_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n512_lit_string_α:      mov              r11, 216
                        mov              qword ptr [rbp + 144], 2             # result
                        mov              dword ptr [rbp + 148], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_544_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n513_lit_string_α
.Llit_string_α_544_0:   .quad            .Llit_string_α_544_0_s
.Llit_string_α_544_0_s: .string          "u"
                        .size            n512_lit_string_bx, .-n512_lit_string_bx
                        .type            n513_lit_string_bx, @function
n513_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n513_lit_string_α:      mov              r11, 217
                        mov              qword ptr [rbp + 128], 2             # result
                        mov              dword ptr [rbp + 132], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_545_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n514_call_α
.Llit_string_α_545_0:   .quad            .Llit_string_α_545_0_s
.Llit_string_α_545_0_s: .string          "[]"
                        .size            n513_lit_string_bx, .-n513_lit_string_bx
                        .type            n514_call_bx, @function
n514_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n514_call_α:            mov              r11, 218
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
                        cmp              al, 104;                             je    rule1$2F2_ω
                                                                              jmp   n515_call_α
n514_call_β:            mov              r11, 218;                            jmp   rule1$2F2_ω
                        .size            n514_call_bx, .-n514_call_bx
                        .type            n515_call_bx, @function
n515_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n515_call_α:            mov              r11, 219
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
                        cmp              al, 104;                             je    rule1$2F2_step
                                                                              jmp   n516_call_α
n515_call_β:            mov              r11, 219;                            jmp   rule1$2F2_step
                        .size            n515_call_bx, .-n515_call_bx
                        .type            n516_call_bx, @function
n516_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n516_call_α:            mov              r11, 220
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 280]
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
                        cmp              al, 104;                             je    rule1$2F2_step
                                                                              jmp   rule1$2F2_γ
n516_call_β:            mov              r11, 220;                            jmp   rule1$2F2_step
                        .size            n516_call_bx, .-n516_call_bx
                        .type            n517_var_ref_bx, @function
n517_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n517_var_ref_α:         mov              r11, 221
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n518_lit_string_α
                        .size            n517_var_ref_bx, .-n517_var_ref_bx
                        .type            n518_lit_string_bx, @function
n518_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n518_lit_string_α:      mov              r11, 222
                        mov              qword ptr [rbp + 1088], 2            # result
                        mov              dword ptr [rbp + 1092], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_551_0]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n519_var_ref_α
.Llit_string_α_551_0:   .quad            .Llit_string_α_551_0_s
.Llit_string_α_551_0_s: .string          "."
                        .size            n518_lit_string_bx, .-n518_lit_string_bx
                        .type            n519_var_ref_bx, @function
n519_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n519_var_ref_α:         mov              r11, 223
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n520_var_ref_α
                        .size            n519_var_ref_bx, .-n519_var_ref_bx
                        .type            n520_var_ref_bx, @function
n520_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n520_var_ref_α:         mov              r11, 224
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n521_call_α
                        .size            n520_var_ref_bx, .-n520_var_ref_bx
                        .type            n521_call_bx, @function
n521_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n521_call_α:            mov              r11, 225
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 984]
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
                        cmp              al, 104;                             je    rule1$2F2_step
                                                                              jmp   n522_call_α
n521_call_β:            mov              r11, 225;                            jmp   rule1$2F2_step
                        .size            n521_call_bx, .-n521_call_bx
                        .type            n522_call_bx, @function
n522_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n522_call_α:            mov              r11, 226
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1016]
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
                        cmp              al, 104;                             je    rule1$2F2_step
                                                                              jmp   n523_var_ref_α
n522_call_β:            mov              r11, 226;                            jmp   rule1$2F2_step
                        .size            n522_call_bx, .-n522_call_bx
                        .type            n523_var_ref_bx, @function
n523_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n523_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n524_lit_string_α
                        .size            n523_var_ref_bx, .-n523_var_ref_bx
                        .type            n524_lit_string_bx, @function
n524_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n524_lit_string_α:      mov              r11, 228
                        mov              qword ptr [rbp + 880], 2             # result
                        mov              dword ptr [rbp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_560_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n525_var_ref_α
.Llit_string_α_560_0:   .quad            .Llit_string_α_560_0_s
.Llit_string_α_560_0_s: .string          "."
                        .size            n524_lit_string_bx, .-n524_lit_string_bx
                        .type            n525_var_ref_bx, @function
n525_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n525_var_ref_α:         mov              r11, 229
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n526_var_ref_α
                        .size            n525_var_ref_bx, .-n525_var_ref_bx
                        .type            n526_var_ref_bx, @function
n526_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n526_var_ref_α:         mov              r11, 230
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n527_call_α
                        .size            n526_var_ref_bx, .-n526_var_ref_bx
                        .type            n527_call_bx, @function
n527_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n527_call_α:            mov              r11, 231
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
                        cmp              al, 104;                             je    rule1$2F2_step
                                                                              jmp   n528_call_α
n527_call_β:            mov              r11, 231;                            jmp   rule1$2F2_step
                        .size            n527_call_bx, .-n527_call_bx
                        .type            n528_call_bx, @function
n528_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n528_call_α:            mov              r11, 232
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 808]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    rule1$2F2_step
                                                                              jmp   n529_var_ref_α
n528_call_β:            mov              r11, 232;                            jmp   rule1$2F2_step
                        .size            n528_call_bx, .-n528_call_bx
                        .type            n529_var_ref_bx, @function
n529_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n529_var_ref_α:         mov              r11, 233
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n530_var_ref_α
                        .size            n529_var_ref_bx, .-n529_var_ref_bx
                        .type            n530_var_ref_bx, @function
n530_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n530_var_ref_α:         mov              r11, 234
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n531_call_proc_staged_α
                        .size            n530_var_ref_bx, .-n530_var_ref_bx
                        .type            n531_call_proc_staged_bx, @function
n531_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n531_call_proc_staged_α:
                        mov              r11, 235
                        mov              qword ptr [rbp + 624], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_572_200
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_572_201
.Lcall_proc_staged_α_572_200:
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
.Lcall_proc_staged_α_572_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_572_202
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_572_203
.Lcall_proc_staged_α_572_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_572_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_572_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_572_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 1232]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_572_99
                        mov              r10, qword ptr [rbp + 1192]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_572_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_572_99
                        mov              rcx, qword ptr [rbp + 1208]
                        mov              rdx, qword ptr [rbp + 1216]
                        lea              rsp, [rbp + 1232]
                        mov              rbp, qword ptr [rbp + 1224];         jmp   rax
.Lcall_proc_staged_α_572_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_572_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_572_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_572_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_572_3:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_572_21
                        add              rsp, 32
.Lcall_proc_staged_α_572_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_572_2
.Lcall_proc_staged_α_572_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 624], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_572_2
.Lcall_proc_staged_α_572_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_572_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   rule1$2F2_step
.Lcall_proc_staged_α_572_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_572_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
.Lcall_proc_staged_α_572_29:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    rule1$2F2_step
                                                                              jmp   rule1$2F2_ret1
n531_call_proc_staged_β:
                        mov              r11, 235
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_572_22
                        mov              rax, qword ptr [rbp + 624]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_572_22
                        mov              rcx, qword ptr [rbp + 632]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_572_22:
                                                                              jmp   rule1$2F2_step
.Lcall_proc_staged_α_572_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    rule1$2F2_step
                                                                              jmp   rule1$2F2_ret1
.Lcall_proc_staged_α_572_0:
                        .quad            .Lcall_proc_staged_α_572_0_s
.Lcall_proc_staged_α_572_0_s:
                        .string          "rule1/2"
                        .size            n531_call_proc_staged_bx, .-n531_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
rule1$2F2_ret1:
                        lea              rax, [rip + n531_call_proc_staged_β]
                        mov              qword ptr [rbp + 1184], rax
                                                                              jmp   rule1$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
rule1$2F2_step:
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1184], 0
                        mov              qword ptr [rbp + 1136], 0
                        mov              qword ptr [rbp + 1144], 0
                        mov              qword ptr [rbp + 1104], 0
                        mov              qword ptr [rbp + 1112], 0
                        mov              qword ptr [rbp + 1120], 0
                        mov              qword ptr [rbp + 1128], 0
                        mov              rax, qword ptr [rbp + 1176]
                        test             rax, rax
                                                                              je    rule1$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
rule1$2F2_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1176], rax
                        mov              r13, qword ptr [rbp + 1192]
                                                                              jmp   n517_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
rule1$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
rule1$2F2_β:
                        test             r15, r15
                                                                              jne   rule1$2F2_ω
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1184], 0
                        test             rax, rax
                                                                              jne   rule1$2F2_βres
                                                                              jmp   rule1$2F2_step
rule1$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
rule1$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1208]
                        mov              rax, qword ptr [rbp + 1192]
                        cmp              r13, rax;                            je    rule1$2F2_altdet
                        lea              rdx, [rip + rule1$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1224];         jmp   rcx
rule1$2F2_altdet:       xor              eax, eax
                        lea              rsp, [rbp + 1232]
                        mov              rbp, qword ptr [rbp + 1224];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
rule1$2F2_ω:
                        mov              rcx, qword ptr [rbp + 1216]
                        mov              r13, qword ptr [rbp + 1192]
                        lea              rsp, [rbp + 1232]
                        mov              rbp, qword ptr [rbp + 1224];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__my_append$2F3:
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
                        lea              rax, [rip + my_append$2F3_alt1]
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
my_append$2F3_α_body:
                        .type            n573_var_ref_bx, @function
n573_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n573_var_ref_α:         mov              r11, 236
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n574_lit_string_α
                        .size            n573_var_ref_bx, .-n573_var_ref_bx
                        .type            n574_lit_string_bx, @function
n574_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n574_lit_string_α:      mov              r11, 237
                        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_603_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n575_call_α
.Llit_string_α_603_0:   .quad            .Llit_string_α_603_0_s
.Llit_string_α_603_0_s: .string          "[]"
                        .size            n574_lit_string_bx, .-n574_lit_string_bx
                        .type            n575_call_bx, @function
n575_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n575_call_α:            mov              r11, 238
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 272]
                        mov              rsi, qword ptr [rip + .Lcall_α_604_2]
                                                                              jmp   .Lcall_α_604_3
.Lcall_α_604_2:         .quad            .Lcall_α_604_2_s
.Lcall_α_604_2_s:       .string          "[]"
.Lcall_α_604_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    my_append$2F3_step
                                                                              jmp   n576_var_ref_α
n575_call_β:            mov              r11, 238;                            jmp   my_append$2F3_step
                        .size            n575_call_bx, .-n575_call_bx
                        .type            n576_var_ref_bx, @function
n576_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n576_var_ref_α:         mov              r11, 239
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n577_var_ref_α
                        .size            n576_var_ref_bx, .-n576_var_ref_bx
                        .type            n577_var_ref_bx, @function
n577_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n577_var_ref_α:         mov              r11, 240
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n578_call_α
                        .size            n577_var_ref_bx, .-n577_var_ref_bx
                        .type            n578_call_bx, @function
n578_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n578_call_α:            mov              r11, 241
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
                        cmp              al, 104;                             je    my_append$2F3_step
                                                                              jmp   n579_var_ref_α
n578_call_β:            mov              r11, 241;                            jmp   my_append$2F3_step
                        .size            n578_call_bx, .-n578_call_bx
                        .type            n579_var_ref_bx, @function
n579_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n579_var_ref_α:         mov              r11, 242
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n580_var_ref_α
                        .size            n579_var_ref_bx, .-n579_var_ref_bx
                        .type            n580_var_ref_bx, @function
n580_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n580_var_ref_α:         mov              r11, 243
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n581_call_α
                        .size            n580_var_ref_bx, .-n580_var_ref_bx
                        .type            n581_call_bx, @function
n581_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n581_call_α:            mov              r11, 244
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
                        cmp              al, 104;                             je    my_append$2F3_step
                                                                              jmp   my_append$2F3_γ
n581_call_β:            mov              r11, 244;                            jmp   my_append$2F3_step
                        .size            n581_call_bx, .-n581_call_bx
                        .type            n582_var_ref_bx, @function
n582_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n582_var_ref_α:         mov              r11, 245
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n583_lit_string_α
                        .size            n582_var_ref_bx, .-n582_var_ref_bx
                        .type            n583_lit_string_bx, @function
n583_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n583_lit_string_α:      mov              r11, 246
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_617_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n584_var_ref_α
.Llit_string_α_617_0:   .quad            .Llit_string_α_617_0_s
.Llit_string_α_617_0_s: .string          "."
                        .size            n583_lit_string_bx, .-n583_lit_string_bx
                        .type            n584_var_ref_bx, @function
n584_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n584_var_ref_α:         mov              r11, 247
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n585_var_ref_α
                        .size            n584_var_ref_bx, .-n584_var_ref_bx
                        .type            n585_var_ref_bx, @function
n585_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n585_var_ref_α:         mov              r11, 248
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n586_call_α
                        .size            n585_var_ref_bx, .-n585_var_ref_bx
                        .type            n586_call_bx, @function
n586_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n586_call_α:            mov              r11, 249
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
                        cmp              al, 104;                             je    my_append$2F3_step
                                                                              jmp   n587_call_α
n586_call_β:            mov              r11, 249;                            jmp   my_append$2F3_step
                        .size            n586_call_bx, .-n586_call_bx
                        .type            n587_call_bx, @function
n587_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n587_call_α:            mov              r11, 250
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
                        cmp              al, 104;                             je    my_append$2F3_step
                                                                              jmp   n588_var_ref_α
n587_call_β:            mov              r11, 250;                            jmp   my_append$2F3_step
                        .size            n587_call_bx, .-n587_call_bx
                        .type            n588_var_ref_bx, @function
n588_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n588_var_ref_α:         mov              r11, 251
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n589_var_ref_α
                        .size            n588_var_ref_bx, .-n588_var_ref_bx
                        .type            n589_var_ref_bx, @function
n589_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n589_var_ref_α:         mov              r11, 252
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n590_call_α
                        .size            n589_var_ref_bx, .-n589_var_ref_bx
                        .type            n590_call_bx, @function
n590_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n590_call_α:            mov              r11, 253
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
                        cmp              al, 104;                             je    my_append$2F3_step
                                                                              jmp   n591_var_ref_α
n590_call_β:            mov              r11, 253;                            jmp   my_append$2F3_step
                        .size            n590_call_bx, .-n590_call_bx
                        .type            n591_var_ref_bx, @function
n591_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n591_var_ref_α:         mov              r11, 254
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n592_lit_string_α
                        .size            n591_var_ref_bx, .-n591_var_ref_bx
                        .type            n592_lit_string_bx, @function
n592_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n592_lit_string_α:      mov              r11, 255
                        mov              qword ptr [rbp + 688], 2             # result
                        mov              dword ptr [rbp + 692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_631_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n593_var_ref_α
.Llit_string_α_631_0:   .quad            .Llit_string_α_631_0_s
.Llit_string_α_631_0_s: .string          "."
                        .size            n592_lit_string_bx, .-n592_lit_string_bx
                        .type            n593_var_ref_bx, @function
n593_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n593_var_ref_α:         mov              r11, 256
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n594_var_ref_α
                        .size            n593_var_ref_bx, .-n593_var_ref_bx
                        .type            n594_var_ref_bx, @function
n594_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n594_var_ref_α:         mov              r11, 257
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n595_call_α
                        .size            n594_var_ref_bx, .-n594_var_ref_bx
                        .type            n595_call_bx, @function
n595_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n595_call_α:            mov              r11, 258
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 584]
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
                        cmp              al, 104;                             je    my_append$2F3_step
                                                                              jmp   n596_call_α
n595_call_β:            mov              r11, 258;                            jmp   my_append$2F3_step
                        .size            n595_call_bx, .-n595_call_bx
                        .type            n596_call_bx, @function
n596_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n596_call_α:            mov              r11, 259
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    my_append$2F3_step
                                                                              jmp   n597_var_ref_α
n596_call_β:            mov              r11, 259;                            jmp   my_append$2F3_step
                        .size            n596_call_bx, .-n596_call_bx
                        .type            n597_var_ref_bx, @function
n597_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n597_var_ref_α:         mov              r11, 260
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n598_var_ref_α
                        .size            n597_var_ref_bx, .-n597_var_ref_bx
                        .type            n598_var_ref_bx, @function
n598_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n598_var_ref_α:         mov              r11, 261
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n599_var_ref_α
                        .size            n598_var_ref_bx, .-n598_var_ref_bx
                        .type            n599_var_ref_bx, @function
n599_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n599_var_ref_α:         mov              r11, 262
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n600_call_proc_staged_α
                        .size            n599_var_ref_bx, .-n599_var_ref_bx
                        .type            n600_call_proc_staged_bx, @function
n600_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n600_call_proc_staged_α:
                        mov              r11, 263
                        mov              qword ptr [rbp + 416], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_645_200
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_645_201
.Lcall_proc_staged_α_645_200:
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
.Lcall_proc_staged_α_645_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_645_202
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_645_203
.Lcall_proc_staged_α_645_202:
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
.Lcall_proc_staged_α_645_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_645_204
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_645_205
.Lcall_proc_staged_α_645_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_645_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_645_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 7
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_645_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 1152]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_645_99
                        mov              r10, qword ptr [rbp + 1112]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_645_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_645_99
                        mov              rcx, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1136]
                        lea              rsp, [rbp + 1152]
                        mov              rbp, qword ptr [rbp + 1144];         jmp   rax
.Lcall_proc_staged_α_645_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_645_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_645_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_645_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_645_3:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_645_21
                        add              rsp, 32
.Lcall_proc_staged_α_645_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_645_2
.Lcall_proc_staged_α_645_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 416], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_645_2
.Lcall_proc_staged_α_645_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_645_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   my_append$2F3_step
.Lcall_proc_staged_α_645_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_645_29
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
.Lcall_proc_staged_α_645_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    my_append$2F3_step
                                                                              jmp   my_append$2F3_ret1
n600_call_proc_staged_β:
                        mov              r11, 263
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_645_22
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_645_22
                        mov              rcx, qword ptr [rbp + 424]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_645_22:
                                                                              jmp   my_append$2F3_step
.Lcall_proc_staged_α_645_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    my_append$2F3_step
                                                                              jmp   my_append$2F3_ret1
.Lcall_proc_staged_α_645_0:
                        .quad            .Lcall_proc_staged_α_645_0_s
.Lcall_proc_staged_α_645_0_s:
                        .string          "my_append/3"
                        .size            n600_call_proc_staged_bx, .-n600_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
my_append$2F3_ret1:
                        lea              rax, [rip + n600_call_proc_staged_β]
                        mov              qword ptr [rbp + 1104], rax
                                                                              jmp   my_append$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
my_append$2F3_step:
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
                        mov              qword ptr [rbp + 1024], 0
                        mov              qword ptr [rbp + 1032], 0
                        mov              qword ptr [rbp + 1040], 0
                        mov              qword ptr [rbp + 1048], 0
                        mov              rax, qword ptr [rbp + 1096]
                        test             rax, rax
                                                                              je    my_append$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
my_append$2F3_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1096], rax
                        mov              r13, qword ptr [rbp + 1112]
                                                                              jmp   n582_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
my_append$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
my_append$2F3_β:
                        test             r15, r15
                                                                              jne   my_append$2F3_ω
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1104], 0
                        test             rax, rax
                                                                              jne   my_append$2F3_βres
                                                                              jmp   my_append$2F3_step
my_append$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
my_append$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1128]
                        mov              rax, qword ptr [rbp + 1112]
                        cmp              r13, rax;                            je    my_append$2F3_altdet
                        lea              rdx, [rip + my_append$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1144];         jmp   rcx
my_append$2F3_altdet:   xor              eax, eax
                        lea              rsp, [rbp + 1152]
                        mov              rbp, qword ptr [rbp + 1144];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
my_append$2F3_ω:
                        mov              rcx, qword ptr [rbp + 1136]
                        mov              r13, qword ptr [rbp + 1112]
                        lea              rsp, [rbp + 1152]
                        mov              rbp, qword ptr [rbp + 1144];         jmp   rcx
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
                        .type            n646_bound_bx, @function
n646_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n646_bound_α:           mov              r11, 264
                        mov              qword ptr [rbp + 64], r12
                        lea              rdi, [rbp + 320]
                        mov              rsi, rbp
                        call             rt_pl_disj_open@PLT;                 jmp   n647_call_proc_staged_α
                        .size            n646_bound_bx, .-n646_bound_bx
                        .type            n647_call_proc_staged_bx, @function
n647_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n647_call_proc_staged_α:
                        mov              r11, 265
                        mov              qword ptr [rbp + 272], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_661_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_661_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_661_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_661_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_661_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_661_3:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_661_21
                        add              rsp, 32
.Lcall_proc_staged_α_661_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_661_2
.Lcall_proc_staged_α_661_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 272], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_661_2
.Lcall_proc_staged_α_661_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_661_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n651_unmark_α
.Lcall_proc_staged_α_661_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_661_29
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
.Lcall_proc_staged_α_661_29:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    n651_unmark_α
                                                                              jmp   n648_lit_string_α
n647_call_proc_staged_β:
                        mov              r11, 265
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_661_22
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_661_22
                        mov              rcx, qword ptr [rbp + 280]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_661_22:
                                                                              jmp   n651_unmark_α
.Lcall_proc_staged_α_661_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    n651_unmark_α
                                                                              jmp   n648_lit_string_α
.Lcall_proc_staged_α_661_0:
                        .quad            .Lcall_proc_staged_α_661_0_s
.Lcall_proc_staged_α_661_0_s:
                        .string          "mu/0"
                        .size            n647_call_proc_staged_bx, .-n647_call_proc_staged_bx
                        .type            n648_lit_string_bx, @function
n648_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n648_lit_string_α:      mov              r11, 266
                        mov              qword ptr [rbp + 176], 2             # result
                        mov              dword ptr [rbp + 180], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_662_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n649_call_α
.Llit_string_α_662_0:   .quad            .Llit_string_α_662_0_s
.Llit_string_α_662_0_s: .string          "ok"
                        .size            n648_lit_string_bx, .-n648_lit_string_bx
                        .type            n649_call_bx, @function
n649_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n649_call_α:            mov              r11, 267
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
                        cmp              al, 104;                             je    n655_unmark_α
                                                                              jmp   n650_move_label_α
n649_call_β:            mov              r11, 267;                            jmp   n655_unmark_α
                        .size            n649_call_bx, .-n649_call_bx
                        .type            n650_move_label_bx, @function
n650_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n650_move_label_α:      mov              r11, 268
                        lea              rax, [rip + n656_indirect_goto_α]
                        mov              qword ptr [rbp + 48], rax;           jmp   n657_call_α
                        .size            n650_move_label_bx, .-n650_move_label_bx
                        .type            n651_unmark_bx, @function
n651_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n651_unmark_α:          mov              r11, 269
                        mov              rdi, qword ptr [rbp + 64]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   main$2F0_step
                                                                              jmp   n652_lit_string_α
                        .size            n651_unmark_bx, .-n651_unmark_bx
                        .type            n652_lit_string_bx, @function
n652_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n652_lit_string_α:      mov              r11, 270
                        mov              qword ptr [rbp + 240], 2             # result
                        mov              dword ptr [rbp + 244], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_668_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n653_call_α
.Llit_string_α_668_0:   .quad            .Llit_string_α_668_0_s
.Llit_string_α_668_0_s: .string          "failed"
                        .size            n652_lit_string_bx, .-n652_lit_string_bx
                        .type            n653_call_bx, @function
n653_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n653_call_α:            mov              r11, 271
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
                        cmp              al, 104;                             je    n655_unmark_α
                                                                              jmp   n654_move_label_α
n653_call_β:            mov              r11, 271;                            jmp   n655_unmark_α
                        .size            n653_call_bx, .-n653_call_bx
                        .type            n654_move_label_bx, @function
n654_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n654_move_label_α:      mov              r11, 272
                        lea              rax, [rip + n656_indirect_goto_α]
                        mov              qword ptr [rbp + 48], rax;           jmp   n657_call_α
                        .size            n654_move_label_bx, .-n654_move_label_bx
                        .type            n655_unmark_bx, @function
n655_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n655_unmark_α:          mov              r11, 273
                        mov              rdi, qword ptr [rbp + 64]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   main$2F0_step
                                                                              jmp   n656_indirect_goto_α
                        .size            n655_unmark_bx, .-n655_unmark_bx
                        .type            n656_indirect_goto_bx, @function
n656_indirect_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n656_indirect_goto_α:   mov              r11, 274;                            jmp   main$2F0_step
n656_indirect_goto_β:   mov              r11, 274;                            jmp   qword ptr [rbp + 48]
                        .size            n656_indirect_goto_bx, .-n656_indirect_goto_bx
                        .type            n657_call_bx, @function
n657_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n657_call_α:            mov              r11, 275
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
                        cmp              al, 104;                             je    n656_indirect_goto_β
                                                                              jmp   main$2F0_ret0
n657_call_β:            mov              r11, 275;                            jmp   n656_indirect_goto_β
                        .size            n657_call_bx, .-n657_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ret0:
                        lea              rax, [rip + n656_indirect_goto_β]
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
                        .type            n677_call_proc_staged_bx, @function
n677_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n677_call_proc_staged_α:
                        mov              r11, 276
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_679_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 8
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_679_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_679_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_679_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_679_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_679_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_679_21
                        add              rsp, 32
.Lcall_proc_staged_α_679_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_679_2
.Lcall_proc_staged_α_679_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_679_2
.Lcall_proc_staged_α_679_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_679_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_679_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_679_29
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
.Lcall_proc_staged_α_679_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n677_call_proc_staged_β:
                        mov              r11, 276
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_679_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_679_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_679_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_679_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_679_0:
                        .quad            .Lcall_proc_staged_α_679_0_s
.Lcall_proc_staged_α_679_0_s:
                        .string          "main/0"
                        .size            n677_call_proc_staged_bx, .-n677_call_proc_staged_bx
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
.Lstartup_pname0:       .string          "rule/3"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__rule$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1696
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "rule4/2"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__rule4$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1056
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "rule2/2"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__rule2$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            640
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "theorem/3"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__theorem$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            2336
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "mu/0"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__mu$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            720
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "rule3/2"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__rule3$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1264
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "rule1/2"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__rule1$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1152
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "my_append/3"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__my_append$2F3
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
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "main/0"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
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
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
