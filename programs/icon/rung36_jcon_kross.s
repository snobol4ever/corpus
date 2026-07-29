                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_cross_α
proc_cross_α:
                        .global          proc_cross_α
                        .global          proc_cross_β
                        .global          proc_cross_γ
                        .global          proc_cross_ω
                        sub              rsp, 624
                        mov              [rsp + 600], rcx
                        mov              [rsp + 608], rdx
                        mov              [rsp + 616], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 560
                        mov              edx, 592
                        call             rt_jmp_frame_lexprep2@PLT
proc_cross_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
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
                        lea              rdi, [rip + .Lbynamegenfn3]
                        lea              rsi, [rbp + 80]
                        mov              edx, 2
                        lea              rcx, [rbp + 112]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_cross_ω
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
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n8_unmark_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n9_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_unmark_α:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n2_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n9_deref_α:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n8_unmark_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n11_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_gen_α:
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
.Lx38_60:
                        .section         .rodata
.Lbynamegenfn12:        .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn12]
                        lea              rsi, [rbp + 224]
                        mov              edx, 2
                        lea              rcx, [rbp + 256]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n8_unmark_α
                                                                                        jmp   n12_assign_α
n11_call_builtin_gen_β:
                                                                                        jmp   .Lx38_60
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n13_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n13_bound_α:
                        mov              qword ptr [rbp + 352], rsp
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_unmark_α:
                        mov              rsp, qword ptr [rbp + 352]
                                                                                        jmp   n11_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n19_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_proc_staged_α:
                        lea              rsi, [rbp + 496]
                        lea              rdx, [rbp + 512]
                        lea              rcx, [rbp + 528]
                        lea              r8, [rbp + 544]
                        call             proc_xprint_dcα
                                                                                        jmp   .Lx53_2
.Lx53_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n16_unmark_α
                                                                                        jmp   n16_unmark_α
n19_call_proc_staged_β:
                                                                                        jmp   n16_unmark_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "xprint"
#-----------------------------------------------------------------------------------------------------------------------
proc_cross_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_cross_β:
                                                                                        jmp   proc_cross_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_cross_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 600]
                        lea              rsp, [rbp + 624]
                        mov              rbp, [rbp + 616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_cross_ω:
                        mov              rax, [rbp + 608]
                        lea              rsp, [rbp + 624]
                        mov              rbp, [rbp + 616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_cross_dcα:
                        pop              r11
                        sub              rsp, 640
                        mov              qword ptr [rsp + 616], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 592], r11
                        lea              rax, [rip + .Lx54_2]
                        mov              qword ptr [rbp + 600], rax
                        lea              rax, [rip + .Lx54_3]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 560
                        mov              edx, 592
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_cross_α_body
.Lx54_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -624
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx54_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -624
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_xprint_α
proc_xprint_α:
                        .global          proc_xprint_α
                        .global          proc_xprint_β
                        .global          proc_xprint_γ
                        .global          proc_xprint_ω
                        sub              rsp, 800
                        mov              [rsp + 776], rcx
                        mov              [rsp + 784], rdx
                        mov              [rsp + 792], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 768
                        mov              edx, 768
                        call             rt_jmp_frame_lexprep2@PLT
proc_xprint_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn84:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn84]
                        lea              rsi, [rbp + 752]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
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
                        mov              qword ptr [rbp + 608], 6
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
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n61_op75_α
.Lx90_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n62_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n61_op75_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 7
                                                                                        je    .Lx94_1
                        cmp              eax, 6
                                                                                        jne   .Lx94_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                                                                                        jne   .Lx94_0
.Lx94_1:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n64_binop_α
.Lx94_0:
                        lea              rdi, [rbp + 64]
                        lea              rsi, [rbp + 672]
                        lea              rdx, [rbp + 640]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n64_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn96:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn96]
                        lea              rsi, [rbp + 400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n63_var_ref_α
                                                                                        jmp   n63_var_ref_α
n62_call_builtin_icon_β:
                                                                                        jmp   n63_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n65_var_α
#-----------------------------------------------------------------------------------------------------------------------
n64_binop_α:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 6
                                                                                        jne   .Lx99_0
                        mov              rax, qword ptr [rbp + 648]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 624], 6
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n66_to_α
.Lx99_0:
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n60_var_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n66_to_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n67_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n66_to_α:
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 608], 6
                        mov              qword ptr [rbp + 616], rax
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 624], 6
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 592], rax
.Lx103_0:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 632]
                        cmp              rax, rcx
                                                                                        jg    n60_var_α
                        mov              qword ptr [rbp + 576], 6
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n68_subscript_α
n66_to_β:
                        inc              qword ptr [rbp + 592]
                                                                                        jmp   .Lx103_0
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n69_op75_α
.Lx104_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n68_subscript_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n66_to_β
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n70_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n69_op75_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 7
                                                                                        je    .Lx107_1
                        cmp              eax, 6
                                                                                        jne   .Lx107_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 6
                                                                                        jne   .Lx107_0
