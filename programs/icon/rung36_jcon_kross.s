                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_cross_α
proc_cross_α:
proc_cross_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 512
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
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n2_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              qword ptr [rbp + 112], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx24_60:
                        .section         .rodata
.Lbynamegenfn3:         .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn3]                    # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 2                                         # nargs
                        lea              rcx, [rbp + 112]                               # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx24_240
                        add              rsp, 512
                                                                                        jmp   proc_cross_ω
.Lx24_240:
                                                                                        jmp   n3_assign_α
n2_call_builtin_gen_β:
                                                                                        jmp   .Lx24_60
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n4_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n4_bound_α:
                        mov              qword ptr [rbp + 160], rsp
                                                                                        jmp   n5_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n7_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n7_subscript_α:
                        mov              rdi, qword ptr [rbp + 272]                     # base
                        mov              rsi, qword ptr [rbp + 280]                     # base
                        mov              rdx, qword ptr [rbp + 288]                     # idx
                        mov              rcx, qword ptr [rbp + 296]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx32_240
                        add              rsp, 512
                                                                                        jmp   n19_unmark_α
.Lx32_240:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n8_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_deref_α:
                        mov              rdi, qword ptr [rbp + 304]                     # d
                        mov              rsi, qword ptr [rbp + 312]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx33_240
                        add              rsp, 512
                                                                                        jmp   n19_unmark_α
.Lx33_240:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n10_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 248], rax
                        mov              qword ptr [rbp + 256], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx36_60:
                        .section         .rodata
.Lbynamegenfn11:        .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn11]                   # fn
                        lea              rsi, [rbp + 224]                               # args
                        mov              edx, 2                                         # nargs
                        lea              rcx, [rbp + 256]                               # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx36_240
                        add              rsp, 512
                                                                                        jmp   n19_unmark_α
.Lx36_240:
                                                                                        jmp   n11_assign_α
n10_call_builtin_gen_β:
                                                                                        jmp   .Lx36_60
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n12_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n12_bound_α:
                        mov              qword ptr [rbp + 352], rsp
                                                                                        jmp   n13_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n17_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_proc_staged_α:
                        lea              rsi, [rbp + 496]
                        lea              rdx, [rbp + 512]
                        lea              rcx, [rbp + 528]
                        lea              r8, [rbp + 544]
                        call             proc_xprint_dcα
                                                                                        jmp   .Lx49_2
.Lx49_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n18_unmark_α
                                                                                        jmp   n18_unmark_α
n17_call_proc_staged_β:
                                                                                        jmp   n18_unmark_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "xprint"
#-----------------------------------------------------------------------------------------------------------------------
n18_unmark_α:
                        mov              rsp, qword ptr [rbp + 352]
                                                                                        jmp   n10_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n19_unmark_α:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n2_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_cross_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_cross_β:
                                                                                        jmp   proc_cross_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_cross_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_cross_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_cross_dcα:
                        pop              r11
                        sub              rsp, 656
                        mov              qword ptr [rsp + 632], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 608], r11
                        lea              rax, [rip + .Lx54_2]
                        mov              qword ptr [rbp + 616], rax
                        lea              rax, [rip + .Lx54_3]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 560                                       # suffix_off
                        mov              edx, 608                                       # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_cross_α_body
.Lx54_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -640
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx54_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -640
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_xprint_α
proc_xprint_α:
proc_xprint_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_icon_α:
                        sub              rsp, 176
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
                        .section         .rodata
.Lrkfn84:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn84]                          # fn
                        lea              rsi, [rbp + 752]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 104
                                                                                        je    n56_var_ref_α
                                                                                        jmp   n56_var_ref_α
n55_call_builtin_icon_β:
                                                                                        jmp   n56_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n57_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:
                        mov              qword ptr [rbp + 608], 3                       # result
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n58_var_α
.Lx87_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n59_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:
                        mov              qword ptr [rbp + 672], 3                       # result
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n60_coerce_numeric_α
.Lx90_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n60_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 5
                                                                                        je    .Lx92_1
                        cmp              eax, 3
                                                                                        jne   .Lx92_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 3
                                                                                        jne   .Lx92_0
.Lx92_1:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n61_binop_α
.Lx92_0:
                        lea              rdi, [rbp + 64]                                # self
                        lea              rsi, [rbp + 672]                               # other
                        lea              rdx, [rbp + 640]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n61_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_α:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 3
                                                                                        jne   .Lx93_0
                        mov              rax, qword ptr [rbp + 648]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 624], 3
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n62_to_α
.Lx93_0:
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx93_240
                        add              rsp, 176
                                                                                        jmp   n68_var_α
