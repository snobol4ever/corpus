                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_recogn_α
proc_recogn_α:
proc_recogn_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 224
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n1_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n1_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 256]                     # lo
                        mov              rsi, qword ptr [rbp + 264]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n3_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_value_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        mov              qword ptr [rbp + 208], 0
                        mov              rdi, qword ptr [rbp + 176]                     # callee
                        mov              rsi, qword ptr [rbp + 184]                     # callee
                        lea              rdx, [rbp + 208]                               # argv
                        mov              ecx, 0                                         # n
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx17_7
                        lea              rcx, [rip + .Lx17_3]
                        lea              rdx, [rip + .Lx17_4]
                                                                                        jmp   rax
.Lx17_3:
                        mov              qword ptr [rbp + 216], rsp
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx17_5
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx17_2
.Lx17_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx17_2
.Lx17_4:
                        mov              qword ptr [rbp + 216], rsp
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx17_6
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx17_2
.Lx17_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx17_2
.Lx17_7:
                        mov              rdi, qword ptr [rbp + 176]                     # callee
                        mov              rsi, qword ptr [rbp + 184]                     # callee
                        lea              rdx, [rbp + 208]                               # argv
                        mov              ecx, 0                                         # n
                        lea              r8, [rbp + 208]                                # hslot
                        call             rt_call_value_gen_h@PLT
.Lx17_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx17_239
                        add              rsp, 224
                                                                                        jmp   n9_scan_α
.Lx17_239:
                                                                                        jmp   n4_lit_integer_α
n3_call_value_β:
                        mov              rax, qword ptr [rbp + 208]
                        cmp              rax, 1
                                                                                        jne   .Lx17_8
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 216]
                                                                                        jmp   qword ptr [rsp]
.Lx17_8:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rdi, [rbp + 208]                               # hslot
                        call             rt_call_value_resume_h@PLT
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        jne   .Lx17_240
                        add              rsp, 224
                                                                                        jmp   n9_scan_α
.Lx17_240:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n4_lit_integer_α
                        add              rsp, 224
                                                                                        jmp   n9_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 160], 3                       # result
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n5_scan_pos_α
.Lx18_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n5_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx20_0
                        add              rax, r15
                        add              rax, 1
.Lx20_0:
                        cmp              rax, 1
                                                                                        jge   .Lx20_238
                        add              rsp, 224
                                                                                        jmp   n9_scan_α
.Lx20_238:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx20_239
                        add              rsp, 224
                                                                                        jmp   n9_scan_α
.Lx20_239:
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        je    .Lx20_240
                        add              rsp, 224
                                                                                        jmp   n9_scan_α
.Lx20_240:
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n6_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n6_conjunction_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n7_scan_α
n6_conjunction_β:
                                                                                        jmp   n9_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n7_scan_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 64]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   n8_return_α
n7_scan_β:
                        add              rsp, 224
                                                                                        jmp   proc_recogn_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        add              rsp, 224
                                                                                        jmp   proc_recogn_γ
#-----------------------------------------------------------------------------------------------------------------------
n9_scan_α:
                        lea              rdi, [rbp + 64]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   proc_recogn_ω
n9_scan_β:
                                                                                        jmp   proc_recogn_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_recogn_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_recogn_β:
                                                                                        jmp   proc_recogn_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_recogn_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_recogn_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_recogn_dcα:
                        pop              r11
                        sub              rsp, 336
                        mov              qword ptr [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 288], r11
                        lea              rax, [rip + .Lx27_2]
                        mov              qword ptr [rbp + 296], rax
                        lea              rax, [rip + .Lx27_3]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 272                                       # suffix_off
                        mov              edx, 288                                       # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_recogn_α_body
.Lx27_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -320
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx27_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -320
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_s_α
proc_s_α:
proc_s_α_body:
                        lea              rax, [rip + n29_suspend_β]
                        mov              qword ptr [rbp + 560], rax
#-----------------------------------------------------------------------------------------------------------------------
n28_disjunction_α:
                        mov              qword ptr [rbp + 16], 0
                        mov              qword ptr [rbp + 24], 0
                        mov              dword ptr [rbp + 32], 0
                                                                                        jmp   n38_lit_string_α
n28_disjunction_as:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 0
                                                                                        jne   .Lx44_0
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n29_suspend_α
.Lx44_0:
                        cmp              eax, 1
                                                                                        jne   .Lx44_1
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n29_suspend_α
.Lx44_1:
                        cmp              eax, 2
                                                                                        jne   .Lx44_2
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n29_suspend_α
.Lx44_2:
                                                                                        jmp   n29_suspend_α
