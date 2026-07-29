                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_setpos_α
proc_setpos_α:
                        .global          proc_setpos_α
                        .global          proc_setpos_β
                        .global          proc_setpos_γ
                        .global          proc_setpos_ω
                        sub              rsp, 512
                        mov              [rsp + 488], rcx
                        mov              [rsp + 496], rdx
                        mov              [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 480
                        call             rt_jmp_frame_lexprep2@PLT
proc_setpos_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n1_var_α
.Lx15_0:
                        .quad            .Lx15_0_s
.Lx15_0_s:
                        .string          "p := "
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n2_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn19:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn19]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n3_disjunction_α
                                                                                        jmp   n4_lit_integer_α
n2_call_builtin_icon_β:
                                                                                        jmp   n3_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n3_disjunction_α:
                        mov              qword ptr [rbp + 64], 0
                        mov              qword ptr [rbp + 72], 0
                        mov              dword ptr [rbp + 80], 0
                                                                                        jmp   n6_var_α
n3_disjunction_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        jne   .Lx21_0
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n5_call_proc_staged_α
.Lx21_0:
                        cmp              eax, 1
                                                                                        jne   .Lx21_1
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n5_call_proc_staged_α
.Lx21_1:
                                                                                        jmp   n5_call_proc_staged_α
n3_disjunction_β:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        je    n5_call_proc_staged_α
                                                                                        jmp   n5_call_proc_staged_α
n3_disjunction_af:
                        add              dword ptr [rbp + 80], 1
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 1
                                                                                        je    n7_lit_string_α
                                                                                        jmp   n5_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n10_call_builtin_icon_α
.Lx22_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n5_call_proc_staged_α:
                        call             proc_ws_dcα
                                                                                        jmp   .Lx24_2
.Lx24_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n11_return_α
                                                                                        jmp   n11_return_α
n5_call_proc_staged_β:
                                                                                        jmp   n11_return_α
.Lx24_0:
                        .quad            .Lx24_0_s
.Lx24_0_s:
                        .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n12_keyword_assign_α
n6_var_β:
                                                                                        jmp   n3_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n9_call_builtin_icon_α
n7_lit_string_β:
                                                                                        jmp   n5_call_proc_staged_α
.Lx27_0:
                        .quad            .Lx27_0_s
.Lx27_0_s:
                        .string          " FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn29:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn29]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n5_call_proc_staged_α
                                                                                        jmp   n3_disjunction_as
n8_call_builtin_icon_β:
                                                                                        jmp   n5_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn31:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn31]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n5_call_proc_staged_α
                                                                                        jmp   n3_disjunction_as
n9_call_builtin_icon_β:
                                                                                        jmp   n5_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn33:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn33]
                        lea              rsi, [rbp + 352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n3_disjunction_α
                                                                                        jmp   n13_call_builtin_icon_α
n10_call_builtin_icon_β:
                                                                                        jmp   n3_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n11_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_setpos_γ
#-----------------------------------------------------------------------------------------------------------------------
n12_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 99
                                                                                        je    n3_disjunction_af
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn37:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn37]
                        lea              rsi, [rbp + 272]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n3_disjunction_α
                                                                                        jmp   n3_disjunction_α
n13_call_builtin_icon_β:
                                                                                        jmp   n3_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n8_call_builtin_icon_α
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "       "
#-----------------------------------------------------------------------------------------------------------------------
proc_setpos_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_setpos_β:
                                                                                        jmp   proc_setpos_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_setpos_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 488]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_setpos_ω:
                        mov              rax, [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_setpos_dcα:
                        pop              r11
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 480], r11
                        lea              rax, [rip + .Lx39_2]
                        mov              qword ptr [rbp + 488], rax
                        lea              rax, [rip + .Lx39_3]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 480
                        mov              edx, 480
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_setpos_α_body
.Lx39_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -512
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx39_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -512
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_setsubj_α
proc_setsubj_α:
                        .global          proc_setsubj_α
                        .global          proc_setsubj_β
                        .global          proc_setsubj_γ
                        .global          proc_setsubj_ω
                        sub              rsp, 512
                        mov              [rsp + 488], rcx
                        mov              [rsp + 496], rdx
                        mov              [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 480
                        call             rt_jmp_frame_lexprep2@PLT
proc_setsubj_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n41_var_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "s := "
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n42_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn59:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn59]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n43_disjunction_α
                                                                                        jmp   n44_lit_integer_α
n42_call_builtin_icon_β:
                                                                                        jmp   n43_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n43_disjunction_α:
                        mov              qword ptr [rbp + 64], 0
                        mov              qword ptr [rbp + 72], 0
                        mov              dword ptr [rbp + 80], 0
                                                                                        jmp   n46_var_α
n43_disjunction_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        jne   .Lx61_0
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n45_call_proc_staged_α
.Lx61_0:
                        cmp              eax, 1
                                                                                        jne   .Lx61_1
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n45_call_proc_staged_α
.Lx61_1:
                                                                                        jmp   n45_call_proc_staged_α
n43_disjunction_β:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        je    n45_call_proc_staged_α
                                                                                        jmp   n45_call_proc_staged_α
n43_disjunction_af:
                        add              dword ptr [rbp + 80], 1
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 1
                                                                                        je    n47_lit_string_α
                                                                                        jmp   n45_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n50_call_builtin_icon_α
.Lx62_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n45_call_proc_staged_α:
                        call             proc_ws_dcα
                                                                                        jmp   .Lx64_2
.Lx64_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n51_return_α
                                                                                        jmp   n51_return_α
