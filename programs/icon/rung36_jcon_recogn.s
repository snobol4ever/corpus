                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__recogn:
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rcx
                        mov              qword ptr [rsp + 336], rdx
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
recogn_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              r11, 1
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 264], rax;          jmp   n1_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n1_scan_enter_α:        mov              r11, 2
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              r11, 3
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 184], rax;          jmp   n3_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_value_α:        mov              r11, 4
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 208], 0
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        lea              rdx, [rsp + 208]
                        mov              ecx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx17_7
                        lea              rcx, [rip + .Lx17_4]
                        push             rcx
                        lea              rcx, [rip + .Lx17_3]
                        push             rcx;                                 jmp   rax
.Lx17_3:                mov              qword ptr [rsp + 216], rsp
                        mov              rax, qword ptr [rsp + 208]
                        test             rax, rax;                            jne   .Lx17_5
                        mov              qword ptr [rsp + 208], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx17_2
.Lx17_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx17_2
.Lx17_4:                mov              qword ptr [rsp + 216], rsp
                        mov              rax, qword ptr [rsp + 208]
                        test             rax, rax;                            jne   .Lx17_6
                        mov              qword ptr [rsp + 208], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx17_2
.Lx17_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx17_2
.Lx17_7:                mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        lea              rdx, [rsp + 208]
                        mov              ecx, 0
                        lea              r8, [rsp + 208]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx17_2:                push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n9_scan_α
                                                                              jmp   n4_lit_integer_α
n3_call_value_β:        mov              r11, 4
                        mov              rax, qword ptr [rsp + 208]
                        cmp              rax, 1;                              jne   .Lx17_8
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 216];          jmp   qword ptr [rsp]
.Lx17_8:                mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rdi, [rsp + 208]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              al, 104;                             je    n9_scan_α
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n4_lit_integer_α
                                                                              jmp   n9_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              r11, 5
                        mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n5_scan_pos_α
.Lx18_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n5_scan_pos_α:          mov              r11, 6
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx20_0
                        add              rax, r15
                        add              rax, 1
.Lx20_0:                cmp              rax, 1;                              jl    n9_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n9_scan_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n9_scan_α
                        mov              qword ptr [rsp + 144], 3
                        mov              qword ptr [rsp + 152], rax;          jmp   n6_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n6_conjunction_α:       mov              r11, 7
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 136], rax;          jmp   n7_scan_α
n6_conjunction_β:       mov              r11, 7;                              jmp   n9_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n7_scan_α:              mov              r11, 8
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80];           jmp   n8_return_α
n7_scan_β:              mov              r11, 8;                              jmp   recogn_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_return_α:            mov              r11, 9
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   recogn_γ
#-----------------------------------------------------------------------------------------------------------------------
n9_scan_α:              mov              r11, 10
                        lea              rdi, [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80];           jmp   recogn_ω
n9_scan_β:              mov              r11, 10;                             jmp   recogn_ω
#-----------------------------------------------------------------------------------------------------------------------
recogn_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
recogn_β:
                                                                              jmp   recogn_ω
#-----------------------------------------------------------------------------------------------------------------------
recogn_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 328]
                        add              rsp, 352;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
recogn_ω:
                        mov              rcx, qword ptr [rsp + 336]
                        add              rsp, 352;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
recogn_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx27_2]
                        lea              rdx, [rip + .Lx27_3];                jmp   FN__recogn
.Lx27_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx27_3:                pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__s:
s_α_body:
                        lea              rax, [rip + n29_suspend_β]
                        mov              qword ptr [rsp + 560], rax
