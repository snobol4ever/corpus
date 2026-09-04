                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__zebra$2F1:
                        sub              rsp, 8256
                        mov              qword ptr [rsp + 8232], rcx
                        mov              qword ptr [rsp + 8240], rdx
                        mov              qword ptr [rsp + 8248], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 8256]
                        mov              qword ptr [rsp + 8224], rax
                        mov              qword ptr [rsp + 8216], r13
                        mov              qword ptr [rsp + 8208], 0
                        mov              qword ptr [rsp + 8200], 0
                        mov              qword ptr [rsp + 8192], r12
                        mov              rdi, rsp
                        mov              esi, 6928
                        mov              edx, 8192
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
zebra$2F1_α_body:
                        .type            n0_var_ref_bx, @function
n0_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:           mov              r11, 1
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6896], rax
                        mov              qword ptr [rbp + 6904], rdx;         jmp   n1_var_ref_α
                        .size            n0_var_ref_bx, .-n0_var_ref_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6992]
                        mov              qword ptr [rbp + 6912], rax
                        mov              qword ptr [rbp + 6920], rdx;         jmp   n2_call_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_call_bx, @function
n2_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              mov              r11, 3
                        mov              rax, qword ptr [rbp + 6912]
                        mov              qword ptr [rbp + 6864], rax
                        mov              rax, qword ptr [rbp + 6920]
                        mov              qword ptr [rbp + 6872], rax
                        mov              rax, qword ptr [rbp + 6896]
                        mov              qword ptr [rbp + 6848], rax
                        mov              rax, qword ptr [rbp + 6904]
                        mov              qword ptr [rbp + 6856], rax
                        lea              rdi, [rbp + 6848]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6832], rax
                        mov              qword ptr [rbp + 6840], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n3_var_ref_α
n2_call_β:              mov              r11, 3;                              jmp   zebra$2F1_step
                        .size            n2_call_bx, .-n2_call_bx
                        .type            n3_var_ref_bx, @function
n3_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6992]
                        mov              qword ptr [rbp + 6816], rax
                        mov              qword ptr [rbp + 6824], rdx;         jmp   n4_call_proc_staged_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_call_proc_staged_bx, @function
n4_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_call_proc_staged_α:  mov              r11, 5
                        mov              qword ptr [rbp + 6784], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_203_200
                        mov              rax, qword ptr [rbp + 6816]
                        mov              rdx, qword ptr [rbp + 6824]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_203_201
.Lcall_proc_staged_α_203_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 6816]
                        mov              rdx, qword ptr [rbp + 6824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_203_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_203_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 4
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_203_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_203_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_203_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_203_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_203_3:
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_203_21
                        add              rsp, 32
.Lcall_proc_staged_α_203_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_203_2
.Lcall_proc_staged_α_203_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 6784], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_203_2
.Lcall_proc_staged_α_203_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_203_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   zebra$2F1_step
.Lcall_proc_staged_α_203_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_203_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 6752], rax
                        mov              qword ptr [rbp + 6760], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 6752]
                        mov              rdx, qword ptr [rbp + 6760]
.Lcall_proc_staged_α_203_29:
                        mov              qword ptr [rbp + 6752], rax
                        mov              qword ptr [rbp + 6760], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n5_lit_string_α
n4_call_proc_staged_β:  mov              r11, 5
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_203_22
                        mov              rax, qword ptr [rbp + 6784]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_203_22
                        mov              rcx, qword ptr [rbp + 6792]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_203_22:
                                                                              jmp   zebra$2F1_step
.Lcall_proc_staged_α_203_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 6752], rax
                        mov              qword ptr [rbp + 6760], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n5_lit_string_α
.Lcall_proc_staged_α_203_0:
                        .quad            .Lcall_proc_staged_α_203_0_s
.Lcall_proc_staged_α_203_0_s:
                        .string          "houses/1"
                        .size            n4_call_proc_staged_bx, .-n4_call_proc_staged_bx
                        .type            n5_lit_string_bx, @function
n5_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rbp + 6720], 2            # result
                        mov              dword ptr [rbp + 6724], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_204_0]
                        mov              qword ptr [rbp + 6728], rax;         jmp   n6_lit_string_α
.Llit_string_α_204_0:   .quad            .Llit_string_α_204_0_s
.Llit_string_α_204_0_s: .string          "house"
                        .size            n5_lit_string_bx, .-n5_lit_string_bx
                        .type            n6_lit_string_bx, @function
n6_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rbp + 6512], 2            # result
                        mov              dword ptr [rbp + 6516], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_205_0]
                        mov              qword ptr [rbp + 6520], rax;         jmp   n7_lit_string_α
.Llit_string_α_205_0:   .quad            .Llit_string_α_205_0_s
.Llit_string_α_205_0_s: .string          "red"
                        .size            n6_lit_string_bx, .-n6_lit_string_bx
                        .type            n7_lit_string_bx, @function
n7_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rbp + 6528], 2            # result
                        mov              dword ptr [rbp + 6532], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_206_0]
                        mov              qword ptr [rbp + 6536], rax;         jmp   n8_var_ref_α
.Llit_string_α_206_0:   .quad            .Llit_string_α_206_0_s
.Llit_string_α_206_0_s: .string          "english"
                        .size            n7_lit_string_bx, .-n7_lit_string_bx
                        .type            n8_var_ref_bx, @function
n8_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx;         jmp   n9_var_ref_α
                        .size            n8_var_ref_bx, .-n8_var_ref_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 6560], rax
                        mov              qword ptr [rbp + 6568], rdx;         jmp   n10_var_ref_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_var_ref_bx, @function
n10_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8160]
                        mov              qword ptr [rbp + 6576], rax
                        mov              qword ptr [rbp + 6584], rdx;         jmp   n11_call_α
                        .size            n10_var_ref_bx, .-n10_var_ref_bx
                        .type            n11_call_bx, @function
n11_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_call_α:             mov              r11, 12
                        mov              rax, qword ptr [rbp + 6576]
                        mov              qword ptr [rbp + 6688], rax
                        mov              rax, qword ptr [rbp + 6584]
                        mov              qword ptr [rbp + 6696], rax
                        mov              rax, qword ptr [rbp + 6560]
                        mov              qword ptr [rbp + 6672], rax
                        mov              rax, qword ptr [rbp + 6568]
                        mov              qword ptr [rbp + 6680], rax
                        mov              rax, qword ptr [rbp + 6544]
                        mov              qword ptr [rbp + 6656], rax
                        mov              rax, qword ptr [rbp + 6552]
                        mov              qword ptr [rbp + 6664], rax
                        mov              rax, qword ptr [rbp + 6528]
                        mov              qword ptr [rbp + 6640], rax
                        mov              rax, qword ptr [rbp + 6536]
                        mov              qword ptr [rbp + 6648], rax
                        mov              rax, qword ptr [rbp + 6512]
                        mov              qword ptr [rbp + 6624], rax
                        mov              rax, qword ptr [rbp + 6520]
                        mov              qword ptr [rbp + 6632], rax
                        mov              rax, qword ptr [rbp + 6720]
                        mov              qword ptr [rbp + 6608], rax
                        mov              rax, qword ptr [rbp + 6728]
                        mov              qword ptr [rbp + 6616], rax
                        lea              rdi, [rbp + 6608]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6592], rax
                        mov              qword ptr [rbp + 6600], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n12_var_ref_α
n11_call_β:             mov              r11, 12;                             jmp   zebra$2F1_step
                        .size            n11_call_bx, .-n11_call_bx
                        .type            n12_var_ref_bx, @function
n12_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6992]
                        mov              qword ptr [rbp + 6736], rax
                        mov              qword ptr [rbp + 6744], rdx;         jmp   n13_call_proc_staged_α
                        .size            n12_var_ref_bx, .-n12_var_ref_bx
                        .type            n13_call_proc_staged_bx, @function
n13_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_call_proc_staged_α: mov              r11, 14
                        mov              qword ptr [rbp + 6480], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_217_200
                        mov              rax, qword ptr [rbp + 6592]
                        mov              rdx, qword ptr [rbp + 6600]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_217_201
.Lcall_proc_staged_α_217_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 6592]
                        mov              rdx, qword ptr [rbp + 6600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_217_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_217_202
                        mov              rax, qword ptr [rbp + 6736]
                        mov              rdx, qword ptr [rbp + 6744]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_217_203
.Lcall_proc_staged_α_217_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 6736]
                        mov              rdx, qword ptr [rbp + 6744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_217_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_217_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_217_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_217_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_217_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_217_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_217_3:
                        mov              qword ptr [rbp + 6480], rax
                        mov              qword ptr [rbp + 6488], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_217_21
                        add              rsp, 32
.Lcall_proc_staged_α_217_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_217_2
.Lcall_proc_staged_α_217_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 6480], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_217_2
.Lcall_proc_staged_α_217_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_217_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_call_proc_staged_β
.Lcall_proc_staged_α_217_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_217_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 6432]
                        mov              rdx, qword ptr [rbp + 6440]
.Lcall_proc_staged_α_217_29:
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                        cmp              al, 104;                             je    n4_call_proc_staged_β
                                                                              jmp   n14_lit_string_α
n13_call_proc_staged_β: mov              r11, 14
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_217_22
                        mov              rax, qword ptr [rbp + 6480]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_217_22
                        mov              rcx, qword ptr [rbp + 6488]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_217_22:
                                                                              jmp   n4_call_proc_staged_β
.Lcall_proc_staged_α_217_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                        cmp              al, 104;                             je    n4_call_proc_staged_β
                                                                              jmp   n14_lit_string_α
.Lcall_proc_staged_α_217_0:
                        .quad            .Lcall_proc_staged_α_217_0_s
.Lcall_proc_staged_α_217_0_s:
                        .string          "my_member/2"
                        .size            n13_call_proc_staged_bx, .-n13_call_proc_staged_bx
                        .type            n14_lit_string_bx, @function
n14_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              r11, 15
                        mov              qword ptr [rbp + 6400], 2            # result
                        mov              dword ptr [rbp + 6404], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_218_0]
                        mov              qword ptr [rbp + 6408], rax;         jmp   n15_var_ref_α
.Llit_string_α_218_0:   .quad            .Llit_string_α_218_0_s
.Llit_string_α_218_0_s: .string          "house"
                        .size            n14_lit_string_bx, .-n14_lit_string_bx
                        .type            n15_var_ref_bx, @function
n15_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8080]
                        mov              qword ptr [rbp + 6192], rax
                        mov              qword ptr [rbp + 6200], rdx;         jmp   n16_lit_string_α
                        .size            n15_var_ref_bx, .-n15_var_ref_bx
                        .type            n16_lit_string_bx, @function
n16_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rbp + 6208], 2            # result
                        mov              dword ptr [rbp + 6212], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_221_0]
                        mov              qword ptr [rbp + 6216], rax;         jmp   n17_lit_string_α
.Llit_string_α_221_0:   .quad            .Llit_string_α_221_0_s
.Llit_string_α_221_0_s: .string          "spanish"
                        .size            n16_lit_string_bx, .-n16_lit_string_bx
                        .type            n17_lit_string_bx, @function
n17_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              r11, 18
                        mov              qword ptr [rbp + 6224], 2            # result
                        mov              dword ptr [rbp + 6228], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_222_0]
                        mov              qword ptr [rbp + 6232], rax;         jmp   n18_var_ref_α
.Llit_string_α_222_0:   .quad            .Llit_string_α_222_0_s
.Llit_string_α_222_0_s: .string          "dog"
                        .size            n17_lit_string_bx, .-n17_lit_string_bx
                        .type            n18_var_ref_bx, @function
n18_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8096]
                        mov              qword ptr [rbp + 6240], rax
                        mov              qword ptr [rbp + 6248], rdx;         jmp   n19_var_ref_α
                        .size            n18_var_ref_bx, .-n18_var_ref_bx
                        .type            n19_var_ref_bx, @function
n19_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          mov              r11, 20
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8112]
                        mov              qword ptr [rbp + 6256], rax
                        mov              qword ptr [rbp + 6264], rdx;         jmp   n20_call_α
                        .size            n19_var_ref_bx, .-n19_var_ref_bx
                        .type            n20_call_bx, @function
n20_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:             mov              r11, 21
                        mov              rax, qword ptr [rbp + 6256]
                        mov              qword ptr [rbp + 6368], rax
                        mov              rax, qword ptr [rbp + 6264]
                        mov              qword ptr [rbp + 6376], rax
                        mov              rax, qword ptr [rbp + 6240]
                        mov              qword ptr [rbp + 6352], rax
                        mov              rax, qword ptr [rbp + 6248]
                        mov              qword ptr [rbp + 6360], rax
                        mov              rax, qword ptr [rbp + 6224]
                        mov              qword ptr [rbp + 6336], rax
                        mov              rax, qword ptr [rbp + 6232]
                        mov              qword ptr [rbp + 6344], rax
                        mov              rax, qword ptr [rbp + 6208]
                        mov              qword ptr [rbp + 6320], rax
                        mov              rax, qword ptr [rbp + 6216]
                        mov              qword ptr [rbp + 6328], rax
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 6304], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 6312], rax
                        mov              rax, qword ptr [rbp + 6400]
                        mov              qword ptr [rbp + 6288], rax
                        mov              rax, qword ptr [rbp + 6408]
                        mov              qword ptr [rbp + 6296], rax
                        lea              rdi, [rbp + 6288]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6272], rax
                        mov              qword ptr [rbp + 6280], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n21_var_ref_α
n20_call_β:             mov              r11, 21;                             jmp   zebra$2F1_step
                        .size            n20_call_bx, .-n20_call_bx
                        .type            n21_var_ref_bx, @function
n21_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6992]
                        mov              qword ptr [rbp + 6416], rax
                        mov              qword ptr [rbp + 6424], rdx;         jmp   n22_call_proc_staged_α
                        .size            n21_var_ref_bx, .-n21_var_ref_bx
                        .type            n22_call_proc_staged_bx, @function
n22_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_call_proc_staged_α: mov              r11, 23
                        mov              qword ptr [rbp + 6160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_231_200
                        mov              rax, qword ptr [rbp + 6272]
                        mov              rdx, qword ptr [rbp + 6280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_231_201
.Lcall_proc_staged_α_231_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 6272]
                        mov              rdx, qword ptr [rbp + 6280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_231_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_231_202
                        mov              rax, qword ptr [rbp + 6416]
                        mov              rdx, qword ptr [rbp + 6424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_231_203
.Lcall_proc_staged_α_231_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 6416]
                        mov              rdx, qword ptr [rbp + 6424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_231_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_231_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_231_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_231_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_231_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_231_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_231_3:
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_231_21
                        add              rsp, 32
.Lcall_proc_staged_α_231_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_231_2
.Lcall_proc_staged_α_231_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 6160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_231_2
.Lcall_proc_staged_α_231_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_231_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n13_call_proc_staged_β
.Lcall_proc_staged_α_231_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_231_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 6112], rax
                        mov              qword ptr [rbp + 6120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 6112]
                        mov              rdx, qword ptr [rbp + 6120]
.Lcall_proc_staged_α_231_29:
                        mov              qword ptr [rbp + 6112], rax
                        mov              qword ptr [rbp + 6120], rdx
                        cmp              al, 104;                             je    n13_call_proc_staged_β
                                                                              jmp   n23_lit_string_α
n22_call_proc_staged_β: mov              r11, 23
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_231_22
                        mov              rax, qword ptr [rbp + 6160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_231_22
                        mov              rcx, qword ptr [rbp + 6168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_231_22:
                                                                              jmp   n13_call_proc_staged_β
.Lcall_proc_staged_α_231_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 6112], rax
                        mov              qword ptr [rbp + 6120], rdx
                        cmp              al, 104;                             je    n13_call_proc_staged_β
                                                                              jmp   n23_lit_string_α
.Lcall_proc_staged_α_231_0:
                        .quad            .Lcall_proc_staged_α_231_0_s
.Lcall_proc_staged_α_231_0_s:
                        .string          "my_member/2"
                        .size            n22_call_proc_staged_bx, .-n22_call_proc_staged_bx
                        .type            n23_lit_string_bx, @function
n23_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rbp + 6080], 2            # result
                        mov              dword ptr [rbp + 6084], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_232_0]
                        mov              qword ptr [rbp + 6088], rax;         jmp   n24_lit_string_α
.Llit_string_α_232_0:   .quad            .Llit_string_α_232_0_s
.Llit_string_α_232_0_s: .string          "house"
                        .size            n23_lit_string_bx, .-n23_lit_string_bx
                        .type            n24_lit_string_bx, @function
n24_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       mov              r11, 25
                        mov              qword ptr [rbp + 5872], 2            # result
                        mov              dword ptr [rbp + 5876], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_233_0]
                        mov              qword ptr [rbp + 5880], rax;         jmp   n25_var_ref_α
.Llit_string_α_233_0:   .quad            .Llit_string_α_233_0_s
.Llit_string_α_233_0_s: .string          "green"
                        .size            n24_lit_string_bx, .-n24_lit_string_bx
                        .type            n25_var_ref_bx, @function
n25_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8032]
                        mov              qword ptr [rbp + 5888], rax
                        mov              qword ptr [rbp + 5896], rdx;         jmp   n26_var_ref_α
                        .size            n25_var_ref_bx, .-n25_var_ref_bx
                        .type            n26_var_ref_bx, @function
n26_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8048]
                        mov              qword ptr [rbp + 5904], rax
                        mov              qword ptr [rbp + 5912], rdx;         jmp   n27_lit_string_α
                        .size            n26_var_ref_bx, .-n26_var_ref_bx
                        .type            n27_lit_string_bx, @function
n27_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rbp + 5920], 2            # result
                        mov              dword ptr [rbp + 5924], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_238_0]
                        mov              qword ptr [rbp + 5928], rax;         jmp   n28_var_ref_α
.Llit_string_α_238_0:   .quad            .Llit_string_α_238_0_s
.Llit_string_α_238_0_s: .string          "coffee"
                        .size            n27_lit_string_bx, .-n27_lit_string_bx
                        .type            n28_var_ref_bx, @function
n28_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8064]
                        mov              qword ptr [rbp + 5936], rax
                        mov              qword ptr [rbp + 5944], rdx;         jmp   n29_call_α
                        .size            n28_var_ref_bx, .-n28_var_ref_bx
                        .type            n29_call_bx, @function
n29_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_call_α:             mov              r11, 30
                        mov              rax, qword ptr [rbp + 5936]
                        mov              qword ptr [rbp + 6048], rax
                        mov              rax, qword ptr [rbp + 5944]
                        mov              qword ptr [rbp + 6056], rax
                        mov              rax, qword ptr [rbp + 5920]
                        mov              qword ptr [rbp + 6032], rax
                        mov              rax, qword ptr [rbp + 5928]
                        mov              qword ptr [rbp + 6040], rax
                        mov              rax, qword ptr [rbp + 5904]
                        mov              qword ptr [rbp + 6016], rax
                        mov              rax, qword ptr [rbp + 5912]
                        mov              qword ptr [rbp + 6024], rax
                        mov              rax, qword ptr [rbp + 5888]
                        mov              qword ptr [rbp + 6000], rax
                        mov              rax, qword ptr [rbp + 5896]
                        mov              qword ptr [rbp + 6008], rax
                        mov              rax, qword ptr [rbp + 5872]
                        mov              qword ptr [rbp + 5984], rax
                        mov              rax, qword ptr [rbp + 5880]
                        mov              qword ptr [rbp + 5992], rax
                        mov              rax, qword ptr [rbp + 6080]
                        mov              qword ptr [rbp + 5968], rax
                        mov              rax, qword ptr [rbp + 6088]
                        mov              qword ptr [rbp + 5976], rax
                        lea              rdi, [rbp + 5968]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5952], rax
                        mov              qword ptr [rbp + 5960], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n30_var_ref_α
n29_call_β:             mov              r11, 30;                             jmp   zebra$2F1_step
                        .size            n29_call_bx, .-n29_call_bx
                        .type            n30_var_ref_bx, @function
n30_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6992]
                        mov              qword ptr [rbp + 6096], rax
                        mov              qword ptr [rbp + 6104], rdx;         jmp   n31_call_proc_staged_α
                        .size            n30_var_ref_bx, .-n30_var_ref_bx
                        .type            n31_call_proc_staged_bx, @function
n31_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_call_proc_staged_α: mov              r11, 32
                        mov              qword ptr [rbp + 5840], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_245_200
                        mov              rax, qword ptr [rbp + 5952]
                        mov              rdx, qword ptr [rbp + 5960]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_245_201
