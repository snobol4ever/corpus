                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_placequeen_α
proc_placequeen_α:
                        .global          proc_placequeen_α
                        .global          proc_placequeen_β
                        .global          proc_placequeen_γ
                        .global          proc_placequeen_ω
                        sub              rsp, 768
                        mov              [rsp + 744], rcx
                        mov              [rsp + 752], rdx
                        mov              [rsp + 760], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 704
                        mov              edx, 736
                        call             rt_jmp_frame_lexprep2@PLT
proc_placequeen_α_body:
                        lea              rax, [rip + n37_suspend_β]
                        mov              qword ptr [rbp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        mov              qword ptr [rbp + 80], 6
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1_var_α
.Lx38_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n2_to_α
#-----------------------------------------------------------------------------------------------------------------------
n2_to_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 96], 6
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 64], rax
.Lx41_0:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 104]
                        cmp              rax, rcx
                                                                                        jg    proc_placequeen_ω
                        mov              qword ptr [rbp + 48], 6
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n3_assign_α
n2_to_β:
                        inc              qword ptr [rbp + 64]
                                                                                        jmp   .Lx41_0
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n4_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n4_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n5_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n7_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n7_subscript_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n8_unmark_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n9_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n2_to_β
#-----------------------------------------------------------------------------------------------------------------------
n9_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 99
                                                                                        je    n8_unmark_α
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n8_unmark_α
                        cmp              eax, 0
                                                                                        jne   n8_unmark_α
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n10_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052320
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n13_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n13_op75_α:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 7
                                                                                        je    .Lx60_1
                        cmp              eax, 6
                                                                                        jne   .Lx60_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx60_0
.Lx60_1:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n14_op75_α
.Lx60_0:
                        lea              rdi, [rbp + 720]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 336]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n14_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n14_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx62_1
                        cmp              eax, 6
                                                                                        jne   .Lx62_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 6
                                                                                        jne   .Lx62_0
.Lx62_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n15_binop_α
.Lx62_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 720]
                        lea              rdx, [rbp + 320]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n15_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 6
                                                                                        jne   .Lx63_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                                                                                        jne   .Lx63_0
                        mov              rax, qword ptr [rbp + 344]
                        mov              rcx, qword ptr [rbp + 328]
                        add              rax, rcx
                        mov              qword ptr [rbp + 304], 6
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n16_lit_integer_α
.Lx63_0:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n8_unmark_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n17_op75_α
.Lx64_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n17_op75_α:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 7
                                                                                        je    .Lx66_1
                        cmp              eax, 6
                                                                                        jne   .Lx66_0
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 6
                                                                                        jne   .Lx66_0
.Lx66_1:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n18_binop_α
.Lx66_0:
                        lea              rdi, [rbp + 304]
                        lea              rsi, [rbp + 384]
                        lea              rdx, [rbp + 288]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n18_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 6
                                                                                        jne   .Lx67_0
                        mov              rax, qword ptr [rbp + 296]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 272], 6
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n19_subscript_α
.Lx67_0:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n8_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n19_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n19_subscript_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n8_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n20_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 99
                                                                                        je    n8_unmark_α
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n8_unmark_α
                        cmp              eax, 0
                                                                                        jne   n8_unmark_α
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n21_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n22_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n24_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op75_α:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 7
                                                                                        je    .Lx76_1
                        cmp              eax, 6
                                                                                        jne   .Lx76_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 6
                                                                                        jne   .Lx76_0
.Lx76_1:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n25_op75_α
.Lx76_0:
                        lea              rdi, [rbp + 576]
                        lea              rsi, [rbp + 720]
                        lea              rdx, [rbp + 560]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n25_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n25_op75_α:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 7
                                                                                        je    .Lx78_1
                        cmp              eax, 6
                                                                                        jne   .Lx78_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 6
                                                                                        jne   .Lx78_0
