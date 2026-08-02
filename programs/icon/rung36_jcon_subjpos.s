                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_setpos_α
proc_setpos_α:
proc_setpos_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 416
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
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rbp + 320], 2                       # result
                        mov              dword ptr [rbp + 324], 5
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
                        lea              rdi, [rip + .Lrkfn19]                          # fn
                        lea              rsi, [rbp + 416]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n6_disjunction_α
                                                                                        jmp   n3_lit_integer_α
n2_call_builtin_icon_β:
                                                                                        jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 464], 3                       # result
                        mov              rax, qword ptr [rip + .Lx20_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n4_call_builtin_icon_α
.Lx20_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn22:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn22]                          # fn
                        lea              rsi, [rbp + 352]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n6_disjunction_α
                                                                                        jmp   n5_call_builtin_icon_α
n4_call_builtin_icon_β:
                                                                                        jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn24:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn24]                          # fn
                        lea              rsi, [rbp + 272]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 104
                                                                                        je    n6_disjunction_α
                                                                                        jmp   n6_disjunction_α
n5_call_builtin_icon_β:
                                                                                        jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:
                        mov              qword ptr [rbp + 64], 0
                        mov              qword ptr [rbp + 72], 0
                        mov              dword ptr [rbp + 80], 0
                                                                                        jmp   n9_var_α
n6_disjunction_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        jne   .Lx26_0
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n13_call_proc_staged_α
.Lx26_0:
                        cmp              eax, 1
                                                                                        jne   .Lx26_1
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n13_call_proc_staged_α
.Lx26_1:
                                                                                        jmp   n13_call_proc_staged_α
n6_disjunction_β:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        je    n13_call_proc_staged_α
                                                                                        jmp   n13_call_proc_staged_α
n6_disjunction_af:
                        add              dword ptr [rbp + 80], 1
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 1
                                                                                        je    n7_lit_string_α
                                                                                        jmp   n13_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 240], 2                       # result
                        mov              dword ptr [rbp + 244], 7
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n8_call_builtin_icon_α
n7_lit_string_β:
                                                                                        jmp   n13_call_proc_staged_α
.Lx27_0:
                        .quad            .Lx27_0_s
.Lx27_0_s:
                        .string          " FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn29:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn29]                          # fn
                        lea              rsi, [rbp + 208]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n13_call_proc_staged_α
                                                                                        jmp   n6_disjunction_as
n8_call_builtin_icon_β:
                                                                                        jmp   n13_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n10_keyword_assign_α
n9_var_β:
                                                                                        jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n10_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 176]                     # v
                        mov              rsi, qword ptr [rbp + 184]                     # v
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 104
                                                                                        je    n6_disjunction_af
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 144], 2                       # result
                        mov              dword ptr [rbp + 148], 7
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n12_call_builtin_icon_α
.Lx33_0:
                        .quad            .Lx33_0_s
.Lx33_0_s:
                        .string          "       "
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn35:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn35]                          # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n13_call_proc_staged_α
                                                                                        jmp   n6_disjunction_as
n12_call_builtin_icon_β:
                                                                                        jmp   n13_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_proc_staged_α:
                        call             proc_ws_dcα
                                                                                        jmp   .Lx37_2
.Lx37_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    n14_return_α
                                                                                        jmp   n14_return_α
n13_call_proc_staged_β:
                                                                                        jmp   n14_return_α
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n14_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        add              rsp, 416
                                                                                        jmp   proc_setpos_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_setpos_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_setpos_β:
                                                                                        jmp   proc_setpos_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_setpos_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_setpos_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_setpos_dcα:
                        pop              r11
                        sub              rsp, 544
                        mov              qword ptr [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 496], r11
                        lea              rax, [rip + .Lx39_2]
                        mov              qword ptr [rbp + 504], rax
                        lea              rax, [rip + .Lx39_3]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 480                                       # suffix_off
                        mov              edx, 496                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_setpos_α_body
.Lx39_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -528
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx39_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -528
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_setsubj_α
proc_setsubj_α:
proc_setsubj_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        sub              rsp, 416
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
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rbp + 320], 2                       # result
                        mov              dword ptr [rbp + 324], 5
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
                        lea              rdi, [rip + .Lrkfn59]                          # fn
                        lea              rsi, [rbp + 416]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n46_disjunction_α
                                                                                        jmp   n43_lit_integer_α
n42_call_builtin_icon_β:
                                                                                        jmp   n46_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        mov              qword ptr [rbp + 464], 3                       # result
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n44_call_builtin_icon_α
.Lx60_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn62:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn62]                          # fn
                        lea              rsi, [rbp + 352]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n46_disjunction_α
                                                                                        jmp   n45_call_builtin_icon_α
n44_call_builtin_icon_β:
                                                                                        jmp   n46_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn64:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn64]                          # fn
                        lea              rsi, [rbp + 272]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 104
                                                                                        je    n46_disjunction_α
                                                                                        jmp   n46_disjunction_α
n45_call_builtin_icon_β:
                                                                                        jmp   n46_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n46_disjunction_α:
                        mov              qword ptr [rbp + 64], 0
                        mov              qword ptr [rbp + 72], 0
                        mov              dword ptr [rbp + 80], 0
                                                                                        jmp   n49_var_α