.Lcall_proc_staged_α_245_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 5952]
                        mov              rdx, qword ptr [rbp + 5960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_245_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_245_202
                        mov              rax, qword ptr [rbp + 6096]
                        mov              rdx, qword ptr [rbp + 6104]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_245_203
.Lcall_proc_staged_α_245_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 6096]
                        mov              rdx, qword ptr [rbp + 6104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_245_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_245_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_245_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_245_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_245_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_245_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_245_3:
                        mov              qword ptr [rbp + 5840], rax
                        mov              qword ptr [rbp + 5848], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_245_21
                        add              rsp, 32
.Lcall_proc_staged_α_245_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_245_2
.Lcall_proc_staged_α_245_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 5840], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_245_2
.Lcall_proc_staged_α_245_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_245_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n22_call_proc_staged_β
.Lcall_proc_staged_α_245_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_245_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 5792]
                        mov              rdx, qword ptr [rbp + 5800]
.Lcall_proc_staged_α_245_29:
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx
                        cmp              al, 104;                             je    n22_call_proc_staged_β
                                                                              jmp   n32_lit_string_α
n31_call_proc_staged_β: mov              r11, 32
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_245_22
                        mov              rax, qword ptr [rbp + 5840]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_245_22
                        mov              rcx, qword ptr [rbp + 5848]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_245_22:
                                                                              jmp   n22_call_proc_staged_β
.Lcall_proc_staged_α_245_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx
                        cmp              al, 104;                             je    n22_call_proc_staged_β
                                                                              jmp   n32_lit_string_α
.Lcall_proc_staged_α_245_0:
                        .quad            .Lcall_proc_staged_α_245_0_s
.Lcall_proc_staged_α_245_0_s:
                        .string          "my_member/2"
                        .size            n31_call_proc_staged_bx, .-n31_call_proc_staged_bx
                        .type            n32_lit_string_bx, @function
n32_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       mov              r11, 33
                        mov              qword ptr [rbp + 5760], 2            # result
                        mov              dword ptr [rbp + 5764], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_246_0]
                        mov              qword ptr [rbp + 5768], rax;         jmp   n33_var_ref_α
.Llit_string_α_246_0:   .quad            .Llit_string_α_246_0_s
.Llit_string_α_246_0_s: .string          "house"
                        .size            n32_lit_string_bx, .-n32_lit_string_bx
                        .type            n33_var_ref_bx, @function
n33_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7984]
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx;         jmp   n34_lit_string_α
                        .size            n33_var_ref_bx, .-n33_var_ref_bx
                        .type            n34_lit_string_bx, @function
n34_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rbp + 5568], 2            # result
                        mov              dword ptr [rbp + 5572], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_249_0]
                        mov              qword ptr [rbp + 5576], rax;         jmp   n35_var_ref_α
.Llit_string_α_249_0:   .quad            .Llit_string_α_249_0_s
.Llit_string_α_249_0_s: .string          "ukrainian"
                        .size            n34_lit_string_bx, .-n34_lit_string_bx
                        .type            n35_var_ref_bx, @function
n35_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8000]
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx;         jmp   n36_lit_string_α
                        .size            n35_var_ref_bx, .-n35_var_ref_bx
                        .type            n36_lit_string_bx, @function
n36_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rbp + 5600], 2            # result
                        mov              dword ptr [rbp + 5604], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_252_0]
                        mov              qword ptr [rbp + 5608], rax;         jmp   n37_var_ref_α
.Llit_string_α_252_0:   .quad            .Llit_string_α_252_0_s
.Llit_string_α_252_0_s: .string          "tea"
                        .size            n36_lit_string_bx, .-n36_lit_string_bx
                        .type            n37_var_ref_bx, @function
n37_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 8016]
                        mov              qword ptr [rbp + 5616], rax
                        mov              qword ptr [rbp + 5624], rdx;         jmp   n38_call_α
                        .size            n37_var_ref_bx, .-n37_var_ref_bx
                        .type            n38_call_bx, @function
n38_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:             mov              r11, 39
                        mov              rax, qword ptr [rbp + 5616]
                        mov              qword ptr [rbp + 5728], rax
                        mov              rax, qword ptr [rbp + 5624]
                        mov              qword ptr [rbp + 5736], rax
                        mov              rax, qword ptr [rbp + 5600]
                        mov              qword ptr [rbp + 5712], rax
                        mov              rax, qword ptr [rbp + 5608]
                        mov              qword ptr [rbp + 5720], rax
                        mov              rax, qword ptr [rbp + 5584]
                        mov              qword ptr [rbp + 5696], rax
                        mov              rax, qword ptr [rbp + 5592]
                        mov              qword ptr [rbp + 5704], rax
                        mov              rax, qword ptr [rbp + 5568]
                        mov              qword ptr [rbp + 5680], rax
                        mov              rax, qword ptr [rbp + 5576]
                        mov              qword ptr [rbp + 5688], rax
                        mov              rax, qword ptr [rbp + 5552]
                        mov              qword ptr [rbp + 5664], rax
                        mov              rax, qword ptr [rbp + 5560]
                        mov              qword ptr [rbp + 5672], rax
                        mov              rax, qword ptr [rbp + 5760]
                        mov              qword ptr [rbp + 5648], rax
                        mov              rax, qword ptr [rbp + 5768]
                        mov              qword ptr [rbp + 5656], rax
                        lea              rdi, [rbp + 5648]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5632], rax
                        mov              qword ptr [rbp + 5640], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n39_var_ref_α
n38_call_β:             mov              r11, 39;                             jmp   zebra$2F1_step
                        .size            n38_call_bx, .-n38_call_bx
                        .type            n39_var_ref_bx, @function
n39_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6992]
                        mov              qword ptr [rbp + 5776], rax
                        mov              qword ptr [rbp + 5784], rdx;         jmp   n40_call_proc_staged_α
                        .size            n39_var_ref_bx, .-n39_var_ref_bx
                        .type            n40_call_proc_staged_bx, @function
n40_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_call_proc_staged_α: mov              r11, 41
                        mov              qword ptr [rbp + 5520], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_259_200
                        mov              rax, qword ptr [rbp + 5632]
                        mov              rdx, qword ptr [rbp + 5640]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_259_201
.Lcall_proc_staged_α_259_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 5632]
                        mov              rdx, qword ptr [rbp + 5640]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_259_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_259_202
                        mov              rax, qword ptr [rbp + 5776]
                        mov              rdx, qword ptr [rbp + 5784]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_259_203
.Lcall_proc_staged_α_259_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 5776]
                        mov              rdx, qword ptr [rbp + 5784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_259_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_259_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_259_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_259_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_259_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_259_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_259_3:
                        mov              qword ptr [rbp + 5520], rax
                        mov              qword ptr [rbp + 5528], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_259_21
                        add              rsp, 32
.Lcall_proc_staged_α_259_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_259_2
.Lcall_proc_staged_α_259_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 5520], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_259_2
.Lcall_proc_staged_α_259_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_259_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n31_call_proc_staged_β
.Lcall_proc_staged_α_259_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_259_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 5472]
                        mov              rdx, qword ptr [rbp + 5480]
.Lcall_proc_staged_α_259_29:
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        cmp              al, 104;                             je    n31_call_proc_staged_β
                                                                              jmp   n41_lit_string_α
n40_call_proc_staged_β: mov              r11, 41
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_259_22
                        mov              rax, qword ptr [rbp + 5520]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_259_22
                        mov              rcx, qword ptr [rbp + 5528]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_259_22:
                                                                              jmp   n31_call_proc_staged_β
.Lcall_proc_staged_α_259_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        cmp              al, 104;                             je    n31_call_proc_staged_β
                                                                              jmp   n41_lit_string_α
.Lcall_proc_staged_α_259_0:
                        .quad            .Lcall_proc_staged_α_259_0_s
.Lcall_proc_staged_α_259_0_s:
                        .string          "my_member/2"
                        .size            n40_call_proc_staged_bx, .-n40_call_proc_staged_bx
                        .type            n41_lit_string_bx, @function
n41_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       mov              r11, 42
                        mov              qword ptr [rbp + 5216], 2            # result
                        mov              dword ptr [rbp + 5220], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_260_0]
                        mov              qword ptr [rbp + 5224], rax;         jmp   n42_lit_string_α
.Llit_string_α_260_0:   .quad            .Llit_string_α_260_0_s
.Llit_string_α_260_0_s: .string          "house"
                        .size            n41_lit_string_bx, .-n41_lit_string_bx
                        .type            n42_lit_string_bx, @function
n42_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              r11, 43
                        mov              qword ptr [rbp + 5008], 2            # result
                        mov              dword ptr [rbp + 5012], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_261_0]
                        mov              qword ptr [rbp + 5016], rax;         jmp   n43_var_ref_α
.Llit_string_α_261_0:   .quad            .Llit_string_α_261_0_s
.Llit_string_α_261_0_s: .string          "green"
                        .size            n42_lit_string_bx, .-n42_lit_string_bx
                        .type            n43_var_ref_bx, @function
n43_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 5024], rax
                        mov              qword ptr [rbp + 5032], rdx;         jmp   n44_var_ref_α
                        .size            n43_var_ref_bx, .-n43_var_ref_bx
                        .type            n44_var_ref_bx, @function
n44_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7872]
                        mov              qword ptr [rbp + 5040], rax
                        mov              qword ptr [rbp + 5048], rdx;         jmp   n45_var_ref_α
                        .size            n44_var_ref_bx, .-n44_var_ref_bx
                        .type            n45_var_ref_bx, @function
n45_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7888]
                        mov              qword ptr [rbp + 5056], rax
                        mov              qword ptr [rbp + 5064], rdx;         jmp   n46_var_ref_α
                        .size            n45_var_ref_bx, .-n45_var_ref_bx
                        .type            n46_var_ref_bx, @function
n46_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7904]
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx;         jmp   n47_call_α
                        .size            n46_var_ref_bx, .-n46_var_ref_bx
                        .type            n47_call_bx, @function
n47_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_call_α:             mov              r11, 48
                        mov              rax, qword ptr [rbp + 5072]
                        mov              qword ptr [rbp + 5184], rax
                        mov              rax, qword ptr [rbp + 5080]
                        mov              qword ptr [rbp + 5192], rax
                        mov              rax, qword ptr [rbp + 5056]
                        mov              qword ptr [rbp + 5168], rax
                        mov              rax, qword ptr [rbp + 5064]
                        mov              qword ptr [rbp + 5176], rax
                        mov              rax, qword ptr [rbp + 5040]
                        mov              qword ptr [rbp + 5152], rax
                        mov              rax, qword ptr [rbp + 5048]
                        mov              qword ptr [rbp + 5160], rax
                        mov              rax, qword ptr [rbp + 5024]
                        mov              qword ptr [rbp + 5136], rax
                        mov              rax, qword ptr [rbp + 5032]
                        mov              qword ptr [rbp + 5144], rax
                        mov              rax, qword ptr [rbp + 5008]
                        mov              qword ptr [rbp + 5120], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 5128], rax
                        mov              rax, qword ptr [rbp + 5216]
                        mov              qword ptr [rbp + 5104], rax
                        mov              rax, qword ptr [rbp + 5224]
                        mov              qword ptr [rbp + 5112], rax
                        lea              rdi, [rbp + 5104]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n48_lit_string_α
n47_call_β:             mov              r11, 48;                             jmp   zebra$2F1_step
                        .size            n47_call_bx, .-n47_call_bx
                        .type            n48_lit_string_bx, @function
n48_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       mov              r11, 49
                        mov              qword ptr [rbp + 5440], 2            # result
                        mov              dword ptr [rbp + 5444], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_271_0]
                        mov              qword ptr [rbp + 5448], rax;         jmp   n49_lit_string_α
.Llit_string_α_271_0:   .quad            .Llit_string_α_271_0_s
.Llit_string_α_271_0_s: .string          "house"
                        .size            n48_lit_string_bx, .-n48_lit_string_bx
                        .type            n49_lit_string_bx, @function
n49_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       mov              r11, 50
                        mov              qword ptr [rbp + 5232], 2            # result
                        mov              dword ptr [rbp + 5236], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_272_0]
                        mov              qword ptr [rbp + 5240], rax;         jmp   n50_var_ref_α
.Llit_string_α_272_0:   .quad            .Llit_string_α_272_0_s
.Llit_string_α_272_0_s: .string          "ivory"
                        .size            n49_lit_string_bx, .-n49_lit_string_bx
                        .type            n50_var_ref_bx, @function
n50_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:          mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7920]
                        mov              qword ptr [rbp + 5248], rax
                        mov              qword ptr [rbp + 5256], rdx;         jmp   n51_var_ref_α
                        .size            n50_var_ref_bx, .-n50_var_ref_bx
                        .type            n51_var_ref_bx, @function
n51_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:          mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7936]
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx;         jmp   n52_var_ref_α
                        .size            n51_var_ref_bx, .-n51_var_ref_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7952]
                        mov              qword ptr [rbp + 5280], rax
                        mov              qword ptr [rbp + 5288], rdx;         jmp   n53_var_ref_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_var_ref_bx, @function
n53_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7968]
                        mov              qword ptr [rbp + 5296], rax
                        mov              qword ptr [rbp + 5304], rdx;         jmp   n54_call_α
                        .size            n53_var_ref_bx, .-n53_var_ref_bx
                        .type            n54_call_bx, @function
n54_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:             mov              r11, 55
                        mov              rax, qword ptr [rbp + 5296]
                        mov              qword ptr [rbp + 5408], rax
                        mov              rax, qword ptr [rbp + 5304]
                        mov              qword ptr [rbp + 5416], rax
                        mov              rax, qword ptr [rbp + 5280]
                        mov              qword ptr [rbp + 5392], rax
                        mov              rax, qword ptr [rbp + 5288]
                        mov              qword ptr [rbp + 5400], rax
                        mov              rax, qword ptr [rbp + 5264]
                        mov              qword ptr [rbp + 5376], rax
                        mov              rax, qword ptr [rbp + 5272]
                        mov              qword ptr [rbp + 5384], rax
                        mov              rax, qword ptr [rbp + 5248]
                        mov              qword ptr [rbp + 5360], rax
                        mov              rax, qword ptr [rbp + 5256]
                        mov              qword ptr [rbp + 5368], rax
                        mov              rax, qword ptr [rbp + 5232]
                        mov              qword ptr [rbp + 5344], rax
                        mov              rax, qword ptr [rbp + 5240]
                        mov              qword ptr [rbp + 5352], rax
                        mov              rax, qword ptr [rbp + 5440]
                        mov              qword ptr [rbp + 5328], rax
                        mov              rax, qword ptr [rbp + 5448]
                        mov              qword ptr [rbp + 5336], rax
                        lea              rdi, [rbp + 5328]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5312], rax
                        mov              qword ptr [rbp + 5320], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n55_var_ref_α
n54_call_β:             mov              r11, 55;                             jmp   zebra$2F1_step
                        .size            n54_call_bx, .-n54_call_bx
                        .type            n55_var_ref_bx, @function
n55_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:          mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6992]
                        mov              qword ptr [rbp + 5456], rax
                        mov              qword ptr [rbp + 5464], rdx;         jmp   n56_call_proc_staged_α
                        .size            n55_var_ref_bx, .-n55_var_ref_bx
                        .type            n56_call_proc_staged_bx, @function
n56_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_call_proc_staged_α: mov              r11, 57
                        mov              qword ptr [rbp + 4976], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_285_200
                        mov              rax, qword ptr [rbp + 5088]
                        mov              rdx, qword ptr [rbp + 5096]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_285_201
.Lcall_proc_staged_α_285_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 5088]
                        mov              rdx, qword ptr [rbp + 5096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_285_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_285_202
                        mov              rax, qword ptr [rbp + 5312]
                        mov              rdx, qword ptr [rbp + 5320]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_285_203
.Lcall_proc_staged_α_285_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 5312]
                        mov              rdx, qword ptr [rbp + 5320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_285_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_285_204
                        mov              rax, qword ptr [rbp + 5456]
                        mov              rdx, qword ptr [rbp + 5464]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_285_205
.Lcall_proc_staged_α_285_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 5456]
                        mov              rdx, qword ptr [rbp + 5464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_285_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_285_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_285_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_285_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_285_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_285_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_285_3:
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_285_21
                        add              rsp, 32
.Lcall_proc_staged_α_285_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_285_2
.Lcall_proc_staged_α_285_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4976], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_285_2
.Lcall_proc_staged_α_285_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_285_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n40_call_proc_staged_β
.Lcall_proc_staged_α_285_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_285_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 4912]
                        mov              rdx, qword ptr [rbp + 4920]
.Lcall_proc_staged_α_285_29:
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx
                        cmp              al, 104;                             je    n40_call_proc_staged_β
                                                                              jmp   n57_lit_string_α
n56_call_proc_staged_β: mov              r11, 57
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_285_22
                        mov              rax, qword ptr [rbp + 4976]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_285_22
                        mov              rcx, qword ptr [rbp + 4984]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_285_22:
                                                                              jmp   n40_call_proc_staged_β
.Lcall_proc_staged_α_285_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx
                        cmp              al, 104;                             je    n40_call_proc_staged_β
                                                                              jmp   n57_lit_string_α
.Lcall_proc_staged_α_285_0:
                        .quad            .Lcall_proc_staged_α_285_0_s
.Lcall_proc_staged_α_285_0_s:
                        .string          "right_of/3"
                        .size            n56_call_proc_staged_bx, .-n56_call_proc_staged_bx
                        .type            n57_lit_string_bx, @function
n57_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              r11, 58
                        mov              qword ptr [rbp + 4880], 2            # result
                        mov              dword ptr [rbp + 4884], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_286_0]
                        mov              qword ptr [rbp + 4888], rax;         jmp   n58_var_ref_α
.Llit_string_α_286_0:   .quad            .Llit_string_α_286_0_s
.Llit_string_α_286_0_s: .string          "house"
                        .size            n57_lit_string_bx, .-n57_lit_string_bx
                        .type            n58_var_ref_bx, @function
n58_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:          mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7808]
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4680], rdx;         jmp   n59_var_ref_α
                        .size            n58_var_ref_bx, .-n58_var_ref_bx
                        .type            n59_var_ref_bx, @function
n59_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:          mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7824]
                        mov              qword ptr [rbp + 4688], rax
                        mov              qword ptr [rbp + 4696], rdx;         jmp   n60_lit_string_α
                        .size            n59_var_ref_bx, .-n59_var_ref_bx
                        .type            n60_lit_string_bx, @function
n60_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              r11, 61
                        mov              qword ptr [rbp + 4704], 2            # result
                        mov              dword ptr [rbp + 4708], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_291_0]
                        mov              qword ptr [rbp + 4712], rax;         jmp   n61_var_ref_α
.Llit_string_α_291_0:   .quad            .Llit_string_α_291_0_s
.Llit_string_α_291_0_s: .string          "snails"
                        .size            n60_lit_string_bx, .-n60_lit_string_bx
                        .type            n61_var_ref_bx, @function
n61_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7840]
                        mov              qword ptr [rbp + 4720], rax
                        mov              qword ptr [rbp + 4728], rdx;         jmp   n62_lit_string_α
                        .size            n61_var_ref_bx, .-n61_var_ref_bx
                        .type            n62_lit_string_bx, @function
n62_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              r11, 63
                        mov              qword ptr [rbp + 4736], 2            # result
                        mov              dword ptr [rbp + 4740], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_294_0]
                        mov              qword ptr [rbp + 4744], rax;         jmp   n63_call_α
.Llit_string_α_294_0:   .quad            .Llit_string_α_294_0_s
.Llit_string_α_294_0_s: .string          "winstons"
                        .size            n62_lit_string_bx, .-n62_lit_string_bx
                        .type            n63_call_bx, @function
n63_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_call_α:             mov              r11, 64
                        mov              rax, qword ptr [rbp + 4736]
                        mov              qword ptr [rbp + 4848], rax
                        mov              rax, qword ptr [rbp + 4744]
                        mov              qword ptr [rbp + 4856], rax
                        mov              rax, qword ptr [rbp + 4720]
                        mov              qword ptr [rbp + 4832], rax
                        mov              rax, qword ptr [rbp + 4728]
                        mov              qword ptr [rbp + 4840], rax
                        mov              rax, qword ptr [rbp + 4704]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 4712]
                        mov              qword ptr [rbp + 4824], rax
                        mov              rax, qword ptr [rbp + 4688]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 4696]
                        mov              qword ptr [rbp + 4808], rax
                        mov              rax, qword ptr [rbp + 4672]
                        mov              qword ptr [rbp + 4784], rax
                        mov              rax, qword ptr [rbp + 4680]
                        mov              qword ptr [rbp + 4792], rax
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 4776], rax
                        lea              rdi, [rbp + 4768]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n64_var_ref_α