n45_call_proc_staged_β:
                                                                                        jmp   n51_return_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n52_keyword_assign_α
n46_var_β:
                                                                                        jmp   n43_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n49_call_builtin_icon_α
n47_lit_string_β:
                                                                                        jmp   n45_call_proc_staged_α
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          " FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn69:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn69]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n45_call_proc_staged_α
                                                                                        jmp   n43_disjunction_as
n48_call_builtin_icon_β:
                                                                                        jmp   n45_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn71:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn71]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n45_call_proc_staged_α
                                                                                        jmp   n43_disjunction_as
n49_call_builtin_icon_β:
                                                                                        jmp   n45_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn73:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn73]
                        lea              rsi, [rbp + 352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n43_disjunction_α
                                                                                        jmp   n53_call_builtin_icon_α
n50_call_builtin_icon_β:
                                                                                        jmp   n43_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n51_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_setsubj_γ
#-----------------------------------------------------------------------------------------------------------------------
n52_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        call             rt_keyword_subject_set@PLT
                        test             rax, rax
                                                                                        je    n43_disjunction_af
                        mov              qword ptr [rbp + 160], 1
                        mov              qword ptr [rbp + 168], rax
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n54_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn77:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn77]
                        lea              rsi, [rbp + 272]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n43_disjunction_α
                                                                                        jmp   n43_disjunction_α
n53_call_builtin_icon_β:
                                                                                        jmp   n43_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n48_call_builtin_icon_α
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "       "
#-----------------------------------------------------------------------------------------------------------------------
proc_setsubj_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_setsubj_β:
                                                                                        jmp   proc_setsubj_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_setsubj_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 488]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_setsubj_ω:
                        mov              rax, [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_setsubj_dcα:
                        pop              r11
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 480], r11
                        lea              rax, [rip + .Lx79_2]
                        mov              qword ptr [rbp + 488], rax
                        lea              rax, [rip + .Lx79_3]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 480
                        mov              edx, 480
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_setsubj_α_body
.Lx79_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -512
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx79_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -512
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ws_α
proc_ws_α:
                        .global          proc_ws_α
                        .global          proc_ws_β
                        .global          proc_ws_γ
                        .global          proc_ws_ω
                        sub              rsp, 336
                        mov              [rsp + 312], rcx
                        mov              [rsp + 320], rdx
                        mov              rdi, rsp
                        mov              esi, 304
                        mov              edx, 304
                        call             rt_jmp_frame_lexprep2@PLT
proc_ws_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rsp + 112], 1
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n81_keyword_icon_α
.Lx88_0:
                        .quad            .Lx88_0_s
.Lx88_0_s:
                        .string          "  &pos="
#-----------------------------------------------------------------------------------------------------------------------
n81_keyword_icon_α:
                        mov              qword ptr [rsp + 176], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n82_call_builtin_icon_α
n81_keyword_icon_β:
                                                                                        jmp   n84_return_α
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn91:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]
                        lea              rsi, [rsp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n84_return_α
                                                                                        jmp   n83_lit_string_α
n82_call_builtin_icon_β:
                                                                                        jmp   n84_return_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rsp + 208], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n85_keyword_icon_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "   &subject="
#-----------------------------------------------------------------------------------------------------------------------
n84_return_α:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   proc_ws_γ
#-----------------------------------------------------------------------------------------------------------------------
n85_keyword_icon_α:
                        call             rt_keyword_subject@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n86_call_builtin_icon_α
n85_keyword_icon_β:
                                                                                        jmp   n84_return_α
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn96:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn96]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n84_return_α
                                                                                        jmp   n87_call_builtin_icon_α
n86_call_builtin_icon_β:
                                                                                        jmp   n84_return_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn98:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn98]
                        lea              rsi, [rsp + 32]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n84_return_α
                                                                                        jmp   n84_return_α
n87_call_builtin_icon_β:
                                                                                        jmp   n84_return_α
#-----------------------------------------------------------------------------------------------------------------------
proc_ws_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_ws_β:
                                                                                        jmp   proc_ws_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ws_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 312]
                        add              rsp, 336
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ws_ω:
                        mov              rax, [rsp + 320]
                        add              rsp, 336
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ws_dcα:
                        pop              r11
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 304], r11
                        lea              rax, [rip + .Lx99_2]
                        mov              qword ptr [rsp + 312], rax
                        lea              rax, [rip + .Lx99_3]
                        mov              qword ptr [rsp + 320], rax
                        mov              rdi, rbp
                        mov              esi, 304
                        mov              edx, 304
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_ws_α_body
.Lx99_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -336
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx99_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -336
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "setpos"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_setpos_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 480
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_setpos_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "setsubj"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_setsubj_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 480
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_setsubj_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "ws"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_ws_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_ws_dcα]
                        call             rt_proc_set_dcfn@PLT
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
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 4136
                        mov              rdi, rsp
                        mov              ecx, 4136
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 4128], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n100_call_proc_staged_α:
                        call             proc_ws_dcα
                                                                                        jmp   .Lx261_2
.Lx261_2:
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                        cmp              eax, 99
                                                                                        je    n101_call_builtin_icon_α
                                                                                        jmp   n101_call_builtin_icon_α
n100_call_proc_staged_β:
                                                                                        jmp   n101_call_builtin_icon_α
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn263:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn263]
                        lea              rsi, [rbp + 4032]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4016], rax
                        mov              qword ptr [rbp + 4024], rdx
                        cmp              eax, 99
                                                                                        je    n102_disjunction_α
                                                                                        jmp   n102_disjunction_α
