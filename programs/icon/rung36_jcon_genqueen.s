                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_placequeen_α
proc_placequeen_α:
proc_placequeen_α_body:
                        lea              rax, [rip + n36_suspend_β]
                        mov              qword ptr [rbp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        sub              rsp, 672
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
                        mov              qword ptr [rbp + 80], 3                        # result
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1_var_α
.Lx38_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n2_to_α
#-----------------------------------------------------------------------------------------------------------------------
n2_to_α:
                        mov              rdi, qword ptr [rbp + 80]                      # v
                        mov              rsi, qword ptr [rbp + 88]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rdi, qword ptr [rbp + 96]                      # v
                        mov              rsi, qword ptr [rbp + 104]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 96], 3
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 64], rax
.Lx41_0:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 104]
                        cmp              rax, rcx
                                                                                        jle   .Lx41_240
                        add              rsp, 672
                                                                                        jmp   proc_placequeen_ω
.Lx41_240:
                        mov              qword ptr [rbp + 48], 3
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
                        mov              rdx, 1879052304                                # rw
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
                        mov              rdi, qword ptr [rbp + 160]                     # base
                        mov              rsi, qword ptr [rbp + 168]                     # base
                        mov              rdx, qword ptr [rbp + 176]                     # idx
                        mov              rcx, qword ptr [rbp + 184]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx49_240
                        add              rsp, 672
                                                                                        jmp   n37_unmark_α
.Lx49_240:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n8_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 104
                                                                                        jne   .Lx50_238
                        add              rsp, 672
                                                                                        jmp   n37_unmark_α
.Lx50_238:
                        mov              rdi, qword ptr [rbp + 192]                     # d
                        mov              rsi, qword ptr [rbp + 200]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx50_239
                        add              rsp, 672
                                                                                        jmp   n37_unmark_α
.Lx50_239:
                        cmp              eax, 0
                                                                                        je    .Lx50_240
                        add              rsp, 672
                                                                                        jmp   n37_unmark_α
.Lx50_240:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052320                                # dd
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n12_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n12_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 5
                                                                                        je    .Lx58_1
                        cmp              eax, 3
                                                                                        jne   .Lx58_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx58_0
.Lx58_1:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n13_coerce_numeric_α
.Lx58_0:
                        lea              rdi, [rbp + 720]                               # self
                        lea              rsi, [rbp + 16]                                # other
                        lea              rdx, [rbp + 336]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n13_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n13_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx60_1
                        cmp              eax, 3
                                                                                        jne   .Lx60_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 3
                                                                                        jne   .Lx60_0
.Lx60_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n14_binop_α
.Lx60_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 720]                               # other
                        lea              rdx, [rbp + 320]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n14_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 3
                                                                                        jne   .Lx61_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 3
                                                                                        jne   .Lx61_0
                        mov              rax, qword ptr [rbp + 344]
                        mov              rcx, qword ptr [rbp + 328]
                        add              rax, rcx
                        mov              qword ptr [rbp + 304], 3
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n15_lit_integer_α
.Lx61_0:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx61_240
                        add              rsp, 672
                                                                                        jmp   n37_unmark_α
.Lx61_240:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rbp + 384], 3                       # result
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n16_coerce_numeric_α
.Lx62_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n16_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 5
                                                                                        je    .Lx64_1
                        cmp              eax, 3
                                                                                        jne   .Lx64_0
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 3
                                                                                        jne   .Lx64_0
.Lx64_1:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n17_binop_α
.Lx64_0:
                        lea              rdi, [rbp + 304]                               # self
                        lea              rsi, [rbp + 384]                               # other
                        lea              rdx, [rbp + 288]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n17_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n17_binop_α:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 3
                                                                                        jne   .Lx65_0
                        mov              rax, qword ptr [rbp + 296]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 272], 3
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n18_subscript_α
.Lx65_0:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx65_240
                        add              rsp, 672
                                                                                        jmp   n37_unmark_α