.Lx78_1:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n26_binop_α
.Lx78_0:
                        lea              rdi, [rbp + 720]
                        lea              rsi, [rbp + 576]
                        lea              rdx, [rbp + 544]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n26_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n26_binop_α:
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 6
                                                                                        jne   .Lx79_0
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 6
                                                                                        jne   .Lx79_0
                        mov              rax, qword ptr [rbp + 568]
                        mov              rcx, qword ptr [rbp + 552]
                        add              rax, rcx
                        mov              qword ptr [rbp + 528], 6
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n27_var_α
.Lx79_0:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 544]
                        mov              rcx, qword ptr [rbp + 552]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n8_unmark_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n27_var_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n28_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n28_op75_α:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 7
                                                                                        je    .Lx83_1
                        cmp              eax, 6
                                                                                        jne   .Lx83_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx83_0
.Lx83_1:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n29_op75_α
.Lx83_0:
                        lea              rdi, [rbp + 528]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 512]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n29_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n29_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx85_1
                        cmp              eax, 6
                                                                                        jne   .Lx85_0
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 6
                                                                                        jne   .Lx85_0
.Lx85_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n30_binop_α
.Lx85_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 528]
                        lea              rdx, [rbp + 496]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n30_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n30_binop_α:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                                                                                        jne   .Lx86_0
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 6
                                                                                        jne   .Lx86_0
                        mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 504]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 480], 6
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n31_subscript_α
.Lx86_0:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n8_unmark_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n31_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n31_subscript_α:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n8_unmark_α
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n32_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 99
                                                                                        je    n8_unmark_α
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n8_unmark_α
                        cmp              eax, 0
                                                                                        jne   n8_unmark_α
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n34_rev_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_rev_assign_var_α:
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        call             rt_deref@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n8_unmark_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n35_rev_assign_var_α
n34_rev_assign_var_β:
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        call             rt_assign_var@PLT
                                                                                        jmp   n8_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n35_rev_assign_var_α:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        call             rt_deref@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n34_rev_assign_var_β
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n36_rev_assign_var_α
n35_rev_assign_var_β:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 448]
                        mov              rcx, qword ptr [rbp + 456]
                        call             rt_assign_var@PLT
                                                                                        jmp   n34_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n36_rev_assign_var_α:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        call             rt_deref@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n35_rev_assign_var_β
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n37_suspend_α
n36_rev_assign_var_β:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_assign_var@PLT
                                                                                        jmp   n35_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n37_suspend_α:
                        lea              rax, [rip + n37_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_placequeen_γ
n37_suspend_β:
                                                                                        jmp   n36_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
proc_placequeen_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_placequeen_β:
                                                                                        jmp   qword ptr [rbp + 704]
#-----------------------------------------------------------------------------------------------------------------------
proc_placequeen_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_placequeen_res]
                        push             rax
                        mov              rax, [rbp + 744]
                        mov              rbp, [rbp + 760]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_placequeen_ω:
                        mov              rax, [rbp + 752]
                        lea              rsp, [rbp + 768]
                        mov              rbp, [rbp + 760]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_solvequeen_α
proc_solvequeen_α:
                        .global          proc_solvequeen_α
                        .global          proc_solvequeen_β
                        .global          proc_solvequeen_γ
                        .global          proc_solvequeen_ω
                        sub              rsp, 432
                        mov              [rsp + 408], rcx
                        mov              [rsp + 416], rdx
                        mov              [rsp + 424], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 384
                        mov              edx, 400
                        call             rt_jmp_frame_lexprep2@PLT
proc_solvequeen_α_body:
                        lea              rax, [rip + n110_suspend_β]
                        mov              qword ptr [rbp + 384], rax
#-----------------------------------------------------------------------------------------------------------------------
n96_disjunction_α:
                        mov              qword ptr [rbp + 256], 0
                        mov              qword ptr [rbp + 264], 0
                        mov              dword ptr [rbp + 272], 0
                                                                                        jmp   n98_var_α
n96_disjunction_as:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 0
                                                                                        jne   .Lx112_0
                                                                                        jmp   n97_var_α
.Lx112_0:
                                                                                        jmp   n97_var_α
n96_disjunction_β:
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   n97_var_α
n96_disjunction_af:
                        add              dword ptr [rbp + 272], 1
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n100_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n101_var_α
n98_var_β:
                                                                                        jmp   n96_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n99_conjunction_α:
                                                                                        jmp   n96_disjunction_as