n46_disjunction_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        jne   .Lx66_0
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n53_call_proc_staged_α
.Lx66_0:
                        cmp              eax, 1
                                                                                        jne   .Lx66_1
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n53_call_proc_staged_α
.Lx66_1:
                                                                                        jmp   n53_call_proc_staged_α
n46_disjunction_β:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        je    n53_call_proc_staged_α
                                                                                        jmp   n53_call_proc_staged_α
n46_disjunction_af:
                        add              dword ptr [rbp + 80], 1
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 1
                                                                                        je    n47_lit_string_α
                                                                                        jmp   n53_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 240], 2                       # result
                        mov              dword ptr [rbp + 244], 7
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n48_call_builtin_icon_α
n47_lit_string_β:
                                                                                        jmp   n53_call_proc_staged_α
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          " FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn69:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn69]                          # fn
                        lea              rsi, [rbp + 208]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n53_call_proc_staged_α
                                                                                        jmp   n46_disjunction_as
n48_call_builtin_icon_β:
                                                                                        jmp   n53_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n50_keyword_assign_α
n49_var_β:
                                                                                        jmp   n46_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n50_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 176]                     # lo
                        mov              rsi, qword ptr [rbp + 184]                     # hi
                        call             rt_keyword_subject_set@PLT
                        test             rax, rax
                                                                                        je    n46_disjunction_af
                        mov              qword ptr [rbp + 160], 2
                        mov              qword ptr [rbp + 168], rax
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n51_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 144], 2                       # result
                        mov              dword ptr [rbp + 148], 7
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n52_call_builtin_icon_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "       "
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn75:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn75]                          # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n53_call_proc_staged_α
                                                                                        jmp   n46_disjunction_as
n52_call_builtin_icon_β:
                                                                                        jmp   n53_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n53_call_proc_staged_α:
                        call             proc_ws_dcα
                                                                                        jmp   .Lx77_2
.Lx77_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    n54_return_α
                                                                                        jmp   n54_return_α
n53_call_proc_staged_β:
                                                                                        jmp   n54_return_α
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n54_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        add              rsp, 416
                                                                                        jmp   proc_setsubj_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_setsubj_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_setsubj_β:
                                                                                        jmp   proc_setsubj_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_setsubj_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_setsubj_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_setsubj_dcα:
                        pop              r11
                        sub              rsp, 544
                        mov              qword ptr [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 496], r11
                        lea              rax, [rip + .Lx79_2]
                        mov              qword ptr [rbp + 504], rax
                        lea              rax, [rip + .Lx79_3]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 480                                       # suffix_off
                        mov              edx, 496                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_setsubj_α_body
.Lx79_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -528
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx79_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -528
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ws_α
proc_ws_α:
proc_ws_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        sub              rsp, 192
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
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n81_keyword_icon_α
.Lx88_0:
                        .quad            .Lx88_0_s
.Lx88_0_s:
                        .string          "  &pos="
#-----------------------------------------------------------------------------------------------------------------------
n81_keyword_icon_α:
                        mov              qword ptr [rsp + 64], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n82_call_builtin_icon_α
n81_keyword_icon_β:
                                                                                        jmp   n87_return_α
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn91:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]                          # fn
                        lea              rsi, [rsp + 32]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104
                                                                                        je    n87_return_α
                                                                                        jmp   n83_lit_string_α
n82_call_builtin_icon_β:
                                                                                        jmp   n87_return_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rsp + 96], 2                        # result
                        mov              dword ptr [rsp + 100], 12
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n84_keyword_icon_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "   &subject="
#-----------------------------------------------------------------------------------------------------------------------
n84_keyword_icon_α:
                        call             rt_keyword_subject@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n85_call_builtin_icon_α
n84_keyword_icon_β:
                                                                                        jmp   n87_return_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn95:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn95]                          # fn
                        lea              rsi, [rsp + 128]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n87_return_α
                                                                                        jmp   n86_call_builtin_icon_α
n85_call_builtin_icon_β:
                                                                                        jmp   n87_return_α
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn97:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn97]                          # fn
                        lea              rsi, [rsp + 32]                                # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104
                                                                                        je    n87_return_α
                                                                                        jmp   n87_return_α
n86_call_builtin_icon_β:
                                                                                        jmp   n87_return_α
#-----------------------------------------------------------------------------------------------------------------------
n87_return_α:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        add              rsp, 192
                                                                                        jmp   proc_ws_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_ws_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_ws_β:
                                                                                        jmp   proc_ws_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ws_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_ws_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_ws_dcα:
                        pop              r11
                        sub              rsp, 368
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 320], r11
                        lea              rax, [rip + .Lx99_2]
                        mov              qword ptr [rsp + 328], rax
                        lea              rax, [rip + .Lx99_3]
                        mov              qword ptr [rsp + 336], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 304                                       # suffix_off
                        mov              edx, 320                                       # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_ws_α_body