.Lx65_240:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n18_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n18_subscript_α:
                        mov              rdi, qword ptr [rbp + 256]                     # base
                        mov              rsi, qword ptr [rbp + 264]                     # base
                        mov              rdx, qword ptr [rbp + 272]                     # idx
                        mov              rcx, qword ptr [rbp + 280]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx66_240
                        add              rsp, 672
                                                                                        jmp   n37_unmark_α
.Lx66_240:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n19_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 104
                                                                                        jne   .Lx67_238
                        add              rsp, 672
                                                                                        jmp   n37_unmark_α
.Lx67_238:
                        mov              rdi, qword ptr [rbp + 400]                     # d
                        mov              rsi, qword ptr [rbp + 408]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx67_239
                        add              rsp, 672
                                                                                        jmp   n37_unmark_α
.Lx67_239:
                        cmp              eax, 0
                                                                                        je    .Lx67_240
                        add              rsp, 672
                                                                                        jmp   n37_unmark_α
.Lx67_240:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n20_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336                                # ud
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 576], rax                     # result
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n22_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n23_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n23_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 5
                                                                                        je    .Lx74_1
                        cmp              eax, 3
                                                                                        jne   .Lx74_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 3
                                                                                        jne   .Lx74_0
.Lx74_1:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n24_coerce_numeric_α
.Lx74_0:
                        lea              rdi, [rbp + 576]                               # self
                        lea              rsi, [rbp + 720]                               # other
                        lea              rdx, [rbp + 560]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n24_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n24_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 5
                                                                                        je    .Lx76_1
                        cmp              eax, 3
                                                                                        jne   .Lx76_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 3
                                                                                        jne   .Lx76_0
.Lx76_1:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n25_binop_α
.Lx76_0:
                        lea              rdi, [rbp + 720]                               # self
                        lea              rsi, [rbp + 576]                               # other
                        lea              rdx, [rbp + 544]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n25_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n25_binop_α:
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 3
                                                                                        jne   .Lx77_0
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 3
                                                                                        jne   .Lx77_0
                        mov              rax, qword ptr [rbp + 568]
                        mov              rcx, qword ptr [rbp + 552]
                        add              rax, rcx
                        mov              qword ptr [rbp + 528], 3
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n26_var_α
.Lx77_0:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 544]
                        mov              rcx, qword ptr [rbp + 552]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx77_240
                        add              rsp, 672
                                                                                        jmp   n37_unmark_α
.Lx77_240:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n27_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n27_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 5
                                                                                        je    .Lx81_1
                        cmp              eax, 3
                                                                                        jne   .Lx81_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx81_0
.Lx81_1:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n28_coerce_numeric_α
.Lx81_0:
                        lea              rdi, [rbp + 528]                               # self
                        lea              rsi, [rbp + 16]                                # other
                        lea              rdx, [rbp + 512]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n28_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n28_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx83_1
                        cmp              eax, 3
                                                                                        jne   .Lx83_0
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 3
                                                                                        jne   .Lx83_0
.Lx83_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n29_binop_α
.Lx83_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 528]                               # other
                        lea              rdx, [rbp + 496]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n29_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n29_binop_α:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 3
                                                                                        jne   .Lx84_0
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 3
                                                                                        jne   .Lx84_0
                        mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 504]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 480], 3
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n30_subscript_α
.Lx84_0:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx84_240
                        add              rsp, 672
                                                                                        jmp   n37_unmark_α
.Lx84_240:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n30_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n30_subscript_α:
                        mov              rdi, qword ptr [rbp + 464]                     # base
                        mov              rsi, qword ptr [rbp + 472]                     # base
                        mov              rdx, qword ptr [rbp + 480]                     # idx
                        mov              rcx, qword ptr [rbp + 488]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx85_240
                        add              rsp, 672
                                                                                        jmp   n37_unmark_α
.Lx85_240:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n31_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 104
                                                                                        jne   .Lx86_238
                        add              rsp, 672
                                                                                        jmp   n37_unmark_α