n101_call_builtin_icon_β:
                                                                                        jmp   n102_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n102_disjunction_α:
                        mov              qword ptr [rbp + 3536], 0
                        mov              qword ptr [rbp + 3544], 0
                        mov              dword ptr [rbp + 3552], 0
                                                                                        jmp   n104_lit_string_α
n102_disjunction_as:
                        mov              eax, dword ptr [rbp + 3552]
                        cmp              eax, 0
                                                                                        jne   .Lx265_0
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n103_assign_α
.Lx265_0:
                        cmp              eax, 1
                                                                                        jne   .Lx265_1
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n103_assign_α
.Lx265_1:
                        cmp              eax, 2
                                                                                        jne   .Lx265_2
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n103_assign_α
.Lx265_2:
                        cmp              eax, 3
                                                                                        jne   .Lx265_3
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n103_assign_α
.Lx265_3:
                                                                                        jmp   n103_assign_α
n102_disjunction_β:
                        mov              eax, dword ptr [rbp + 3552]
                        cmp              eax, 0
                                                                                        je    n102_disjunction_af
                        cmp              eax, 1
                                                                                        je    n102_disjunction_af
                        cmp              eax, 2
                                                                                        je    n102_disjunction_af
                                                                                        jmp   n102_disjunction_af
n102_disjunction_af:
                        add              dword ptr [rbp + 3552], 1
                        mov              eax, dword ptr [rbp + 3552]
                        cmp              eax, 1
                                                                                        je    n105_lit_string_α
                        cmp              eax, 2
                                                                                        je    n106_lit_string_α
                        cmp              eax, 3
                                                                                        je    n107_lit_string_α
                                                                                        jmp   n129_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:
                        mov              rax, qword ptr [rbp + 3536]
                        mov              rdx, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                                                                                        jmp   n108_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        mov              qword ptr [rbp + 3568], 1
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n102_disjunction_as
n104_lit_string_β:
                                                                                        jmp   n102_disjunction_af
.Lx267_0:
                        .quad            .Lx267_0_s
.Lx267_0_s:
                        .string          "cat"
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rbp + 3584], 1
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rbp + 3592], rax
                                                                                        jmp   n102_disjunction_as
n105_lit_string_β:
                                                                                        jmp   n102_disjunction_af
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        mov              qword ptr [rbp + 3600], 1
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n102_disjunction_as
n106_lit_string_β:
                                                                                        jmp   n102_disjunction_af
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "donut"
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:
                        mov              qword ptr [rbp + 3616], 1
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rbp + 3624], rax
                                                                                        jmp   n102_disjunction_as
n107_lit_string_β:
                                                                                        jmp   n102_disjunction_af
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n108_call_proc_staged_α:
                        lea              rsi, [rbp + 3520]
                        call             proc_setsubj_dcα
                                                                                        jmp   .Lx272_2
.Lx272_2:
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx
                        cmp              eax, 99
                                                                                        je    n102_disjunction_β
                                                                                        jmp   n109_bound_α
n108_call_proc_staged_β:
                                                                                        jmp   n102_disjunction_β
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "setsubj"
#-----------------------------------------------------------------------------------------------------------------------
n109_bound_α:
                        mov              qword ptr [rbp + 3632], rsp
                                                                                        jmp   n110_var_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 3800], rax
                                                                                        jmp   n111_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n111_unop_α:
                        mov              rdi, qword ptr [rbp + 4096]
                        mov              rsi, qword ptr [rbp + 4104]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                                                                                        jmp   n113_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n112_unmark_α:
                        mov              rsp, qword ptr [rbp + 3632]
                                                                                        jmp   n102_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n113_op75_α:
                        mov              eax, dword ptr [rbp + 3776]
                        cmp              eax, 7
                                                                                        je    .Lx281_1
                        cmp              eax, 6
                                                                                        jne   .Lx281_0
                        mov              eax, dword ptr [rbp + 3776]
                        cmp              eax, 6
                                                                                        jne   .Lx281_0
.Lx281_1:
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n114_unop_α
.Lx281_0:
                        lea              rdi, [rbp + 3776]
                        lea              rsi, [rbp + 3776]
                        lea              rdx, [rbp + 3760]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n114_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n114_unop_α:
                        mov              rdi, qword ptr [rbp + 3760]
                        mov              rsi, qword ptr [rbp + 3768]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                                                                                        jmp   n115_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:
                        mov              qword ptr [rbp + 3808], 6
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 3816], rax
                                                                                        jmp   n116_op75_α
.Lx283_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n116_op75_α:
                        mov              eax, dword ptr [rbp + 3744]
                        cmp              eax, 7
                                                                                        je    .Lx285_1
                        cmp              eax, 6
                                                                                        jne   .Lx285_0
                        mov              eax, dword ptr [rbp + 3808]
                        cmp              eax, 6
                                                                                        jne   .Lx285_0