.Lx99_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -352
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx99_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -352
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n100_call_proc_staged_α:
                        sub              rsp, 3584
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
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0
                        mov              qword ptr [rsp + 2288], 0
                        mov              qword ptr [rsp + 2296], 0
                        mov              qword ptr [rsp + 2304], 0
                        mov              qword ptr [rsp + 2312], 0
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0
                        mov              qword ptr [rsp + 2336], 0
                        mov              qword ptr [rsp + 2344], 0
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2376], 0
                        mov              qword ptr [rsp + 2384], 0
                        mov              qword ptr [rsp + 2392], 0
                        mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0
                        mov              qword ptr [rsp + 2416], 0
                        mov              qword ptr [rsp + 2424], 0
                        mov              qword ptr [rsp + 2432], 0
                        mov              qword ptr [rsp + 2440], 0
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0
                        mov              qword ptr [rsp + 2464], 0
                        mov              qword ptr [rsp + 2472], 0
                        mov              qword ptr [rsp + 2480], 0
                        mov              qword ptr [rsp + 2488], 0
                        mov              qword ptr [rsp + 2496], 0
                        mov              qword ptr [rsp + 2504], 0
                        mov              qword ptr [rsp + 2512], 0
                        mov              qword ptr [rsp + 2520], 0
                        mov              qword ptr [rsp + 2528], 0
                        mov              qword ptr [rsp + 2536], 0
                        mov              qword ptr [rsp + 2544], 0
                        mov              qword ptr [rsp + 2552], 0
                        mov              qword ptr [rsp + 2560], 0
                        mov              qword ptr [rsp + 2568], 0
                        mov              qword ptr [rsp + 2576], 0
                        mov              qword ptr [rsp + 2584], 0
                        mov              qword ptr [rsp + 2592], 0
                        mov              qword ptr [rsp + 2600], 0
                        mov              qword ptr [rsp + 2608], 0
                        mov              qword ptr [rsp + 2616], 0
                        mov              qword ptr [rsp + 2624], 0
                        mov              qword ptr [rsp + 2632], 0
                        mov              qword ptr [rsp + 2640], 0
                        mov              qword ptr [rsp + 2648], 0
                        mov              qword ptr [rsp + 2656], 0
                        mov              qword ptr [rsp + 2664], 0
                        mov              qword ptr [rsp + 2672], 0
                        mov              qword ptr [rsp + 2680], 0
                        mov              qword ptr [rsp + 2688], 0
                        mov              qword ptr [rsp + 2696], 0
                        mov              qword ptr [rsp + 2704], 0
                        mov              qword ptr [rsp + 2712], 0
                        mov              qword ptr [rsp + 2720], 0
                        mov              qword ptr [rsp + 2728], 0
                        mov              qword ptr [rsp + 2736], 0
                        mov              qword ptr [rsp + 2744], 0
                        mov              qword ptr [rsp + 2752], 0
                        mov              qword ptr [rsp + 2760], 0
                        mov              qword ptr [rsp + 2768], 0
                        mov              qword ptr [rsp + 2776], 0
                        mov              qword ptr [rsp + 2784], 0
                        mov              qword ptr [rsp + 2792], 0
                        mov              qword ptr [rsp + 2800], 0
                        mov              qword ptr [rsp + 2808], 0
                        mov              qword ptr [rsp + 2816], 0
                        mov              qword ptr [rsp + 2824], 0
                        mov              qword ptr [rsp + 2832], 0
                        mov              qword ptr [rsp + 2840], 0
                        mov              qword ptr [rsp + 2848], 0
                        mov              qword ptr [rsp + 2856], 0
                        mov              qword ptr [rsp + 2864], 0
                        mov              qword ptr [rsp + 2872], 0
                        mov              qword ptr [rsp + 2880], 0
                        mov              qword ptr [rsp + 2888], 0
                        mov              qword ptr [rsp + 2896], 0
                        mov              qword ptr [rsp + 2904], 0
                        mov              qword ptr [rsp + 2912], 0
                        mov              qword ptr [rsp + 2920], 0
                        mov              qword ptr [rsp + 2928], 0
                        mov              qword ptr [rsp + 2936], 0
                        mov              qword ptr [rsp + 2944], 0
                        mov              qword ptr [rsp + 2952], 0
                        mov              qword ptr [rsp + 2960], 0
                        mov              qword ptr [rsp + 2968], 0
                        mov              qword ptr [rsp + 2976], 0
                        mov              qword ptr [rsp + 2984], 0
                        mov              qword ptr [rsp + 2992], 0
                        mov              qword ptr [rsp + 3000], 0
                        mov              qword ptr [rsp + 3008], 0
                        mov              qword ptr [rsp + 3016], 0
                        mov              qword ptr [rsp + 3024], 0
                        mov              qword ptr [rsp + 3032], 0
                        mov              qword ptr [rsp + 3040], 0
                        mov              qword ptr [rsp + 3048], 0
                        mov              qword ptr [rsp + 3056], 0
                        mov              qword ptr [rsp + 3064], 0
                        mov              qword ptr [rsp + 3072], 0
                        mov              qword ptr [rsp + 3080], 0
                        mov              qword ptr [rsp + 3088], 0
                        mov              qword ptr [rsp + 3096], 0
                        mov              qword ptr [rsp + 3104], 0
                        mov              qword ptr [rsp + 3112], 0
                        mov              qword ptr [rsp + 3120], 0
                        mov              qword ptr [rsp + 3128], 0
                        mov              qword ptr [rsp + 3136], 0
                        mov              qword ptr [rsp + 3144], 0
                        mov              qword ptr [rsp + 3152], 0
                        mov              qword ptr [rsp + 3160], 0
                        mov              qword ptr [rsp + 3168], 0
                        mov              qword ptr [rsp + 3176], 0
                        mov              qword ptr [rsp + 3184], 0
                        mov              qword ptr [rsp + 3192], 0
                        mov              qword ptr [rsp + 3200], 0
                        mov              qword ptr [rsp + 3208], 0
                        mov              qword ptr [rsp + 3216], 0
                        mov              qword ptr [rsp + 3224], 0
                        mov              qword ptr [rsp + 3232], 0
                        mov              qword ptr [rsp + 3240], 0
                        mov              qword ptr [rsp + 3248], 0
                        mov              qword ptr [rsp + 3256], 0
                        mov              qword ptr [rsp + 3264], 0
                        mov              qword ptr [rsp + 3272], 0
                        mov              qword ptr [rsp + 3280], 0
                        mov              qword ptr [rsp + 3288], 0
                        mov              qword ptr [rsp + 3296], 0
                        mov              qword ptr [rsp + 3304], 0
                        mov              qword ptr [rsp + 3312], 0
                        mov              qword ptr [rsp + 3320], 0
                        mov              qword ptr [rsp + 3328], 0
                        mov              qword ptr [rsp + 3336], 0
                        mov              qword ptr [rsp + 3344], 0
                        mov              qword ptr [rsp + 3352], 0
                        mov              qword ptr [rsp + 3360], 0
                        mov              qword ptr [rsp + 3368], 0
                        mov              qword ptr [rsp + 3376], 0
                        mov              qword ptr [rsp + 3384], 0
                        mov              qword ptr [rsp + 3392], 0
                        mov              qword ptr [rsp + 3400], 0
                        mov              qword ptr [rsp + 3408], 0
                        mov              qword ptr [rsp + 3416], 0
                        mov              qword ptr [rsp + 3424], 0
                        mov              qword ptr [rsp + 3432], 0
                        mov              qword ptr [rsp + 3440], 0
                        mov              qword ptr [rsp + 3448], 0
                        mov              qword ptr [rsp + 3456], 0
                        mov              qword ptr [rsp + 3464], 0
                        mov              qword ptr [rsp + 3472], 0
                        mov              qword ptr [rsp + 3480], 0
                        mov              qword ptr [rsp + 3488], 0
                        mov              qword ptr [rsp + 3496], 0
                        mov              qword ptr [rsp + 3504], 0
                        mov              qword ptr [rsp + 3512], 0
                        mov              qword ptr [rsp + 3520], 0
                        mov              qword ptr [rsp + 3528], 0
                        mov              qword ptr [rsp + 3536], 0
                        mov              qword ptr [rsp + 3544], 0
                        mov              qword ptr [rsp + 3552], 0
                        mov              qword ptr [rsp + 3560], 0
                        mov              qword ptr [rsp + 3568], 0
                        mov              qword ptr [rsp + 3576], 0
                        call             proc_ws_dcα
                                                                                        jmp   .Lx208_2