n99_conjunction_β:
                                                                                        jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n100_proc_gen_α:
                        mov              qword ptr [rbp + 208], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx119_20
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx119_21
.Lx119_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx119_21:
                        mov              edi, 0
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx119_1
                        lea              rcx, [rip + .Lx119_3]
                        lea              rdx, [rip + .Lx119_4]
                                                                                        jmp   rax
.Lx119_3:
                        mov              qword ptr [rbp + 216], rsp
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx119_5
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx119_2
.Lx119_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx119_2
.Lx119_4:
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx119_6
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx119_2
.Lx119_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx119_2
.Lx119_1:
                        call             rt_faildescr@PLT
.Lx119_2:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    proc_solvequeen_ω
                                                                                        jmp   n102_var_α
n100_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 216]
                                                                                        jmp   qword ptr [rsp]
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "placequeen"
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n103_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n104_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n103_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx123_0
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 100
                                                                                        je    .Lx123_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx123_2
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 6
                                                                                        jne   .Lx123_2
.Lx123_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 376]
                        cmp              rax, rcx
                                                                                        jle   n96_disjunction_af
                        mov              rcx, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rcx
                        mov              rcx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rcx
                                                                                        jmp   n105_call_proc_staged_α
.Lx123_0:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        mov              r8d, 7
                        lea              r9, [rbp + 336]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx123_1
                        cmp              eax, 1
                                                                                        je    n96_disjunction_af
                                                                                        jmp   n105_call_proc_staged_α
.Lx123_2:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n96_disjunction_af
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n105_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_integer_α:
                        mov              qword ptr [rbp + 160], 6
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n106_op75_α
.Lx124_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n105_call_proc_staged_α:
                        call             proc_writeboard_dcα
                                                                                        jmp   .Lx126_2
.Lx126_2:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    proc_solvequeen_ω
                                                                                        jmp   proc_solvequeen_ω
n105_call_proc_staged_β:
                                                                                        jmp   proc_solvequeen_ω
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "writeboard"
#-----------------------------------------------------------------------------------------------------------------------
n106_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx128_1
                        cmp              eax, 6
                                                                                        jne   .Lx128_0
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 6
                                                                                        jne   .Lx128_0
.Lx128_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n107_binop_α
.Lx128_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 160]
                        lea              rdx, [rbp + 128]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n107_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n107_binop_α:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 6
                                                                                        jne   .Lx129_0
                        mov              rax, qword ptr [rbp + 136]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 112], 6
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n108_proc_gen_α
.Lx129_0:
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 168]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n100_proc_gen_β
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n108_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n108_proc_gen_α:
                        mov              qword ptr [rbp + 80], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx131_20
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx131_21
.Lx131_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        call             rt_arg_stage@PLT
.Lx131_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx131_1
                        lea              rcx, [rip + .Lx131_3]
                        lea              rdx, [rip + .Lx131_4]
                                                                                        jmp   rax
.Lx131_3:
                        mov              qword ptr [rbp + 88], rsp
                        mov              rax, qword ptr [rbp + 80]
                        test             rax, rax
                                                                                        jne   .Lx131_5
                        mov              qword ptr [rbp + 80], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx131_2
.Lx131_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx131_2
.Lx131_4:
                        mov              rax, qword ptr [rbp + 80]
                        test             rax, rax
                                                                                        jne   .Lx131_6
                        mov              qword ptr [rbp + 80], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx131_2
.Lx131_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx131_2
.Lx131_1:
                        call             rt_faildescr@PLT
.Lx131_2:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n100_proc_gen_β
                                                                                        jmp   n109_conjunction_α
n108_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   qword ptr [rsp]
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          "solvequeen"
#-----------------------------------------------------------------------------------------------------------------------
n109_conjunction_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n110_suspend_α
n109_conjunction_β:
                                                                                        jmp   proc_solvequeen_ω
#-----------------------------------------------------------------------------------------------------------------------
n110_suspend_α:
                        lea              rax, [rip + n110_suspend_β]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_solvequeen_γ
n110_suspend_β:
                                                                                        jmp   proc_solvequeen_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_solvequeen_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_solvequeen_β:
                                                                                        jmp   qword ptr [rbp + 384]
#-----------------------------------------------------------------------------------------------------------------------
proc_solvequeen_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_solvequeen_res]
                        push             rax
                        mov              rax, [rbp + 408]
                        mov              rbp, [rbp + 424]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_solvequeen_ω:
                        mov              rax, [rbp + 416]
                        lea              rsp, [rbp + 432]
                        mov              rbp, [rbp + 424]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_writeboard_α