.Lx285_1:
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3728], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   n117_binop_α
.Lx285_0:
                        lea              rdi, [rbp + 3744]
                        lea              rsi, [rbp + 3808]
                        lea              rdx, [rbp + 3728]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n117_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n117_binop_α:
                        mov              eax, dword ptr [rbp + 3728]
                        cmp              eax, 6
                                                                                        jne   .Lx286_0
                        mov              rax, qword ptr [rbp + 3736]
                        mov              rcx, 2
                        sub              rax, rcx
                        mov              qword ptr [rbp + 3712], 6
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n118_var_α
.Lx286_0:
                        mov              rdi, qword ptr [rbp + 3728]
                        mov              rsi, qword ptr [rbp + 3736]
                        mov              rdx, qword ptr [rbp + 3808]
                        mov              rcx, qword ptr [rbp + 3816]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n112_unmark_α
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx
                                                                                        jmp   n118_var_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n119_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n119_unop_α:
                        mov              rdi, qword ptr [rbp + 4096]
                        mov              rsi, qword ptr [rbp + 4104]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                                                                                        jmp   n120_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:
                        mov              qword ptr [rbp + 3888], 6
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rbp + 3896], rax
                                                                                        jmp   n121_op75_α
.Lx290_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n121_op75_α:
                        mov              eax, dword ptr [rbp + 3856]
                        cmp              eax, 7
                                                                                        je    .Lx292_1
                        cmp              eax, 6
                                                                                        jne   .Lx292_0
                        mov              eax, dword ptr [rbp + 3888]
                        cmp              eax, 6
                                                                                        jne   .Lx292_0
.Lx292_1:
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3848], rax
                                                                                        jmp   n122_binop_α
.Lx292_0:
                        lea              rdi, [rbp + 3856]
                        lea              rsi, [rbp + 3888]
                        lea              rdx, [rbp + 3840]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n122_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n122_binop_α:
                        mov              eax, dword ptr [rbp + 3840]
                        cmp              eax, 6
                                                                                        jne   .Lx293_0
                        mov              rax, qword ptr [rbp + 3848]
                        mov              rcx, 3
                        add              rax, rcx
                        mov              qword ptr [rbp + 3824], 6
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   n123_to_α
.Lx293_0:
                        mov              rdi, qword ptr [rbp + 3840]
                        mov              rsi, qword ptr [rbp + 3848]
                        mov              rdx, qword ptr [rbp + 3888]
                        mov              rcx, qword ptr [rbp + 3896]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n112_unmark_α
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                                                                                        jmp   n123_to_α
#-----------------------------------------------------------------------------------------------------------------------
n123_to_α:
                        mov              rdi, qword ptr [rbp + 3712]
                        mov              rsi, qword ptr [rbp + 3720]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3712], 6
                        mov              qword ptr [rbp + 3720], rax
                        mov              rdi, qword ptr [rbp + 3824]
                        mov              rsi, qword ptr [rbp + 3832]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3824], 6
                        mov              qword ptr [rbp + 3832], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3696], rax
.Lx295_0:
                        mov              rax, qword ptr [rbp + 3696]
                        mov              rcx, qword ptr [rbp + 3832]
                        cmp              rax, rcx
                                                                                        jg    n112_unmark_α
                        mov              qword ptr [rbp + 3680], 6
                        mov              qword ptr [rbp + 3688], rax
                                                                                        jmp   n124_assign_α
n123_to_β:
                        inc              qword ptr [rbp + 3696]
                                                                                        jmp   .Lx295_0
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:
                        mov              rax, qword ptr [rbp + 3680]
                        mov              rdx, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx
                                                                                        jmp   n125_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n125_bound_α:
                        mov              qword ptr [rbp + 3904], rsp
                                                                                        jmp   n126_var_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 4008], rax
                                                                                        jmp   n127_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_proc_staged_α:
                        lea              rsi, [rbp + 4000]
                        call             proc_setpos_dcα
                                                                                        jmp   .Lx302_2
.Lx302_2:
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              eax, 99
                                                                                        je    n128_unmark_α
                                                                                        jmp   n128_unmark_α
n127_call_proc_staged_β:
                                                                                        jmp   n128_unmark_α
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          "setpos"
#-----------------------------------------------------------------------------------------------------------------------
n128_unmark_α:
                        mov              rsp, qword ptr [rbp + 3904]
                                                                                        jmp   n123_to_β
#-----------------------------------------------------------------------------------------------------------------------
n129_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn306:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn306]
                        lea              rsi, [rbp + 3456]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                        cmp              eax, 99
                                                                                        je    n130_lit_string_α
                                                                                        jmp   n130_lit_string_α
n129_call_builtin_icon_β:
                                                                                        jmp   n130_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:
                        mov              qword ptr [rbp + 3424], 1
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rbp + 3432], rax
                                                                                        jmp   n131_scan_enter_α
.Lx307_0:
                        .quad            .Lx307_0_s
.Lx307_0_s:
                        .string          "outer"
#-----------------------------------------------------------------------------------------------------------------------
n131_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 3424]
                        mov              rsi, qword ptr [rbp + 3432]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n132_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        call             proc_ws_dcα
                                                                                        jmp   .Lx311_2
.Lx311_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              eax, 99
                                                                                        je    n133_lit_integer_α
                                                                                        jmp   n133_lit_integer_α
n132_call_proc_staged_β:
                                                                                        jmp   n133_lit_integer_α
.Lx311_0:
                        .quad            .Lx311_0_s
.Lx311_0_s:
                        .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:
                        mov              qword ptr [rbp + 3376], 6
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n134_keyword_assign_α
.Lx312_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n134_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 3376]
                        mov              rsi, qword ptr [rbp + 3384]
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 99
                                                                                        je    n135_call_proc_staged_α
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n135_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n135_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        call             proc_ws_dcα
                                                                                        jmp   .Lx315_2
.Lx315_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        cmp              eax, 99
                                                                                        je    n136_lit_string_α
                                                                                        jmp   n136_lit_string_α
n135_call_proc_staged_β:
                                                                                        jmp   n136_lit_string_α