.Lx208_2:
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                        cmp              eax, 104
                                                                                        je    n101_call_builtin_icon_α
                                                                                        jmp   n101_call_builtin_icon_α
n100_call_proc_staged_β:
                                                                                        jmp   n101_call_builtin_icon_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn210:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn210]                         # fn
                        lea              rsi, [rbp + 4032]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4016], rax
                        mov              qword ptr [rbp + 4024], rdx
                        cmp              eax, 104
                                                                                        je    n102_disjunction_α
                                                                                        jmp   n102_disjunction_α
n101_call_builtin_icon_β:
                                                                                        jmp   n102_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n102_disjunction_α:
                        mov              qword ptr [rbp + 3536], 0
                        mov              qword ptr [rbp + 3544], 0
                        mov              dword ptr [rbp + 3552], 0
                                                                                        jmp   n128_lit_string_α
n102_disjunction_as:
                        mov              eax, dword ptr [rbp + 3552]
                        cmp              eax, 0
                                                                                        jne   .Lx212_0
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n103_assign_α
.Lx212_0:
                        cmp              eax, 1
                                                                                        jne   .Lx212_1
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n103_assign_α
.Lx212_1:
                        cmp              eax, 2
                                                                                        jne   .Lx212_2
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n103_assign_α
.Lx212_2:
                        cmp              eax, 3
                                                                                        jne   .Lx212_3
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n103_assign_α
.Lx212_3:
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
                                                                                        je    n127_lit_string_α
                        cmp              eax, 2
                                                                                        je    n126_lit_string_α
                        cmp              eax, 3
                                                                                        je    n125_lit_string_α
                                                                                        jmp   n129_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:
                        mov              rax, qword ptr [rbp + 3536]
                        mov              rdx, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                                                                                        jmp   n104_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_proc_staged_α:
                        lea              rsi, [rbp + 3520]
                        call             proc_setsubj_dcα
                                                                                        jmp   .Lx215_2
.Lx215_2:
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx
                        cmp              eax, 104
                                                                                        je    n102_disjunction_β
                                                                                        jmp   n105_bound_α
n104_call_proc_staged_β:
                                                                                        jmp   n102_disjunction_β
.Lx215_0:
                        .quad            .Lx215_0_s
.Lx215_0_s:
                        .string          "setsubj"