proc_writeboard_α:
                        .global          proc_writeboard_α
                        .global          proc_writeboard_β
                        .global          proc_writeboard_γ
                        .global          proc_writeboard_ω
                        sub              rsp, 992
                        mov              [rsp + 968], rcx
                        mov              [rsp + 976], rdx
                        mov              [rsp + 984], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 912
                        mov              edx, 960
                        call             rt_jmp_frame_lexprep2@PLT
proc_writeboard_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n136_var_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n137_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n137_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn177:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn177]
                        lea              rsi, [rbp + 816]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n138_lit_integer_α
                                                                                        jmp   n139_lit_string_α
n137_call_builtin_icon_β:
                                                                                        jmp   n138_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:
                        mov              qword ptr [rbp + 80], 6
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n140_var_α
.Lx178_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n141_call_builtin_icon_α
.Lx179_0:
                        .quad            .Lx179_0_s
.Lx179_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n142_to_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lrkfn182:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn182]
                        lea              rsi, [rbp + 752]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n138_lit_integer_α
                                                                                        jmp   n138_lit_integer_α
n141_call_builtin_icon_β:
                                                                                        jmp   n138_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n142_to_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 96], 6
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 64], rax
.Lx184_0:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 104]
                        cmp              rax, rcx
                                                                                        jg    n143_call_builtin_icon_α
                        mov              qword ptr [rbp + 48], 6
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n144_assign_α
n142_to_β:
                        inc              qword ptr [rbp + 64]
                                                                                        jmp   .Lx184_0
#-----------------------------------------------------------------------------------------------------------------------
n143_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn186:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn186]
                        lea              rsi, [rbp + 16]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    proc_writeboard_ω
                                                                                        jmp   proc_writeboard_ω
n143_call_builtin_icon_β:
                                                                                        jmp   proc_writeboard_ω
#-----------------------------------------------------------------------------------------------------------------------
n144_assign_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n145_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n145_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n146_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n148_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n148_subscript_α:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n149_lit_string_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n150_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n151_var_α
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          "| "
#-----------------------------------------------------------------------------------------------------------------------
n150_deref_α:
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n149_lit_string_α
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n152_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n153_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n152_assign_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n149_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n153_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn200:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn200]
                        lea              rsi, [rbp + 576]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n154_var_ref_α
                                                                                        jmp   n155_lit_string_α
n153_call_builtin_icon_β:
                                                                                        jmp   n154_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n156_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n157_binop_α
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n158_var_α
.Lx204_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n157_binop_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n159_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n160_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n159_assign_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n154_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n160_op75_α:
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 7
                                                                                        je    .Lx210_1
                        cmp              eax, 6
                                                                                        jne   .Lx210_0
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 6
                                                                                        jne   .Lx210_0
.Lx210_1:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n162_binop_α
.Lx210_0:
                        lea              rdi, [rbp + 944]
                        lea              rsi, [rbp + 464]
                        lea              rdx, [rbp + 448]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n162_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n163_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n162_binop_α:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 6
                                                                                        jne   .Lx213_0
                        mov              rax, 2
                        mov              rcx, qword ptr [rbp + 456]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 432], 6
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n165_subscript_α
.Lx213_0:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 448]
                        mov              rcx, qword ptr [rbp + 456]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n161_var_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n165_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn215:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn215]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n164_lit_string_α
                                                                                        jmp   n164_lit_string_α
n163_call_builtin_icon_β:
                                                                                        jmp   n164_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n166_var_α
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n165_subscript_α:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n161_var_α
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n167_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n168_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n170_assign_var_α
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n168_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn221:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn221]
                        lea              rsi, [rbp + 256]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n169_unmark_α
                                                                                        jmp   n171_lit_string_α
n168_call_builtin_icon_β:
                                                                                        jmp   n169_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n169_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n142_to_β
#-----------------------------------------------------------------------------------------------------------------------
n170_assign_var_α:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 528]
                        mov              rcx, qword ptr [rbp + 536]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n161_var_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n161_var_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n172_call_builtin_icon_α