.Lx315_0:
                        .quad            .Lx315_0_s
.Lx315_0_s:
                        .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        mov              qword ptr [rbp + 3312], 1
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n137_scan_enter_α
.Lx316_0:
                        .quad            .Lx316_0_s
.Lx316_0_s:
                        .string          "inner"
#-----------------------------------------------------------------------------------------------------------------------
n137_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 3312]
                        mov              rsi, qword ptr [rbp + 3320]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n138_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n138_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        call             proc_ws_dcα
                                                                                        jmp   .Lx320_2
.Lx320_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                        cmp              eax, 99
                                                                                        je    n139_lit_integer_α
                                                                                        jmp   n139_lit_integer_α
n138_call_proc_staged_β:
                                                                                        jmp   n139_lit_integer_α
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:
                        mov              qword ptr [rbp + 3264], 6
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rbp + 3272], rax
                                                                                        jmp   n140_keyword_assign_α
.Lx321_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n140_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 3264]
                        mov              rsi, qword ptr [rbp + 3272]
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 99
                                                                                        je    n141_call_proc_staged_α
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n141_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        call             proc_ws_dcα
                                                                                        jmp   .Lx324_2
.Lx324_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              eax, 99
                                                                                        je    n143_scan_α
                                                                                        jmp   n142_conjunction_α
n141_call_proc_staged_β:
                                                                                        jmp   n143_scan_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n142_conjunction_α:
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n144_scan_α
n142_conjunction_β:
                                                                                        jmp   n143_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n143_scan_α:
                        lea              rdi, [rbp + 3136]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 3136]
                        mov              r14, qword ptr [rbp + 3144]
                        mov              r15, qword ptr [rbp + 3152]
                                                                                        jmp   n145_call_proc_staged_α
n143_scan_β:
                                                                                        jmp   n145_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n144_scan_α:
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3176], rax
                        lea              rdi, [rbp + 3136]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 3136]
                        mov              r14, qword ptr [rbp + 3144]
                        mov              r15, qword ptr [rbp + 3152]
                                                                                        jmp   n145_call_proc_staged_α
n144_scan_β:
                                                                                        jmp   n145_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n145_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        call             proc_ws_dcα
                                                                                        jmp   .Lx331_2
.Lx331_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                        cmp              eax, 99
                                                                                        je    n147_scan_α
                                                                                        jmp   n146_conjunction_α
n145_call_proc_staged_β:
                                                                                        jmp   n147_scan_α
.Lx331_0:
                        .quad            .Lx331_0_s
.Lx331_0_s:
                        .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n146_conjunction_α:
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n148_scan_α
n146_conjunction_β:
                                                                                        jmp   n147_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n147_scan_α:
                        lea              rdi, [rbp + 3008]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 3008]
                        mov              r14, qword ptr [rbp + 3016]
                        mov              r15, qword ptr [rbp + 3024]
                                                                                        jmp   n149_lit_string_α
n147_scan_β:
                                                                                        jmp   n149_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n148_scan_α:
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3048], rax
                        lea              rdi, [rbp + 3008]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 3008]
                        mov              r14, qword ptr [rbp + 3016]
                        mov              r15, qword ptr [rbp + 3024]
                                                                                        jmp   n149_lit_string_α
n148_scan_β:
                                                                                        jmp   n149_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:
                        mov              qword ptr [rbp + 2976], 1
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n150_scan_enter_α
.Lx337_0:
                        .quad            .Lx337_0_s
.Lx337_0_s:
                        .string          "123456"
#-----------------------------------------------------------------------------------------------------------------------
n150_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2976]
                        mov              rsi, qword ptr [rbp + 2984]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n151_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:
                        mov              qword ptr [rbp + 2960], 6
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n152_keyword_assign_α
.Lx340_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n152_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 2960]
                        mov              rsi, qword ptr [rbp + 2968]
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 99
                                                                                        je    n153_lit_integer_α
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n153_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:
                        mov              qword ptr [rbp + 2928], 6
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n154_assign_α
.Lx342_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                                                                                        jmp   n155_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:
                        mov              qword ptr [rbp + 2848], 1
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n156_keyword_icon_α
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n156_keyword_icon_α:
                        mov              qword ptr [rbp + 2864], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n157_lit_string_α
n156_keyword_icon_β:
                                                                                        jmp   n160_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:
                        mov              qword ptr [rbp + 2896], 1
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n158_var_α
.Lx346_0:
                        .quad            .Lx346_0_s
.Lx346_0_s:
                        .string          " x="
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   n159_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n159_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2776], rax
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2792], rax
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2808], rax
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2824], rax
                        .section         .rodata
.Lrkfn350:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn350]
                        lea              rsi, [rbp + 2768]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        cmp              eax, 99
                                                                                        je    n160_keyword_icon_α
                                                                                        jmp   n160_keyword_icon_α
n159_call_builtin_icon_β:
                                                                                        jmp   n160_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n160_keyword_icon_α:
                        mov              qword ptr [rbp + 2688], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n161_var_α
n160_keyword_icon_β:
                                                                                        jmp   n163_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n162_keyword_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n162_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 2720]
                        mov              rsi, qword ptr [rbp + 2728]
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 99
                                                                                        je    n163_lit_string_α
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n164_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:
                        mov              qword ptr [rbp + 2608], 1
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n165_keyword_icon_α
.Lx355_0:
                        .quad            .Lx355_0_s
.Lx355_0_s:
                        .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n164_assign_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                                                                                        jmp   n163_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n165_keyword_icon_α:
                        mov              qword ptr [rbp + 2624], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n166_lit_string_α