.Lx86_238:
                        mov              rdi, qword ptr [rbp + 624]                     # d
                        mov              rsi, qword ptr [rbp + 632]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx86_239
                        add              rsp, 672
                                                                                        jmp   n37_unmark_α
.Lx86_239:
                        cmp              eax, 0
                                                                                        je    .Lx86_240
                        add              rsp, 672
                                                                                        jmp   n37_unmark_α
.Lx86_240:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n32_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n33_rev_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_rev_assign_var_α:
                        mov              rdi, qword ptr [rbp + 640]                     # d
                        mov              rsi, qword ptr [rbp + 648]                     # d
                        call             rt_deref@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        mov              rdi, qword ptr [rbp + 640]                     # var
                        mov              rsi, qword ptr [rbp + 648]                     # var
                        mov              rdx, qword ptr [rbp + 688]                     # val
                        mov              rcx, qword ptr [rbp + 696]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx89_240
                        add              rsp, 672
                                                                                        jmp   n37_unmark_α
.Lx89_240:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n34_rev_assign_var_α
n33_rev_assign_var_β:
                        mov              rdi, qword ptr [rbp + 640]                     # var
                        mov              rsi, qword ptr [rbp + 648]                     # var
                        mov              rdx, qword ptr [rbp + 672]                     # val
                        mov              rcx, qword ptr [rbp + 680]                     # val
                        call             rt_assign_var@PLT
                        add              rsp, 672
                                                                                        jmp   n37_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n34_rev_assign_var_α:
                        mov              rdi, qword ptr [rbp + 416]                     # d
                        mov              rsi, qword ptr [rbp + 424]                     # d
                        call             rt_deref@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        mov              rdi, qword ptr [rbp + 416]                     # var
                        mov              rsi, qword ptr [rbp + 424]                     # var
                        mov              rdx, qword ptr [rbp + 656]                     # val
                        mov              rcx, qword ptr [rbp + 664]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n33_rev_assign_var_β
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n35_rev_assign_var_α
n34_rev_assign_var_β:
                        mov              rdi, qword ptr [rbp + 416]                     # var
                        mov              rsi, qword ptr [rbp + 424]                     # var
                        mov              rdx, qword ptr [rbp + 448]                     # val
                        mov              rcx, qword ptr [rbp + 456]                     # val
                        call             rt_assign_var@PLT
                                                                                        jmp   n33_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n35_rev_assign_var_α:
                        mov              rdi, qword ptr [rbp + 208]                     # d
                        mov              rsi, qword ptr [rbp + 216]                     # d
                        call             rt_deref@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        mov              rdi, qword ptr [rbp + 208]                     # var
                        mov              rsi, qword ptr [rbp + 216]                     # var
                        mov              rdx, qword ptr [rbp + 432]                     # val
                        mov              rcx, qword ptr [rbp + 440]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n34_rev_assign_var_β
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n36_suspend_α
n35_rev_assign_var_β:
                        mov              rdi, qword ptr [rbp + 208]                     # var
                        mov              rsi, qword ptr [rbp + 216]                     # var
                        mov              rdx, qword ptr [rbp + 240]                     # val
                        mov              rcx, qword ptr [rbp + 248]                     # val
                        call             rt_assign_var@PLT
                                                                                        jmp   n34_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n36_suspend_α:
                        lea              rax, [rip + n36_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 672
                                                                                        jmp   proc_placequeen_γ
n36_suspend_β:
                                                                                        jmp   n35_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n37_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n2_to_β
#-----------------------------------------------------------------------------------------------------------------------
proc_placequeen_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_placequeen_β:
                                                                                        jmp   qword ptr [rbp + 704]
#-----------------------------------------------------------------------------------------------------------------------
proc_placequeen_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_placequeen_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_solvequeen_α
proc_solvequeen_α:
proc_solvequeen_α_body:
                        lea              rax, [rip + n105_suspend_β]
                        mov              qword ptr [rbp + 384], rax
#-----------------------------------------------------------------------------------------------------------------------
n96_disjunction_α:
                        mov              qword ptr [rbp + 256], 0
                        mov              qword ptr [rbp + 264], 0
                        mov              dword ptr [rbp + 272], 0
                                                                                        jmp   n107_var_α
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
                                                                                        jmp   n98_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n98_proc_gen_α:
                        mov              qword ptr [rbp + 208], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx116_20
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx116_21
.Lx116_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 240]                     # v
                        mov              rdx, qword ptr [rbp + 248]                     # v
                        call             rt_arg_stage@PLT