#-----------------------------------------------------------------------------------------------------------------------
n28_disjunction_α:      mov              r11, 11
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              dword ptr [rsp + 32], 0;             jmp   n38_lit_string_α
n28_disjunction_as:     mov              r11, 11
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 0;                              jne   .Lx44_0
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax;           jmp   n29_suspend_α
.Lx44_0:                cmp              eax, 1;                              jne   .Lx44_1
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 24], rax;           jmp   n29_suspend_α
.Lx44_1:                cmp              eax, 2;                              jne   .Lx44_2
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 24], rax;           jmp   n29_suspend_α
.Lx44_2:                                                                      jmp   n29_suspend_α
n28_disjunction_β:      mov              r11, 11
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 0;                              je    n41_proc_gen_β
                        cmp              eax, 1;                              je    n33_proc_gen_β
                                                                              jmp   n28_disjunction_af
n28_disjunction_af:     mov              r11, 11
                        add              dword ptr [rsp + 32], 1
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 1;                              je    n33_proc_gen_α
                        cmp              eax, 2;                              je    n30_lit_string_α
                                                                              jmp   s_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_suspend_α:          mov              r11, 12
                        lea              rax, [rip + n29_suspend_β]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   s_γ
n29_suspend_β:          mov              r11, 12;                             jmp   n28_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:       mov              r11, 13
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 1
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n31_call_α
n30_lit_string_β:       mov              r11, 13;                             jmp   n28_disjunction_af
.Lx47_0:                .quad            .Lx47_0_s
.Lx47_0_s:              .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n31_call_α:             mov              r11, 14
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        .section         .rodata
.Lbynamefn14:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn14]
                        lea              rsi, [rsp + 512]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              al, 104;                             je    n28_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n32_call_α
n31_call_β:             mov              r11, 14;                             jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:             mov              r11, 15
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        mov              qword ptr [rsp + 464], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        .section         .rodata
.Lbynamefn15:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn15]
                        lea              rsi, [rsp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              al, 104;                             je    n28_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_disjunction_as
n32_call_β:             mov              r11, 15
                        mov              r14, qword ptr [rsp + 464];          jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n33_proc_gen_α:         mov              r11, 16
                        mov              qword ptr [rsp + 272], 0
                        lea              rax, [rip + .Lx51_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx51_1
                        lea              rcx, [rip + .Lx51_3]
                        lea              rdx, [rip + .Lx51_4];                jmp   rax
.Lx51_3:                mov              qword ptr [rsp + 280], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 272]
                        test             rax, rax;                            jne   .Lx51_5
                        mov              qword ptr [rsp + 272], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx51_2
.Lx51_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx51_2
.Lx51_4:                mov              rax, qword ptr [rsp + 272]
                        test             rax, rax;                            jne   .Lx51_6
                        mov              qword ptr [rsp + 272], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx51_2
.Lx51_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx51_2
.Lx51_1:                call             rt_faildescr@PLT
.Lx51_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx51_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
.Lx51_29:               mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n28_disjunction_af
                                                                              jmp   n34_lit_string_α
n33_proc_gen_β:         mov              r11, 16
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 280];          jmp   qword ptr [rsp]
.Lx51_7:                add              rsp, 8
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n28_disjunction_af
                                                                              jmp   n34_lit_string_α
.Lx51_0:                .quad            .Lx51_0_s
.Lx51_0_s:              .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 1
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n35_call_α
.Lx52_0:                .quad            .Lx52_0_s
.Lx52_0_s:              .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n35_call_α:             mov              r11, 18
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        .section         .rodata
.Lbynamefn18:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn18]
                        lea              rsi, [rsp + 384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              al, 104;                             je    n33_proc_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n36_call_α
n35_call_β:             mov              r11, 18;                             jmp   n33_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n36_call_α:             mov              r11, 19
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 328], rax
                        mov              qword ptr [rsp + 336], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        .section         .rodata
.Lbynamefn19:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn19]
                        lea              rsi, [rsp + 320]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              al, 104;                             je    n33_proc_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n37_binop_α