#-----------------------------------------------------------------------------------------------------------------------
n105_bound_α:
                        mov              qword ptr [rbp + 3632], rsp
                                                                                        jmp   n106_var_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 3800], rax
                                                                                        jmp   n107_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n107_unop_α:
                        mov              rdi, qword ptr [rbp + 4096]                    # lo
                        mov              rsi, qword ptr [rbp + 4104]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                                                                                        jmp   n108_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n108_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 3776]
                        cmp              eax, 5
                                                                                        je    .Lx222_1
                        cmp              eax, 3
                                                                                        jne   .Lx222_0
                        mov              eax, dword ptr [rbp + 3776]
                        cmp              eax, 3
                                                                                        jne   .Lx222_0
.Lx222_1:
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n109_unop_α
.Lx222_0:
                        lea              rdi, [rbp + 3776]                              # self
                        lea              rsi, [rbp + 3776]                              # other
                        lea              rdx, [rbp + 3760]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n109_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n109_unop_α:
                        mov              rdi, qword ptr [rbp + 3760]                    # a
                        mov              rsi, qword ptr [rbp + 3768]                    # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                                                                                        jmp   n110_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_integer_α:
                        mov              qword ptr [rbp + 3808], 3                      # result
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rbp + 3816], rax
                                                                                        jmp   n111_coerce_numeric_α
.Lx224_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n111_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 3744]
                        cmp              eax, 5
                                                                                        je    .Lx226_1
                        cmp              eax, 3
                                                                                        jne   .Lx226_0
                        mov              eax, dword ptr [rbp + 3808]
                        cmp              eax, 3
                                                                                        jne   .Lx226_0
.Lx226_1:
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3728], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   n112_binop_α
.Lx226_0:
                        lea              rdi, [rbp + 3744]                              # self
                        lea              rsi, [rbp + 3808]                              # other
                        lea              rdx, [rbp + 3728]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n112_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n112_binop_α:
                        mov              eax, dword ptr [rbp + 3728]
                        cmp              eax, 3
                                                                                        jne   .Lx227_0
                        mov              rax, qword ptr [rbp + 3736]
                        mov              rcx, 2
                        sub              rax, rcx
                        mov              qword ptr [rbp + 3712], 3
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n113_var_α
.Lx227_0:
                        mov              rdi, qword ptr [rbp + 3728]
                        mov              rsi, qword ptr [rbp + 3736]
                        mov              rdx, qword ptr [rbp + 3808]
                        mov              rcx, qword ptr [rbp + 3816]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx227_240
                        add              rsp, 3584
                                                                                        jmp   n124_unmark_α
.Lx227_240:
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx
                                                                                        jmp   n113_var_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n114_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n114_unop_α:
                        mov              rdi, qword ptr [rbp + 4096]                    # lo
                        mov              rsi, qword ptr [rbp + 4104]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                                                                                        jmp   n115_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:
                        mov              qword ptr [rbp + 3888], 3                      # result
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 3896], rax
                                                                                        jmp   n116_coerce_numeric_α
.Lx231_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n116_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 3856]
                        cmp              eax, 5
                                                                                        je    .Lx233_1
                        cmp              eax, 3
                                                                                        jne   .Lx233_0
                        mov              eax, dword ptr [rbp + 3888]
                        cmp              eax, 3
                                                                                        jne   .Lx233_0
.Lx233_1:
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3848], rax
                                                                                        jmp   n117_binop_α
.Lx233_0:
                        lea              rdi, [rbp + 3856]                              # self
                        lea              rsi, [rbp + 3888]                              # other
                        lea              rdx, [rbp + 3840]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n117_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n117_binop_α:
                        mov              eax, dword ptr [rbp + 3840]
                        cmp              eax, 3
                                                                                        jne   .Lx234_0
                        mov              rax, qword ptr [rbp + 3848]
                        mov              rcx, 3
                        add              rax, rcx
                        mov              qword ptr [rbp + 3824], 3
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   n118_to_α
.Lx234_0:
                        mov              rdi, qword ptr [rbp + 3840]
                        mov              rsi, qword ptr [rbp + 3848]
                        mov              rdx, qword ptr [rbp + 3888]
                        mov              rcx, qword ptr [rbp + 3896]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx234_240
                        add              rsp, 3584
                                                                                        jmp   n124_unmark_α
.Lx234_240:
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                                                                                        jmp   n118_to_α
#-----------------------------------------------------------------------------------------------------------------------
n118_to_α:
                        mov              rdi, qword ptr [rbp + 3712]                    # v
                        mov              rsi, qword ptr [rbp + 3720]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3712], 3
                        mov              qword ptr [rbp + 3720], rax
                        mov              rdi, qword ptr [rbp + 3824]                    # v
                        mov              rsi, qword ptr [rbp + 3832]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3824], 3
                        mov              qword ptr [rbp + 3832], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3696], rax
.Lx236_0:
                        mov              rax, qword ptr [rbp + 3696]
                        mov              rcx, qword ptr [rbp + 3832]
                        cmp              rax, rcx
                                                                                        jle   .Lx236_240
                        add              rsp, 3584
                                                                                        jmp   n124_unmark_α
.Lx236_240:
                        mov              qword ptr [rbp + 3680], 3
                        mov              qword ptr [rbp + 3688], rax
                                                                                        jmp   n119_assign_α