n165_keyword_icon_β:
                                                                                        jmp   n169_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        mov              qword ptr [rbp + 2656], 1
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n167_var_α
.Lx358_0:
                        .quad            .Lx358_0_s
.Lx358_0_s:
                        .string          " x="
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n168_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n168_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2536], rax
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2552], rax
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2568], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2584], rax
                        .section         .rodata
.Lrkfn362:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn362]
                        lea              rsi, [rbp + 2528]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        cmp              eax, 99
                                                                                        je    n169_lit_integer_α
                                                                                        jmp   n169_lit_integer_α
n168_call_builtin_icon_β:
                                                                                        jmp   n169_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:
                        mov              qword ptr [rbp + 2496], 6
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n170_keyword_assign_α
.Lx363_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n170_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 2496]
                        mov              rsi, qword ptr [rbp + 2504]
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 99
                                                                                        je    n171_lit_integer_α
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n171_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:
                        mov              qword ptr [rbp + 2464], 6
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n172_assign_α
.Lx365_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n172_assign_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                                                                                        jmp   n173_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n173_keyword_icon_α:
                        mov              qword ptr [rbp + 2400], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n174_var_α
n173_keyword_icon_β:
                                                                                        jmp   n176_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n174_var_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n175_keyword_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n175_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 2432]
                        mov              rsi, qword ptr [rbp + 2440]
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 99
                                                                                        je    n176_lit_string_α
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n177_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:
                        mov              qword ptr [rbp + 2320], 1
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n178_keyword_icon_α
.Lx371_0:
                        .quad            .Lx371_0_s
.Lx371_0_s:
                        .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n177_assign_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              rdx, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                                                                                        jmp   n176_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n178_keyword_icon_α:
                        mov              qword ptr [rbp + 2336], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n179_lit_string_α
n178_keyword_icon_β:
                                                                                        jmp   n182_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:
                        mov              qword ptr [rbp + 2368], 1
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n180_var_α
.Lx374_0:
                        .quad            .Lx374_0_s
.Lx374_0_s:
                        .string          " x="
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n181_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2296], rax
                        .section         .rodata
.Lrkfn378:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn378]
                        lea              rsi, [rbp + 2240]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              eax, 99
                                                                                        je    n182_lit_integer_α
                                                                                        jmp   n182_lit_integer_α
n181_call_builtin_icon_β:
                                                                                        jmp   n182_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:
                        mov              qword ptr [rbp + 2208], 6
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n183_keyword_assign_α
.Lx379_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n183_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 2208]
                        mov              rsi, qword ptr [rbp + 2216]
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 99
                                                                                        je    n184_lit_integer_α
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n184_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:
                        mov              qword ptr [rbp + 2176], 6
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n185_assign_α
.Lx381_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n185_assign_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              rdx, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                                                                                        jmp   n186_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n186_keyword_icon_α:
                        mov              qword ptr [rbp + 2112], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n187_var_α
n186_keyword_icon_β:
                                                                                        jmp   n189_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n187_var_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n188_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n188_assign_α:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              rdx, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                                                                                        jmp   n190_keyword_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n191_keyword_icon_α
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n190_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 2144]
                        mov              rsi, qword ptr [rbp + 2152]
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 99
                                                                                        je    n189_lit_string_α
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n189_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n191_keyword_icon_α:
                        mov              qword ptr [rbp + 2048], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n192_lit_string_α
n191_keyword_icon_β:
                                                                                        jmp   n195_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        mov              qword ptr [rbp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n193_var_α
.Lx390_0:
                        .quad            .Lx390_0_s
.Lx390_0_s:
                        .string          " x="
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n194_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n194_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2008], rax
                        .section         .rodata
.Lrkfn394:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn394]
                        lea              rsi, [rbp + 1952]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n195_lit_integer_α
                                                                                        jmp   n195_lit_integer_α
n194_call_builtin_icon_β:
                                                                                        jmp   n195_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_integer_α:
                        mov              qword ptr [rbp + 1920], 6
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n196_keyword_assign_α
.Lx395_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n196_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 1920]
                        mov              rsi, qword ptr [rbp + 1928]
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 99
                                                                                        je    n197_lit_integer_α
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n197_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:
                        mov              qword ptr [rbp + 1888], 6
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n198_assign_α
.Lx397_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n198_assign_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              rdx, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                                                                                        jmp   n199_rev_swap_α
#-----------------------------------------------------------------------------------------------------------------------
n199_rev_swap_α:
                        mov              qword ptr [rbp + 1632], r14
                        mov              qword ptr [rbp + 1640], r15
                        mov              rdi, 1
                        mov              rsi, 0
                        mov              rdx, 0
                        lea              rcx, [rbp + 4080]
                        lea              r8, [rbp + 1600]
                        lea              r9, [rbp + 1632]
                        call             rt_rev_swap_fwd@PLT
                        mov              r14, qword ptr [rbp + 1632]
                        cmp              eax, 99
                                                                                        je    n201_lit_string_α
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n200_bound_α
n199_rev_swap_β:
                        mov              qword ptr [rbp + 1632], r14
                        mov              qword ptr [rbp + 1640], r15
                        mov              rdi, 1
                        mov              rsi, 0
                        mov              rdx, 0
                        lea              rcx, [rbp + 4080]
                        lea              r8, [rbp + 1600]
                        lea              r9, [rbp + 1632]
                        call             rt_rev_swap_undo@PLT
                        mov              r14, qword ptr [rbp + 1632]
                                                                                        jmp   n201_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n200_bound_α:
                        mov              qword ptr [rbp + 1664], rsp
                                                                                        jmp   n202_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n203_keyword_icon_α