n36_call_β:             mov              r11, 19
                        mov              r14, qword ptr [rsp + 336];          jmp   n33_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_α:            mov              r11, 20
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_disjunction_as
n37_binop_β:            mov              r11, 20;                             jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:       mov              r11, 21
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 1
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n39_call_α
n38_lit_string_β:       mov              r11, 21;                             jmp   n28_disjunction_af
.Lx56_0:                .quad            .Lx56_0_s
.Lx56_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_α:             mov              r11, 22
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        .section         .rodata
.Lbynamefn22:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn22]
                        lea              rsi, [rsp + 144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              al, 104;                             je    n28_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n40_call_α
n39_call_β:             mov              r11, 22;                             jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n40_call_α:             mov              r11, 23
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [rsp + 96], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        .section         .rodata
.Lbynamefn23:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn23]
                        lea              rsi, [rsp + 80]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              al, 104;                             je    n28_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n41_proc_gen_α
n40_call_β:             mov              r11, 23
                        mov              r14, qword ptr [rsp + 96];           jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n41_proc_gen_α:         mov              r11, 24
                        mov              qword ptr [rsp + 208], 0
                        lea              rax, [rip + .Lx60_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx60_1
                        lea              rcx, [rip + .Lx60_3]
                        lea              rdx, [rip + .Lx60_4];                jmp   rax
.Lx60_3:                mov              qword ptr [rsp + 216], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 208]
                        test             rax, rax;                            jne   .Lx60_5
                        mov              qword ptr [rsp + 208], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx60_2
.Lx60_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx60_2
.Lx60_4:                mov              rax, qword ptr [rsp + 208]
                        test             rax, rax;                            jne   .Lx60_6
                        mov              qword ptr [rsp + 208], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx60_2
.Lx60_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx60_2
.Lx60_1:                call             rt_faildescr@PLT
.Lx60_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx60_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
.Lx60_29:               mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n28_disjunction_af
                                                                              jmp   n42_binop_α
n41_proc_gen_β:         mov              r11, 24
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 216];          jmp   qword ptr [rsp]
.Lx60_7:                add              rsp, 8
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n28_disjunction_af
                                                                              jmp   n42_binop_α
.Lx60_0:                .quad            .Lx60_0_s
.Lx60_0_s:              .string          "s"
#-----------------------------------------------------------------------------------------------------------------------
n42_binop_α:            mov              r11, 25
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_disjunction_as
n42_binop_β:            mov              r11, 25;                             jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
s_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
s_β:
                                                                              jmp   n29_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
s_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
s_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__t:
t_α_body:
                        lea              rax, [rip + n63_suspend_β]
                        mov              qword ptr [rsp + 640], rax
#-----------------------------------------------------------------------------------------------------------------------
n62_disjunction_α:      mov              r11, 26
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              dword ptr [rsp + 32], 0;             jmp   n70_lit_string_α
n62_disjunction_as:     mov              r11, 26
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 0;                              jne   .Lx80_0
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax;           jmp   n63_suspend_α
.Lx80_0:                cmp              eax, 1;                              jne   .Lx80_1
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 24], rax;           jmp   n63_suspend_α
.Lx80_1:                cmp              eax, 2;                              jne   .Lx80_2
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 24], rax;           jmp   n63_suspend_α
.Lx80_2:                                                                      jmp   n63_suspend_α
n62_disjunction_β:      mov              r11, 26
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 0;                              je    n73_proc_gen_β
                        cmp              eax, 1;                              je    n62_disjunction_af
                                                                              jmp   n62_disjunction_af
n62_disjunction_af:     mov              r11, 26
                        add              dword ptr [rsp + 32], 1
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 1;                              je    n67_lit_string_α
                        cmp              eax, 2;                              je    n64_lit_string_α
                                                                              jmp   t_ω
#-----------------------------------------------------------------------------------------------------------------------
n63_suspend_α:          mov              r11, 27
                        lea              rax, [rip + n63_suspend_β]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   t_γ
n63_suspend_β:          mov              r11, 27;                             jmp   n62_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 1
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n65_call_α
n64_lit_string_β:       mov              r11, 28;                             jmp   n62_disjunction_af
.Lx83_0:                .quad            .Lx83_0_s
.Lx83_0_s:              .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n65_call_α:             mov              r11, 29
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        .section         .rodata
.Lbynamefn29:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn29]
                        lea              rsi, [rsp + 592]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              al, 104;                             je    n62_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n66_call_α