n118_to_β:
                        inc              qword ptr [rbp + 3696]
                                                                                        jmp   .Lx236_0
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:
                        mov              rax, qword ptr [rbp + 3680]
                        mov              rdx, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx
                                                                                        jmp   n120_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n120_bound_α:
                        mov              qword ptr [rbp + 3904], rsp
                                                                                        jmp   n121_var_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 4008], rax
                                                                                        jmp   n122_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_proc_staged_α:
                        lea              rsi, [rbp + 4000]
                        call             proc_setpos_dcα
                                                                                        jmp   .Lx243_2
.Lx243_2:
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              eax, 104
                                                                                        je    n123_unmark_α
                                                                                        jmp   n123_unmark_α
n122_call_proc_staged_β:
                                                                                        jmp   n123_unmark_α
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          "setpos"
#-----------------------------------------------------------------------------------------------------------------------
n123_unmark_α:
                        mov              rsp, qword ptr [rbp + 3904]
                                                                                        jmp   n118_to_β
#-----------------------------------------------------------------------------------------------------------------------
n124_unmark_α:
                        mov              rsp, qword ptr [rbp + 3632]
                                                                                        jmp   n102_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rbp + 3616], 2                      # result
                        mov              dword ptr [rbp + 3620], 1
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rbp + 3624], rax
                                                                                        jmp   n102_disjunction_as
n125_lit_string_β:
                                                                                        jmp   n102_disjunction_af
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        mov              qword ptr [rbp + 3600], 2                      # result
                        mov              dword ptr [rbp + 3604], 5
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n102_disjunction_as
n126_lit_string_β:
                                                                                        jmp   n102_disjunction_af
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          "donut"
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 3584], 2                      # result
                        mov              dword ptr [rbp + 3588], 0
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rbp + 3592], rax
                                                                                        jmp   n102_disjunction_as
n127_lit_string_β:
                                                                                        jmp   n102_disjunction_af
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        mov              qword ptr [rbp + 3568], 2                      # result
                        mov              dword ptr [rbp + 3572], 3
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n102_disjunction_as
n128_lit_string_β:
                                                                                        jmp   n102_disjunction_af
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          "cat"
#-----------------------------------------------------------------------------------------------------------------------
n129_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn253:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn253]                         # fn
                        lea              rsi, [rbp + 3456]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                        cmp              eax, 104
                                                                                        je    n130_lit_string_α
                                                                                        jmp   n130_lit_string_α
n129_call_builtin_icon_β:
                                                                                        jmp   n130_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:
                        mov              qword ptr [rbp + 3424], 2                      # result
                        mov              dword ptr [rbp + 3428], 5
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 3432], rax
                                                                                        jmp   n131_scan_enter_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "outer"
#-----------------------------------------------------------------------------------------------------------------------
n131_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 3424]                    # lo
                        mov              rsi, qword ptr [rbp + 3432]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
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
                                                                                        jmp   .Lx258_2
.Lx258_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              eax, 104
                                                                                        je    n133_lit_integer_α
                                                                                        jmp   n133_lit_integer_α
n132_call_proc_staged_β:
                                                                                        jmp   n133_lit_integer_α
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:
                        mov              qword ptr [rbp + 3376], 3                      # result
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n134_keyword_assign_α
.Lx259_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n134_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 3376]                    # v
                        mov              rsi, qword ptr [rbp + 3384]                    # v
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 104
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
                                                                                        jmp   .Lx262_2
.Lx262_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        cmp              eax, 104
                                                                                        je    n136_lit_string_α
                                                                                        jmp   n136_lit_string_α
n135_call_proc_staged_β:
                                                                                        jmp   n136_lit_string_α
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        mov              qword ptr [rbp + 3312], 2                      # result
                        mov              dword ptr [rbp + 3316], 5
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n137_scan_enter_α
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "inner"
#-----------------------------------------------------------------------------------------------------------------------
n137_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 3312]                    # lo
                        mov              rsi, qword ptr [rbp + 3320]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
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
                                                                                        jmp   .Lx267_2
.Lx267_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                        cmp              eax, 104
                                                                                        je    n139_lit_integer_α
                                                                                        jmp   n139_lit_integer_α
n138_call_proc_staged_β:
                                                                                        jmp   n139_lit_integer_α
.Lx267_0:
                        .quad            .Lx267_0_s
.Lx267_0_s:
                        .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:
                        mov              qword ptr [rbp + 3264], 3                      # result
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rbp + 3272], rax
                                                                                        jmp   n140_keyword_assign_α
.Lx268_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n140_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 3264]                    # v
                        mov              rsi, qword ptr [rbp + 3272]                    # v
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 104
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
                                                                                        jmp   .Lx271_2
.Lx271_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              eax, 104
                                                                                        je    n144_scan_α
                                                                                        jmp   n142_conjunction_α
n141_call_proc_staged_β:
                                                                                        jmp   n144_scan_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n142_conjunction_α:
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n143_scan_α
n142_conjunction_β:
                                                                                        jmp   n144_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n143_scan_α:
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3176], rax
                        lea              rdi, [rbp + 3136]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 3136]
                        mov              r14, qword ptr [rbp + 3144]
                        mov              r15, qword ptr [rbp + 3152]
                                                                                        jmp   n145_call_proc_staged_α
n143_scan_β:
                                                                                        jmp   n145_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n144_scan_α:
                        lea              rdi, [rbp + 3136]                              # out3
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
                                                                                        jmp   .Lx278_2