n63_call_β:             mov              r11, 64;                             jmp   zebra$2F1_step
                        .size            n63_call_bx, .-n63_call_bx
                        .type            n64_var_ref_bx, @function
n64_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6992]
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx;         jmp   n65_call_proc_staged_α
                        .size            n64_var_ref_bx, .-n64_var_ref_bx
                        .type            n65_call_proc_staged_bx, @function
n65_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_call_proc_staged_α: mov              r11, 66
                        mov              qword ptr [rbp + 4640], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_299_200
                        mov              rax, qword ptr [rbp + 4752]
                        mov              rdx, qword ptr [rbp + 4760]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_299_201
.Lcall_proc_staged_α_299_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 4752]
                        mov              rdx, qword ptr [rbp + 4760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_299_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_299_202
                        mov              rax, qword ptr [rbp + 4896]
                        mov              rdx, qword ptr [rbp + 4904]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_299_203
.Lcall_proc_staged_α_299_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 4896]
                        mov              rdx, qword ptr [rbp + 4904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_299_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_299_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_299_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_299_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_299_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_299_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_299_3:
                        mov              qword ptr [rbp + 4640], rax
                        mov              qword ptr [rbp + 4648], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_299_21
                        add              rsp, 32
.Lcall_proc_staged_α_299_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_299_2
.Lcall_proc_staged_α_299_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4640], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_299_2
.Lcall_proc_staged_α_299_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_299_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n56_call_proc_staged_β
.Lcall_proc_staged_α_299_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_299_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 4592]
                        mov              rdx, qword ptr [rbp + 4600]
.Lcall_proc_staged_α_299_29:
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx
                        cmp              al, 104;                             je    n56_call_proc_staged_β
                                                                              jmp   n66_lit_string_α
n65_call_proc_staged_β: mov              r11, 66
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_299_22
                        mov              rax, qword ptr [rbp + 4640]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_299_22
                        mov              rcx, qword ptr [rbp + 4648]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_299_22:
                                                                              jmp   n56_call_proc_staged_β
.Lcall_proc_staged_α_299_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx
                        cmp              al, 104;                             je    n56_call_proc_staged_β
                                                                              jmp   n66_lit_string_α
.Lcall_proc_staged_α_299_0:
                        .quad            .Lcall_proc_staged_α_299_0_s
.Lcall_proc_staged_α_299_0_s:
                        .string          "my_member/2"
                        .size            n65_call_proc_staged_bx, .-n65_call_proc_staged_bx
                        .type            n66_lit_string_bx, @function
n66_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              r11, 67
                        mov              qword ptr [rbp + 4560], 2            # result
                        mov              dword ptr [rbp + 4564], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_300_0]
                        mov              qword ptr [rbp + 4568], rax;         jmp   n67_lit_string_α
.Llit_string_α_300_0:   .quad            .Llit_string_α_300_0_s
.Llit_string_α_300_0_s: .string          "house"
                        .size            n66_lit_string_bx, .-n66_lit_string_bx
                        .type            n67_lit_string_bx, @function
n67_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              r11, 68
                        mov              qword ptr [rbp + 4352], 2            # result
                        mov              dword ptr [rbp + 4356], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_301_0]
                        mov              qword ptr [rbp + 4360], rax;         jmp   n68_var_ref_α
.Llit_string_α_301_0:   .quad            .Llit_string_α_301_0_s
.Llit_string_α_301_0_s: .string          "yellow"
                        .size            n67_lit_string_bx, .-n67_lit_string_bx
                        .type            n68_var_ref_bx, @function
n68_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7760]
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx;         jmp   n69_var_ref_α
                        .size            n68_var_ref_bx, .-n68_var_ref_bx
                        .type            n69_var_ref_bx, @function
n69_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:          mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7776]
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx;         jmp   n70_var_ref_α
                        .size            n69_var_ref_bx, .-n69_var_ref_bx
                        .type            n70_var_ref_bx, @function
n70_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7792]
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx;         jmp   n71_lit_string_α
                        .size            n70_var_ref_bx, .-n70_var_ref_bx
                        .type            n71_lit_string_bx, @function
n71_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       mov              r11, 72
                        mov              qword ptr [rbp + 4416], 2            # result
                        mov              dword ptr [rbp + 4420], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_308_0]
                        mov              qword ptr [rbp + 4424], rax;         jmp   n72_call_α
.Llit_string_α_308_0:   .quad            .Llit_string_α_308_0_s
.Llit_string_α_308_0_s: .string          "kools"
                        .size            n71_lit_string_bx, .-n71_lit_string_bx
                        .type            n72_call_bx, @function
n72_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_call_α:             mov              r11, 73
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 4528], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 4536], rax
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 4512], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 4520], rax
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4504], rax
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 4480], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 4488], rax
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 4472], rax
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 4456], rax
                        lea              rdi, [rbp + 4448]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n73_var_ref_α
n72_call_β:             mov              r11, 73;                             jmp   zebra$2F1_step
                        .size            n72_call_bx, .-n72_call_bx
                        .type            n73_var_ref_bx, @function
n73_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:          mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6992]
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx;         jmp   n74_call_proc_staged_α
                        .size            n73_var_ref_bx, .-n73_var_ref_bx
                        .type            n74_call_proc_staged_bx, @function
n74_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_call_proc_staged_α: mov              r11, 75
                        mov              qword ptr [rbp + 4320], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_313_200
                        mov              rax, qword ptr [rbp + 4432]
                        mov              rdx, qword ptr [rbp + 4440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_313_201
.Lcall_proc_staged_α_313_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 4432]
                        mov              rdx, qword ptr [rbp + 4440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_313_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_313_202
                        mov              rax, qword ptr [rbp + 4576]
                        mov              rdx, qword ptr [rbp + 4584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_313_203
.Lcall_proc_staged_α_313_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 4576]
                        mov              rdx, qword ptr [rbp + 4584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_313_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_313_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_313_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_313_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_313_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_313_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_313_3:
                        mov              qword ptr [rbp + 4320], rax
                        mov              qword ptr [rbp + 4328], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_313_21
                        add              rsp, 32
.Lcall_proc_staged_α_313_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_313_2
.Lcall_proc_staged_α_313_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4320], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_313_2
.Lcall_proc_staged_α_313_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_313_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n65_call_proc_staged_β
.Lcall_proc_staged_α_313_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_313_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 4272]
                        mov              rdx, qword ptr [rbp + 4280]
.Lcall_proc_staged_α_313_29:
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                        cmp              al, 104;                             je    n65_call_proc_staged_β
                                                                              jmp   n75_var_ref_α
n74_call_proc_staged_β: mov              r11, 75
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_313_22
                        mov              rax, qword ptr [rbp + 4320]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_313_22
                        mov              rcx, qword ptr [rbp + 4328]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_313_22:
                                                                              jmp   n65_call_proc_staged_β
.Lcall_proc_staged_α_313_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                        cmp              al, 104;                             je    n65_call_proc_staged_β
                                                                              jmp   n75_var_ref_α
.Lcall_proc_staged_α_313_0:
                        .quad            .Lcall_proc_staged_α_313_0_s
.Lcall_proc_staged_α_313_0_s:
                        .string          "my_member/2"
                        .size            n74_call_proc_staged_bx, .-n74_call_proc_staged_bx
                        .type            n75_var_ref_bx, @function
n75_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6992]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx;         jmp   n76_lit_string_α
                        .size            n75_var_ref_bx, .-n75_var_ref_bx
                        .type            n76_lit_string_bx, @function
n76_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              r11, 77
                        mov              qword ptr [rbp + 4256], 2            # result
                        mov              dword ptr [rbp + 4260], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_316_0]
                        mov              qword ptr [rbp + 4264], rax;         jmp   n77_var_ref_α
.Llit_string_α_316_0:   .quad            .Llit_string_α_316_0_s
.Llit_string_α_316_0_s: .string          "."
                        .size            n76_lit_string_bx, .-n76_lit_string_bx
                        .type            n77_var_ref_bx, @function
n77_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:          mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7744]
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx;         jmp   n78_lit_string_α
                        .size            n77_var_ref_bx, .-n77_var_ref_bx
                        .type            n78_lit_string_bx, @function
n78_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       mov              r11, 79
                        mov              qword ptr [rbp + 4144], 2            # result
                        mov              dword ptr [rbp + 4148], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_319_0]
                        mov              qword ptr [rbp + 4152], rax;         jmp   n79_var_ref_α
.Llit_string_α_319_0:   .quad            .Llit_string_α_319_0_s
.Llit_string_α_319_0_s: .string          "."
                        .size            n78_lit_string_bx, .-n78_lit_string_bx
                        .type            n79_var_ref_bx, @function
n79_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:          mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7728]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx;         jmp   n80_lit_string_α
                        .size            n79_var_ref_bx, .-n79_var_ref_bx
                        .type            n80_lit_string_bx, @function
n80_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       mov              r11, 81
                        mov              qword ptr [rbp + 4032], 2            # result
                        mov              dword ptr [rbp + 4036], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_322_0]
                        mov              qword ptr [rbp + 4040], rax;         jmp   n81_lit_string_α
.Llit_string_α_322_0:   .quad            .Llit_string_α_322_0_s
.Llit_string_α_322_0_s: .string          "."
                        .size            n80_lit_string_bx, .-n80_lit_string_bx
                        .type            n81_lit_string_bx, @function
n81_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       mov              r11, 82
                        mov              qword ptr [rbp + 3936], 2            # result
                        mov              dword ptr [rbp + 3940], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_323_0]
                        mov              qword ptr [rbp + 3944], rax;         jmp   n82_var_ref_α
.Llit_string_α_323_0:   .quad            .Llit_string_α_323_0_s
.Llit_string_α_323_0_s: .string          "house"
                        .size            n81_lit_string_bx, .-n81_lit_string_bx
                        .type            n82_var_ref_bx, @function
n82_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7664]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx;         jmp   n83_var_ref_α
                        .size            n82_var_ref_bx, .-n82_var_ref_bx
                        .type            n83_var_ref_bx, @function
n83_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7680]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx;         jmp   n84_var_ref_α
                        .size            n83_var_ref_bx, .-n83_var_ref_bx
                        .type            n84_var_ref_bx, @function
n84_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7696]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx;         jmp   n85_lit_string_α
                        .size            n84_var_ref_bx, .-n84_var_ref_bx
                        .type            n85_lit_string_bx, @function
n85_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              r11, 86
                        mov              qword ptr [rbp + 3776], 2            # result
                        mov              dword ptr [rbp + 3780], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_330_0]
                        mov              qword ptr [rbp + 3784], rax;         jmp   n86_var_ref_α
.Llit_string_α_330_0:   .quad            .Llit_string_α_330_0_s
.Llit_string_α_330_0_s: .string          "milk"
                        .size            n85_lit_string_bx, .-n85_lit_string_bx
                        .type            n86_var_ref_bx, @function
n86_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7712]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx;         jmp   n87_call_α
                        .size            n86_var_ref_bx, .-n86_var_ref_bx
                        .type            n87_call_bx, @function
n87_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_call_α:             mov              r11, 88
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3912], rax
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3896], rax
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3880], rax
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3864], rax
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 3848], rax
                        mov              rax, qword ptr [rbp + 3936]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3944]
                        mov              qword ptr [rbp + 3832], rax
                        lea              rdi, [rbp + 3824]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx
                        cmp              al, 104;                             je    zebra$2F1_ω
                                                                              jmp   n88_lit_string_α
n87_call_β:             mov              r11, 88;                             jmp   zebra$2F1_ω
                        .size            n87_call_bx, .-n87_call_bx
                        .type            n88_lit_string_bx, @function
n88_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       mov              r11, 89
                        mov              qword ptr [rbp + 3712], 2            # result
                        mov              dword ptr [rbp + 3716], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_334_0]
                        mov              qword ptr [rbp + 3720], rax;         jmp   n89_var_ref_α
.Llit_string_α_334_0:   .quad            .Llit_string_α_334_0_s
.Llit_string_α_334_0_s: .string          "."
                        .size            n88_lit_string_bx, .-n88_lit_string_bx
                        .type            n89_var_ref_bx, @function
n89_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7648]
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx;         jmp   n90_lit_string_α
                        .size            n89_var_ref_bx, .-n89_var_ref_bx
                        .type            n90_lit_string_bx, @function
n90_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       mov              r11, 91
                        mov              qword ptr [rbp + 3600], 2            # result
                        mov              dword ptr [rbp + 3604], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_337_0]
                        mov              qword ptr [rbp + 3608], rax;         jmp   n91_var_ref_α
.Llit_string_α_337_0:   .quad            .Llit_string_α_337_0_s
.Llit_string_α_337_0_s: .string          "."
                        .size            n90_lit_string_bx, .-n90_lit_string_bx
                        .type            n91_var_ref_bx, @function
n91_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7632]
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx;         jmp   n92_lit_string_α
                        .size            n91_var_ref_bx, .-n91_var_ref_bx
                        .type            n92_lit_string_bx, @function
n92_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:       mov              r11, 93
                        mov              qword ptr [rbp + 3488], 2            # result
                        mov              dword ptr [rbp + 3492], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_340_0]
                        mov              qword ptr [rbp + 3496], rax;         jmp   n93_call_α
.Llit_string_α_340_0:   .quad            .Llit_string_α_340_0_s
.Llit_string_α_340_0_s: .string          "[]"
                        .size            n92_lit_string_bx, .-n92_lit_string_bx
                        .type            n93_call_bx, @function
n93_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_call_α:             mov              r11, 94
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3496]
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
                        cmp              al, 104;                             je    zebra$2F1_ω
                                                                              jmp   n94_call_α
n93_call_β:             mov              r11, 94;                             jmp   zebra$2F1_ω
                        .size            n93_call_bx, .-n93_call_bx
                        .type            n94_call_bx, @function
n94_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_call_α:             mov              r11, 95
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
                        cmp              al, 104;                             je    zebra$2F1_ω
                                                                              jmp   n95_call_α
n94_call_β:             mov              r11, 95;                             jmp   zebra$2F1_ω
                        .size            n94_call_bx, .-n94_call_bx
                        .type            n95_call_bx, @function
n95_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_call_α:             mov              r11, 96
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 4008], rax
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 3992], rax
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 3976], rax
                        lea              rdi, [rbp + 3968]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              al, 104;                             je    zebra$2F1_ω
                                                                              jmp   n96_call_α
n95_call_β:             mov              r11, 96;                             jmp   zebra$2F1_ω
                        .size            n95_call_bx, .-n95_call_bx
                        .type            n96_call_bx, @function
n96_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_call_α:             mov              r11, 97
                        mov              rax, qword ptr [rbp + 3952]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 4120], rax
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 4104], rax
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 4080], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 4088], rax
                        lea              rdi, [rbp + 4080]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                        cmp              al, 104;                             je    zebra$2F1_ω
                                                                              jmp   n97_call_α
n96_call_β:             mov              r11, 97;                             jmp   zebra$2F1_ω
                        .size            n96_call_bx, .-n96_call_bx
                        .type            n97_call_bx, @function
n97_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_call_α:             mov              r11, 98
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 4232], rax
                        mov              rax, qword ptr [rbp + 4160]
                        mov              qword ptr [rbp + 4208], rax
                        mov              rax, qword ptr [rbp + 4168]
                        mov              qword ptr [rbp + 4216], rax
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4200], rax
                        lea              rdi, [rbp + 4192]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4176], rax
                        mov              qword ptr [rbp + 4184], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n98_call_α
n97_call_β:             mov              r11, 98;                             jmp   zebra$2F1_step
                        .size            n97_call_bx, .-n97_call_bx
                        .type            n98_call_bx, @function
n98_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_call_α:             mov              r11, 99
                        mov              rax, qword ptr [rbp + 4176]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 3448], rax
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3432], rax
                        lea              rdi, [rbp + 3424]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        cmp              al, 104;                             je    n74_call_proc_staged_β
                                                                              jmp   n99_var_ref_α
n98_call_β:             mov              r11, 99;                             jmp   n74_call_proc_staged_β
                        .size            n98_call_bx, .-n98_call_bx
                        .type            n99_var_ref_bx, @function
n99_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:          mov              r11, 100
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6992]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx;         jmp   n100_lit_string_α
                        .size            n99_var_ref_bx, .-n99_var_ref_bx
                        .type            n100_lit_string_bx, @function
n100_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:      mov              r11, 101
                        mov              qword ptr [rbp + 3392], 2            # result
                        mov              dword ptr [rbp + 3396], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_349_0]
                        mov              qword ptr [rbp + 3400], rax;         jmp   n101_lit_string_α
.Llit_string_α_349_0:   .quad            .Llit_string_α_349_0_s
.Llit_string_α_349_0_s: .string          "."
                        .size            n100_lit_string_bx, .-n100_lit_string_bx
                        .type            n101_lit_string_bx, @function
n101_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      mov              r11, 102
                        mov              qword ptr [rbp + 3296], 2            # result
                        mov              dword ptr [rbp + 3300], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_350_0]
                        mov              qword ptr [rbp + 3304], rax;         jmp   n102_var_ref_α
.Llit_string_α_350_0:   .quad            .Llit_string_α_350_0_s
.Llit_string_α_350_0_s: .string          "house"
                        .size            n101_lit_string_bx, .-n101_lit_string_bx
                        .type            n102_var_ref_bx, @function
n102_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7568]
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx;         jmp   n103_lit_string_α
                        .size            n102_var_ref_bx, .-n102_var_ref_bx
                        .type            n103_lit_string_bx, @function
n103_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:      mov              r11, 104
                        mov              qword ptr [rbp + 3104], 2            # result
                        mov              dword ptr [rbp + 3108], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_353_0]
                        mov              qword ptr [rbp + 3112], rax;         jmp   n104_var_ref_α
.Llit_string_α_353_0:   .quad            .Llit_string_α_353_0_s
.Llit_string_α_353_0_s: .string          "norwegian"
                        .size            n103_lit_string_bx, .-n103_lit_string_bx
                        .type            n104_var_ref_bx, @function
n104_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_var_ref_α:         mov              r11, 105
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx;         jmp   n105_var_ref_α
                        .size            n104_var_ref_bx, .-n104_var_ref_bx
                        .type            n105_var_ref_bx, @function
n105_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx;         jmp   n106_var_ref_α
                        .size            n105_var_ref_bx, .-n105_var_ref_bx
                        .type            n106_var_ref_bx, @function
n106_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx;         jmp   n107_call_α
                        .size            n106_var_ref_bx, .-n106_var_ref_bx
                        .type            n107_call_bx, @function
n107_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_call_α:            mov              r11, 108
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3272], rax
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3256], rax
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3224], rax
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3208], rax
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3184], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3192], rax
                        lea              rdi, [rbp + 3184]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                        cmp              al, 104;                             je    zebra$2F1_ω
                                                                              jmp   n108_var_ref_α
n107_call_β:            mov              r11, 108;                            jmp   zebra$2F1_ω
                        .size            n107_call_bx, .-n107_call_bx
                        .type            n108_var_ref_bx, @function
n108_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx;         jmp   n109_call_α
                        .size            n108_var_ref_bx, .-n108_var_ref_bx
                        .type            n109_call_bx, @function
n109_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_call_α:            mov              r11, 110
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3368], rax
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3352], rax
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3336], rax
                        lea              rdi, [rbp + 3328]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n110_call_α
n109_call_β:            mov              r11, 110;                            jmp   zebra$2F1_step
                        .size            n109_call_bx, .-n109_call_bx
                        .type            n110_call_bx, @function
n110_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_call_α:            mov              r11, 111
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3320]
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
                        cmp              al, 104;                             je    n74_call_proc_staged_β
                                                                              jmp   n111_lit_string_α
n110_call_β:            mov              r11, 111;                            jmp   n74_call_proc_staged_β
                        .size            n110_call_bx, .-n110_call_bx
                        .type            n111_lit_string_bx, @function
n111_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:      mov              r11, 112
                        mov              qword ptr [rbp + 2736], 2            # result
                        mov              dword ptr [rbp + 2740], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_365_0]
                        mov              qword ptr [rbp + 2744], rax;         jmp   n112_var_ref_α
.Llit_string_α_365_0:   .quad            .Llit_string_α_365_0_s
.Llit_string_α_365_0_s: .string          "house"
                        .size            n111_lit_string_bx, .-n111_lit_string_bx
                        .type            n112_var_ref_bx, @function
n112_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:         mov              r11, 113
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7424]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx;         jmp   n113_var_ref_α
                        .size            n112_var_ref_bx, .-n112_var_ref_bx
                        .type            n113_var_ref_bx, @function
n113_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7440]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n114_var_ref_α
                        .size            n113_var_ref_bx, .-n113_var_ref_bx
                        .type            n114_var_ref_bx, @function