.Lx116_21:
                        mov              edi, 0                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx116_1
                        lea              rcx, [rip + .Lx116_3]
                        lea              rdx, [rip + .Lx116_4]
                                                                                        jmp   rax
.Lx116_3:
                        mov              qword ptr [rbp + 216], rsp
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx116_5
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx116_2
.Lx116_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx116_2
.Lx116_4:
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx116_6
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx116_2
.Lx116_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx116_2
.Lx116_1:
                        call             rt_faildescr@PLT
.Lx116_2:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx116_240
                        add              rsp, 336
                                                                                        jmp   proc_solvequeen_ω
.Lx116_240:
                                                                                        jmp   n99_var_α
n98_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 216]
                                                                                        jmp   qword ptr [rsp]
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "placequeen"
#-----------------------------------------------------------------------------------------------------------------------
n99_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n100_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:
                        mov              qword ptr [rbp + 160], 3                       # result
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n101_coerce_numeric_α
.Lx119_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n101_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx121_1
                        cmp              eax, 3
                                                                                        jne   .Lx121_0
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 3
                                                                                        jne   .Lx121_0
.Lx121_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n102_binop_α
.Lx121_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 160]                               # other
                        lea              rdx, [rbp + 128]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n102_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n102_binop_α:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 3
                                                                                        jne   .Lx122_0
                        mov              rax, qword ptr [rbp + 136]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n103_proc_gen_α
.Lx122_0:
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 168]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n98_proc_gen_β
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n103_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n103_proc_gen_α:
                        mov              qword ptr [rbp + 80], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx124_20
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx124_21
.Lx124_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 112]                     # v
                        mov              rdx, qword ptr [rbp + 120]                     # v
                        call             rt_arg_stage@PLT
.Lx124_21:
                        mov              edi, 1                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx124_1
                        lea              rcx, [rip + .Lx124_3]
                        lea              rdx, [rip + .Lx124_4]
                                                                                        jmp   rax
.Lx124_3:
                        mov              qword ptr [rbp + 88], rsp
                        mov              rax, qword ptr [rbp + 80]
                        test             rax, rax
                                                                                        jne   .Lx124_5
                        mov              qword ptr [rbp + 80], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx124_2
.Lx124_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx124_2
.Lx124_4:
                        mov              rax, qword ptr [rbp + 80]
                        test             rax, rax
                                                                                        jne   .Lx124_6
                        mov              qword ptr [rbp + 80], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx124_2
.Lx124_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx124_2
.Lx124_1:
                        call             rt_faildescr@PLT
.Lx124_2:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n98_proc_gen_β
                                                                                        jmp   n104_conjunction_α
n103_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   qword ptr [rsp]
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "solvequeen"
#-----------------------------------------------------------------------------------------------------------------------
n104_conjunction_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n105_suspend_α
n104_conjunction_β:
                                                                                        jmp   proc_solvequeen_ω
#-----------------------------------------------------------------------------------------------------------------------
n105_suspend_α:
                        lea              rax, [rip + n105_suspend_β]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 336
                                                                                        jmp   proc_solvequeen_γ
n105_suspend_β:
                                                                                        jmp   proc_solvequeen_ω
#-----------------------------------------------------------------------------------------------------------------------
n106_conjunction_α:
                                                                                        jmp   n96_disjunction_as
n106_conjunction_β:
                                                                                        jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n108_var_α