.Lx93_240:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n62_to_α
#-----------------------------------------------------------------------------------------------------------------------
n62_to_α:
                        mov              rdi, qword ptr [rbp + 608]                     # v
                        mov              rsi, qword ptr [rbp + 616]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 608], 3
                        mov              qword ptr [rbp + 616], rax
                        mov              rdi, qword ptr [rbp + 624]                     # v
                        mov              rsi, qword ptr [rbp + 632]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 624], 3
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 592], rax
.Lx95_0:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 632]
                        cmp              rax, rcx
                                                                                        jle   .Lx95_240
                        add              rsp, 176
                                                                                        jmp   n68_var_α
.Lx95_240:
                        mov              qword ptr [rbp + 576], 3
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n63_subscript_α
n62_to_β:
                        inc              qword ptr [rbp + 592]
                                                                                        jmp   .Lx95_0
#-----------------------------------------------------------------------------------------------------------------------
n63_subscript_α:
                        mov              rdi, qword ptr [rbp + 560]                     # base
                        mov              rsi, qword ptr [rbp + 568]                     # base
                        mov              rdx, qword ptr [rbp + 576]                     # idx
                        mov              rcx, qword ptr [rbp + 584]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n62_to_β
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n64_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n64_deref_α:
                        mov              rdi, qword ptr [rbp + 688]                     # d
                        mov              rsi, qword ptr [rbp + 696]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n62_to_β
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n65_var_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n66_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn101:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn101]                         # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n62_to_β
                                                                                        jmp   n67_call_builtin_icon_α
n66_call_builtin_icon_β:
                                                                                        jmp   n62_to_β
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn103:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]                         # fn
                        lea              rsi, [rbp + 464]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 104
                                                                                        je    n62_to_β
                                                                                        jmp   n62_to_β
n67_call_builtin_icon_β:
                                                                                        jmp   n62_to_β
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n69_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn107:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn107]                         # fn
                        lea              rsi, [rbp + 400]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n70_var_ref_α
                                                                                        jmp   n70_var_ref_α
n69_call_builtin_icon_β:
                                                                                        jmp   n70_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n71_var_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n72_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:
                        mov              qword ptr [rbp + 288], 3                       # result
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n73_coerce_numeric_α
.Lx112_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n73_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 5
                                                                                        je    .Lx114_1
                        cmp              eax, 3
                                                                                        jne   .Lx114_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 3
                                                                                        jne   .Lx114_0
.Lx114_1:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n74_binop_α
.Lx114_0:
                        lea              rdi, [rbp + 64]                                # self
                        lea              rsi, [rbp + 288]                               # other
                        lea              rdx, [rbp + 256]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n74_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n74_binop_α:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 3
                                                                                        jne   .Lx115_0
                        mov              rax, qword ptr [rbp + 264]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 240], 3
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n75_var_α
.Lx115_0:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    proc_xprint_ω
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n75_var_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n76_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n76_unop_α:
                        mov              rdi, qword ptr [rbp + 32]                      # lo
                        mov              rsi, qword ptr [rbp + 40]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n77_to_α
#-----------------------------------------------------------------------------------------------------------------------
n77_to_α:
                        mov              rdi, qword ptr [rbp + 240]                     # v
                        mov              rsi, qword ptr [rbp + 248]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 240], 3
                        mov              qword ptr [rbp + 248], rax
                        mov              rdi, qword ptr [rbp + 304]                     # v
                        mov              rsi, qword ptr [rbp + 312]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 304], 3
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 224], rax
.Lx120_0:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 312]
                        cmp              rax, rcx
                                                                                        jg    proc_xprint_ω
                        mov              qword ptr [rbp + 208], 3
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n78_subscript_α
n77_to_β:
                        inc              qword ptr [rbp + 224]
                                                                                        jmp   .Lx120_0
#-----------------------------------------------------------------------------------------------------------------------
n78_subscript_α:
                        mov              rdi, qword ptr [rbp + 192]                     # base
                        mov              rsi, qword ptr [rbp + 200]                     # base
                        mov              rdx, qword ptr [rbp + 208]                     # idx
                        mov              rcx, qword ptr [rbp + 216]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n77_to_β
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n79_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n79_deref_α:
                        mov              rdi, qword ptr [rbp + 336]                     # d
                        mov              rsi, qword ptr [rbp + 344]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n77_to_β
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n80_var_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n81_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn126:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn126]                         # fn
                        lea              rsi, [rbp + 144]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n77_to_β
                                                                                        jmp   n82_call_builtin_icon_α
n81_call_builtin_icon_β:
                                                                                        jmp   n77_to_β
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn128:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]                         # fn
                        lea              rsi, [rbp + 96]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n77_to_β
                                                                                        jmp   n77_to_β
n82_call_builtin_icon_β:
                                                                                        jmp   n77_to_β