n114_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7456]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx;         jmp   n115_var_ref_α
                        .size            n114_var_ref_bx, .-n114_var_ref_bx
                        .type            n115_var_ref_bx, @function
n115_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7472]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx;         jmp   n116_lit_string_α
                        .size            n115_var_ref_bx, .-n115_var_ref_bx
                        .type            n116_lit_string_bx, @function
n116_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:      mov              r11, 117
                        mov              qword ptr [rbp + 2592], 2            # result
                        mov              dword ptr [rbp + 2596], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_374_0]
                        mov              qword ptr [rbp + 2600], rax;         jmp   n117_call_α
.Llit_string_α_374_0:   .quad            .Llit_string_α_374_0_s
.Llit_string_α_374_0_s: .string          "chesterfields"
                        .size            n116_lit_string_bx, .-n116_lit_string_bx
                        .type            n117_call_bx, @function
n117_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_call_α:            mov              r11, 118
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2712], rax
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2696], rax
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2680], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2664], rax
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2648], rax
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2632], rax
                        lea              rdi, [rbp + 2624]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n118_lit_string_α
n117_call_β:            mov              r11, 118;                            jmp   zebra$2F1_step
                        .size            n117_call_bx, .-n117_call_bx
                        .type            n118_lit_string_bx, @function
n118_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:      mov              r11, 119
                        mov              qword ptr [rbp + 2960], 2            # result
                        mov              dword ptr [rbp + 2964], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_376_0]
                        mov              qword ptr [rbp + 2968], rax;         jmp   n119_var_ref_α
.Llit_string_α_376_0:   .quad            .Llit_string_α_376_0_s
.Llit_string_α_376_0_s: .string          "house"
                        .size            n118_lit_string_bx, .-n118_lit_string_bx
                        .type            n119_var_ref_bx, @function
n119_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7488]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx;         jmp   n120_var_ref_α
                        .size            n119_var_ref_bx, .-n119_var_ref_bx
                        .type            n120_var_ref_bx, @function
n120_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7504]
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx;         jmp   n121_lit_string_α
                        .size            n120_var_ref_bx, .-n120_var_ref_bx
                        .type            n121_lit_string_bx, @function
n121_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:      mov              r11, 122
                        mov              qword ptr [rbp + 2784], 2            # result
                        mov              dword ptr [rbp + 2788], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_381_0]
                        mov              qword ptr [rbp + 2792], rax;         jmp   n122_var_ref_α
.Llit_string_α_381_0:   .quad            .Llit_string_α_381_0_s
.Llit_string_α_381_0_s: .string          "fox"
                        .size            n121_lit_string_bx, .-n121_lit_string_bx
                        .type            n122_var_ref_bx, @function
n122_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:         mov              r11, 123
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7520]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx;         jmp   n123_var_ref_α
                        .size            n122_var_ref_bx, .-n122_var_ref_bx
                        .type            n123_var_ref_bx, @function
n123_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7536]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx;         jmp   n124_call_α
                        .size            n123_var_ref_bx, .-n123_var_ref_bx
                        .type            n124_call_bx, @function
n124_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_call_α:            mov              r11, 125
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2936], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2920], rax
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2904], rax
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2888], rax
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2872], rax
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2856], rax
                        lea              rdi, [rbp + 2848]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n125_var_ref_α
n124_call_β:            mov              r11, 125;                            jmp   zebra$2F1_step
                        .size            n124_call_bx, .-n124_call_bx
                        .type            n125_var_ref_bx, @function
n125_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:         mov              r11, 126
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6992]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx;         jmp   n126_call_proc_staged_α
                        .size            n125_var_ref_bx, .-n125_var_ref_bx
                        .type            n126_call_proc_staged_bx, @function
n126_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_call_proc_staged_α:
                        mov              r11, 127
                        mov              qword ptr [rbp + 2496], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_390_200
                        mov              rax, qword ptr [rbp + 2608]
                        mov              rdx, qword ptr [rbp + 2616]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_390_201
.Lcall_proc_staged_α_390_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2608]
                        mov              rdx, qword ptr [rbp + 2616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_390_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_390_202
                        mov              rax, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_390_203
.Lcall_proc_staged_α_390_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_390_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_390_204
                        mov              rax, qword ptr [rbp + 2976]
                        mov              rdx, qword ptr [rbp + 2984]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_390_205
.Lcall_proc_staged_α_390_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2976]
                        mov              rdx, qword ptr [rbp + 2984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_390_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_390_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_390_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_390_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_390_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_390_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_390_3:
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_390_21
                        add              rsp, 32
.Lcall_proc_staged_α_390_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_390_2
.Lcall_proc_staged_α_390_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2496], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_390_2
.Lcall_proc_staged_α_390_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_390_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n74_call_proc_staged_β
.Lcall_proc_staged_α_390_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_390_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2432]
                        mov              rdx, qword ptr [rbp + 2440]
.Lcall_proc_staged_α_390_29:
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              al, 104;                             je    n74_call_proc_staged_β
                                                                              jmp   n127_lit_string_α
n126_call_proc_staged_β:
                        mov              r11, 127
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_390_22
                        mov              rax, qword ptr [rbp + 2496]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_390_22
                        mov              rcx, qword ptr [rbp + 2504]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_390_22:
                                                                              jmp   n74_call_proc_staged_β
.Lcall_proc_staged_α_390_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              al, 104;                             je    n74_call_proc_staged_β
                                                                              jmp   n127_lit_string_α
.Lcall_proc_staged_α_390_0:
                        .quad            .Lcall_proc_staged_α_390_0_s
.Lcall_proc_staged_α_390_0_s:
                        .string          "next_to/3"
                        .size            n126_call_proc_staged_bx, .-n126_call_proc_staged_bx
                        .type            n127_lit_string_bx, @function
n127_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rbp + 2176], 2            # result
                        mov              dword ptr [rbp + 2180], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_391_0]
                        mov              qword ptr [rbp + 2184], rax;         jmp   n128_var_ref_α
.Llit_string_α_391_0:   .quad            .Llit_string_α_391_0_s
.Llit_string_α_391_0_s: .string          "house"
                        .size            n127_lit_string_bx, .-n127_lit_string_bx
                        .type            n128_var_ref_bx, @function
n128_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              r11, 129
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7296]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx;         jmp   n129_var_ref_α
                        .size            n128_var_ref_bx, .-n128_var_ref_bx
                        .type            n129_var_ref_bx, @function
n129_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              r11, 130
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7312]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx;         jmp   n130_var_ref_α
                        .size            n129_var_ref_bx, .-n129_var_ref_bx
                        .type            n130_var_ref_bx, @function
n130_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7328]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx;         jmp   n131_var_ref_α
                        .size            n130_var_ref_bx, .-n130_var_ref_bx
                        .type            n131_var_ref_bx, @function
n131_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:         mov              r11, 132
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7344]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx;         jmp   n132_lit_string_α
                        .size            n131_var_ref_bx, .-n131_var_ref_bx
                        .type            n132_lit_string_bx, @function
n132_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:      mov              r11, 133
                        mov              qword ptr [rbp + 2032], 2            # result
                        mov              dword ptr [rbp + 2036], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_400_0]
                        mov              qword ptr [rbp + 2040], rax;         jmp   n133_call_α
.Llit_string_α_400_0:   .quad            .Llit_string_α_400_0_s
.Llit_string_α_400_0_s: .string          "kools"
                        .size            n132_lit_string_bx, .-n132_lit_string_bx
                        .type            n133_call_bx, @function
n133_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_call_α:            mov              r11, 134
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2072], rax
                        lea              rdi, [rbp + 2064]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n134_lit_string_α
n133_call_β:            mov              r11, 134;                            jmp   zebra$2F1_step
                        .size            n133_call_bx, .-n133_call_bx
                        .type            n134_lit_string_bx, @function
n134_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:      mov              r11, 135
                        mov              qword ptr [rbp + 2400], 2            # result
                        mov              dword ptr [rbp + 2404], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_402_0]
                        mov              qword ptr [rbp + 2408], rax;         jmp   n135_var_ref_α
.Llit_string_α_402_0:   .quad            .Llit_string_α_402_0_s
.Llit_string_α_402_0_s: .string          "house"
                        .size            n134_lit_string_bx, .-n134_lit_string_bx
                        .type            n135_var_ref_bx, @function
n135_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7360]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx;         jmp   n136_var_ref_α
                        .size            n135_var_ref_bx, .-n135_var_ref_bx
                        .type            n136_var_ref_bx, @function
n136_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7376]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx;         jmp   n137_lit_string_α
                        .size            n136_var_ref_bx, .-n136_var_ref_bx
                        .type            n137_lit_string_bx, @function
n137_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:      mov              r11, 138
                        mov              qword ptr [rbp + 2224], 2            # result
                        mov              dword ptr [rbp + 2228], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_407_0]
                        mov              qword ptr [rbp + 2232], rax;         jmp   n138_var_ref_α
.Llit_string_α_407_0:   .quad            .Llit_string_α_407_0_s
.Llit_string_α_407_0_s: .string          "horse"
                        .size            n137_lit_string_bx, .-n137_lit_string_bx
                        .type            n138_var_ref_bx, @function
n138_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7392]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n139_var_ref_α
                        .size            n138_var_ref_bx, .-n138_var_ref_bx
                        .type            n139_var_ref_bx, @function
n139_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7408]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx;         jmp   n140_call_α
                        .size            n139_var_ref_bx, .-n139_var_ref_bx
                        .type            n140_call_bx, @function
n140_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_call_α:            mov              r11, 141
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2344], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2328], rax
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2312], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2296], rax
                        lea              rdi, [rbp + 2288]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n141_var_ref_α
n140_call_β:            mov              r11, 141;                            jmp   zebra$2F1_step
                        .size            n140_call_bx, .-n140_call_bx
                        .type            n141_var_ref_bx, @function
n141_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6992]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx;         jmp   n142_call_proc_staged_α
                        .size            n141_var_ref_bx, .-n141_var_ref_bx
                        .type            n142_call_proc_staged_bx, @function
n142_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_call_proc_staged_α:
                        mov              r11, 143
                        mov              qword ptr [rbp + 1936], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_416_200
                        mov              rax, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_416_201
.Lcall_proc_staged_α_416_200:
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
.Lcall_proc_staged_α_416_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_416_202
                        mov              rax, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_416_203
.Lcall_proc_staged_α_416_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_416_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_416_204
                        mov              rax, qword ptr [rbp + 2416]
                        mov              rdx, qword ptr [rbp + 2424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_416_205
.Lcall_proc_staged_α_416_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2416]
                        mov              rdx, qword ptr [rbp + 2424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_416_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_416_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_416_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_416_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_416_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_416_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_416_3:
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_416_21
                        add              rsp, 32
.Lcall_proc_staged_α_416_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_416_2
.Lcall_proc_staged_α_416_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1936], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_416_2
.Lcall_proc_staged_α_416_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_416_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n126_call_proc_staged_β
.Lcall_proc_staged_α_416_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_416_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
.Lcall_proc_staged_α_416_29:
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              al, 104;                             je    n126_call_proc_staged_β
                                                                              jmp   n143_lit_string_α
n142_call_proc_staged_β:
                        mov              r11, 143
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_416_22
                        mov              rax, qword ptr [rbp + 1936]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_416_22
                        mov              rcx, qword ptr [rbp + 1944]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_416_22:
                                                                              jmp   n126_call_proc_staged_β
.Lcall_proc_staged_α_416_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              al, 104;                             je    n126_call_proc_staged_β
                                                                              jmp   n143_lit_string_α
.Lcall_proc_staged_α_416_0:
                        .quad            .Lcall_proc_staged_α_416_0_s
.Lcall_proc_staged_α_416_0_s:
                        .string          "next_to/3"
                        .size            n142_call_proc_staged_bx, .-n142_call_proc_staged_bx
                        .type            n143_lit_string_bx, @function
n143_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:      mov              r11, 144
                        mov              qword ptr [rbp + 1840], 2            # result
                        mov              dword ptr [rbp + 1844], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_417_0]
                        mov              qword ptr [rbp + 1848], rax;         jmp   n144_var_ref_α
.Llit_string_α_417_0:   .quad            .Llit_string_α_417_0_s
.Llit_string_α_417_0_s: .string          "house"
                        .size            n143_lit_string_bx, .-n143_lit_string_bx
                        .type            n144_var_ref_bx, @function
n144_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7248]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx;         jmp   n145_var_ref_α
                        .size            n144_var_ref_bx, .-n144_var_ref_bx
                        .type            n145_var_ref_bx, @function
n145_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7264]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx;         jmp   n146_var_ref_α
                        .size            n145_var_ref_bx, .-n145_var_ref_bx
                        .type            n146_var_ref_bx, @function
n146_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:         mov              r11, 147
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7280]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx;         jmp   n147_lit_string_α
                        .size            n146_var_ref_bx, .-n146_var_ref_bx
                        .type            n147_lit_string_bx, @function
n147_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:      mov              r11, 148
                        mov              qword ptr [rbp + 1680], 2            # result
                        mov              dword ptr [rbp + 1684], 12
                        mov              rax, qword ptr [rip + .Llit_string_α_424_0]
                        mov              qword ptr [rbp + 1688], rax;         jmp   n148_lit_string_α
.Llit_string_α_424_0:   .quad            .Llit_string_α_424_0_s
.Llit_string_α_424_0_s: .string          "orange_juice"
                        .size            n147_lit_string_bx, .-n147_lit_string_bx
                        .type            n148_lit_string_bx, @function
n148_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:      mov              r11, 149
                        mov              qword ptr [rbp + 1696], 2            # result
                        mov              dword ptr [rbp + 1700], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_425_0]
                        mov              qword ptr [rbp + 1704], rax;         jmp   n149_call_α
.Llit_string_α_425_0:   .quad            .Llit_string_α_425_0_s
.Llit_string_α_425_0_s: .string          "lucky_strikes"
                        .size            n148_lit_string_bx, .-n148_lit_string_bx
                        .type            n149_call_bx, @function
n149_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_call_α:            mov              r11, 150
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1736], rax
                        lea              rdi, [rbp + 1728]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n150_var_ref_α
n149_call_β:            mov              r11, 150;                            jmp   zebra$2F1_step
                        .size            n149_call_bx, .-n149_call_bx
                        .type            n150_var_ref_bx, @function
n150_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6992]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx;         jmp   n151_call_proc_staged_α
                        .size            n150_var_ref_bx, .-n150_var_ref_bx
                        .type            n151_call_proc_staged_bx, @function
n151_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_call_proc_staged_α:
                        mov              r11, 152
                        mov              qword ptr [rbp + 1600], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_430_200
                        mov              rax, qword ptr [rbp + 1712]
                        mov              rdx, qword ptr [rbp + 1720]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_430_201
.Lcall_proc_staged_α_430_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1712]
                        mov              rdx, qword ptr [rbp + 1720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_430_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_430_202
                        mov              rax, qword ptr [rbp + 1856]
                        mov              rdx, qword ptr [rbp + 1864]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_430_203
.Lcall_proc_staged_α_430_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1856]
                        mov              rdx, qword ptr [rbp + 1864]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_430_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_430_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_430_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_430_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_430_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_430_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_430_3:
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_430_21
                        add              rsp, 32
.Lcall_proc_staged_α_430_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_430_2
.Lcall_proc_staged_α_430_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1600], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_430_2
.Lcall_proc_staged_α_430_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_430_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n142_call_proc_staged_β
.Lcall_proc_staged_α_430_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_430_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
.Lcall_proc_staged_α_430_29:
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              al, 104;                             je    n142_call_proc_staged_β
                                                                              jmp   n152_lit_string_α
n151_call_proc_staged_β:
                        mov              r11, 152
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_430_22
                        mov              rax, qword ptr [rbp + 1600]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_430_22
                        mov              rcx, qword ptr [rbp + 1608]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_430_22:
                                                                              jmp   n142_call_proc_staged_β
.Lcall_proc_staged_α_430_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              al, 104;                             je    n142_call_proc_staged_β
                                                                              jmp   n152_lit_string_α
.Lcall_proc_staged_α_430_0:
                        .quad            .Lcall_proc_staged_α_430_0_s
.Lcall_proc_staged_α_430_0_s:
                        .string          "my_member/2"
                        .size            n151_call_proc_staged_bx, .-n151_call_proc_staged_bx
                        .type            n152_lit_string_bx, @function
n152_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:      mov              r11, 153
                        mov              qword ptr [rbp + 1520], 2            # result
                        mov              dword ptr [rbp + 1524], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_431_0]
                        mov              qword ptr [rbp + 1528], rax;         jmp   n153_var_ref_α
.Llit_string_α_431_0:   .quad            .Llit_string_α_431_0_s
.Llit_string_α_431_0_s: .string          "house"
                        .size            n152_lit_string_bx, .-n152_lit_string_bx
                        .type            n153_var_ref_bx, @function
n153_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:         mov              r11, 154
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7200]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx;         jmp   n154_lit_string_α
                        .size            n153_var_ref_bx, .-n153_var_ref_bx
                        .type            n154_lit_string_bx, @function
n154_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:      mov              r11, 155
                        mov              qword ptr [rbp + 1328], 2            # result
                        mov              dword ptr [rbp + 1332], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_434_0]
                        mov              qword ptr [rbp + 1336], rax;         jmp   n155_var_ref_α
.Llit_string_α_434_0:   .quad            .Llit_string_α_434_0_s
.Llit_string_α_434_0_s: .string          "japanese"
                        .size            n154_lit_string_bx, .-n154_lit_string_bx
                        .type            n155_var_ref_bx, @function
n155_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:         mov              r11, 156
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7216]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx;         jmp   n156_var_ref_α
                        .size            n155_var_ref_bx, .-n155_var_ref_bx
                        .type            n156_var_ref_bx, @function
n156_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:         mov              r11, 157
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7232]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n157_lit_string_α
                        .size            n156_var_ref_bx, .-n156_var_ref_bx
                        .type            n157_lit_string_bx, @function
n157_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:      mov              r11, 158
                        mov              qword ptr [rbp + 1376], 2            # result
                        mov              dword ptr [rbp + 1380], 11
                        mov              rax, qword ptr [rip + .Llit_string_α_439_0]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n158_call_α
.Llit_string_α_439_0:   .quad            .Llit_string_α_439_0_s
.Llit_string_α_439_0_s: .string          "parliaments"
                        .size            n157_lit_string_bx, .-n157_lit_string_bx
                        .type            n158_call_bx, @function
n158_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_call_α:            mov              r11, 159
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1408]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n159_var_ref_α
n158_call_β:            mov              r11, 159;                            jmp   zebra$2F1_step
                        .size            n158_call_bx, .-n158_call_bx
                        .type            n159_var_ref_bx, @function
n159_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:         mov              r11, 160
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6992]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx;         jmp   n160_call_proc_staged_α
                        .size            n159_var_ref_bx, .-n159_var_ref_bx
                        .type            n160_call_proc_staged_bx, @function
n160_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_call_proc_staged_α:
                        mov              r11, 161
                        mov              qword ptr [rbp + 1280], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_444_200
                        mov              rax, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_444_201
.Lcall_proc_staged_α_444_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_444_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_444_202
                        mov              rax, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_444_203
.Lcall_proc_staged_α_444_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_444_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_444_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_444_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_444_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_444_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_444_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_444_3:
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_444_21
                        add              rsp, 32
.Lcall_proc_staged_α_444_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_444_2
.Lcall_proc_staged_α_444_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1280], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_444_2
.Lcall_proc_staged_α_444_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_444_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n151_call_proc_staged_β
.Lcall_proc_staged_α_444_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_444_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1232]
                        mov              rdx, qword ptr [rbp + 1240]
.Lcall_proc_staged_α_444_29:
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              al, 104;                             je    n151_call_proc_staged_β
                                                                              jmp   n161_lit_string_α
n160_call_proc_staged_β:
                        mov              r11, 161
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_444_22
                        mov              rax, qword ptr [rbp + 1280]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_444_22
                        mov              rcx, qword ptr [rbp + 1288]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_444_22:
                                                                              jmp   n151_call_proc_staged_β
.Lcall_proc_staged_α_444_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              al, 104;                             je    n151_call_proc_staged_β
                                                                              jmp   n161_lit_string_α
.Lcall_proc_staged_α_444_0:
                        .quad            .Lcall_proc_staged_α_444_0_s
.Lcall_proc_staged_α_444_0_s:
                        .string          "my_member/2"
                        .size            n160_call_proc_staged_bx, .-n160_call_proc_staged_bx
                        .type            n161_lit_string_bx, @function