n28_disjunction_β:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 0
                                                                                        je    n41_proc_gen_β
                        cmp              eax, 1
                                                                                        je    n33_proc_gen_β
                                                                                        jmp   n28_disjunction_af
n28_disjunction_af:
                        add              dword ptr [rbp + 32], 1
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 1
                                                                                        je    n33_proc_gen_α
                        cmp              eax, 2
                                                                                        je    n30_lit_string_α
                                                                                        jmp   proc_s_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_suspend_α:
                        lea              rax, [rip + n29_suspend_β]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 544
                                                                                        jmp   proc_s_γ
n29_suspend_β:
                                                                                        jmp   n28_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 544], 2                       # result
                        mov              dword ptr [rbp + 548], 1
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n31_call_α
n30_lit_string_β:
                                                                                        jmp   n28_disjunction_af
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n31_call_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn14:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn14]                      # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n28_disjunction_af
                                                                                        jmp   n32_call_α
n31_call_β:
                                                                                        jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        mov              qword ptr [rbp + 464], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn15:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn15]                      # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n28_disjunction_af
                                                                                        jmp   n28_disjunction_as
n32_call_β:
                        mov              r14, qword ptr [rbp + 464]
                                                                                        jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n33_proc_gen_α:
                        mov              qword ptr [rbp + 272], 0
                        mov              edi, 2                                         # idx
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx51_1
                        lea              rcx, [rip + .Lx51_3]
                        lea              rdx, [rip + .Lx51_4]
                                                                                        jmp   rax
.Lx51_3:
                        mov              qword ptr [rbp + 280], rsp
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax
                                                                                        jne   .Lx51_5
                        mov              qword ptr [rbp + 272], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx51_2
.Lx51_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx51_2
.Lx51_4:
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax
                                                                                        jne   .Lx51_6
                        mov              qword ptr [rbp + 272], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx51_2
.Lx51_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx51_2
.Lx51_1:
                        call             rt_faildescr@PLT
.Lx51_2:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 104
                                                                                        je    n28_disjunction_af
                                                                                        jmp   n34_lit_string_α
n33_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 280]
                                                                                        jmp   qword ptr [rsp]
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 416], 2                       # result
                        mov              dword ptr [rbp + 420], 1
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n35_call_α
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n35_call_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn18:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn18]                      # fn
                        lea              rsi, [rbp + 384]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n33_proc_gen_β
                                                                                        jmp   n36_call_α
n35_call_β:
                                                                                        jmp   n33_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n36_call_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        mov              qword ptr [rbp + 336], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn19:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn19]                      # fn
                        lea              rsi, [rbp + 320]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n33_proc_gen_β
                                                                                        jmp   n37_binop_α
n36_call_β:
                        mov              r14, qword ptr [rbp + 336]
                                                                                        jmp   n33_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_α:
                        mov              rdi, qword ptr [rbp + 256]                     # a
                        mov              rsi, qword ptr [rbp + 264]                     # a
                        mov              rdx, qword ptr [rbp + 304]                     # b
                        mov              rcx, qword ptr [rbp + 312]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n28_disjunction_as
n37_binop_β:
                                                                                        jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 1
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n39_call_α
n38_lit_string_β:
                                                                                        jmp   n28_disjunction_af
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn22:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn22]                      # fn
                        lea              rsi, [rbp + 144]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n28_disjunction_af
                                                                                        jmp   n40_call_α
n39_call_β:
                                                                                        jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n40_call_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              qword ptr [rbp + 96], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn23:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn23]                      # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n28_disjunction_af
                                                                                        jmp   n41_proc_gen_α
n40_call_β:
                        mov              r14, qword ptr [rbp + 96]
                                                                                        jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n41_proc_gen_α:
                        mov              qword ptr [rbp + 208], 0
                        mov              edi, 1                                         # idx
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx60_1
                        lea              rcx, [rip + .Lx60_3]
                        lea              rdx, [rip + .Lx60_4]
                                                                                        jmp   rax
.Lx60_3:
                        mov              qword ptr [rbp + 216], rsp
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx60_5
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx60_2
.Lx60_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx60_2
.Lx60_4:
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx60_6
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx60_2
.Lx60_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx60_2
.Lx60_1:
                        call             rt_faildescr@PLT
.Lx60_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n28_disjunction_af
                                                                                        jmp   n42_binop_α
n41_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 216]
                                                                                        jmp   qword ptr [rsp]
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "s"
#-----------------------------------------------------------------------------------------------------------------------
n42_binop_α:
                        mov              rdi, qword ptr [rbp + 64]                      # a
                        mov              rsi, qword ptr [rbp + 72]                      # a
                        mov              rdx, qword ptr [rbp + 192]                     # b
                        mov              rcx, qword ptr [rbp + 200]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n28_disjunction_as