.Lx402_0:
                        .quad            .Lx402_0_s
.Lx402_0_s:
                        .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:
                        mov              qword ptr [rbp + 1808], 1
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n204_keyword_icon_α
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n203_keyword_icon_α:
                        mov              qword ptr [rbp + 1520], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n205_lit_string_α
n203_keyword_icon_β:
                                                                                        jmp   n210_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n204_keyword_icon_α:
                        mov              qword ptr [rbp + 1824], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n206_lit_string_α
n204_keyword_icon_β:
                                                                                        jmp   n212_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n207_var_α
.Lx406_0:
                        .quad            .Lx406_0_s
.Lx406_0_s:
                        .string          " x="
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n208_var_α
.Lx407_0:
                        .quad            .Lx407_0_s
.Lx407_0_s:
                        .string          " x="
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n209_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n211_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n209_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn413:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn413]
                        lea              rsi, [rbp + 1424]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n210_lit_integer_α
                                                                                        jmp   n210_lit_integer_α
n209_call_builtin_icon_β:
                                                                                        jmp   n210_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_integer_α:
                        mov              qword ptr [rbp + 1392], 6
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n213_keyword_assign_α
.Lx414_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n211_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1784], rax
                        .section         .rodata
.Lrkfn416:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn416]
                        lea              rsi, [rbp + 1728]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    n212_unmark_α
                                                                                        jmp   n212_unmark_α
n211_call_builtin_icon_β:
                                                                                        jmp   n212_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n212_unmark_α:
                        mov              rsp, qword ptr [rbp + 1664]
                                                                                        jmp   n199_rev_swap_β
#-----------------------------------------------------------------------------------------------------------------------
n213_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 99
                                                                                        je    n214_lit_integer_α
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n214_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_integer_α:
                        mov              qword ptr [rbp + 1360], 6
                        mov              rax, qword ptr [rip + .Lx420_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n215_assign_α
.Lx420_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n215_assign_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                                                                                        jmp   n216_rev_swap_α
#-----------------------------------------------------------------------------------------------------------------------
n216_rev_swap_α:
                        mov              qword ptr [rbp + 1104], r14
                        mov              qword ptr [rbp + 1112], r15
                        mov              rdi, 0
                        lea              rsi, [rbp + 4080]
                        mov              rdx, 1
                        mov              rcx, 0
                        lea              r8, [rbp + 1072]
                        lea              r9, [rbp + 1104]
                        call             rt_rev_swap_fwd@PLT
                        mov              r14, qword ptr [rbp + 1104]
                        cmp              eax, 99
                                                                                        je    n218_lit_string_α
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n217_bound_α
n216_rev_swap_β:
                        mov              qword ptr [rbp + 1104], r14
                        mov              qword ptr [rbp + 1112], r15
                        mov              rdi, 0
                        lea              rsi, [rbp + 4080]
                        mov              rdx, 1
                        mov              rcx, 0
                        lea              r8, [rbp + 1072]
                        lea              r9, [rbp + 1104]
                        call             rt_rev_swap_undo@PLT
                        mov              r14, qword ptr [rbp + 1104]
                                                                                        jmp   n218_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n217_bound_α:
                        mov              qword ptr [rbp + 1136], rsp
                                                                                        jmp   n219_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n220_keyword_icon_α
.Lx425_0:
                        .quad            .Lx425_0_s
.Lx425_0_s:
                        .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n221_keyword_icon_α
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n220_keyword_icon_α:
                        mov              qword ptr [rbp + 992], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n222_lit_string_α
n220_keyword_icon_β:
                                                                                        jmp   n227_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n221_keyword_icon_α:
                        mov              qword ptr [rbp + 1296], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n223_lit_string_α
n221_keyword_icon_β:
                                                                                        jmp   n229_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n224_var_α
.Lx429_0:
                        .quad            .Lx429_0_s
.Lx429_0_s:
                        .string          " x="
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n225_var_α
.Lx430_0:
                        .quad            .Lx430_0_s
.Lx430_0_s:
                        .string          " x="
#-----------------------------------------------------------------------------------------------------------------------
n224_var_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n226_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n225_var_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n228_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n226_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 952], rax
                        .section         .rodata
.Lrkfn436:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn436]
                        lea              rsi, [rbp + 896]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n227_lit_integer_α
                                                                                        jmp   n227_lit_integer_α
n226_call_builtin_icon_β:
                                                                                        jmp   n227_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_integer_α:
                        mov              qword ptr [rbp + 864], 6
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n230_keyword_assign_α
.Lx437_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n228_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn439:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn439]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n229_unmark_α
                                                                                        jmp   n229_unmark_α
n228_call_builtin_icon_β:
                                                                                        jmp   n229_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n229_unmark_α:
                        mov              rsp, qword ptr [rbp + 1136]
                                                                                        jmp   n216_rev_swap_β
#-----------------------------------------------------------------------------------------------------------------------
n230_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 99
                                                                                        je    n231_lit_integer_α
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n231_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_integer_α:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n232_assign_α
.Lx443_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n232_assign_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                                                                                        jmp   n233_rev_swap_α
#-----------------------------------------------------------------------------------------------------------------------
n233_rev_swap_α:
                        mov              qword ptr [rbp + 720], r14
                        mov              qword ptr [rbp + 728], r15
                        mov              rdi, 1
                        mov              rsi, 0
                        mov              rdx, 0
                        lea              rcx, [rbp + 4080]
                        lea              r8, [rbp + 688]
                        lea              r9, [rbp + 720]
                        call             rt_rev_swap_fwd@PLT
                        mov              r14, qword ptr [rbp + 720]
                        cmp              eax, 99
                                                                                        je    n235_lit_string_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n234_bound_α