n161_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:      mov              r11, 162
                        mov              qword ptr [rbp + 976], 2             # result
                        mov              dword ptr [rbp + 980], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_445_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n162_var_ref_α
.Llit_string_α_445_0:   .quad            .Llit_string_α_445_0_s
.Llit_string_α_445_0_s: .string          "house"
                        .size            n161_lit_string_bx, .-n161_lit_string_bx
                        .type            n162_var_ref_bx, @function
n162_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:         mov              r11, 163
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7072]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n163_lit_string_α
                        .size            n162_var_ref_bx, .-n162_var_ref_bx
                        .type            n163_lit_string_bx, @function
n163_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:      mov              r11, 164
                        mov              qword ptr [rbp + 784], 2             # result
                        mov              dword ptr [rbp + 788], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_448_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n164_var_ref_α
.Llit_string_α_448_0:   .quad            .Llit_string_α_448_0_s
.Llit_string_α_448_0_s: .string          "norwegian"
                        .size            n163_lit_string_bx, .-n163_lit_string_bx
                        .type            n164_var_ref_bx, @function
n164_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              r11, 165
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7088]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n165_var_ref_α
                        .size            n164_var_ref_bx, .-n164_var_ref_bx
                        .type            n165_var_ref_bx, @function
n165_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:         mov              r11, 166
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7104]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n166_var_ref_α
                        .size            n165_var_ref_bx, .-n165_var_ref_bx
                        .type            n166_var_ref_bx, @function
n166_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7120]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n167_call_α
                        .size            n166_var_ref_bx, .-n166_var_ref_bx
                        .type            n167_call_bx, @function
n167_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_call_α:            mov              r11, 168
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n168_lit_string_α
n167_call_β:            mov              r11, 168;                            jmp   zebra$2F1_step
                        .size            n167_call_bx, .-n167_call_bx
                        .type            n168_lit_string_bx, @function
n168_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:      mov              r11, 169
                        mov              qword ptr [rbp + 1200], 2            # result
                        mov              dword ptr [rbp + 1204], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_456_0]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n169_lit_string_α
.Llit_string_α_456_0:   .quad            .Llit_string_α_456_0_s
.Llit_string_α_456_0_s: .string          "house"
                        .size            n168_lit_string_bx, .-n168_lit_string_bx
                        .type            n169_lit_string_bx, @function
n169_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:      mov              r11, 170
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_457_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n170_var_ref_α
.Llit_string_α_457_0:   .quad            .Llit_string_α_457_0_s
.Llit_string_α_457_0_s: .string          "blue"
                        .size            n169_lit_string_bx, .-n169_lit_string_bx
                        .type            n170_var_ref_bx, @function
n170_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:         mov              r11, 171
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7136]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n171_var_ref_α
                        .size            n170_var_ref_bx, .-n170_var_ref_bx
                        .type            n171_var_ref_bx, @function
n171_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:         mov              r11, 172
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7152]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx;         jmp   n172_var_ref_α
                        .size            n171_var_ref_bx, .-n171_var_ref_bx
                        .type            n172_var_ref_bx, @function
n172_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:         mov              r11, 173
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7168]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n173_var_ref_α
                        .size            n172_var_ref_bx, .-n172_var_ref_bx
                        .type            n173_var_ref_bx, @function
n173_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:         mov              r11, 174
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7184]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n174_call_α
                        .size            n173_var_ref_bx, .-n173_var_ref_bx
                        .type            n174_call_bx, @function
n174_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_call_α:            mov              r11, 175
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1088]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n175_var_ref_α
n174_call_β:            mov              r11, 175;                            jmp   zebra$2F1_step
                        .size            n174_call_bx, .-n174_call_bx
                        .type            n175_var_ref_bx, @function
n175_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:         mov              r11, 176
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6992]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n176_call_proc_staged_α
                        .size            n175_var_ref_bx, .-n175_var_ref_bx
                        .type            n176_call_proc_staged_bx, @function
n176_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_call_proc_staged_α:
                        mov              r11, 177
                        mov              qword ptr [rbp + 736], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_470_200
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_470_201
.Lcall_proc_staged_α_470_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_470_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_470_202
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_470_203
.Lcall_proc_staged_α_470_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_470_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_470_204
                        mov              rax, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_470_205
.Lcall_proc_staged_α_470_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_470_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_470_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_470_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_470_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_470_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_470_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_470_3:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_470_21
                        add              rsp, 32
.Lcall_proc_staged_α_470_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_470_2
.Lcall_proc_staged_α_470_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 736], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_470_2
.Lcall_proc_staged_α_470_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_470_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n160_call_proc_staged_β
.Lcall_proc_staged_α_470_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_470_29
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
.Lcall_proc_staged_α_470_29:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    n160_call_proc_staged_β
                                                                              jmp   n177_lit_string_α
n176_call_proc_staged_β:
                        mov              r11, 177
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_470_22
                        mov              rax, qword ptr [rbp + 736]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_470_22
                        mov              rcx, qword ptr [rbp + 744]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_470_22:
                                                                              jmp   n160_call_proc_staged_β
.Lcall_proc_staged_α_470_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    n160_call_proc_staged_β
                                                                              jmp   n177_lit_string_α
.Lcall_proc_staged_α_470_0:
                        .quad            .Lcall_proc_staged_α_470_0_s
.Lcall_proc_staged_α_470_0_s:
                        .string          "next_to/3"
                        .size            n176_call_proc_staged_bx, .-n176_call_proc_staged_bx
                        .type            n177_lit_string_bx, @function
n177_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:      mov              r11, 178
                        mov              qword ptr [rbp + 640], 2             # result
                        mov              dword ptr [rbp + 644], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_471_0]
                        mov              qword ptr [rbp + 648], rax;          jmp   n178_var_ref_α
.Llit_string_α_471_0:   .quad            .Llit_string_α_471_0_s
.Llit_string_α_471_0_s: .string          "house"
                        .size            n177_lit_string_bx, .-n177_lit_string_bx
                        .type            n178_var_ref_bx, @function
n178_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:         mov              r11, 179
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7008]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n179_var_ref_α
                        .size            n178_var_ref_bx, .-n178_var_ref_bx
                        .type            n179_var_ref_bx, @function
n179_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:         mov              r11, 180
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7024]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n180_lit_string_α
                        .size            n179_var_ref_bx, .-n179_var_ref_bx
                        .type            n180_lit_string_bx, @function
n180_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:      mov              r11, 181
                        mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_476_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n181_var_ref_α
.Llit_string_α_476_0:   .quad            .Llit_string_α_476_0_s
.Llit_string_α_476_0_s: .string          "zebra"
                        .size            n180_lit_string_bx, .-n180_lit_string_bx
                        .type            n181_var_ref_bx, @function
n181_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:         mov              r11, 182
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7040]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n182_var_ref_α
                        .size            n181_var_ref_bx, .-n181_var_ref_bx
                        .type            n182_var_ref_bx, @function
n182_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:         mov              r11, 183
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7056]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n183_call_α
                        .size            n182_var_ref_bx, .-n182_var_ref_bx
                        .type            n183_call_bx, @function
n183_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_call_α:            mov              r11, 184
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n184_var_ref_α
n183_call_β:            mov              r11, 184;                            jmp   zebra$2F1_step
                        .size            n183_call_bx, .-n183_call_bx
                        .type            n184_var_ref_bx, @function
n184_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:         mov              r11, 185
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6992]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n185_call_proc_staged_α
                        .size            n184_var_ref_bx, .-n184_var_ref_bx
                        .type            n185_call_proc_staged_bx, @function
n185_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_call_proc_staged_α:
                        mov              r11, 186
                        mov              qword ptr [rbp + 400], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_485_200
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_485_201
.Lcall_proc_staged_α_485_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_485_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_485_202
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_485_203
.Lcall_proc_staged_α_485_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_485_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_485_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_485_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_485_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_485_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_485_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_485_3:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_485_21
                        add              rsp, 32
.Lcall_proc_staged_α_485_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_485_2
.Lcall_proc_staged_α_485_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 400], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_485_2
.Lcall_proc_staged_α_485_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_485_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_call_proc_staged_β
.Lcall_proc_staged_α_485_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_485_29
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
.Lcall_proc_staged_α_485_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n176_call_proc_staged_β
                                                                              jmp   n186_lit_string_α
n185_call_proc_staged_β:
                        mov              r11, 186
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_485_22
                        mov              rax, qword ptr [rbp + 400]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_485_22
                        mov              rcx, qword ptr [rbp + 408]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_485_22:
                                                                              jmp   n176_call_proc_staged_β
.Lcall_proc_staged_α_485_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n176_call_proc_staged_β
                                                                              jmp   n186_lit_string_α
.Lcall_proc_staged_α_485_0:
                        .quad            .Lcall_proc_staged_α_485_0_s
.Lcall_proc_staged_α_485_0_s:
                        .string          "my_member/2"
                        .size            n185_call_proc_staged_bx, .-n185_call_proc_staged_bx
                        .type            n186_lit_string_bx, @function
n186_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:      mov              r11, 187
                        mov              qword ptr [rbp + 320], 2             # result
                        mov              dword ptr [rbp + 324], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_486_0]
                        mov              qword ptr [rbp + 328], rax;          jmp   n187_var_ref_α
.Llit_string_α_486_0:   .quad            .Llit_string_α_486_0_s
.Llit_string_α_486_0_s: .string          "house"
                        .size            n186_lit_string_bx, .-n186_lit_string_bx
                        .type            n187_var_ref_bx, @function
n187_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6928]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n188_var_ref_α
                        .size            n187_var_ref_bx, .-n187_var_ref_bx
                        .type            n188_var_ref_bx, @function
n188_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:         mov              r11, 189
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6944]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n189_var_ref_α
                        .size            n188_var_ref_bx, .-n188_var_ref_bx
                        .type            n189_var_ref_bx, @function
n189_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_var_ref_α:         mov              r11, 190
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6960]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n190_lit_string_α
                        .size            n189_var_ref_bx, .-n189_var_ref_bx
                        .type            n190_lit_string_bx, @function
n190_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:      mov              r11, 191
                        mov              qword ptr [rbp + 160], 2             # result
                        mov              dword ptr [rbp + 164], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_493_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n191_var_ref_α
.Llit_string_α_493_0:   .quad            .Llit_string_α_493_0_s
.Llit_string_α_493_0_s: .string          "water"
                        .size            n190_lit_string_bx, .-n190_lit_string_bx
                        .type            n191_var_ref_bx, @function
n191_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_var_ref_α:         mov              r11, 192
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6976]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n192_call_α
                        .size            n191_var_ref_bx, .-n191_var_ref_bx
                        .type            n192_call_bx, @function
n192_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_call_α:            mov              r11, 193
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              al, 104;                             je    zebra$2F1_step
                                                                              jmp   n193_var_ref_α
n192_call_β:            mov              r11, 193;                            jmp   zebra$2F1_step
                        .size            n192_call_bx, .-n192_call_bx
                        .type            n193_var_ref_bx, @function
n193_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6992]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n194_call_proc_staged_α
                        .size            n193_var_ref_bx, .-n193_var_ref_bx
                        .type            n194_call_proc_staged_bx, @function
n194_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_call_proc_staged_α:
                        mov              r11, 195
                        mov              qword ptr [rbp + 80], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_500_200
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_500_201
.Lcall_proc_staged_α_500_200:
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
.Lcall_proc_staged_α_500_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_500_202
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_500_203
.Lcall_proc_staged_α_500_202:
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
.Lcall_proc_staged_α_500_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_500_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_500_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 8256]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_500_99
                        mov              r10, qword ptr [rbp + 8216]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_500_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_500_99
                        mov              rcx, qword ptr [rbp + 8232]
                        mov              rdx, qword ptr [rbp + 8240]
                        lea              rsp, [rbp + 8256]
                        mov              rbp, qword ptr [rbp + 8248];         jmp   rax
.Lcall_proc_staged_α_500_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_500_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_500_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_500_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_500_3:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_500_21
                        add              rsp, 32
.Lcall_proc_staged_α_500_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_500_2
.Lcall_proc_staged_α_500_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 80], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_500_2
.Lcall_proc_staged_α_500_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_500_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n185_call_proc_staged_β
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
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
.Lcall_proc_staged_α_500_29:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    n185_call_proc_staged_β
                                                                              jmp   zebra$2F1_ret0
n194_call_proc_staged_β:
                        mov              r11, 195
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_500_22
                        mov              rax, qword ptr [rbp + 80]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_500_22
                        mov              rcx, qword ptr [rbp + 88]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_500_22:
                                                                              jmp   n185_call_proc_staged_β
.Lcall_proc_staged_α_500_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    n185_call_proc_staged_β
                                                                              jmp   zebra$2F1_ret0
.Lcall_proc_staged_α_500_0:
                        .quad            .Lcall_proc_staged_α_500_0_s
.Lcall_proc_staged_α_500_0_s:
                        .string          "my_member/2"
                        .size            n194_call_proc_staged_bx, .-n194_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
zebra$2F1_ret0:
                        lea              rax, [rip + n194_call_proc_staged_β]
                        mov              qword ptr [rbp + 8208], rax
                                                                              jmp   zebra$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
zebra$2F1_step:
                        mov              rdi, qword ptr [rbp + 8192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8208], 0
                        mov              qword ptr [rbp + 6992], 0
                        mov              qword ptr [rbp + 7000], 0
                        mov              qword ptr [rbp + 8128], 0
                        mov              qword ptr [rbp + 8136], 0
                        mov              qword ptr [rbp + 8144], 0
                        mov              qword ptr [rbp + 8152], 0
                        mov              qword ptr [rbp + 8160], 0
                        mov              qword ptr [rbp + 8168], 0
                        mov              qword ptr [rbp + 8080], 0
                        mov              qword ptr [rbp + 8088], 0
                        mov              qword ptr [rbp + 8096], 0
                        mov              qword ptr [rbp + 8104], 0
                        mov              qword ptr [rbp + 8112], 0
                        mov              qword ptr [rbp + 8120], 0
                        mov              qword ptr [rbp + 8032], 0
                        mov              qword ptr [rbp + 8040], 0
                        mov              qword ptr [rbp + 8048], 0
                        mov              qword ptr [rbp + 8056], 0
                        mov              qword ptr [rbp + 8064], 0
                        mov              qword ptr [rbp + 8072], 0
                        mov              qword ptr [rbp + 7984], 0
                        mov              qword ptr [rbp + 7992], 0
                        mov              qword ptr [rbp + 8000], 0
                        mov              qword ptr [rbp + 8008], 0
                        mov              qword ptr [rbp + 8016], 0
                        mov              qword ptr [rbp + 8024], 0
                        mov              qword ptr [rbp + 7856], 0
                        mov              qword ptr [rbp + 7864], 0
                        mov              qword ptr [rbp + 7872], 0
                        mov              qword ptr [rbp + 7880], 0
                        mov              qword ptr [rbp + 7888], 0
                        mov              qword ptr [rbp + 7896], 0
                        mov              qword ptr [rbp + 7904], 0
                        mov              qword ptr [rbp + 7912], 0
                        mov              qword ptr [rbp + 7920], 0
                        mov              qword ptr [rbp + 7928], 0
                        mov              qword ptr [rbp + 7936], 0
                        mov              qword ptr [rbp + 7944], 0
                        mov              qword ptr [rbp + 7952], 0
                        mov              qword ptr [rbp + 7960], 0
                        mov              qword ptr [rbp + 7968], 0
                        mov              qword ptr [rbp + 7976], 0
                        mov              qword ptr [rbp + 7808], 0
                        mov              qword ptr [rbp + 7816], 0
                        mov              qword ptr [rbp + 7824], 0
                        mov              qword ptr [rbp + 7832], 0
                        mov              qword ptr [rbp + 7840], 0
                        mov              qword ptr [rbp + 7848], 0
                        mov              qword ptr [rbp + 7760], 0
                        mov              qword ptr [rbp + 7768], 0
                        mov              qword ptr [rbp + 7776], 0
                        mov              qword ptr [rbp + 7784], 0
                        mov              qword ptr [rbp + 7792], 0
                        mov              qword ptr [rbp + 7800], 0
                        mov              qword ptr [rbp + 7744], 0
                        mov              qword ptr [rbp + 7752], 0
                        mov              qword ptr [rbp + 7728], 0
                        mov              qword ptr [rbp + 7736], 0
                        mov              qword ptr [rbp + 7664], 0
                        mov              qword ptr [rbp + 7672], 0
                        mov              qword ptr [rbp + 7680], 0
                        mov              qword ptr [rbp + 7688], 0
                        mov              qword ptr [rbp + 7696], 0
                        mov              qword ptr [rbp + 7704], 0
                        mov              qword ptr [rbp + 7712], 0
                        mov              qword ptr [rbp + 7720], 0
                        mov              qword ptr [rbp + 7648], 0
                        mov              qword ptr [rbp + 7656], 0
                        mov              qword ptr [rbp + 7632], 0
                        mov              qword ptr [rbp + 7640], 0
                        mov              qword ptr [rbp + 7568], 0
                        mov              qword ptr [rbp + 7576], 0
                        mov              qword ptr [rbp + 7584], 0
                        mov              qword ptr [rbp + 7592], 0
                        mov              qword ptr [rbp + 7600], 0
                        mov              qword ptr [rbp + 7608], 0
                        mov              qword ptr [rbp + 7616], 0
                        mov              qword ptr [rbp + 7624], 0
                        mov              qword ptr [rbp + 7552], 0
                        mov              qword ptr [rbp + 7560], 0
                        mov              qword ptr [rbp + 7424], 0
                        mov              qword ptr [rbp + 7432], 0
                        mov              qword ptr [rbp + 7440], 0
                        mov              qword ptr [rbp + 7448], 0
                        mov              qword ptr [rbp + 7456], 0
                        mov              qword ptr [rbp + 7464], 0
                        mov              qword ptr [rbp + 7472], 0
                        mov              qword ptr [rbp + 7480], 0
                        mov              qword ptr [rbp + 7488], 0
                        mov              qword ptr [rbp + 7496], 0
                        mov              qword ptr [rbp + 7504], 0
                        mov              qword ptr [rbp + 7512], 0
                        mov              qword ptr [rbp + 7520], 0
                        mov              qword ptr [rbp + 7528], 0
                        mov              qword ptr [rbp + 7536], 0
                        mov              qword ptr [rbp + 7544], 0
                        mov              qword ptr [rbp + 7296], 0
                        mov              qword ptr [rbp + 7304], 0
                        mov              qword ptr [rbp + 7312], 0
                        mov              qword ptr [rbp + 7320], 0
                        mov              qword ptr [rbp + 7328], 0
                        mov              qword ptr [rbp + 7336], 0
                        mov              qword ptr [rbp + 7344], 0
                        mov              qword ptr [rbp + 7352], 0
                        mov              qword ptr [rbp + 7360], 0
                        mov              qword ptr [rbp + 7368], 0
                        mov              qword ptr [rbp + 7376], 0
                        mov              qword ptr [rbp + 7384], 0
                        mov              qword ptr [rbp + 7392], 0
                        mov              qword ptr [rbp + 7400], 0
                        mov              qword ptr [rbp + 7408], 0
                        mov              qword ptr [rbp + 7416], 0
                        mov              qword ptr [rbp + 7248], 0
                        mov              qword ptr [rbp + 7256], 0
                        mov              qword ptr [rbp + 7264], 0
                        mov              qword ptr [rbp + 7272], 0
                        mov              qword ptr [rbp + 7280], 0
                        mov              qword ptr [rbp + 7288], 0
                        mov              qword ptr [rbp + 7200], 0
                        mov              qword ptr [rbp + 7208], 0
                        mov              qword ptr [rbp + 7216], 0
                        mov              qword ptr [rbp + 7224], 0
                        mov              qword ptr [rbp + 7232], 0
                        mov              qword ptr [rbp + 7240], 0
                        mov              qword ptr [rbp + 7072], 0
                        mov              qword ptr [rbp + 7080], 0
                        mov              qword ptr [rbp + 7088], 0
                        mov              qword ptr [rbp + 7096], 0
                        mov              qword ptr [rbp + 7104], 0
                        mov              qword ptr [rbp + 7112], 0
                        mov              qword ptr [rbp + 7120], 0
                        mov              qword ptr [rbp + 7128], 0
                        mov              qword ptr [rbp + 7136], 0
                        mov              qword ptr [rbp + 7144], 0
                        mov              qword ptr [rbp + 7152], 0
                        mov              qword ptr [rbp + 7160], 0
                        mov              qword ptr [rbp + 7168], 0
                        mov              qword ptr [rbp + 7176], 0
                        mov              qword ptr [rbp + 7184], 0
                        mov              qword ptr [rbp + 7192], 0
                        mov              qword ptr [rbp + 7008], 0
                        mov              qword ptr [rbp + 7016], 0
                        mov              qword ptr [rbp + 7024], 0
                        mov              qword ptr [rbp + 7032], 0
                        mov              qword ptr [rbp + 7040], 0
                        mov              qword ptr [rbp + 7048], 0
                        mov              qword ptr [rbp + 7056], 0
                        mov              qword ptr [rbp + 7064], 0
                        mov              qword ptr [rbp + 6928], 0
                        mov              qword ptr [rbp + 6936], 0
                        mov              qword ptr [rbp + 6944], 0
                        mov              qword ptr [rbp + 6952], 0
                        mov              qword ptr [rbp + 6960], 0
                        mov              qword ptr [rbp + 6968], 0
                        mov              qword ptr [rbp + 6976], 0
                        mov              qword ptr [rbp + 6984], 0
                        mov              rax, qword ptr [rbp + 8200]
                        test             rax, rax
                                                                              je    zebra$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