n107_var_β:
                                                                                        jmp   n96_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 368], rax                     # result
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n109_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n109_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 112
                                                                                        je    .Lx132_0
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 112
                                                                                        je    .Lx132_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx132_2
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 3
                                                                                        jne   .Lx132_2
.Lx132_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 376]
                        cmp              rax, rcx
                                                                                        jle   n96_disjunction_af
                        mov              rcx, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rcx
                        mov              rcx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rcx
                                                                                        jmp   n110_call_proc_staged_α
.Lx132_0:
                        mov              rdi, qword ptr [rbp + 16]                      # a
                        mov              rsi, qword ptr [rbp + 24]                      # a
                        mov              rdx, qword ptr [rbp + 368]                     # b
                        mov              rcx, qword ptr [rbp + 376]                     # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 336]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx132_1
                        cmp              eax, 1
                                                                                        je    n96_disjunction_af
                                                                                        jmp   n110_call_proc_staged_α
.Lx132_2:
                        mov              rdi, qword ptr [rbp + 16]                      # lhs
                        mov              rsi, qword ptr [rbp + 24]                      # lhs
                        mov              rdx, qword ptr [rbp + 368]                     # rhs
                        mov              rcx, qword ptr [rbp + 376]                     # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n96_disjunction_af
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n110_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n110_call_proc_staged_α:
                        call             proc_writeboard_dcα
                                                                                        jmp   .Lx134_2
.Lx134_2:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 104
                                                                                        je    proc_solvequeen_ω
                                                                                        jmp   proc_solvequeen_ω
n110_call_proc_staged_β:
                                                                                        jmp   proc_solvequeen_ω
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "writeboard"
#-----------------------------------------------------------------------------------------------------------------------
proc_solvequeen_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_solvequeen_β:
                                                                                        jmp   qword ptr [rbp + 384]
#-----------------------------------------------------------------------------------------------------------------------
proc_solvequeen_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_solvequeen_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_writeboard_α
proc_writeboard_α:
proc_writeboard_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        sub              rsp, 880
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
                        mov              qword ptr [rbp + 864], 2                       # result
                        mov              dword ptr [rbp + 868], 2
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n136_var_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 880], rax                     # result
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
                        lea              rdi, [rip + .Lrkfn177]                         # fn
                        lea              rsi, [rbp + 816]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n140_lit_integer_α
                                                                                        jmp   n138_lit_string_α
n137_call_builtin_icon_β:
                                                                                        jmp   n140_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rbp + 896], 2                       # result
                        mov              dword ptr [rbp + 900], 1
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n139_call_builtin_icon_α
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lrkfn180:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn180]                         # fn
                        lea              rsi, [rbp + 752]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 104
                                                                                        je    n140_lit_integer_α
                                                                                        jmp   n140_lit_integer_α
n139_call_builtin_icon_β:
                                                                                        jmp   n140_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:
                        mov              qword ptr [rbp + 80], 3                        # result
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n141_var_α
.Lx181_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n142_to_α
#-----------------------------------------------------------------------------------------------------------------------
n142_to_α:
                        mov              rdi, qword ptr [rbp + 80]                      # v
                        mov              rsi, qword ptr [rbp + 88]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rdi, qword ptr [rbp + 96]                      # v
                        mov              rsi, qword ptr [rbp + 104]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 96], 3
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 64], rax
.Lx184_0:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 104]
                        cmp              rax, rcx
                                                                                        jle   .Lx184_240
                        add              rsp, 880
                                                                                        jmp   n173_call_builtin_icon_α
.Lx184_240:
                        mov              qword ptr [rbp + 48], 3
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n143_assign_α
n142_to_β:
                        inc              qword ptr [rbp + 64]
                                                                                        jmp   .Lx184_0