n233_rev_swap_β:
                        mov              qword ptr [rbp + 720], r14
                        mov              qword ptr [rbp + 728], r15
                        mov              rdi, 1
                        mov              rsi, 0
                        mov              rdx, 0
                        lea              rcx, [rbp + 4080]
                        lea              r8, [rbp + 688]
                        lea              r9, [rbp + 720]
                        call             rt_rev_swap_undo@PLT
                        mov              r14, qword ptr [rbp + 720]
                                                                                        jmp   n235_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n234_bound_α:
                        mov              qword ptr [rbp + 752], rsp
                                                                                        jmp   n236_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n237_keyword_icon_α
.Lx448_0:
                        .quad            .Lx448_0_s
.Lx448_0_s:
                        .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n238_keyword_assign_α
.Lx449_0:
                        .quad            .Lx449_0_s
.Lx449_0_s:
                        .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n237_keyword_icon_α:
                        mov              qword ptr [rbp + 608], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n239_lit_string_α
n237_keyword_icon_β:
                                                                                        jmp   n243_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n238_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        call             rt_keyword_subject_set@PLT
                        test             rax, rax
                                                                                        je    n240_unmark_α
                        mov              qword ptr [rbp + 800], 1
                        mov              qword ptr [rbp + 808], rax
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n240_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n241_var_α
.Lx452_0:
                        .quad            .Lx452_0_s
.Lx452_0_s:
                        .string          " x="
#-----------------------------------------------------------------------------------------------------------------------
n240_unmark_α:
                        mov              rsp, qword ptr [rbp + 752]
                                                                                        jmp   n233_rev_swap_β
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n242_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n242_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn458:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn458]
                        lea              rsi, [rbp + 512]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n243_lit_integer_α
                                                                                        jmp   n243_lit_integer_α
n242_call_builtin_icon_β:
                                                                                        jmp   n243_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n244_keyword_assign_α
.Lx459_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n244_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 99
                                                                                        je    n245_lit_integer_α
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n245_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n246_assign_α
.Lx461_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n246_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                                                                                        jmp   n247_rev_swap_α
#-----------------------------------------------------------------------------------------------------------------------
n247_rev_swap_α:
                        mov              qword ptr [rbp + 320], r14
                        mov              qword ptr [rbp + 328], r15
                        mov              rdi, 0
                        lea              rsi, [rbp + 4080]
                        mov              rdx, 1
                        mov              rcx, 0
                        lea              r8, [rbp + 288]
                        lea              r9, [rbp + 320]
                        call             rt_rev_swap_fwd@PLT
                        mov              r14, qword ptr [rbp + 320]
                        cmp              eax, 99
                                                                                        je    n249_lit_string_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n248_bound_α
n247_rev_swap_β:
                        mov              qword ptr [rbp + 320], r14
                        mov              qword ptr [rbp + 328], r15
                        mov              rdi, 0
                        lea              rsi, [rbp + 4080]
                        mov              rdx, 1
                        mov              rcx, 0
                        lea              r8, [rbp + 288]
                        lea              r9, [rbp + 320]
                        call             rt_rev_swap_undo@PLT
                        mov              r14, qword ptr [rbp + 320]
                                                                                        jmp   n249_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n248_bound_α:
                        mov              qword ptr [rbp + 352], rsp
                                                                                        jmp   n250_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n251_keyword_icon_α
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n252_keyword_assign_α
.Lx467_0:
                        .quad            .Lx467_0_s
.Lx467_0_s:
                        .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n251_keyword_icon_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n253_lit_string_α
n251_keyword_icon_β:
                                                                                        jmp   n257_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n252_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        call             rt_keyword_subject_set@PLT
                        test             rax, rax
                                                                                        je    n254_unmark_α
                        mov              qword ptr [rbp + 400], 1
                        mov              qword ptr [rbp + 408], rax
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n254_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n255_var_α
.Lx470_0:
                        .quad            .Lx470_0_s
.Lx470_0_s:
                        .string          " x="
#-----------------------------------------------------------------------------------------------------------------------
n254_unmark_α:
                        mov              rsp, qword ptr [rbp + 352]
                                                                                        jmp   n247_rev_swap_β
#-----------------------------------------------------------------------------------------------------------------------
n255_var_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n256_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n256_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn476:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn476]
                        lea              rsi, [rbp + 112]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n257_scan_α
                                                                                        jmp   n258_conjunction_α
n256_call_builtin_icon_β:
                                                                                        jmp   n257_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n257_scan_α:
                        lea              rdi, [rbp + 16]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 16]
                        mov              r14, qword ptr [rbp + 24]
                        mov              r15, qword ptr [rbp + 32]
                                                                                        jmp   main_ω
n257_scan_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n258_conjunction_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n259_scan_α
n258_conjunction_β:
                                                                                        jmp   n257_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n259_scan_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 16]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 16]
                        mov              r14, qword ptr [rbp + 24]
                        mov              r15, qword ptr [rbp + 32]
                                                                                        jmp   main_ω
n259_scan_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 4128]
                        add              rsp, 4136
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 4128]
                        add              rsp, 4136
                        ret
                        .section         .note.GNU-stack,"",@progbits