zebra$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
zebra$2F1_β:
                        test             r15, r15
                                                                              jne   zebra$2F1_ω
                        mov              rax, qword ptr [rbp + 8208]
                        mov              qword ptr [rbp + 8208], 0
                        test             rax, rax
                                                                              jne   zebra$2F1_βres
                                                                              jmp   zebra$2F1_step
zebra$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
zebra$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 8232]
                        mov              rax, qword ptr [rbp + 8216]
                        cmp              r13, rax;                            je    zebra$2F1_altdet
                        lea              rdx, [rip + zebra$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 8248];         jmp   rcx
zebra$2F1_altdet:       xor              eax, eax
                        lea              rsp, [rbp + 8256]
                        mov              rbp, qword ptr [rbp + 8248];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
zebra$2F1_ω:
                        mov              rcx, qword ptr [rbp + 8240]
                        mov              r13, qword ptr [rbp + 8216]
                        lea              rsp, [rbp + 8256]
                        mov              rbp, qword ptr [rbp + 8248];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__right_of$2F3:
                        sub              rsp, 1264
                        mov              qword ptr [rsp + 1240], rcx
                        mov              qword ptr [rsp + 1248], rdx
                        mov              qword ptr [rsp + 1256], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1264]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1224], r13
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1200], r12
                        lea              rax, [rip + right_of$2F3_alt1]
                        mov              qword ptr [rsp + 1208], rax
                        lea              rdi, [rsp + 1200]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 1120
                        mov              edx, 1200
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
right_of$2F3_α_body:
                        .type            n501_var_ref_bx, @function
n501_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n501_var_ref_α:         mov              r11, 196
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n502_var_ref_α
                        .size            n501_var_ref_bx, .-n501_var_ref_bx
                        .type            n502_var_ref_bx, @function
n502_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n502_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n503_call_α
                        .size            n502_var_ref_bx, .-n502_var_ref_bx
                        .type            n503_call_bx, @function
n503_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n503_call_α:            mov              r11, 198
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
                        cmp              al, 104;                             je    right_of$2F3_step
                                                                              jmp   n504_var_ref_α
n503_call_β:            mov              r11, 198;                            jmp   right_of$2F3_step
                        .size            n503_call_bx, .-n503_call_bx
                        .type            n504_var_ref_bx, @function
n504_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n504_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n505_var_ref_α
                        .size            n504_var_ref_bx, .-n504_var_ref_bx
                        .type            n505_var_ref_bx, @function
n505_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n505_var_ref_α:         mov              r11, 200
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n506_call_α
                        .size            n505_var_ref_bx, .-n505_var_ref_bx
                        .type            n506_call_bx, @function
n506_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n506_call_α:            mov              r11, 201
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    right_of$2F3_step
                                                                              jmp   n507_var_ref_α
n506_call_β:            mov              r11, 201;                            jmp   right_of$2F3_step
                        .size            n506_call_bx, .-n506_call_bx
                        .type            n507_var_ref_bx, @function
n507_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n507_var_ref_α:         mov              r11, 202
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n508_lit_string_α
                        .size            n507_var_ref_bx, .-n507_var_ref_bx
                        .type            n508_lit_string_bx, @function
n508_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n508_lit_string_α:      mov              r11, 203
                        mov              qword ptr [rbp + 368], 2             # result
                        mov              dword ptr [rbp + 372], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_544_0]
                        mov              qword ptr [rbp + 376], rax;          jmp   n509_var_ref_α
.Llit_string_α_544_0:   .quad            .Llit_string_α_544_0_s
.Llit_string_α_544_0_s: .string          "."
                        .size            n508_lit_string_bx, .-n508_lit_string_bx
                        .type            n509_var_ref_bx, @function
n509_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n509_var_ref_α:         mov              r11, 204
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n510_lit_string_α
                        .size            n509_var_ref_bx, .-n509_var_ref_bx
                        .type            n510_lit_string_bx, @function
n510_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n510_lit_string_α:      mov              r11, 205
                        mov              qword ptr [rbp + 256], 2             # result
                        mov              dword ptr [rbp + 260], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_547_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n511_var_ref_α
.Llit_string_α_547_0:   .quad            .Llit_string_α_547_0_s
.Llit_string_α_547_0_s: .string          "."
                        .size            n510_lit_string_bx, .-n510_lit_string_bx
                        .type            n511_var_ref_bx, @function
n511_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n511_var_ref_α:         mov              r11, 206
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n512_var_ref_α
                        .size            n511_var_ref_bx, .-n511_var_ref_bx
                        .type            n512_var_ref_bx, @function
n512_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n512_var_ref_α:         mov              r11, 207
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n513_call_α
                        .size            n512_var_ref_bx, .-n512_var_ref_bx
                        .type            n513_call_bx, @function
n513_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n513_call_α:            mov              r11, 208
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 168]
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    right_of$2F3_ω
                                                                              jmp   n514_call_α
n513_call_β:            mov              r11, 208;                            jmp   right_of$2F3_ω
                        .size            n513_call_bx, .-n513_call_bx
                        .type            n514_call_bx, @function
n514_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n514_call_α:            mov              r11, 209
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    right_of$2F3_step
                                                                              jmp   n515_call_α
n514_call_β:            mov              r11, 209;                            jmp   right_of$2F3_step
                        .size            n514_call_bx, .-n514_call_bx
                        .type            n515_call_bx, @function
n515_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n515_call_α:            mov              r11, 210
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 296]
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
                        cmp              al, 104;                             je    right_of$2F3_step
                                                                              jmp   right_of$2F3_γ
n515_call_β:            mov              r11, 210;                            jmp   right_of$2F3_step
                        .size            n515_call_bx, .-n515_call_bx
                        .type            n516_var_ref_bx, @function
n516_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n516_var_ref_α:         mov              r11, 211
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n517_var_ref_α
                        .size            n516_var_ref_bx, .-n516_var_ref_bx
                        .type            n517_var_ref_bx, @function
n517_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n517_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n518_call_α
                        .size            n517_var_ref_bx, .-n517_var_ref_bx
                        .type            n518_call_bx, @function
n518_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n518_call_α:            mov              r11, 213
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
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
                        cmp              al, 104;                             je    right_of$2F3_step
                                                                              jmp   n519_var_ref_α
n518_call_β:            mov              r11, 213;                            jmp   right_of$2F3_step
                        .size            n518_call_bx, .-n518_call_bx
                        .type            n519_var_ref_bx, @function
n519_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n519_var_ref_α:         mov              r11, 214
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n520_var_ref_α
                        .size            n519_var_ref_bx, .-n519_var_ref_bx
                        .type            n520_var_ref_bx, @function
n520_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n520_var_ref_α:         mov              r11, 215
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n521_call_α
                        .size            n520_var_ref_bx, .-n520_var_ref_bx
                        .type            n521_call_bx, @function
n521_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n521_call_α:            mov              r11, 216
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 944]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              al, 104;                             je    right_of$2F3_step
                                                                              jmp   n522_var_ref_α
n521_call_β:            mov              r11, 216;                            jmp   right_of$2F3_step
                        .size            n521_call_bx, .-n521_call_bx
                        .type            n522_var_ref_bx, @function
n522_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n522_var_ref_α:         mov              r11, 217
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n523_lit_string_α
                        .size            n522_var_ref_bx, .-n522_var_ref_bx
                        .type            n523_lit_string_bx, @function
n523_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n523_lit_string_α:      mov              r11, 218
                        mov              qword ptr [rbp + 912], 2             # result
                        mov              dword ptr [rbp + 916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_567_0]
                        mov              qword ptr [rbp + 920], rax;          jmp   n524_var_ref_α
.Llit_string_α_567_0:   .quad            .Llit_string_α_567_0_s
.Llit_string_α_567_0_s: .string          "."
                        .size            n523_lit_string_bx, .-n523_lit_string_bx
                        .type            n524_var_ref_bx, @function
n524_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n524_var_ref_α:         mov              r11, 219
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n525_var_ref_α
                        .size            n524_var_ref_bx, .-n524_var_ref_bx
                        .type            n525_var_ref_bx, @function
n525_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n525_var_ref_α:         mov              r11, 220
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n526_call_α
                        .size            n525_var_ref_bx, .-n525_var_ref_bx
                        .type            n526_call_bx, @function
n526_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n526_call_α:            mov              r11, 221
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 808]
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
                        cmp              al, 104;                             je    right_of$2F3_step
                                                                              jmp   n527_call_α
n526_call_β:            mov              r11, 221;                            jmp   right_of$2F3_step
                        .size            n526_call_bx, .-n526_call_bx
                        .type            n527_call_bx, @function
n527_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n527_call_α:            mov              r11, 222
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 840]
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
                        cmp              al, 104;                             je    right_of$2F3_step
                                                                              jmp   n528_var_ref_α
n527_call_β:            mov              r11, 222;                            jmp   right_of$2F3_step
                        .size            n527_call_bx, .-n527_call_bx
                        .type            n528_var_ref_bx, @function
n528_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n528_var_ref_α:         mov              r11, 223
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n529_var_ref_α
                        .size            n528_var_ref_bx, .-n528_var_ref_bx
                        .type            n529_var_ref_bx, @function
n529_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n529_var_ref_α:         mov              r11, 224
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n530_var_ref_α
                        .size            n529_var_ref_bx, .-n529_var_ref_bx
                        .type            n530_var_ref_bx, @function
n530_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n530_var_ref_α:         mov              r11, 225
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n531_call_proc_staged_α
                        .size            n530_var_ref_bx, .-n530_var_ref_bx
                        .type            n531_call_proc_staged_bx, @function
n531_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n531_call_proc_staged_α:
                        mov              r11, 226
                        mov              qword ptr [rbp + 640], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_581_200
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_581_201
.Lcall_proc_staged_α_581_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_581_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_581_202
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_581_203
.Lcall_proc_staged_α_581_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_581_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_581_204
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_581_205
.Lcall_proc_staged_α_581_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_581_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_581_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_581_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 1264]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_581_99
                        mov              r10, qword ptr [rbp + 1224]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_581_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_581_99
                        mov              rcx, qword ptr [rbp + 1240]
                        mov              rdx, qword ptr [rbp + 1248]
                        lea              rsp, [rbp + 1264]
                        mov              rbp, qword ptr [rbp + 1256];         jmp   rax
.Lcall_proc_staged_α_581_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_581_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_581_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_581_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_581_3:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_581_21
                        add              rsp, 32
.Lcall_proc_staged_α_581_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_581_2
.Lcall_proc_staged_α_581_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 640], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_581_2
.Lcall_proc_staged_α_581_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_581_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   right_of$2F3_step
.Lcall_proc_staged_α_581_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_581_29
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
.Lcall_proc_staged_α_581_29:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    right_of$2F3_step
                                                                              jmp   right_of$2F3_ret1
n531_call_proc_staged_β:
                        mov              r11, 226
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_581_22
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_581_22
                        mov              rcx, qword ptr [rbp + 648]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_581_22:
                                                                              jmp   right_of$2F3_step
.Lcall_proc_staged_α_581_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    right_of$2F3_step
                                                                              jmp   right_of$2F3_ret1
.Lcall_proc_staged_α_581_0:
                        .quad            .Lcall_proc_staged_α_581_0_s
.Lcall_proc_staged_α_581_0_s:
                        .string          "right_of/3"
                        .size            n531_call_proc_staged_bx, .-n531_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
right_of$2F3_ret1:
                        lea              rax, [rip + n531_call_proc_staged_β]
                        mov              qword ptr [rbp + 1216], rax
                                                                              jmp   right_of$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
right_of$2F3_step:
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1216], 0
                        mov              qword ptr [rbp + 1136], 0
                        mov              qword ptr [rbp + 1144], 0
                        mov              qword ptr [rbp + 1152], 0
                        mov              qword ptr [rbp + 1160], 0
                        mov              qword ptr [rbp + 1120], 0
                        mov              qword ptr [rbp + 1128], 0
                        mov              qword ptr [rbp + 1168], 0
                        mov              qword ptr [rbp + 1176], 0
                        mov              rax, qword ptr [rbp + 1208]
                        test             rax, rax
                                                                              je    right_of$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
right_of$2F3_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1208], rax
                        mov              r13, qword ptr [rbp + 1224]
                                                                              jmp   n516_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
right_of$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
right_of$2F3_β:
                        test             r15, r15
                                                                              jne   right_of$2F3_ω
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1216], 0
                        test             rax, rax
                                                                              jne   right_of$2F3_βres
                                                                              jmp   right_of$2F3_step
right_of$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
right_of$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1240]
                        mov              rax, qword ptr [rbp + 1224]
                        cmp              r13, rax;                            je    right_of$2F3_altdet
                        lea              rdx, [rip + right_of$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1256];         jmp   rcx
right_of$2F3_altdet:    xor              eax, eax
                        lea              rsp, [rbp + 1264]
                        mov              rbp, qword ptr [rbp + 1256];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
right_of$2F3_ω:
                        mov              rcx, qword ptr [rbp + 1248]
                        mov              r13, qword ptr [rbp + 1224]
                        lea              rsp, [rbp + 1264]
                        mov              rbp, qword ptr [rbp + 1256];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__next_to$2F3:
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
                        lea              rax, [rip + next_to$2F3_alt1]
                        mov              qword ptr [rsp + 1720], rax
                        lea              rdi, [rsp + 1712]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 1632
                        mov              edx, 1712
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
next_to$2F3_α_body:
                        .type            n582_var_ref_bx, @function
n582_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n582_var_ref_α:         mov              r11, 227
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n583_var_ref_α
                        .size            n582_var_ref_bx, .-n582_var_ref_bx
                        .type            n583_var_ref_bx, @function
n583_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n583_var_ref_α:         mov              r11, 228
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n584_call_α
                        .size            n583_var_ref_bx, .-n583_var_ref_bx
                        .type            n584_call_bx, @function
n584_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n584_call_α:            mov              r11, 229
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
                        cmp              al, 104;                             je    next_to$2F3_step
                                                                              jmp   n585_var_ref_α
n584_call_β:            mov              r11, 229;                            jmp   next_to$2F3_step
                        .size            n584_call_bx, .-n584_call_bx
                        .type            n585_var_ref_bx, @function
n585_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n585_var_ref_α:         mov              r11, 230
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n586_var_ref_α
                        .size            n585_var_ref_bx, .-n585_var_ref_bx
                        .type            n586_var_ref_bx, @function
n586_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n586_var_ref_α:         mov              r11, 231
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1648]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n587_call_α
                        .size            n586_var_ref_bx, .-n586_var_ref_bx
                        .type            n587_call_bx, @function
n587_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n587_call_α:            mov              r11, 232
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    next_to$2F3_step
                                                                              jmp   n588_var_ref_α
n587_call_β:            mov              r11, 232;                            jmp   next_to$2F3_step
                        .size            n587_call_bx, .-n587_call_bx
                        .type            n588_var_ref_bx, @function
n588_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n588_var_ref_α:         mov              r11, 233
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n589_lit_string_α
                        .size            n588_var_ref_bx, .-n588_var_ref_bx
                        .type            n589_lit_string_bx, @function
n589_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n589_lit_string_α:      mov              r11, 234
                        mov              qword ptr [rbp + 368], 2             # result
                        mov              dword ptr [rbp + 372], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_640_0]
                        mov              qword ptr [rbp + 376], rax;          jmp   n590_var_ref_α
.Llit_string_α_640_0:   .quad            .Llit_string_α_640_0_s
.Llit_string_α_640_0_s: .string          "."
                        .size            n589_lit_string_bx, .-n589_lit_string_bx
                        .type            n590_var_ref_bx, @function
n590_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n590_var_ref_α:         mov              r11, 235
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n591_lit_string_α
                        .size            n590_var_ref_bx, .-n590_var_ref_bx
                        .type            n591_lit_string_bx, @function
n591_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_string_α:      mov              r11, 236
                        mov              qword ptr [rbp + 256], 2             # result
                        mov              dword ptr [rbp + 260], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_643_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n592_var_ref_α
.Llit_string_α_643_0:   .quad            .Llit_string_α_643_0_s
.Llit_string_α_643_0_s: .string          "."
                        .size            n591_lit_string_bx, .-n591_lit_string_bx
                        .type            n592_var_ref_bx, @function
n592_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n592_var_ref_α:         mov              r11, 237
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1648]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n593_var_ref_α
                        .size            n592_var_ref_bx, .-n592_var_ref_bx
                        .type            n593_var_ref_bx, @function
n593_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n593_var_ref_α:         mov              r11, 238
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1632]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n594_call_α
                        .size            n593_var_ref_bx, .-n593_var_ref_bx
                        .type            n594_call_bx, @function
n594_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n594_call_α:            mov              r11, 239
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 168]
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    next_to$2F3_ω
                                                                              jmp   n595_call_α
n594_call_β:            mov              r11, 239;                            jmp   next_to$2F3_ω
                        .size            n594_call_bx, .-n594_call_bx
                        .type            n595_call_bx, @function
n595_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n595_call_α:            mov              r11, 240
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    next_to$2F3_step
                                                                              jmp   n596_call_α
n595_call_β:            mov              r11, 240;                            jmp   next_to$2F3_step
                        .size            n595_call_bx, .-n595_call_bx
                        .type            n596_call_bx, @function
n596_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n596_call_α:            mov              r11, 241
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 296]
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
                        cmp              al, 104;                             je    next_to$2F3_step
                                                                              jmp   next_to$2F3_γ
n596_call_β:            mov              r11, 241;                            jmp   next_to$2F3_step
                        .size            n596_call_bx, .-n596_call_bx
                        .type            n597_var_ref_bx, @function
n597_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n597_var_ref_α:         mov              r11, 242
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n598_var_ref_α
                        .size            n597_var_ref_bx, .-n597_var_ref_bx
                        .type            n598_var_ref_bx, @function
n598_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n598_var_ref_α:         mov              r11, 243
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n599_call_α
                        .size            n598_var_ref_bx, .-n598_var_ref_bx
                        .type            n599_call_bx, @function
n599_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n599_call_α:            mov              r11, 244
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
                        cmp              al, 104;                             je    next_to$2F3_step
                                                                              jmp   n600_var_ref_α
n599_call_β:            mov              r11, 244;                            jmp   next_to$2F3_step
                        .size            n599_call_bx, .-n599_call_bx
                        .type            n600_var_ref_bx, @function
n600_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n600_var_ref_α:         mov              r11, 245
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n601_var_ref_α
                        .size            n600_var_ref_bx, .-n600_var_ref_bx
                        .type            n601_var_ref_bx, @function
n601_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n601_var_ref_α:         mov              r11, 246
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1648]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n602_call_α
                        .size            n601_var_ref_bx, .-n601_var_ref_bx
                        .type            n602_call_bx, @function
n602_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n602_call_α:            mov              r11, 247
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
                        cmp              al, 104;                             je    next_to$2F3_step
                                                                              jmp   n603_var_ref_α
n602_call_β:            mov              r11, 247;                            jmp   next_to$2F3_step
                        .size            n602_call_bx, .-n602_call_bx
                        .type            n603_var_ref_bx, @function
n603_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n603_var_ref_α:         mov              r11, 248
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n604_lit_string_α
                        .size            n603_var_ref_bx, .-n603_var_ref_bx
                        .type            n604_lit_string_bx, @function
n604_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n604_lit_string_α:      mov              r11, 249
                        mov              qword ptr [rbp + 880], 2             # result
                        mov              dword ptr [rbp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_663_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n605_var_ref_α
.Llit_string_α_663_0:   .quad            .Llit_string_α_663_0_s
.Llit_string_α_663_0_s: .string          "."
                        .size            n604_lit_string_bx, .-n604_lit_string_bx
                        .type            n605_var_ref_bx, @function
n605_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n605_var_ref_α:         mov              r11, 250
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1648]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n606_lit_string_α
                        .size            n605_var_ref_bx, .-n605_var_ref_bx
                        .type            n606_lit_string_bx, @function