n65_call_β:             mov              r11, 29;                             jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:             mov              r11, 30
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        mov              qword ptr [rsp + 544], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        .section         .rodata
.Lbynamefn30:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn30]
                        lea              rsi, [rsp + 528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              al, 104;                             je    n62_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n62_disjunction_as
n66_call_β:             mov              r11, 30
                        mov              r14, qword ptr [rsp + 544];          jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              r11, 31
                        mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 1
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n68_call_α
n67_lit_string_β:       mov              r11, 31;                             jmp   n62_disjunction_af
.Lx86_0:                .quad            .Lx86_0_s
.Lx86_0_s:              .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n68_call_α:             mov              r11, 32
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        .section         .rodata
.Lbynamefn32:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn32]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              al, 104;                             je    n62_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n69_call_α
n68_call_β:             mov              r11, 32;                             jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n69_call_α:             mov              r11, 33
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        mov              qword ptr [rsp + 416], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        .section         .rodata
.Lbynamefn33:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn33]
                        lea              rsi, [rsp + 400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              al, 104;                             je    n62_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n62_disjunction_as
n69_call_β:             mov              r11, 33
                        mov              r14, qword ptr [rsp + 416];          jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       mov              r11, 34
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 1
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n71_call_α
n70_lit_string_β:       mov              r11, 34;                             jmp   n62_disjunction_af
.Lx89_0:                .quad            .Lx89_0_s
.Lx89_0_s:              .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:             mov              r11, 35
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        .section         .rodata
.Lbynamefn35:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn35]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              al, 104;                             je    n62_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n72_call_α
n71_call_β:             mov              r11, 35;                             jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n72_call_α:             mov              r11, 36
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [rsp + 112], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        .section         .rodata
.Lbynamefn36:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn36]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              al, 104;                             je    n62_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n73_proc_gen_α
n72_call_β:             mov              r11, 36
                        mov              r14, qword ptr [rsp + 112];          jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n73_proc_gen_α:         mov              r11, 37
                        mov              qword ptr [rsp + 224], 0
                        lea              rax, [rip + .Lx93_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx93_1
                        lea              rcx, [rip + .Lx93_3]
                        lea              rdx, [rip + .Lx93_4];                jmp   rax
.Lx93_3:                mov              qword ptr [rsp + 232], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 224]
                        test             rax, rax;                            jne   .Lx93_5
                        mov              qword ptr [rsp + 224], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx93_2
.Lx93_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx93_2
.Lx93_4:                mov              rax, qword ptr [rsp + 224]
                        test             rax, rax;                            jne   .Lx93_6
                        mov              qword ptr [rsp + 224], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx93_2
.Lx93_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx93_2
.Lx93_1:                call             rt_faildescr@PLT
.Lx93_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx93_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
.Lx93_29:               mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n62_disjunction_af
                                                                              jmp   n74_binop_α
n73_proc_gen_β:         mov              r11, 37
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 232];          jmp   qword ptr [rsp]
.Lx93_7:                add              rsp, 8
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n62_disjunction_af
                                                                              jmp   n74_binop_α