.Lx107_1:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n71_binop_α
.Lx107_0:
                        lea              rdi, [rbp + 64]
                        lea              rsi, [rbp + 288]
                        lea              rdx, [rbp + 256]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n71_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n70_deref_α:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n66_to_β
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n72_var_α
#-----------------------------------------------------------------------------------------------------------------------
n71_binop_α:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 6
                                                                                        jne   .Lx109_0
                        mov              rax, qword ptr [rbp + 264]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 240], 6
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n73_var_α
.Lx109_0:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    proc_xprint_ω
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n74_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n75_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn115:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn115]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n66_to_β
                                                                                        jmp   n76_call_builtin_icon_α
n74_call_builtin_icon_β:
                                                                                        jmp   n66_to_β
#-----------------------------------------------------------------------------------------------------------------------
n75_unop_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n77_to_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn118:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn118]
                        lea              rsi, [rbp + 464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n66_to_β
                                                                                        jmp   n66_to_β
n76_call_builtin_icon_β:
                                                                                        jmp   n66_to_β
#-----------------------------------------------------------------------------------------------------------------------
n77_to_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 240], 6
                        mov              qword ptr [rbp + 248], rax
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 304], 6
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 224], rax
.Lx120_0:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 312]
                        cmp              rax, rcx
                                                                                        jg    proc_xprint_ω
                        mov              qword ptr [rbp + 208], 6
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n78_subscript_α
n77_to_β:
                        inc              qword ptr [rbp + 224]
                                                                                        jmp   .Lx120_0
#-----------------------------------------------------------------------------------------------------------------------
n78_subscript_α:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n77_to_β
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n79_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n79_deref_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        call             rt_deref@PLT
                        cmp              eax, 99
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
                        lea              rdi, [rip + .Lrkfn126]
                        lea              rsi, [rbp + 144]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
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
                        lea              rdi, [rip + .Lrkfn128]
                        lea              rsi, [rbp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 776]
                        lea              rsp, [rbp + 800]
                        mov              rbp, [rbp + 792]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_xprint_ω:
                        mov              rax, [rbp + 784]
                        lea              rsp, [rbp + 800]
                        mov              rbp, [rbp + 792]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_xprint_dcα:
                        pop              r11
                        sub              rsp, 816
                        mov              qword ptr [rsp + 792], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 768], r11
                        lea              rax, [rip + .Lx129_2]
                        mov              qword ptr [rbp + 776], rax
                        lea              rax, [rip + .Lx129_3]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              qword ptr [rbp + 40], r8
                        mov              rdi, rbp
                        mov              esi, 768
                        mov              edx, 768
                        mov              ecx, 4
                        mov              r8d, 4
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_xprint_α_body
.Lx129_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -800
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx129_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -800
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
                        sub              rsp, 472
                        mov              rdi, rsp
                        mov              ecx, 472
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 464], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn151:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rbp + 32]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n131_assign_α
n130_call_builtin_icon_β:
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
                        lea              rdi, [rip + .Lrkfn154]
                        lea              rsi, [rbp + 416]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n133_lit_charset_α
                                                                                        jmp   n133_lit_charset_α
n132_call_builtin_icon_β:
                                                                                        jmp   n133_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_charset_α:
                        mov              qword ptr [rbp + 368], 1
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
                        lea              rdi, [rip + .Lbynamegenfn54]
                        lea              rsi, [rbp + 320]
                        mov              edx, 2
                        lea              rcx, [rbp + 352]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n136_var_α
                                                                                        jmp   n137_assign_α
n135_call_builtin_gen_β:
                                                                                        jmp   .Lx158_60
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n138_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n137_assign_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n136_var_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:
                        mov              qword ptr [rbp + 160], 6
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
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 168]
                        mov              r8, qword ptr [rbp + 176]
                        mov              r9, qword ptr [rbp + 184]
                        call             subscript_get2@PLT
                        cmp              eax, 99
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
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n144_op75_α
.Lx170_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n144_op75_α:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 7
                                                                                        je    .Lx172_1
                        cmp              eax, 6
                                                                                        jne   .Lx172_0
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 6
                                                                                        jne   .Lx172_0
.Lx172_1:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n145_binop_α
.Lx172_0:
                        lea              rdi, [rbp + 448]
                        lea              rsi, [rbp + 272]
                        lea              rdx, [rbp + 240]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n145_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n145_binop_α:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 6
                                                                                        jne   .Lx173_0
                        mov              rax, qword ptr [rbp + 248]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 224], 6
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n146_lit_integer_α
.Lx173_0:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n130_call_builtin_icon_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n146_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n147_subscript_α
.Lx174_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n147_subscript_α:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        mov              r8, qword ptr [rbp + 288]
                        mov              r9, qword ptr [rbp + 296]
                        call             subscript_get2@PLT
                        cmp              eax, 99
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
                        cmp              eax, 99
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
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 464]
                        add              rsp, 472
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 464]
                        add              rsp, 472
                        ret
                        .section         .note.GNU-stack,"",@progbits