n606_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n606_lit_string_α:      mov              r11, 251
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_666_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n607_var_ref_α
.Llit_string_α_666_0:   .quad            .Llit_string_α_666_0_s
.Llit_string_α_666_0_s: .string          "."
                        .size            n606_lit_string_bx, .-n606_lit_string_bx
                        .type            n607_var_ref_bx, @function
n607_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n607_var_ref_α:         mov              r11, 252
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n608_var_ref_α
                        .size            n607_var_ref_bx, .-n607_var_ref_bx
                        .type            n608_var_ref_bx, @function
n608_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n608_var_ref_α:         mov              r11, 253
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1632]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n609_call_α
                        .size            n608_var_ref_bx, .-n608_var_ref_bx
                        .type            n609_call_bx, @function
n609_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n609_call_α:            mov              r11, 254
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
                        cmp              al, 104;                             je    next_to$2F3_ω
                                                                              jmp   n610_call_α
n609_call_β:            mov              r11, 254;                            jmp   next_to$2F3_ω
                        .size            n609_call_bx, .-n609_call_bx
                        .type            n610_call_bx, @function
n610_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n610_call_α:            mov              r11, 255
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 696]
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
                        cmp              al, 104;                             je    next_to$2F3_step
                                                                              jmp   n611_call_α
n610_call_β:            mov              r11, 255;                            jmp   next_to$2F3_step
                        .size            n610_call_bx, .-n610_call_bx
                        .type            n611_call_bx, @function
n611_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n611_call_α:            mov              r11, 256
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 808]
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
                        cmp              al, 104;                             je    next_to$2F3_step
                                                                              jmp   next_to$2F3_γ
n611_call_β:            mov              r11, 256;                            jmp   next_to$2F3_step
                        .size            n611_call_bx, .-n611_call_bx
                        .type            n612_var_ref_bx, @function
n612_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n612_var_ref_α:         mov              r11, 257
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx;         jmp   n613_var_ref_α
                        .size            n612_var_ref_bx, .-n612_var_ref_bx
                        .type            n613_var_ref_bx, @function
n613_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n613_var_ref_α:         mov              r11, 258
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx;         jmp   n614_call_α
                        .size            n613_var_ref_bx, .-n613_var_ref_bx
                        .type            n614_call_bx, @function
n614_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n614_call_α:            mov              r11, 259
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              al, 104;                             je    next_to$2F3_step
                                                                              jmp   n615_var_ref_α
n614_call_β:            mov              r11, 259;                            jmp   next_to$2F3_step
                        .size            n614_call_bx, .-n614_call_bx
                        .type            n615_var_ref_bx, @function
n615_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n615_var_ref_α:         mov              r11, 260
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx;         jmp   n616_var_ref_α
                        .size            n615_var_ref_bx, .-n615_var_ref_bx
                        .type            n616_var_ref_bx, @function
n616_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n616_var_ref_α:         mov              r11, 261
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1648]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n617_call_α
                        .size            n616_var_ref_bx, .-n616_var_ref_bx
                        .type            n617_call_bx, @function
n617_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n617_call_α:            mov              r11, 262
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1528]
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
                        cmp              al, 104;                             je    next_to$2F3_step
                                                                              jmp   n618_var_ref_α
n617_call_β:            mov              r11, 262;                            jmp   next_to$2F3_step
                        .size            n617_call_bx, .-n617_call_bx
                        .type            n618_var_ref_bx, @function
n618_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n618_var_ref_α:         mov              r11, 263
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx;         jmp   n619_lit_string_α
                        .size            n618_var_ref_bx, .-n618_var_ref_bx
                        .type            n619_lit_string_bx, @function
n619_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n619_lit_string_α:      mov              r11, 264
                        mov              qword ptr [rbp + 1424], 2            # result
                        mov              dword ptr [rbp + 1428], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_686_0]
                        mov              qword ptr [rbp + 1432], rax;         jmp   n620_var_ref_α
.Llit_string_α_686_0:   .quad            .Llit_string_α_686_0_s
.Llit_string_α_686_0_s: .string          "."
                        .size            n619_lit_string_bx, .-n619_lit_string_bx
                        .type            n620_var_ref_bx, @function
n620_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n620_var_ref_α:         mov              r11, 265
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1632]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n621_var_ref_α
                        .size            n620_var_ref_bx, .-n620_var_ref_bx
                        .type            n621_var_ref_bx, @function
n621_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n621_var_ref_α:         mov              r11, 266
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx;         jmp   n622_call_α
                        .size            n621_var_ref_bx, .-n621_var_ref_bx
                        .type            n622_call_bx, @function
n622_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n622_call_α:            mov              r11, 267
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1320]
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
                        cmp              al, 104;                             je    next_to$2F3_step
                                                                              jmp   n623_call_α
n622_call_β:            mov              r11, 267;                            jmp   next_to$2F3_step
                        .size            n622_call_bx, .-n622_call_bx
                        .type            n623_call_bx, @function
n623_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n623_call_α:            mov              r11, 268
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1352]
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
                        cmp              al, 104;                             je    next_to$2F3_step
                                                                              jmp   n624_var_ref_α
n623_call_β:            mov              r11, 268;                            jmp   next_to$2F3_step
                        .size            n623_call_bx, .-n623_call_bx
                        .type            n624_var_ref_bx, @function
n624_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n624_var_ref_α:         mov              r11, 269
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx;         jmp   n625_var_ref_α
                        .size            n624_var_ref_bx, .-n624_var_ref_bx
                        .type            n625_var_ref_bx, @function
n625_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n625_var_ref_α:         mov              r11, 270
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1648]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx;         jmp   n626_var_ref_α
                        .size            n625_var_ref_bx, .-n625_var_ref_bx
                        .type            n626_var_ref_bx, @function
n626_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n626_var_ref_α:         mov              r11, 271
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n627_call_proc_staged_α
                        .size            n626_var_ref_bx, .-n626_var_ref_bx
                        .type            n627_call_proc_staged_bx, @function
n627_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n627_call_proc_staged_α:
                        mov              r11, 272
                        mov              qword ptr [rbp + 1152], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_700_200
                        mov              rax, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_700_201
.Lcall_proc_staged_α_700_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_700_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_700_202
                        mov              rax, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_700_203
.Lcall_proc_staged_α_700_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_700_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_700_204
                        mov              rax, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_700_205
.Lcall_proc_staged_α_700_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_700_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_700_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_700_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_700_99
                        mov              r10, qword ptr [rbp + 1736]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_700_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_700_99
                        mov              rcx, qword ptr [rbp + 1752]
                        mov              rdx, qword ptr [rbp + 1760]
                        lea              rsp, [rbp + 1776]
                        mov              rbp, qword ptr [rbp + 1768];         jmp   rax
.Lcall_proc_staged_α_700_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_700_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_700_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_700_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_700_3:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_700_21
                        add              rsp, 32
.Lcall_proc_staged_α_700_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_700_2
.Lcall_proc_staged_α_700_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1152], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_700_2
.Lcall_proc_staged_α_700_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_700_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   next_to$2F3_step
.Lcall_proc_staged_α_700_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_700_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
.Lcall_proc_staged_α_700_29:
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              al, 104;                             je    next_to$2F3_step
                                                                              jmp   next_to$2F3_ret2
n627_call_proc_staged_β:
                        mov              r11, 272
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_700_22
                        mov              rax, qword ptr [rbp + 1152]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_700_22
                        mov              rcx, qword ptr [rbp + 1160]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_700_22:
                                                                              jmp   next_to$2F3_step
.Lcall_proc_staged_α_700_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              al, 104;                             je    next_to$2F3_step
                                                                              jmp   next_to$2F3_ret2
.Lcall_proc_staged_α_700_0:
                        .quad            .Lcall_proc_staged_α_700_0_s
.Lcall_proc_staged_α_700_0_s:
                        .string          "next_to/3"
                        .size            n627_call_proc_staged_bx, .-n627_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
next_to$2F3_ret2:
                        lea              rax, [rip + n627_call_proc_staged_β]
                        mov              qword ptr [rbp + 1728], rax
                                                                              jmp   next_to$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
next_to$2F3_step:
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
                        mov              qword ptr [rbp + 1648], 0
                        mov              qword ptr [rbp + 1656], 0
                        mov              qword ptr [rbp + 1632], 0
                        mov              qword ptr [rbp + 1640], 0
                        mov              qword ptr [rbp + 1680], 0
                        mov              qword ptr [rbp + 1688], 0
                        mov              rax, qword ptr [rbp + 1720]
                        test             rax, rax
                                                                              je    next_to$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
next_to$2F3_alt1:
                        lea              rax, [rip + next_to$2F3_alt2]
                        mov              qword ptr [rbp + 1720], rax
                                                                              jmp   n597_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
next_to$2F3_alt2:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1720], rax
                        mov              r13, qword ptr [rbp + 1736]
                                                                              jmp   n612_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
next_to$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
next_to$2F3_β:
                        test             r15, r15
                                                                              jne   next_to$2F3_ω
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1728], 0
                        test             rax, rax
                                                                              jne   next_to$2F3_βres
                                                                              jmp   next_to$2F3_step
next_to$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
next_to$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1752]
                        mov              rax, qword ptr [rbp + 1736]
                        cmp              r13, rax;                            je    next_to$2F3_altdet
                        lea              rdx, [rip + next_to$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1768];         jmp   rcx
next_to$2F3_altdet:     xor              eax, eax
                        lea              rsp, [rbp + 1776]
                        mov              rbp, qword ptr [rbp + 1768];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
next_to$2F3_ω:
                        mov              rcx, qword ptr [rbp + 1760]
                        mov              r13, qword ptr [rbp + 1736]
                        lea              rsp, [rbp + 1776]
                        mov              rbp, qword ptr [rbp + 1768];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__my_member$2F2:
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
                        lea              rax, [rip + my_member$2F2_alt1]
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
my_member$2F2_α_body:
                        .type            n701_var_ref_bx, @function
n701_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n701_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n702_var_ref_α
                        .size            n701_var_ref_bx, .-n701_var_ref_bx
                        .type            n702_var_ref_bx, @function
n702_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n702_var_ref_α:         mov              r11, 274
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n703_call_α
                        .size            n702_var_ref_bx, .-n702_var_ref_bx
                        .type            n703_call_bx, @function
n703_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n703_call_α:            mov              r11, 275
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
                        cmp              al, 104;                             je    my_member$2F2_step
                                                                              jmp   n704_var_ref_α
n703_call_β:            mov              r11, 275;                            jmp   my_member$2F2_step
                        .size            n703_call_bx, .-n703_call_bx
                        .type            n704_var_ref_bx, @function
n704_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n704_var_ref_α:         mov              r11, 276
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n705_lit_string_α
                        .size            n704_var_ref_bx, .-n704_var_ref_bx
                        .type            n705_lit_string_bx, @function
n705_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n705_lit_string_α:      mov              r11, 277
                        mov              qword ptr [rbp + 240], 2             # result
                        mov              dword ptr [rbp + 244], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_729_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n706_var_ref_α
.Llit_string_α_729_0:   .quad            .Llit_string_α_729_0_s
.Llit_string_α_729_0_s: .string          "."
                        .size            n705_lit_string_bx, .-n705_lit_string_bx
                        .type            n706_var_ref_bx, @function
n706_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n706_var_ref_α:         mov              r11, 278
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n707_var_ref_α
                        .size            n706_var_ref_bx, .-n706_var_ref_bx
                        .type            n707_var_ref_bx, @function
n707_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n707_var_ref_α:         mov              r11, 279
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n708_call_α
                        .size            n707_var_ref_bx, .-n707_var_ref_bx
                        .type            n708_call_bx, @function
n708_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n708_call_α:            mov              r11, 280
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
                        cmp              al, 104;                             je    my_member$2F2_step
                                                                              jmp   n709_call_α
n708_call_β:            mov              r11, 280;                            jmp   my_member$2F2_step
                        .size            n708_call_bx, .-n708_call_bx
                        .type            n709_call_bx, @function
n709_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n709_call_α:            mov              r11, 281
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
                        cmp              al, 104;                             je    my_member$2F2_step
                                                                              jmp   my_member$2F2_γ
n709_call_β:            mov              r11, 281;                            jmp   my_member$2F2_step
                        .size            n709_call_bx, .-n709_call_bx
                        .type            n710_var_ref_bx, @function
n710_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n710_var_ref_α:         mov              r11, 282
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n711_var_ref_α
                        .size            n710_var_ref_bx, .-n710_var_ref_bx
                        .type            n711_var_ref_bx, @function
n711_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n711_var_ref_α:         mov              r11, 283
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n712_call_α
                        .size            n711_var_ref_bx, .-n711_var_ref_bx
                        .type            n712_call_bx, @function
n712_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n712_call_α:            mov              r11, 284
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
                        cmp              al, 104;                             je    my_member$2F2_step
                                                                              jmp   n713_var_ref_α
n712_call_β:            mov              r11, 284;                            jmp   my_member$2F2_step
                        .size            n712_call_bx, .-n712_call_bx
                        .type            n713_var_ref_bx, @function
n713_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n713_var_ref_α:         mov              r11, 285
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n714_lit_string_α
                        .size            n713_var_ref_bx, .-n713_var_ref_bx
                        .type            n714_lit_string_bx, @function
n714_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n714_lit_string_α:      mov              r11, 286
                        mov              qword ptr [rbp + 656], 2             # result
                        mov              dword ptr [rbp + 660], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_743_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n715_var_ref_α
.Llit_string_α_743_0:   .quad            .Llit_string_α_743_0_s
.Llit_string_α_743_0_s: .string          "."
                        .size            n714_lit_string_bx, .-n714_lit_string_bx
                        .type            n715_var_ref_bx, @function
n715_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n715_var_ref_α:         mov              r11, 287
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n716_var_ref_α
                        .size            n715_var_ref_bx, .-n715_var_ref_bx
                        .type            n716_var_ref_bx, @function
n716_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n716_var_ref_α:         mov              r11, 288
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n717_call_α
                        .size            n716_var_ref_bx, .-n716_var_ref_bx
                        .type            n717_call_bx, @function
n717_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n717_call_α:            mov              r11, 289
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 552]
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
                        cmp              al, 104;                             je    my_member$2F2_step
                                                                              jmp   n718_call_α
n717_call_β:            mov              r11, 289;                            jmp   my_member$2F2_step
                        .size            n717_call_bx, .-n717_call_bx
                        .type            n718_call_bx, @function
n718_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n718_call_α:            mov              r11, 290
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 584]
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
                        cmp              al, 104;                             je    my_member$2F2_step
                                                                              jmp   n719_var_ref_α
n718_call_β:            mov              r11, 290;                            jmp   my_member$2F2_step
                        .size            n718_call_bx, .-n718_call_bx
                        .type            n719_var_ref_bx, @function
n719_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n719_var_ref_α:         mov              r11, 291
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n720_var_ref_α
                        .size            n719_var_ref_bx, .-n719_var_ref_bx
                        .type            n720_var_ref_bx, @function
n720_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n720_var_ref_α:         mov              r11, 292
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n721_call_proc_staged_α
                        .size            n720_var_ref_bx, .-n720_var_ref_bx
                        .type            n721_call_proc_staged_bx, @function
n721_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n721_call_proc_staged_α:
                        mov              r11, 293
                        mov              qword ptr [rbp + 400], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_755_200
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_755_201
.Lcall_proc_staged_α_755_200:
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
.Lcall_proc_staged_α_755_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_755_202
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_755_203
.Lcall_proc_staged_α_755_202:
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
.Lcall_proc_staged_α_755_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_755_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_755_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_755_99
                        mov              r10, qword ptr [rbp + 856]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_755_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_755_99
                        mov              rcx, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 880]
                        lea              rsp, [rbp + 896]
                        mov              rbp, qword ptr [rbp + 888];          jmp   rax
.Lcall_proc_staged_α_755_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_755_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_755_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_755_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_755_3:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_755_21
                        add              rsp, 32
.Lcall_proc_staged_α_755_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_755_2
.Lcall_proc_staged_α_755_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 400], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_755_2
.Lcall_proc_staged_α_755_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_755_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   my_member$2F2_step
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
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
.Lcall_proc_staged_α_755_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    my_member$2F2_step
                                                                              jmp   my_member$2F2_ret1
n721_call_proc_staged_β:
                        mov              r11, 293
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_755_22
                        mov              rax, qword ptr [rbp + 400]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_755_22
                        mov              rcx, qword ptr [rbp + 408]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_755_22:
                                                                              jmp   my_member$2F2_step
.Lcall_proc_staged_α_755_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    my_member$2F2_step
                                                                              jmp   my_member$2F2_ret1
.Lcall_proc_staged_α_755_0:
                        .quad            .Lcall_proc_staged_α_755_0_s
.Lcall_proc_staged_α_755_0_s:
                        .string          "my_member/2"
                        .size            n721_call_proc_staged_bx, .-n721_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
my_member$2F2_ret1:
                        lea              rax, [rip + n721_call_proc_staged_β]
                        mov              qword ptr [rbp + 848], rax
                                                                              jmp   my_member$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
my_member$2F2_step:
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
                                                                              je    my_member$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
my_member$2F2_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 840], rax
                        mov              r13, qword ptr [rbp + 856]
                                                                              jmp   n710_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
my_member$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
my_member$2F2_β:
                        test             r15, r15
                                                                              jne   my_member$2F2_ω
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 848], 0
                        test             rax, rax
                                                                              jne   my_member$2F2_βres
                                                                              jmp   my_member$2F2_step
my_member$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
my_member$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 872]
                        mov              rax, qword ptr [rbp + 856]
                        cmp              r13, rax;                            je    my_member$2F2_altdet
                        lea              rdx, [rip + my_member$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 888];          jmp   rcx
my_member$2F2_altdet:   xor              eax, eax
                        lea              rsp, [rbp + 896]
                        mov              rbp, qword ptr [rbp + 888];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
my_member$2F2_ω:
                        mov              rcx, qword ptr [rbp + 880]
                        mov              r13, qword ptr [rbp + 856]
                        lea              rsp, [rbp + 896]
                        mov              rbp, qword ptr [rbp + 888];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__houses$2F1:
                        sub              rsp, 2208
                        mov              qword ptr [rsp + 2184], rcx
                        mov              qword ptr [rsp + 2192], rdx
                        mov              qword ptr [rsp + 2200], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 2208]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2168], r13
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2144], r12
                        mov              rdi, rsp
                        mov              esi, 1728
                        mov              edx, 2144
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
houses$2F1_α_body:
                        .type            n756_var_ref_bx, @function
n756_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n756_var_ref_α:         mov              r11, 294
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n757_lit_string_α
                        .size            n756_var_ref_bx, .-n756_var_ref_bx
                        .type            n757_lit_string_bx, @function
n757_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n757_lit_string_α:      mov              r11, 295
                        mov              qword ptr [rbp + 1712], 2            # result
                        mov              dword ptr [rbp + 1716], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_806_0]
                        mov              qword ptr [rbp + 1720], rax;         jmp   n758_lit_string_α
.Llit_string_α_806_0:   .quad            .Llit_string_α_806_0_s
.Llit_string_α_806_0_s: .string          "."
                        .size            n757_lit_string_bx, .-n757_lit_string_bx
                        .type            n758_lit_string_bx, @function
n758_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n758_lit_string_α:      mov              r11, 296
                        mov              qword ptr [rbp + 1616], 2            # result
                        mov              dword ptr [rbp + 1620], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_807_0]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n759_var_ref_α
.Llit_string_α_807_0:   .quad            .Llit_string_α_807_0_s
.Llit_string_α_807_0_s: .string          "house"
                        .size            n758_lit_string_bx, .-n758_lit_string_bx
                        .type            n759_var_ref_bx, @function
n759_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n759_var_ref_α:         mov              r11, 297
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2048]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx;         jmp   n760_var_ref_α
                        .size            n759_var_ref_bx, .-n759_var_ref_bx
                        .type            n760_var_ref_bx, @function
n760_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n760_var_ref_α:         mov              r11, 298
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2064]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n761_var_ref_α
                        .size            n760_var_ref_bx, .-n760_var_ref_bx
                        .type            n761_var_ref_bx, @function
n761_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n761_var_ref_α:         mov              r11, 299
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2080]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n762_var_ref_α
                        .size            n761_var_ref_bx, .-n761_var_ref_bx
                        .type            n762_var_ref_bx, @function