.Lx278_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                        cmp              eax, 104
                                                                                        je    n148_scan_α
                                                                                        jmp   n146_conjunction_α
n145_call_proc_staged_β:
                                                                                        jmp   n148_scan_α
.Lx278_0:
                        .quad            .Lx278_0_s
.Lx278_0_s:
                        .string          "ws"
#-----------------------------------------------------------------------------------------------------------------------
n146_conjunction_α:
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n147_scan_α
n146_conjunction_β:
                                                                                        jmp   n148_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n147_scan_α:
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3048], rax
                        lea              rdi, [rbp + 3008]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 3008]
                        mov              r14, qword ptr [rbp + 3016]
                        mov              r15, qword ptr [rbp + 3024]
                                                                                        jmp   n149_lit_string_α
n147_scan_β:
                                                                                        jmp   n149_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n148_scan_α:
                        lea              rdi, [rbp + 3008]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 3008]
                        mov              r14, qword ptr [rbp + 3016]
                        mov              r15, qword ptr [rbp + 3024]
                                                                                        jmp   n149_lit_string_α
n148_scan_β:
                                                                                        jmp   n149_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:
                        mov              qword ptr [rbp + 2976], 2                      # result
                        mov              dword ptr [rbp + 2980], 6
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n150_scan_enter_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "123456"
#-----------------------------------------------------------------------------------------------------------------------
n150_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2976]                    # lo
                        mov              rsi, qword ptr [rbp + 2984]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n151_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:
                        mov              qword ptr [rbp + 2960], 3                      # result
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n152_keyword_assign_α
.Lx287_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n152_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 2960]                    # v
                        mov              rsi, qword ptr [rbp + 2968]                    # v
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 104
                                                                                        je    n153_lit_integer_α
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n153_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:
                        mov              qword ptr [rbp + 2928], 3                      # result
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n154_assign_α
.Lx289_0:
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
                        mov              qword ptr [rbp + 2848], 2                      # result
                        mov              dword ptr [rbp + 2852], 5
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n156_keyword_icon_α
.Lx291_0:
                        .quad            .Lx291_0_s
.Lx291_0_s:
                        .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n156_keyword_icon_α:
                        mov              qword ptr [rbp + 2864], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n157_lit_string_α
n156_keyword_icon_β:
                                                                                        jmp   n160_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:
                        mov              qword ptr [rbp + 2896], 2                      # result
                        mov              dword ptr [rbp + 2900], 3
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n158_var_α
.Lx293_0:
                        .quad            .Lx293_0_s
.Lx293_0_s:
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
.Lrkfn297:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn297]                         # fn
                        lea              rsi, [rbp + 2768]                              # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        cmp              eax, 104
                                                                                        je    n160_keyword_icon_α
                                                                                        jmp   n160_keyword_icon_α
n159_call_builtin_icon_β:
                                                                                        jmp   n160_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n160_keyword_icon_α:
                        mov              qword ptr [rbp + 2688], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n161_var_α
n160_keyword_icon_β:
                                                                                        jmp   n164_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n162_keyword_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n162_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 2720]                    # v
                        mov              rsi, qword ptr [rbp + 2728]                    # v
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 104
                                                                                        je    n164_lit_string_α
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n163_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n163_assign_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                                                                                        jmp   n164_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:
                        mov              qword ptr [rbp + 2608], 2                      # result
                        mov              dword ptr [rbp + 2612], 5
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n165_keyword_icon_α
.Lx303_0:
                        .quad            .Lx303_0_s
.Lx303_0_s:
                        .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n165_keyword_icon_α:
                        mov              qword ptr [rbp + 2624], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n166_lit_string_α
n165_keyword_icon_β:
                                                                                        jmp   n169_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        mov              qword ptr [rbp + 2656], 2                      # result
                        mov              dword ptr [rbp + 2660], 3
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n167_var_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
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
.Lrkfn309:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn309]                         # fn
                        lea              rsi, [rbp + 2528]                              # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        cmp              eax, 104
                                                                                        je    n169_lit_integer_α
                                                                                        jmp   n169_lit_integer_α
n168_call_builtin_icon_β:
                                                                                        jmp   n169_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:
                        mov              qword ptr [rbp + 2496], 3                      # result
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n170_keyword_assign_α
.Lx310_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n170_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 2496]                    # v
                        mov              rsi, qword ptr [rbp + 2504]                    # v
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 104
                                                                                        je    n171_lit_integer_α
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n171_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:
                        mov              qword ptr [rbp + 2464], 3                      # result
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n172_assign_α
.Lx312_0:
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
                        mov              qword ptr [rbp + 2400], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n174_var_α
n173_keyword_icon_β:
                                                                                        jmp   n177_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n174_var_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n175_keyword_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n175_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 2432]                    # v
                        mov              rsi, qword ptr [rbp + 2440]                    # v
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 104
                                                                                        je    n177_lit_string_α
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n176_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n176_assign_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              rdx, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                                                                                        jmp   n177_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:
                        mov              qword ptr [rbp + 2320], 2                      # result
                        mov              dword ptr [rbp + 2324], 5
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n178_keyword_icon_α
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n178_keyword_icon_α:
                        mov              qword ptr [rbp + 2336], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n179_lit_string_α