#-----------------------------------------------------------------------------------------------------------------------
n143_assign_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n144_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n144_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n145_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304                                # rw
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n146_var_α
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n147_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n147_subscript_α:
                        mov              rdi, qword ptr [rbp + 672]                     # base
                        mov              rsi, qword ptr [rbp + 680]                     # base
                        mov              rdx, qword ptr [rbp + 688]                     # idx
                        mov              rcx, qword ptr [rbp + 696]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n150_lit_string_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n148_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n148_deref_α:
                        mov              rdi, qword ptr [rbp + 704]                     # d
                        mov              rsi, qword ptr [rbp + 712]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n150_lit_string_α
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n149_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n149_assign_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n150_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 624], 2                       # result
                        mov              dword ptr [rbp + 628], 2
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n151_var_α
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          "| "
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 640], rax                     # result
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n152_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n152_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn198:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn198]                         # fn
                        lea              rsi, [rbp + 576]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n156_var_ref_α
                                                                                        jmp   n153_lit_string_α
n152_call_builtin_icon_β:
                                                                                        jmp   n156_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        mov              qword ptr [rbp + 656], 2                       # result
                        mov              dword ptr [rbp + 660], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n154_binop_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n154_binop_α:
                        mov              rdi, qword ptr [rbp + 560]                     # a
                        mov              rsi, qword ptr [rbp + 568]                     # a
                        mov              rdx, qword ptr [rbp + 656]                     # b
                        mov              rcx, qword ptr [rbp + 664]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n155_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n155_assign_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n156_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n157_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:
                        mov              qword ptr [rbp + 464], 3                       # result
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n158_var_α
.Lx204_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n159_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n159_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 5
                                                                                        je    .Lx208_1
                        cmp              eax, 3
                                                                                        jne   .Lx208_0
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 3
                                                                                        jne   .Lx208_0
.Lx208_1:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n160_binop_α
.Lx208_0:
                        lea              rdi, [rbp + 944]                               # self
                        lea              rsi, [rbp + 464]                               # other
                        lea              rdx, [rbp + 448]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n160_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n160_binop_α:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 3
                                                                                        jne   .Lx209_0
                        mov              rax, 2
                        mov              rcx, qword ptr [rbp + 456]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 432], 3
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n161_subscript_α
.Lx209_0:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 448]
                        mov              rcx, qword ptr [rbp + 456]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n164_var_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n161_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n161_subscript_α:
                        mov              rdi, qword ptr [rbp + 416]                     # base
                        mov              rsi, qword ptr [rbp + 424]                     # base
                        mov              rdx, qword ptr [rbp + 432]                     # idx
                        mov              rcx, qword ptr [rbp + 440]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n164_var_α
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n162_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        mov              qword ptr [rbp + 528], 2                       # result
                        mov              dword ptr [rbp + 532], 1
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n163_assign_var_α
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n163_assign_var_α:
                        mov              rdi, qword ptr [rbp + 496]                     # var
                        mov              rsi, qword ptr [rbp + 504]                     # var
                        mov              rdx, qword ptr [rbp + 528]                     # val
                        mov              rcx, qword ptr [rbp + 536]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n164_var_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n165_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n165_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn216:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]                         # fn
                        lea              rsi, [rbp + 368]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
                                                                                        je    n166_lit_string_α
                                                                                        jmp   n166_lit_string_α
n165_call_builtin_icon_β:
                                                                                        jmp   n166_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 2
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n167_var_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 320], rax                     # result
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n168_call_builtin_icon_α
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
.Lrkfn220:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn220]                         # fn
                        lea              rsi, [rbp + 256]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n172_unmark_α
                                                                                        jmp   n169_lit_string_α
n168_call_builtin_icon_β:
                                                                                        jmp   n172_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:
                        mov              qword ptr [rbp + 336], 2                       # result
                        mov              dword ptr [rbp + 340], 1
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n170_call_builtin_icon_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n170_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn223:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn223]                         # fn
                        lea              rsi, [rbp + 192]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n172_unmark_α
                                                                                        jmp   n171_conjunction_α
n170_call_builtin_icon_β:
                                                                                        jmp   n172_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n171_conjunction_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n172_unmark_α
n171_conjunction_β:
                                                                                        jmp   n172_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n172_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n142_to_β