n762_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n762_var_ref_α:         mov              r11, 300
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2096]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n763_var_ref_α
                        .size            n762_var_ref_bx, .-n762_var_ref_bx
                        .type            n763_var_ref_bx, @function
n763_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n763_var_ref_α:         mov              r11, 301
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n764_call_α
                        .size            n763_var_ref_bx, .-n763_var_ref_bx
                        .type            n764_call_bx, @function
n764_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n764_call_α:            mov              r11, 302
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1512], rax
                        lea              rdi, [rbp + 1504]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              al, 104;                             je    houses$2F1_ω
                                                                              jmp   n765_lit_string_α
n764_call_β:            mov              r11, 302;                            jmp   houses$2F1_ω
                        .size            n764_call_bx, .-n764_call_bx
                        .type            n765_lit_string_bx, @function
n765_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n765_lit_string_α:      mov              r11, 303
                        mov              qword ptr [rbp + 1392], 2            # result
                        mov              dword ptr [rbp + 1396], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_819_0]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n766_lit_string_α
.Llit_string_α_819_0:   .quad            .Llit_string_α_819_0_s
.Llit_string_α_819_0_s: .string          "."
                        .size            n765_lit_string_bx, .-n765_lit_string_bx
                        .type            n766_lit_string_bx, @function
n766_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n766_lit_string_α:      mov              r11, 304
                        mov              qword ptr [rbp + 1296], 2            # result
                        mov              dword ptr [rbp + 1300], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_820_0]
                        mov              qword ptr [rbp + 1304], rax;         jmp   n767_var_ref_α
.Llit_string_α_820_0:   .quad            .Llit_string_α_820_0_s
.Llit_string_α_820_0_s: .string          "house"
                        .size            n766_lit_string_bx, .-n766_lit_string_bx
                        .type            n767_var_ref_bx, @function
n767_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n767_var_ref_α:         mov              r11, 305
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1968]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n768_var_ref_α
                        .size            n767_var_ref_bx, .-n767_var_ref_bx
                        .type            n768_var_ref_bx, @function
n768_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n768_var_ref_α:         mov              r11, 306
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1984]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n769_var_ref_α
                        .size            n768_var_ref_bx, .-n768_var_ref_bx
                        .type            n769_var_ref_bx, @function
n769_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n769_var_ref_α:         mov              r11, 307
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2000]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n770_var_ref_α
                        .size            n769_var_ref_bx, .-n769_var_ref_bx
                        .type            n770_var_ref_bx, @function
n770_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n770_var_ref_α:         mov              r11, 308
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2016]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n771_var_ref_α
                        .size            n770_var_ref_bx, .-n770_var_ref_bx
                        .type            n771_var_ref_bx, @function
n771_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n771_var_ref_α:         mov              r11, 309
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2032]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx;         jmp   n772_call_α
                        .size            n771_var_ref_bx, .-n771_var_ref_bx
                        .type            n772_call_bx, @function
n772_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n772_call_α:            mov              r11, 310
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1184]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              al, 104;                             je    houses$2F1_ω
                                                                              jmp   n773_lit_string_α
n772_call_β:            mov              r11, 310;                            jmp   houses$2F1_ω
                        .size            n772_call_bx, .-n772_call_bx
                        .type            n773_lit_string_bx, @function
n773_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n773_lit_string_α:      mov              r11, 311
                        mov              qword ptr [rbp + 1072], 2            # result
                        mov              dword ptr [rbp + 1076], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_832_0]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n774_lit_string_α
.Llit_string_α_832_0:   .quad            .Llit_string_α_832_0_s
.Llit_string_α_832_0_s: .string          "."
                        .size            n773_lit_string_bx, .-n773_lit_string_bx
                        .type            n774_lit_string_bx, @function
n774_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n774_lit_string_α:      mov              r11, 312
                        mov              qword ptr [rbp + 976], 2             # result
                        mov              dword ptr [rbp + 980], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_833_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n775_var_ref_α
.Llit_string_α_833_0:   .quad            .Llit_string_α_833_0_s
.Llit_string_α_833_0_s: .string          "house"
                        .size            n774_lit_string_bx, .-n774_lit_string_bx
                        .type            n775_var_ref_bx, @function
n775_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n775_var_ref_α:         mov              r11, 313
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1888]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n776_var_ref_α
                        .size            n775_var_ref_bx, .-n775_var_ref_bx
                        .type            n776_var_ref_bx, @function
n776_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n776_var_ref_α:         mov              r11, 314
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1904]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n777_var_ref_α
                        .size            n776_var_ref_bx, .-n776_var_ref_bx
                        .type            n777_var_ref_bx, @function
n777_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n777_var_ref_α:         mov              r11, 315
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1920]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n778_var_ref_α
                        .size            n777_var_ref_bx, .-n777_var_ref_bx
                        .type            n778_var_ref_bx, @function
n778_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n778_var_ref_α:         mov              r11, 316
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1936]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n779_var_ref_α
                        .size            n778_var_ref_bx, .-n778_var_ref_bx
                        .type            n779_var_ref_bx, @function
n779_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n779_var_ref_α:         mov              r11, 317
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1952]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n780_call_α
                        .size            n779_var_ref_bx, .-n779_var_ref_bx
                        .type            n780_call_bx, @function
n780_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n780_call_α:            mov              r11, 318
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              al, 104;                             je    houses$2F1_ω
                                                                              jmp   n781_lit_string_α
n780_call_β:            mov              r11, 318;                            jmp   houses$2F1_ω
                        .size            n780_call_bx, .-n780_call_bx
                        .type            n781_lit_string_bx, @function
n781_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n781_lit_string_α:      mov              r11, 319
                        mov              qword ptr [rbp + 752], 2             # result
                        mov              dword ptr [rbp + 756], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_845_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n782_lit_string_α
.Llit_string_α_845_0:   .quad            .Llit_string_α_845_0_s
.Llit_string_α_845_0_s: .string          "."
                        .size            n781_lit_string_bx, .-n781_lit_string_bx
                        .type            n782_lit_string_bx, @function
n782_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n782_lit_string_α:      mov              r11, 320
                        mov              qword ptr [rbp + 656], 2             # result
                        mov              dword ptr [rbp + 660], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_846_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n783_var_ref_α
.Llit_string_α_846_0:   .quad            .Llit_string_α_846_0_s
.Llit_string_α_846_0_s: .string          "house"
                        .size            n782_lit_string_bx, .-n782_lit_string_bx
                        .type            n783_var_ref_bx, @function
n783_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n783_var_ref_α:         mov              r11, 321
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1808]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n784_var_ref_α
                        .size            n783_var_ref_bx, .-n783_var_ref_bx
                        .type            n784_var_ref_bx, @function
n784_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n784_var_ref_α:         mov              r11, 322
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1824]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n785_var_ref_α
                        .size            n784_var_ref_bx, .-n784_var_ref_bx
                        .type            n785_var_ref_bx, @function
n785_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n785_var_ref_α:         mov              r11, 323
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1840]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n786_var_ref_α
                        .size            n785_var_ref_bx, .-n785_var_ref_bx
                        .type            n786_var_ref_bx, @function
n786_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n786_var_ref_α:         mov              r11, 324
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n787_var_ref_α
                        .size            n786_var_ref_bx, .-n786_var_ref_bx
                        .type            n787_var_ref_bx, @function
n787_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n787_var_ref_α:         mov              r11, 325
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1872]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx;          jmp   n788_call_α
                        .size            n787_var_ref_bx, .-n787_var_ref_bx
                        .type            n788_call_bx, @function
n788_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n788_call_α:            mov              r11, 326
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              al, 104;                             je    houses$2F1_ω
                                                                              jmp   n789_lit_string_α
n788_call_β:            mov              r11, 326;                            jmp   houses$2F1_ω
                        .size            n788_call_bx, .-n788_call_bx
                        .type            n789_lit_string_bx, @function
n789_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n789_lit_string_α:      mov              r11, 327
                        mov              qword ptr [rbp + 432], 2             # result
                        mov              dword ptr [rbp + 436], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_858_0]
                        mov              qword ptr [rbp + 440], rax;          jmp   n790_lit_string_α
.Llit_string_α_858_0:   .quad            .Llit_string_α_858_0_s
.Llit_string_α_858_0_s: .string          "."
                        .size            n789_lit_string_bx, .-n789_lit_string_bx
                        .type            n790_lit_string_bx, @function
n790_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n790_lit_string_α:      mov              r11, 328
                        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_859_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n791_var_ref_α
.Llit_string_α_859_0:   .quad            .Llit_string_α_859_0_s
.Llit_string_α_859_0_s: .string          "house"
                        .size            n790_lit_string_bx, .-n790_lit_string_bx
                        .type            n791_var_ref_bx, @function
n791_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n791_var_ref_α:         mov              r11, 329
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1728]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n792_var_ref_α
                        .size            n791_var_ref_bx, .-n791_var_ref_bx
                        .type            n792_var_ref_bx, @function
n792_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n792_var_ref_α:         mov              r11, 330
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1744]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n793_var_ref_α
                        .size            n792_var_ref_bx, .-n792_var_ref_bx
                        .type            n793_var_ref_bx, @function
n793_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n793_var_ref_α:         mov              r11, 331
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1760]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n794_var_ref_α
                        .size            n793_var_ref_bx, .-n793_var_ref_bx
                        .type            n794_var_ref_bx, @function
n794_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n794_var_ref_α:         mov              r11, 332
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n795_var_ref_α
                        .size            n794_var_ref_bx, .-n794_var_ref_bx
                        .type            n795_var_ref_bx, @function
n795_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n795_var_ref_α:         mov              r11, 333
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1792]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n796_call_α
                        .size            n795_var_ref_bx, .-n795_var_ref_bx
                        .type            n796_call_bx, @function
n796_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n796_call_α:            mov              r11, 334
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    houses$2F1_ω
                                                                              jmp   n797_lit_string_α
n796_call_β:            mov              r11, 334;                            jmp   houses$2F1_ω
                        .size            n796_call_bx, .-n796_call_bx
                        .type            n797_lit_string_bx, @function
n797_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n797_lit_string_α:      mov              r11, 335
                        mov              qword ptr [rbp + 112], 2             # result
                        mov              dword ptr [rbp + 116], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_871_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n798_call_α
.Llit_string_α_871_0:   .quad            .Llit_string_α_871_0_s
.Llit_string_α_871_0_s: .string          "[]"
                        .size            n797_lit_string_bx, .-n797_lit_string_bx
                        .type            n798_call_bx, @function
n798_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n798_call_α:            mov              r11, 336
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 216]
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
                        cmp              al, 104;                             je    houses$2F1_ω
                                                                              jmp   n799_call_α
n798_call_β:            mov              r11, 336;                            jmp   houses$2F1_ω
                        .size            n798_call_bx, .-n798_call_bx
                        .type            n799_call_bx, @function
n799_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n799_call_α:            mov              r11, 337
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 536]
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
                        cmp              al, 104;                             je    houses$2F1_ω
                                                                              jmp   n800_call_α
n799_call_β:            mov              r11, 337;                            jmp   houses$2F1_ω
                        .size            n799_call_bx, .-n799_call_bx
                        .type            n800_call_bx, @function
n800_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n800_call_α:            mov              r11, 338
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 856]
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
                        cmp              al, 104;                             je    houses$2F1_ω
                                                                              jmp   n801_call_α
n800_call_β:            mov              r11, 338;                            jmp   houses$2F1_ω
                        .size            n800_call_bx, .-n800_call_bx
                        .type            n801_call_bx, @function
n801_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n801_call_α:            mov              r11, 339
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1328]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              al, 104;                             je    houses$2F1_ω
                                                                              jmp   n802_call_α
n801_call_β:            mov              r11, 339;                            jmp   houses$2F1_ω
                        .size            n801_call_bx, .-n801_call_bx
                        .type            n802_call_bx, @function
n802_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n802_call_α:            mov              r11, 340
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1656], rax
                        lea              rdi, [rbp + 1648]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              al, 104;                             je    houses$2F1_step
                                                                              jmp   n803_call_α
n802_call_β:            mov              r11, 340;                            jmp   houses$2F1_step
                        .size            n802_call_bx, .-n802_call_bx
                        .type            n803_call_bx, @function
n803_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n803_call_α:            mov              r11, 341
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 1640]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    houses$2F1_step
                                                                              jmp   houses$2F1_γ
n803_call_β:            mov              r11, 341;                            jmp   houses$2F1_step
                        .size            n803_call_bx, .-n803_call_bx
#-----------------------------------------------------------------------------------------------------------------------
houses$2F1_step:
                        mov              rdi, qword ptr [rbp + 2144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2160], 0
                        mov              qword ptr [rbp + 2048], 0
                        mov              qword ptr [rbp + 2056], 0
                        mov              qword ptr [rbp + 2064], 0
                        mov              qword ptr [rbp + 2072], 0
                        mov              qword ptr [rbp + 2080], 0
                        mov              qword ptr [rbp + 2088], 0
                        mov              qword ptr [rbp + 2096], 0
                        mov              qword ptr [rbp + 2104], 0
                        mov              qword ptr [rbp + 2112], 0
                        mov              qword ptr [rbp + 2120], 0
                        mov              qword ptr [rbp + 1968], 0
                        mov              qword ptr [rbp + 1976], 0
                        mov              qword ptr [rbp + 1984], 0
                        mov              qword ptr [rbp + 1992], 0
                        mov              qword ptr [rbp + 2000], 0
                        mov              qword ptr [rbp + 2008], 0
                        mov              qword ptr [rbp + 2016], 0
                        mov              qword ptr [rbp + 2024], 0
                        mov              qword ptr [rbp + 2032], 0
                        mov              qword ptr [rbp + 2040], 0
                        mov              qword ptr [rbp + 1888], 0
                        mov              qword ptr [rbp + 1896], 0
                        mov              qword ptr [rbp + 1904], 0
                        mov              qword ptr [rbp + 1912], 0
                        mov              qword ptr [rbp + 1920], 0
                        mov              qword ptr [rbp + 1928], 0
                        mov              qword ptr [rbp + 1936], 0
                        mov              qword ptr [rbp + 1944], 0
                        mov              qword ptr [rbp + 1952], 0
                        mov              qword ptr [rbp + 1960], 0
                        mov              qword ptr [rbp + 1808], 0
                        mov              qword ptr [rbp + 1816], 0
                        mov              qword ptr [rbp + 1824], 0
                        mov              qword ptr [rbp + 1832], 0
                        mov              qword ptr [rbp + 1840], 0
                        mov              qword ptr [rbp + 1848], 0
                        mov              qword ptr [rbp + 1856], 0
                        mov              qword ptr [rbp + 1864], 0
                        mov              qword ptr [rbp + 1872], 0
                        mov              qword ptr [rbp + 1880], 0
                        mov              qword ptr [rbp + 1728], 0
                        mov              qword ptr [rbp + 1736], 0
                        mov              qword ptr [rbp + 1744], 0
                        mov              qword ptr [rbp + 1752], 0
                        mov              qword ptr [rbp + 1760], 0
                        mov              qword ptr [rbp + 1768], 0
                        mov              qword ptr [rbp + 1776], 0
                        mov              qword ptr [rbp + 1784], 0
                        mov              qword ptr [rbp + 1792], 0
                        mov              qword ptr [rbp + 1800], 0
                        mov              rax, qword ptr [rbp + 2152]
                        test             rax, rax
                                                                              je    houses$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
houses$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
houses$2F1_β:
                        test             r15, r15
                                                                              jne   houses$2F1_ω
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2160], 0
                        test             rax, rax
                                                                              jne   houses$2F1_βres
                                                                              jmp   houses$2F1_step
houses$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
houses$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 2184]
                        mov              rax, qword ptr [rbp + 2168]
                        cmp              r13, rax;                            je    houses$2F1_altdet
                        lea              rdx, [rip + houses$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 2200];         jmp   rcx
houses$2F1_altdet:      xor              eax, eax
                        lea              rsp, [rbp + 2208]
                        mov              rbp, qword ptr [rbp + 2200];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
houses$2F1_ω:
                        mov              rcx, qword ptr [rbp + 2192]
                        mov              r13, qword ptr [rbp + 2168]
                        lea              rsp, [rbp + 2208]
                        mov              rbp, qword ptr [rbp + 2200];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__main$2F0:
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rcx
                        mov              qword ptr [rsp + 256], rdx
                        mov              qword ptr [rsp + 264], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 232], r13
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 208], r12
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
main$2F0_α_body:
                        .type            n878_var_ref_bx, @function
n878_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n878_var_ref_α:         mov              r11, 342
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n879_call_proc_staged_α
                        .size            n878_var_ref_bx, .-n878_var_ref_bx
                        .type            n879_call_proc_staged_bx, @function
n879_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n879_call_proc_staged_α:
                        mov              r11, 343
                        mov              qword ptr [rbp + 128], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_886_200
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_886_201
.Lcall_proc_staged_α_886_200:
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
.Lcall_proc_staged_α_886_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_886_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_886_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_886_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_886_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_886_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_886_3:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_886_21
                        add              rsp, 32
.Lcall_proc_staged_α_886_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_886_2
.Lcall_proc_staged_α_886_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 128], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_886_2
.Lcall_proc_staged_α_886_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_886_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main$2F0_step
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
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
.Lcall_proc_staged_α_886_29:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n880_var_α
n879_call_proc_staged_β:
                        mov              r11, 343
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_886_22
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_886_22
                        mov              rcx, qword ptr [rbp + 136]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_886_22:
                                                                              jmp   main$2F0_step
.Lcall_proc_staged_α_886_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n880_var_α
.Lcall_proc_staged_α_886_0:
                        .quad            .Lcall_proc_staged_α_886_0_s
.Lcall_proc_staged_α_886_0_s:
                        .string          "zebra/1"
                        .size            n879_call_proc_staged_bx, .-n879_call_proc_staged_bx
                        .type            n880_var_bx, @function
n880_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n880_var_α:             mov              r11, 344
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 88], rax;           jmp   n881_call_α
                        .size            n880_var_bx, .-n880_var_bx
                        .type            n881_call_bx, @function
n881_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n881_call_α:            mov              r11, 345
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
                        cmp              al, 104;                             je    n879_call_proc_staged_β
                                                                              jmp   n882_call_α
n881_call_β:            mov              r11, 345;                            jmp   n879_call_proc_staged_β
                        .size            n881_call_bx, .-n881_call_bx
                        .type            n882_call_bx, @function
n882_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n882_call_α:            mov              r11, 346
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
                        cmp              al, 104;                             je    n879_call_proc_staged_β
                                                                              jmp   main$2F0_ret0
n882_call_β:            mov              r11, 346;                            jmp   n879_call_proc_staged_β
                        .size            n882_call_bx, .-n882_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ret0:
                        lea              rax, [rip + n879_call_proc_staged_β]
                        mov              qword ptr [rbp + 224], rax
                                                                              jmp   main$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_step:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 224], 0
                        mov              qword ptr [rbp + 176], 0
                        mov              qword ptr [rbp + 184], 0
                        mov              rax, qword ptr [rbp + 216]
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
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 224], 0
                        test             rax, rax
                                                                              jne   main$2F0_βres
                                                                              jmp   main$2F0_step
main$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 248]
                        mov              rax, qword ptr [rbp + 232]
                        cmp              r13, rax;                            je    main$2F0_altdet
                        lea              rdx, [rip + main$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 264];          jmp   rcx
main$2F0_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 272]
                        mov              rbp, qword ptr [rbp + 264];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ω:
                        mov              rcx, qword ptr [rbp + 256]
                        mov              r13, qword ptr [rbp + 232]
                        lea              rsp, [rbp + 272]
                        mov              rbp, qword ptr [rbp + 264];          jmp   rcx
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
                        .type            n891_call_proc_staged_bx, @function
n891_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n891_call_proc_staged_α:
                        mov              r11, 347
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_893_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 0
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
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_893_21
                        add              rsp, 32
.Lcall_proc_staged_α_893_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_893_2
.Lcall_proc_staged_α_893_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_893_2
.Lcall_proc_staged_α_893_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_893_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
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
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8]
.Lcall_proc_staged_α_893_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n891_call_proc_staged_β:
                        mov              r11, 347
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_893_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_893_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_893_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_893_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_893_0:
                        .quad            .Lcall_proc_staged_α_893_0_s
.Lcall_proc_staged_α_893_0_s:
                        .string          "main/0"
                        .size            n891_call_proc_staged_bx, .-n891_call_proc_staged_bx
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
.Lstartup_pname0:       .string          "zebra/1"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__zebra$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            8176
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "right_of/3"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__right_of$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1184
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "next_to/3"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__next_to$2F3
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
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "my_member/2"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__my_member$2F2
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
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "houses/1"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__houses$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            2128
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "main/0"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__main$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            192
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