.Lx225_0:
                        .quad            .Lx225_0_s
.Lx225_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n172_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn227:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn227]
                        lea              rsi, [rbp + 192]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n169_unmark_α
                                                                                        jmp   n173_conjunction_α
n172_call_builtin_icon_β:
                                                                                        jmp   n169_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n173_conjunction_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n169_unmark_α
n173_conjunction_β:
                                                                                        jmp   n169_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_writeboard_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_writeboard_β:
                                                                                        jmp   proc_writeboard_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_writeboard_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 968]
                        lea              rsp, [rbp + 992]
                        mov              rbp, [rbp + 984]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_writeboard_ω:
                        mov              rax, [rbp + 976]
                        lea              rsp, [rbp + 992]
                        mov              rbp, [rbp + 984]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_writeboard_dcα:
                        pop              r11
                        sub              rsp, 1008
                        mov              qword ptr [rsp + 984], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 960], r11
                        lea              rax, [rip + .Lx229_2]
                        mov              qword ptr [rbp + 968], rax
                        lea              rax, [rip + .Lx229_3]
                        mov              qword ptr [rbp + 976], rax
                        mov              rdi, rbp
                        mov              esi, 912
                        mov              edx, 960
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_writeboard_α_body
.Lx229_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -992
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx229_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -992
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "placequeen"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_placequeen_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 736
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "solvequeen"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_solvequeen_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 400
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "writeboard"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_writeboard_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 960
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_writeboard_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "n"
.Lgvan1:                .string          "rw"
.Lgvan2:                .string          "dd"
.Lgvan3:                .string          "ud"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 4
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 4
                        call             gva_register@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
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
                        sub              rsp, 680
                        mov              rdi, rsp
                        mov              ecx, 680
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 672], rbp
                        mov              rbp, rsp
                        push             rsi
                        sub              rsp, 8
                        call             rt_main_args_fetch@PLT
                        add              rsp, 8
                        pop              rsi
                        mov              [rbp + 16], rax
                        mov              [rbp + 24], rdx
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n230_disjunction_α:
                        mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                        mov              dword ptr [rbp + 528], 0
                                                                                        jmp   n232_var_ref_α
n230_disjunction_as:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0
                                                                                        jne   .Lx262_0
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n231_assign_α
.Lx262_0:
                        cmp              eax, 1
                                                                                        jne   .Lx262_1
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n231_assign_α
.Lx262_1:
                                                                                        jmp   n231_assign_α
n230_disjunction_β:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0
                                                                                        je    n230_disjunction_af
                                                                                        jmp   n230_disjunction_af
n230_disjunction_af:
                        add              dword ptr [rbp + 528], 1
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 1
                                                                                        je    n233_lit_integer_α
                                                                                        jmp   n235_var_α
#-----------------------------------------------------------------------------------------------------------------------
n231_assign_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n235_var_α
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n236_lit_integer_α
n232_var_ref_β:
                                                                                        jmp   n230_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n230_disjunction_as
n233_lit_integer_β:
                                                                                        jmp   n230_disjunction_af
.Lx266_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n234_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn268:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn268]
                        lea              rsi, [rbp + 560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n230_disjunction_af
                                                                                        jmp   n230_disjunction_as
n234_call_builtin_icon_β:
                                                                                        jmp   n230_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n235_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n237_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_integer_α:
                        mov              qword ptr [rbp + 608], 6
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n239_subscript_α
.Lx270_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n237_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn272:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn272]
                        lea              rsi, [rbp + 464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n238_lit_integer_α
                                                                                        jmp   n240_assign_α
n237_call_builtin_icon_β:
                                                                                        jmp   n238_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n241_var_α
.Lx273_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n239_subscript_α:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n230_disjunction_af
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n242_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n240_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n238_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n243_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n242_deref_α:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n230_disjunction_af
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n234_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n243_op75_α:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 7
                                                                                        je    .Lx279_1
                        cmp              eax, 6
                                                                                        jne   .Lx279_0
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 6
                                                                                        jne   .Lx279_0
.Lx279_1:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n245_binop_α
.Lx279_0:
                        lea              rdi, [rbp + 416]
                        lea              rsi, [rbp + 400]
                        lea              rdx, [rbp + 384]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n245_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n246_var_α
.Lx280_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n245_binop_α:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 6
                                                                                        jne   .Lx281_0
                        mov              rax, 2
                        mov              rcx, qword ptr [rbp + 392]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 368], 6
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n247_lit_integer_α
.Lx281_0:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n244_lit_integer_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n247_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n248_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n250_op75_α
.Lx283_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n248_op75_α:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 7
                                                                                        je    .Lx285_1
                        cmp              eax, 6
                                                                                        jne   .Lx285_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 6
                                                                                        jne   .Lx285_0