#-----------------------------------------------------------------------------------------------------------------------
n173_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn228:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]                         # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    proc_writeboard_ω
                                                                                        jmp   proc_writeboard_ω
n173_call_builtin_icon_β:
                                                                                        jmp   proc_writeboard_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_writeboard_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_writeboard_β:
                                                                                        jmp   proc_writeboard_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_writeboard_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_writeboard_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_writeboard_dcα:
                        pop              r11
                        sub              rsp, 1024
                        mov              qword ptr [rsp + 1000], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 976], r11
                        lea              rax, [rip + .Lx229_2]
                        mov              qword ptr [rbp + 984], rax
                        lea              rax, [rip + .Lx229_3]
                        mov              qword ptr [rbp + 992], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 912                                       # suffix_off
                        mov              edx, 976                                       # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_writeboard_α_body
.Lx229_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1008
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx229_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1008
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n230_disjunction_α:
                        mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                        mov              dword ptr [rbp + 528], 0
                                                                                        jmp   n256_var_ref_α
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
                                                                                        je    n255_lit_integer_α
                                                                                        jmp   n232_var_α
#-----------------------------------------------------------------------------------------------------------------------
n231_assign_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [1879052288], rax                    # n
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n232_var_α
#-----------------------------------------------------------------------------------------------------------------------
n232_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 496], rax                     # result
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n233_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n233_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn266:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn266]                         # fn
                        lea              rsi, [rbp + 464]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 104
                                                                                        je    n235_lit_integer_α
                                                                                        jmp   n234_assign_α
n233_call_builtin_icon_β:
                                                                                        jmp   n235_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n234_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [1879052304], rax                    # rw
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n235_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_integer_α:
                        mov              qword ptr [rbp + 400], 3                       # result
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n236_var_α
.Lx268_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 416], rax                     # result
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n237_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n237_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 5
                                                                                        je    .Lx271_1
                        cmp              eax, 3
                                                                                        jne   .Lx271_0
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 3
                                                                                        jne   .Lx271_0
.Lx271_1:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n238_binop_α
.Lx271_0:
                        lea              rdi, [rbp + 416]                               # self
                        lea              rsi, [rbp + 400]                               # other
                        lea              rdx, [rbp + 384]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n238_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n238_binop_α:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 3
                                                                                        jne   .Lx272_0
                        mov              rax, 2
                        mov              rcx, qword ptr [rbp + 392]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 368], 3
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n239_lit_integer_α
.Lx272_0:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n244_lit_integer_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n239_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_integer_α:
                        mov              qword ptr [rbp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n240_coerce_numeric_α
.Lx273_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n240_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 5
                                                                                        je    .Lx275_1
                        cmp              eax, 3
                                                                                        jne   .Lx275_0
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 3
                                                                                        jne   .Lx275_0
.Lx275_1:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n241_binop_α
.Lx275_0:
                        lea              rdi, [rbp + 368]                               # self
                        lea              rsi, [rbp + 432]                               # other
                        lea              rdx, [rbp + 352]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n241_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n241_binop_α:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 3
                                                                                        jne   .Lx276_0
                        mov              rax, qword ptr [rbp + 360]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 336], 3
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n242_call_builtin_icon_α
.Lx276_0:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n244_lit_integer_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n242_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n242_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn278:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn278]                         # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n244_lit_integer_α
                                                                                        jmp   n243_assign_α
n242_call_builtin_icon_β:
                                                                                        jmp   n244_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n243_assign_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [1879052320], rax                    # dd
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n244_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n245_var_α
.Lx280_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n245_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 256], rax                     # result
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n246_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n246_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 5
                                                                                        je    .Lx283_1
                        cmp              eax, 3
                                                                                        jne   .Lx283_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 3
                                                                                        jne   .Lx283_0