#-----------------------------------------------------------------------------------------------------------------------
proc_xprint_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_xprint_β:
                                                                                        jmp   proc_xprint_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_xprint_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_xprint_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_xprint_dcα:
                        pop              r11
                        sub              rsp, 832
                        mov              qword ptr [rsp + 808], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 784], r11
                        lea              rax, [rip + .Lx129_2]
                        mov              qword ptr [rbp + 792], rax
                        lea              rax, [rip + .Lx129_3]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              qword ptr [rbp + 40], r8
                        mov              rdi, rbp                                       # fb
                        mov              esi, 768                                       # suffix_off
                        mov              edx, 784                                       # region_bytes
                        mov              ecx, 4                                         # np
                        mov              r8d, 4                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_xprint_α_body
.Lx129_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -816
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx129_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -816
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "cross"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_cross_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 592
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_cross_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "xprint"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_xprint_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 768
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_xprint_dcα]
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
n130_call_builtin_icon_α:
                        sub              rsp, 400
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
                        .section         .rodata
.Lrkfn151:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]                         # fn
                        lea              rsi, [rbp + 32]                                # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx150_240
                        add              rsp, 400
                                                                                        jmp   main_ω
.Lx150_240:
                                                                                        jmp   n131_assign_α
n130_call_builtin_icon_β:
                        add              rsp, 400
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n132_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn154:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn154]                         # fn
                        lea              rsi, [rbp + 416]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n133_lit_charset_α
                                                                                        jmp   n133_lit_charset_α
n132_call_builtin_icon_β:
                                                                                        jmp   n133_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_charset_α:
                        mov              qword ptr [rbp + 368], 2                       # result
                        mov              dword ptr [rbp + 372], -1
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n134_var_α
.Lx155_0:
                        .quad            .Lx155_0_s
.Lx155_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n135_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n135_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        mov              qword ptr [rbp + 352], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx158_60:
                        .section         .rodata
.Lbynamegenfn54:        .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn54]                   # fn
                        lea              rsi, [rbp + 320]                               # args
                        mov              edx, 2                                         # nargs
                        lea              rcx, [rbp + 352]                               # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 104
                                                                                        je    n137_var_α
                                                                                        jmp   n136_assign_α
n135_call_builtin_gen_β:
                                                                                        jmp   .Lx158_60
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n137_var_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n138_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:
                        mov              qword ptr [rbp + 160], 3                       # result
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n139_var_α
.Lx162_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n140_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n140_subscript_α:
                        mov              rdi, qword ptr [rbp + 144]                     # arr
                        mov              rsi, qword ptr [rbp + 152]                     # arr
                        mov              rdx, qword ptr [rbp + 160]                     # i
                        mov              rcx, qword ptr [rbp + 168]                     # i
                        mov              r8, qword ptr [rbp + 176]                      # j
                        mov              r9, qword ptr [rbp + 184]                      # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n130_call_builtin_icon_α
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n141_var_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n142_var_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n143_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:
                        mov              qword ptr [rbp + 272], 3                       # result
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n144_coerce_numeric_α
.Lx170_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n144_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 5
                                                                                        je    .Lx172_1
                        cmp              eax, 3
                                                                                        jne   .Lx172_0
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 3
                                                                                        jne   .Lx172_0
.Lx172_1:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n145_binop_α
.Lx172_0:
                        lea              rdi, [rbp + 448]                               # self
                        lea              rsi, [rbp + 272]                               # other
                        lea              rdx, [rbp + 240]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n145_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n145_binop_α:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 3
                                                                                        jne   .Lx173_0
                        mov              rax, qword ptr [rbp + 248]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 224], 3
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n146_lit_integer_α
.Lx173_0:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n130_call_builtin_icon_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n146_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:
                        mov              qword ptr [rbp + 288], 3                       # result
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n147_subscript_α
.Lx174_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n147_subscript_α:
                        mov              rdi, qword ptr [rbp + 208]                     # arr
                        mov              rsi, qword ptr [rbp + 216]                     # arr
                        mov              rdx, qword ptr [rbp + 224]                     # i
                        mov              rcx, qword ptr [rbp + 232]                     # i
                        mov              r8, qword ptr [rbp + 288]                      # j
                        mov              r9, qword ptr [rbp + 296]                      # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n130_call_builtin_icon_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n148_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_proc_staged_α:
                        lea              rsi, [rbp + 128]
                        lea              rdx, [rbp + 192]
                        call             proc_cross_dcα
                                                                                        jmp   .Lx177_2
.Lx177_2:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n130_call_builtin_icon_α
                                                                                        jmp   n149_conjunction_α
n148_call_proc_staged_β:
                                                                                        jmp   n130_call_builtin_icon_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "cross"
#-----------------------------------------------------------------------------------------------------------------------
n149_conjunction_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n130_call_builtin_icon_α
n149_conjunction_β:
                                                                                        jmp   n130_call_builtin_icon_α
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