.Lx285_1:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n251_binop_α
.Lx285_0:
                        lea              rdi, [rbp + 256]
                        lea              rsi, [rbp + 240]
                        lea              rdx, [rbp + 224]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n251_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_integer_α:
                        mov              qword ptr [rbp + 96], 6
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n252_proc_gen_α
.Lx286_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n250_op75_α:
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 7
                                                                                        je    .Lx288_1
                        cmp              eax, 6
                                                                                        jne   .Lx288_0
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 6
                                                                                        jne   .Lx288_0
.Lx288_1:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n253_binop_α
.Lx288_0:
                        lea              rdi, [rbp + 368]
                        lea              rsi, [rbp + 432]
                        lea              rdx, [rbp + 352]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n253_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n251_binop_α:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 6
                                                                                        jne   .Lx289_0
                        mov              rax, 2
                        mov              rcx, qword ptr [rbp + 232]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 208], 6
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n254_lit_integer_α
.Lx289_0:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n249_lit_integer_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n254_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n252_proc_gen_α:
                        mov              qword ptr [rbp + 64], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx291_20
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx291_21
.Lx291_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        call             rt_arg_stage@PLT
.Lx291_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx291_1
                        lea              rcx, [rip + .Lx291_3]
                        lea              rdx, [rip + .Lx291_4]
                                                                                        jmp   rax
.Lx291_3:
                        mov              qword ptr [rbp + 72], rsp
                        mov              rax, qword ptr [rbp + 64]
                        test             rax, rax
                                                                                        jne   .Lx291_5
                        mov              qword ptr [rbp + 64], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx291_2
.Lx291_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx291_2
.Lx291_4:
                        mov              rax, qword ptr [rbp + 64]
                        test             rax, rax
                                                                                        jne   .Lx291_6
                        mov              qword ptr [rbp + 64], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx291_2
.Lx291_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx291_2
.Lx291_1:
                        call             rt_faildescr@PLT
.Lx291_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n252_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 72]
                                                                                        jmp   qword ptr [rsp]
.Lx291_0:
                        .quad            .Lx291_0_s
.Lx291_0_s:
                        .string          "solvequeen"
#-----------------------------------------------------------------------------------------------------------------------
n253_binop_α:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 6
                                                                                        jne   .Lx292_0
                        mov              rax, qword ptr [rbp + 360]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 336], 6
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n255_call_builtin_icon_α
.Lx292_0:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n244_lit_integer_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n255_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n256_op75_α
.Lx293_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n255_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn295:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn295]
                        lea              rsi, [rbp + 304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n244_lit_integer_α
                                                                                        jmp   n257_assign_α
n255_call_builtin_icon_β:
                                                                                        jmp   n244_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n256_op75_α:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 7
                                                                                        je    .Lx297_1
                        cmp              eax, 6
                                                                                        jne   .Lx297_0
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 6
                                                                                        jne   .Lx297_0
.Lx297_1:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n258_binop_α
.Lx297_0:
                        lea              rdi, [rbp + 208]
                        lea              rsi, [rbp + 272]
                        lea              rdx, [rbp + 192]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n258_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n257_assign_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n244_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n258_binop_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 6
                                                                                        jne   .Lx299_0
                        mov              rax, qword ptr [rbp + 200]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 176], 6
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n259_call_builtin_icon_α
.Lx299_0:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n249_lit_integer_α
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n259_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n259_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn301:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn301]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n249_lit_integer_α
                                                                                        jmp   n260_assign_α
n259_call_builtin_icon_β:
                                                                                        jmp   n249_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n260_assign_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n249_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 672]
                        add              rsp, 680
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 672]
                        add              rsp, 680
                        ret
                        .section         .note.GNU-stack,"",@progbits