.Lx283_1:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n247_binop_α
.Lx283_0:
                        lea              rdi, [rbp + 256]                               # self
                        lea              rsi, [rbp + 240]                               # other
                        lea              rdx, [rbp + 224]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n247_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n247_binop_α:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx284_0
                        mov              rax, 2
                        mov              rcx, qword ptr [rbp + 232]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 208], 3
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n248_lit_integer_α
.Lx284_0:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n253_lit_integer_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n248_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_integer_α:
                        mov              qword ptr [rbp + 272], 3                       # result
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n249_coerce_numeric_α
.Lx285_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n249_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 5
                                                                                        je    .Lx287_1
                        cmp              eax, 3
                                                                                        jne   .Lx287_0
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 3
                                                                                        jne   .Lx287_0
.Lx287_1:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n250_binop_α
.Lx287_0:
                        lea              rdi, [rbp + 208]                               # self
                        lea              rsi, [rbp + 272]                               # other
                        lea              rdx, [rbp + 192]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n250_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n250_binop_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 3
                                                                                        jne   .Lx288_0
                        mov              rax, qword ptr [rbp + 200]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 176], 3
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n251_call_builtin_icon_α
.Lx288_0:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n253_lit_integer_α
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n251_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n251_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn290:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]                         # fn
                        lea              rsi, [rbp + 144]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n253_lit_integer_α
                                                                                        jmp   n252_assign_α
n251_call_builtin_icon_β:
                                                                                        jmp   n253_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n252_assign_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [1879052336], rax                    # ud
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n253_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_integer_α:
                        mov              qword ptr [rbp + 96], 3                        # result
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n254_proc_gen_α
.Lx292_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n254_proc_gen_α:
                        mov              qword ptr [rbp + 64], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx294_20
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx294_21
.Lx294_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 96]                      # v
                        mov              rdx, qword ptr [rbp + 104]                     # v
                        call             rt_arg_stage@PLT
.Lx294_21:
                        mov              edi, 1                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx294_1
                        lea              rcx, [rip + .Lx294_3]
                        lea              rdx, [rip + .Lx294_4]
                                                                                        jmp   rax
.Lx294_3:
                        mov              qword ptr [rbp + 72], rsp
                        mov              rax, qword ptr [rbp + 64]
                        test             rax, rax
                                                                                        jne   .Lx294_5
                        mov              qword ptr [rbp + 64], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx294_2
.Lx294_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx294_2
.Lx294_4:
                        mov              rax, qword ptr [rbp + 64]
                        test             rax, rax
                                                                                        jne   .Lx294_6
                        mov              qword ptr [rbp + 64], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx294_2
.Lx294_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx294_2
.Lx294_1:
                        call             rt_faildescr@PLT
.Lx294_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx294_240
                        add              rsp, 640
                                                                                        jmp   main_ω
.Lx294_240:
                        add              rsp, 640
                                                                                        jmp   main_ω
n254_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 72]
                                                                                        jmp   qword ptr [rsp]
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          "solvequeen"
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_integer_α:
                        mov              qword ptr [rbp + 656], 3                       # result
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n230_disjunction_as
n255_lit_integer_β:
                                                                                        jmp   n230_disjunction_af
.Lx295_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n257_lit_integer_α
n256_var_ref_β:
                                                                                        jmp   n230_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_integer_α:
                        mov              qword ptr [rbp + 608], 3                       # result
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n258_subscript_α
.Lx298_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n258_subscript_α:
                        mov              rdi, qword ptr [rbp + 592]                     # base
                        mov              rsi, qword ptr [rbp + 600]                     # base
                        mov              rdx, qword ptr [rbp + 608]                     # idx
                        mov              rcx, qword ptr [rbp + 616]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n230_disjunction_af
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n259_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n259_deref_α:
                        mov              rdi, qword ptr [rbp + 624]                     # d
                        mov              rsi, qword ptr [rbp + 632]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n230_disjunction_af
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n260_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n260_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn302:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn302]                         # fn
                        lea              rsi, [rbp + 560]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 104
                                                                                        je    n230_disjunction_af
                                                                                        jmp   n230_disjunction_as
n260_call_builtin_icon_β:
                                                                                        jmp   n230_disjunction_af
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