n178_keyword_icon_β:
                                                                                        jmp   n182_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:
                        mov              qword ptr [rbp + 2368], 2                      # result
                        mov              dword ptr [rbp + 2372], 3
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n180_var_α
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
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
.Lrkfn325:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn325]                         # fn
                        lea              rsi, [rbp + 2240]                              # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              eax, 104
                                                                                        je    n182_lit_integer_α
                                                                                        jmp   n182_lit_integer_α
n181_call_builtin_icon_β:
                                                                                        jmp   n182_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:
                        mov              qword ptr [rbp + 2208], 3                      # result
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n183_keyword_assign_α
.Lx326_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n183_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 2208]                    # v
                        mov              rsi, qword ptr [rbp + 2216]                    # v
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 104
                                                                                        je    n184_lit_integer_α
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n184_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:
                        mov              qword ptr [rbp + 2176], 3                      # result
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n185_assign_α
.Lx328_0:
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
                        mov              qword ptr [rbp + 2112], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n187_var_α
n186_keyword_icon_β:
                                                                                        jmp   n190_lit_string_α
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
                                                                                        jmp   n189_keyword_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n189_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 2144]                    # v
                        mov              rsi, qword ptr [rbp + 2152]                    # v
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 104
                                                                                        je    n190_lit_string_α
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n190_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:
                        mov              qword ptr [rbp + 2032], 2                      # result
                        mov              dword ptr [rbp + 2036], 5
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n191_keyword_icon_α
.Lx335_0:
                        .quad            .Lx335_0_s
.Lx335_0_s:
                        .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n191_keyword_icon_α:
                        mov              qword ptr [rbp + 2048], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n192_lit_string_α
n191_keyword_icon_β:
                                                                                        jmp   n195_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        mov              qword ptr [rbp + 2080], 2                      # result
                        mov              dword ptr [rbp + 2084], 3
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n193_var_α
.Lx337_0:
                        .quad            .Lx337_0_s
.Lx337_0_s:
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
.Lrkfn341:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn341]                         # fn
                        lea              rsi, [rbp + 1952]                              # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 104
                                                                                        je    n195_lit_integer_α
                                                                                        jmp   n195_lit_integer_α
n194_call_builtin_icon_β:
                                                                                        jmp   n195_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_integer_α:
                        mov              qword ptr [rbp + 1920], 3                      # result
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n196_keyword_assign_α
.Lx342_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n196_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 1920]                    # v
                        mov              rsi, qword ptr [rbp + 1928]                    # v
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 104
                                                                                        je    n197_lit_integer_α
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n197_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:
                        mov              qword ptr [rbp + 1888], 3                      # result
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n198_assign_α
.Lx344_0:
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
                        mov              qword ptr [rbp + 1632], r14                    # scan_δ
                        mov              qword ptr [rbp + 1640], r15                    # scan_Δ
                        mov              rdi, 1                                         # lkind
                        mov              rsi, 0                                         # lp
                        mov              rdx, 0                                         # rkind
                        lea              rcx, [rbp + 4080]                              # rp
                        lea              r8, [rbp + 1600]                               # save
                        lea              r9, [rbp + 1632]                               # scan_δ
                        call             rt_rev_swap_fwd@PLT
                        mov              r14, qword ptr [rbp + 1632]
                        cmp              eax, 104
                                                                                        je    main_ω
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n200_bound_α
n199_rev_swap_β:
                        mov              qword ptr [rbp + 1632], r14
                        mov              qword ptr [rbp + 1640], r15                    # scan_Δ
                        mov              rdi, 1                                         # lkind
                        mov              rsi, 0                                         # lp
                        mov              rdx, 0                                         # rkind
                        lea              rcx, [rbp + 4080]                              # rp
                        lea              r8, [rbp + 1600]                               # save
                        lea              r9, [rbp + 1632]                               # scan_δ
                        call             rt_rev_swap_undo@PLT
                        mov              r14, qword ptr [rbp + 1632]
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n200_bound_α:
                        mov              qword ptr [rbp + 1664], rsp
                                                                                        jmp   n201_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:
                        mov              qword ptr [rbp + 1808], 2                      # result
                        mov              dword ptr [rbp + 1812], 5
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n202_keyword_icon_α
.Lx349_0:
                        .quad            .Lx349_0_s
.Lx349_0_s:
                        .string          "&pos="
#-----------------------------------------------------------------------------------------------------------------------
n202_keyword_icon_α:
                        mov              qword ptr [rbp + 1824], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n203_lit_string_α
n202_keyword_icon_β:
                                                                                        jmp   n206_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:
                        mov              qword ptr [rbp + 1856], 2                      # result
                        mov              dword ptr [rbp + 1860], 3
                        mov              rax, qword ptr [rip + .Lx351_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n204_var_α
.Lx351_0:
                        .quad            .Lx351_0_s
.Lx351_0_s:
                        .string          " x="
#-----------------------------------------------------------------------------------------------------------------------
n204_var_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n205_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_icon_α:
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
.Lrkfn355:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn355]                         # fn
                        lea              rsi, [rbp + 1728]                              # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 104
                                                                                        je    n206_unmark_α
                                                                                        jmp   n206_unmark_α
n205_call_builtin_icon_β:
                                                                                        jmp   n206_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n206_unmark_α:
                        mov              rsp, qword ptr [rbp + 1664]
                                                                                        jmp   n199_rev_swap_β
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