n42_binop_β:
                                                                                        jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_s_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_s_β:
                                                                                        jmp   qword ptr [rbp + 560]
#-----------------------------------------------------------------------------------------------------------------------
proc_s_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_s_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_t_α
proc_t_α:
proc_t_α_body:
                        lea              rax, [rip + n63_suspend_β]
                        mov              qword ptr [rbp + 640], rax
#-----------------------------------------------------------------------------------------------------------------------
n62_disjunction_α:
                        mov              qword ptr [rbp + 16], 0
                        mov              qword ptr [rbp + 24], 0
                        mov              dword ptr [rbp + 32], 0
                                                                                        jmp   n70_lit_string_α
n62_disjunction_as:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 0
                                                                                        jne   .Lx80_0
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n63_suspend_α
.Lx80_0:
                        cmp              eax, 1
                                                                                        jne   .Lx80_1
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n63_suspend_α
.Lx80_1:
                        cmp              eax, 2
                                                                                        jne   .Lx80_2
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n63_suspend_α
.Lx80_2:
                                                                                        jmp   n63_suspend_α
n62_disjunction_β:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 0
                                                                                        je    n73_proc_gen_β
                        cmp              eax, 1
                                                                                        je    n62_disjunction_af
                                                                                        jmp   n62_disjunction_af
n62_disjunction_af:
                        add              dword ptr [rbp + 32], 1
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 1
                                                                                        je    n67_lit_string_α
                        cmp              eax, 2
                                                                                        je    n64_lit_string_α
                                                                                        jmp   proc_t_ω
#-----------------------------------------------------------------------------------------------------------------------
n63_suspend_α:
                        lea              rax, [rip + n63_suspend_β]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 624
                                                                                        jmp   proc_t_γ
n63_suspend_β:
                                                                                        jmp   n62_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:
                        mov              qword ptr [rbp + 624], 2                       # result
                        mov              dword ptr [rbp + 628], 1
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n65_call_α
n64_lit_string_β:
                                                                                        jmp   n62_disjunction_af
.Lx83_0:
                        .quad            .Lx83_0_s
.Lx83_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n65_call_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn29:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn29]                      # fn
                        lea              rsi, [rbp + 592]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n62_disjunction_af
                                                                                        jmp   n66_call_α
n65_call_β:
                                                                                        jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              qword ptr [rbp + 544], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn30:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn30]                      # fn
                        lea              rsi, [rbp + 528]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n62_disjunction_af
                                                                                        jmp   n62_disjunction_as
n66_call_β:
                        mov              r14, qword ptr [rbp + 544]
                                                                                        jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        mov              qword ptr [rbp + 496], 2                       # result
                        mov              dword ptr [rbp + 500], 1
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n68_call_α
n67_lit_string_β:
                                                                                        jmp   n62_disjunction_af
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n68_call_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn32:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn32]                      # fn
                        lea              rsi, [rbp + 464]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n62_disjunction_af
                                                                                        jmp   n69_call_α
n68_call_β:
                                                                                        jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n69_call_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        mov              qword ptr [rbp + 416], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn33:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn33]                      # fn
                        lea              rsi, [rbp + 400]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n62_disjunction_af
                                                                                        jmp   n62_disjunction_as
n69_call_β:
                        mov              r14, qword ptr [rbp + 416]
                                                                                        jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], 1
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n71_call_α
n70_lit_string_β:
                                                                                        jmp   n62_disjunction_af
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn35:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn35]                      # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n62_disjunction_af
                                                                                        jmp   n72_call_α
n71_call_β:
                                                                                        jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n72_call_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              qword ptr [rbp + 112], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn36:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn36]                      # fn
                        lea              rsi, [rbp + 96]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n62_disjunction_af
                                                                                        jmp   n73_proc_gen_α
n72_call_β:
                        mov              r14, qword ptr [rbp + 112]
                                                                                        jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n73_proc_gen_α:
                        mov              qword ptr [rbp + 224], 0
                        mov              edi, 1                                         # idx
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx93_1
                        lea              rcx, [rip + .Lx93_3]
                        lea              rdx, [rip + .Lx93_4]
                                                                                        jmp   rax
.Lx93_3:
                        mov              qword ptr [rbp + 232], rsp
                        mov              rax, qword ptr [rbp + 224]
                        test             rax, rax
                                                                                        jne   .Lx93_5
                        mov              qword ptr [rbp + 224], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx93_2