.Lx93_0:                .quad            .Lx93_0_s
.Lx93_0_s:              .string          "s"
#-----------------------------------------------------------------------------------------------------------------------
n74_binop_α:            mov              r11, 38
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n75_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:       mov              r11, 39
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 1
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n76_call_α
.Lx95_0:                .quad            .Lx95_0_s
.Lx95_0_s:              .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n76_call_α:             mov              r11, 40
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        .section         .rodata
.Lbynamefn40:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn40]
                        lea              rsi, [rsp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              al, 104;                             je    n73_proc_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n77_call_α
n76_call_β:             mov              r11, 40;                             jmp   n73_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n77_call_α:             mov              r11, 41
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        mov              qword ptr [rsp + 288], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        .section         .rodata
.Lbynamefn41:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn41]
                        lea              rsi, [rsp + 272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              al, 104;                             je    n73_proc_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n78_binop_α
n77_call_β:             mov              r11, 41
                        mov              r14, qword ptr [rsp + 288];          jmp   n73_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_α:            mov              r11, 42
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n62_disjunction_as
n78_binop_β:            mov              r11, 42;                             jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
t_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
t_β:
                                                                              jmp   n63_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
t_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
t_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 384
                        mov              qword ptr [rsp + 360], rcx
                        mov              qword ptr [rsp + 368], rdx
                        mov              rdi, rsp
                        add              rdi, 304
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_icon_α:
                        mov              r11, 43
                        .section         .rodata
.Lrkfn110:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn110]
                        lea              rsi, [rsp + 32]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n100_assign_α
n99_call_builtin_icon_β:
                        mov              r11, 43;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n100_assign_α:          mov              r11, 44
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n101_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n101_disjunction_α:     mov              r11, 45
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              dword ptr [rsp + 64], 0;             jmp   n104_proc_value_α
n101_disjunction_as:    mov              r11, 45
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 0;                              jne   .Lx113_0
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax;           jmp   n99_call_builtin_icon_α
.Lx113_0:               cmp              eax, 1;                              jne   .Lx113_1
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 56], rax;           jmp   n99_call_builtin_icon_α
.Lx113_1:                                                                     jmp   n99_call_builtin_icon_α
n101_disjunction_β:     mov              r11, 45
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 0;                              je    n99_call_builtin_icon_α
                                                                              jmp   n99_call_builtin_icon_α
n101_disjunction_af:    mov              r11, 45
                        add              dword ptr [rsp + 64], 1
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 1;                              je    n102_lit_string_α
                                                                              jmp   n99_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      mov              r11, 46
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 8
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n103_call_builtin_icon_α
n102_lit_string_β:      mov              r11, 46;                             jmp   n99_call_builtin_icon_α
.Lx114_0:               .quad            .Lx114_0_s
.Lx114_0_s:             .string          "rejected"
#-----------------------------------------------------------------------------------------------------------------------
n103_call_builtin_icon_α:
                        mov              r11, 47
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn116:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn116]
                        lea              rsi, [rsp + 256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n99_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n101_disjunction_as
n103_call_builtin_icon_β:
                        mov              r11, 47;                             jmp   n99_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n104_proc_value_α:      mov              r11, 48
                        mov              rdi, qword ptr [rip + .Lx118_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n105_var_α
n104_proc_value_β:      mov              r11, 48;                             jmp   n101_disjunction_af
.Lx118_0:               .quad            .Lx118_0_s
.Lx118_0_s:             .string          "s"
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:             mov              r11, 49
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 232], rax;          jmp   n106_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_proc_staged_α:
                        mov              r11, 50
                        lea              rsi, [rsp + 208]
                        lea              rdx, [rsp + 224]
                        call             recogn_dcα;                          jmp   .Lx122_2
.Lx122_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx122_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
.Lx122_29:              mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n101_disjunction_af
                                                                              jmp   n107_lit_string_α
n106_call_proc_staged_β:
                        mov              r11, 50;                             jmp   n101_disjunction_af
.Lx122_0:               .quad            .Lx122_0_s
.Lx122_0_s:             .string          "recogn"
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      mov              r11, 51
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 8
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n108_call_builtin_icon_α
.Lx123_0:               .quad            .Lx123_0_s
.Lx123_0_s:             .string          "accepted"
#-----------------------------------------------------------------------------------------------------------------------
n108_call_builtin_icon_α:
                        mov              r11, 52
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn125:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn125]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n99_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n101_disjunction_as
n108_call_builtin_icon_β:
                        mov              r11, 52;                             jmp   n99_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        and              rsp, -16
                        mov              edi, 1
                        call             exit@PLT
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "recogn"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__recogn
                        .quad            recogn_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            272
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "s"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__s
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            576
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "t"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__t
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            656
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