.Lx93_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx93_2
.Lx93_4:
                        mov              rax, qword ptr [rbp + 224]
                        test             rax, rax
                                                                                        jne   .Lx93_6
                        mov              qword ptr [rbp + 224], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx93_2
.Lx93_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx93_2
.Lx93_1:
                        call             rt_faildescr@PLT
.Lx93_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n62_disjunction_af
                                                                                        jmp   n74_binop_α
n73_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 232]
                                                                                        jmp   qword ptr [rsp]
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "s"
#-----------------------------------------------------------------------------------------------------------------------
n74_binop_α:
                        mov              rdi, qword ptr [rbp + 80]                      # a
                        mov              rsi, qword ptr [rbp + 88]                      # a
                        mov              rdx, qword ptr [rbp + 208]                     # b
                        mov              rcx, qword ptr [rbp + 216]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n75_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 368], 2                       # result
                        mov              dword ptr [rbp + 372], 1
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n76_call_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n76_call_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn40:           .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn40]                      # fn
                        lea              rsi, [rbp + 336]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n73_proc_gen_β
                                                                                        jmp   n77_call_α
n76_call_β:
                                                                                        jmp   n73_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n77_call_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        mov              qword ptr [rbp + 288], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn41:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn41]                      # fn
                        lea              rsi, [rbp + 272]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n73_proc_gen_β
                                                                                        jmp   n78_binop_α
n77_call_β:
                        mov              r14, qword ptr [rbp + 288]
                                                                                        jmp   n73_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_α:
                        mov              rdi, qword ptr [rbp + 64]                      # a
                        mov              rsi, qword ptr [rbp + 72]                      # a
                        mov              rdx, qword ptr [rbp + 256]                     # b
                        mov              rcx, qword ptr [rbp + 264]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n62_disjunction_as
n78_binop_β:
                                                                                        jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_t_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_t_β:
                                                                                        jmp   qword ptr [rbp + 640]
#-----------------------------------------------------------------------------------------------------------------------
proc_t_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_t_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "recogn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_recogn_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_recogn_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "s"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_s_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 576
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "t"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_t_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 656
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_icon_α:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        .section         .rodata
.Lrkfn110:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn110]                         # fn
                        lea              rsi, [rbp + 32]                                # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx109_240
                        add              rsp, 304
                                                                                        jmp   main_ω
.Lx109_240:
                                                                                        jmp   n100_assign_α
n99_call_builtin_icon_β:
                        add              rsp, 304
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n100_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n101_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n101_disjunction_α:
                        mov              qword ptr [rbp + 48], 0
                        mov              qword ptr [rbp + 56], 0
                        mov              dword ptr [rbp + 64], 0
                                                                                        jmp   n104_proc_value_α
n101_disjunction_as:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        jne   .Lx113_0
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n99_call_builtin_icon_α
.Lx113_0:
                        cmp              eax, 1
                                                                                        jne   .Lx113_1
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n99_call_builtin_icon_α
.Lx113_1:
                                                                                        jmp   n99_call_builtin_icon_α
n101_disjunction_β:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        je    n99_call_builtin_icon_α
                                                                                        jmp   n99_call_builtin_icon_α
n101_disjunction_af:
                        add              dword ptr [rbp + 64], 1
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 1
                                                                                        je    n102_lit_string_α
                                                                                        jmp   n99_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], 8
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n103_call_builtin_icon_α
n102_lit_string_β:
                                                                                        jmp   n99_call_builtin_icon_α
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "rejected"
#-----------------------------------------------------------------------------------------------------------------------
n103_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn116:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn116]                         # fn
                        lea              rsi, [rbp + 256]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n99_call_builtin_icon_α
                                                                                        jmp   n101_disjunction_as
n103_call_builtin_icon_β:
                                                                                        jmp   n99_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n104_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx118_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n105_var_α
n104_proc_value_β:
                                                                                        jmp   n101_disjunction_af
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "s"
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n106_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_proc_staged_α:
                        lea              rsi, [rbp + 208]
                        lea              rdx, [rbp + 224]
                        call             proc_recogn_dcα
                                                                                        jmp   .Lx122_2
.Lx122_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n101_disjunction_af
                                                                                        jmp   n107_lit_string_α
n106_call_proc_staged_β:
                                                                                        jmp   n101_disjunction_af
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "recogn"
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 8
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n108_call_builtin_icon_α
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          "accepted"
#-----------------------------------------------------------------------------------------------------------------------
n108_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn125:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn125]                         # fn
                        lea              rsi, [rbp + 96]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n99_call_builtin_icon_α
                                                                                        jmp   n101_disjunction_as
n108_call_builtin_icon_β:
                                                                                        jmp   n99_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
