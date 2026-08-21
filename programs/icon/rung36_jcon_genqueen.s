                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__placequeen:
placequeen_α_body:
                        lea              rax, [rip + n36_suspend_β]
                        mov              qword ptr [rsp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              qword ptr [rsp + 80], 3              # result
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n1_var_α
.Lx38_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:               mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n2_to_α
#-----------------------------------------------------------------------------------------------------------------------
n2_to_α:                mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax
                        mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 96], 3
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 64], rax
.Lx41_0:                mov              rax, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 104]
                        cmp              rax, rcx;                            jg    placequeen_ω
                        mov              qword ptr [rsp + 48], 3
                        mov              qword ptr [rsp + 56], rax;           jmp   n3_assign_α
n2_to_β:                inc              qword ptr [rsp + 64];                jmp   .Lx41_0
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n4_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n4_bound_α:             mov              qword ptr [rsp + 112], rsp;          jmp   n5_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              rax, 4294967336
                        mov              rdx, 1879052304                      # rw
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 184], rax;          jmp   n7_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n7_subscript_α:         mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 176]
                        mov              rcx, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n37_unmark_α
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n8_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_nulltest_var_α:      mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 104;                            je    n37_unmark_α
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n37_unmark_α
                        cmp              eax, 0;                              jne   n37_unmark_α
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 216], rax;          jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              rax, 4294967336
                        mov              rdx, 1879052320                      # dd
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 360], rax;          jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 376], rax;          jmp   n12_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n12_coerce_numeric_α:   mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 5;                              je    .Lx58_1
                        cmp              eax, 3;                              jne   .Lx58_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx58_0
.Lx58_1:                mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 344], rax;          jmp   n13_coerce_numeric_α
.Lx58_0:                lea              rdi, [rsp + 720]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 336]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n13_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n13_coerce_numeric_α:   mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx60_1
                        cmp              eax, 3;                              jne   .Lx60_0
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 3;                              jne   .Lx60_0
.Lx60_1:                mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 328], rax;          jmp   n14_binop_α
.Lx60_0:                lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 720]
                        lea              rdx, [rsp + 320]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:            mov              eax, dword ptr [rsp + 336]
                        mov              ecx, dword ptr [rsp + 320]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx61_2
                        mov              rax, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 328]
                        add              rax, rdx
                        mov              qword ptr [rsp + 304], 3
                        mov              qword ptr [rsp + 312], rax;          jmp   .Lx61_7
.Lx61_2:                and              edx, 1;                              jz    .Lx61_0
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdi, qword ptr [rsp + 328]
                        cmp              eax, 5;                              je    .Lx61_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx61_4
.Lx61_3:                movq             xmm0, rsi
.Lx61_4:                cmp              ecx, 5;                              je    .Lx61_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx61_6
.Lx61_5:                movq             xmm1, rdi
.Lx61_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 304], 5
                        mov              qword ptr [rsp + 312], rax
.Lx61_7:                                                                      jmp   n15_lit_integer_α
.Lx61_0:                mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n37_unmark_α
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      mov              qword ptr [rsp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n16_coerce_numeric_α
.Lx62_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n16_coerce_numeric_α:   mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 5;                              je    .Lx64_1
                        cmp              eax, 3;                              jne   .Lx64_0
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 3;                              jne   .Lx64_0
.Lx64_1:                mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 296], rax;          jmp   n17_binop_α
.Lx64_0:                lea              rdi, [rsp + 304]
                        lea              rsi, [rsp + 384]
                        lea              rdx, [rsp + 288]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n17_binop_α:            mov              eax, dword ptr [rsp + 288]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx65_2
                        mov              rax, qword ptr [rsp + 296]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 272], 3
                        mov              qword ptr [rsp + 280], rax;          jmp   .Lx65_7
.Lx65_2:                and              edx, 1;                              jz    .Lx65_0
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx65_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx65_4
.Lx65_3:                movq             xmm0, rsi
.Lx65_4:                cmp              ecx, 5;                              je    .Lx65_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx65_6
.Lx65_5:                movq             xmm1, rdi
.Lx65_6:                subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 272], 5
                        mov              qword ptr [rsp + 280], rax
.Lx65_7:                                                                      jmp   n18_subscript_α
.Lx65_0:                mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 384]
                        mov              rcx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n37_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n18_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n18_subscript_α:        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n37_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n19_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_nulltest_var_α:     mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 104;                            je    n37_unmark_α
                        mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n37_unmark_α
                        cmp              eax, 0;                              jne   n37_unmark_α
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 424], rax;          jmp   n20_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052336                      # ud
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 576], rax           # result
                        mov              qword ptr [rsp + 584], rdx;          jmp   n22_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 600], rax;          jmp   n23_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n23_coerce_numeric_α:   mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 5;                              je    .Lx74_1
                        cmp              eax, 3;                              jne   .Lx74_0
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 3;                              jne   .Lx74_0
.Lx74_1:                mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 568], rax;          jmp   n24_coerce_numeric_α
.Lx74_0:                lea              rdi, [rsp + 576]
                        lea              rsi, [rsp + 720]
                        lea              rdx, [rsp + 560]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n24_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n24_coerce_numeric_α:   mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 5;                              je    .Lx76_1
                        cmp              eax, 3;                              jne   .Lx76_0
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 3;                              jne   .Lx76_0
.Lx76_1:                mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 552], rax;          jmp   n25_binop_α
.Lx76_0:                lea              rdi, [rsp + 720]
                        lea              rsi, [rsp + 576]
                        lea              rdx, [rsp + 544]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n25_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n25_binop_α:            mov              eax, dword ptr [rsp + 560]
                        mov              ecx, dword ptr [rsp + 544]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx77_2
                        mov              rax, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 552]
                        add              rax, rdx
                        mov              qword ptr [rsp + 528], 3
                        mov              qword ptr [rsp + 536], rax;          jmp   .Lx77_7
.Lx77_2:                and              edx, 1;                              jz    .Lx77_0
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdi, qword ptr [rsp + 552]
                        cmp              eax, 5;                              je    .Lx77_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx77_4
.Lx77_3:                movq             xmm0, rsi
.Lx77_4:                cmp              ecx, 5;                              je    .Lx77_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx77_6
.Lx77_5:                movq             xmm1, rdi
.Lx77_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 528], 5
                        mov              qword ptr [rsp + 536], rax
.Lx77_7:                                                                      jmp   n26_var_α
.Lx77_0:                mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 544]
                        mov              rcx, qword ptr [rsp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n37_unmark_α
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 616], rax;          jmp   n27_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n27_coerce_numeric_α:   mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 5;                              je    .Lx81_1
                        cmp              eax, 3;                              jne   .Lx81_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx81_0
.Lx81_1:                mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 520], rax;          jmp   n28_coerce_numeric_α
.Lx81_0:                lea              rdi, [rsp + 528]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 512]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n28_coerce_numeric_α:   mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx83_1
                        cmp              eax, 3;                              jne   .Lx83_0
                        mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 3;                              jne   .Lx83_0
.Lx83_1:                mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 504], rax;          jmp   n29_binop_α
.Lx83_0:                lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 528]
                        lea              rdx, [rsp + 496]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n29_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n29_binop_α:            mov              eax, dword ptr [rsp + 512]
                        mov              ecx, dword ptr [rsp + 496]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx84_2
                        mov              rax, qword ptr [rsp + 520]
                        mov              rdx, qword ptr [rsp + 504]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 480], 3
                        mov              qword ptr [rsp + 488], rax;          jmp   .Lx84_7
.Lx84_2:                and              edx, 1;                              jz    .Lx84_0
                        mov              rsi, qword ptr [rsp + 520]
                        mov              rdi, qword ptr [rsp + 504]
                        cmp              eax, 5;                              je    .Lx84_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx84_4
.Lx84_3:                movq             xmm0, rsi
.Lx84_4:                cmp              ecx, 5;                              je    .Lx84_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx84_6
.Lx84_5:                movq             xmm1, rdi
.Lx84_6:                subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 480], 5
                        mov              qword ptr [rsp + 488], rax
.Lx84_7:                                                                      jmp   n30_subscript_α
.Lx84_0:                mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              rdx, qword ptr [rsp + 496]
                        mov              rcx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n37_unmark_α
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n30_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n30_subscript_α:        mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n37_unmark_α
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n31_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_nulltest_var_α:     mov              eax, dword ptr [rsp + 624]
                        cmp              eax, 104;                            je    n37_unmark_α
                        mov              rdi, qword ptr [rsp + 624]
                        mov              rsi, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n37_unmark_α
                        cmp              eax, 0;                              jne   n37_unmark_α
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 648], rax;          jmp   n32_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 696], rax;          jmp   n33_rev_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_rev_assign_var_α:   mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 688]
                        mov              rcx, qword ptr [rsp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n37_unmark_α
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n34_rev_assign_var_α
n33_rev_assign_var_β:   mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n37_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n34_rev_assign_var_α:   mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 656]
                        mov              rcx, qword ptr [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n33_rev_assign_var_β
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n35_rev_assign_var_α
n34_rev_assign_var_β:   mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n33_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n35_rev_assign_var_α:   mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n34_rev_assign_var_β
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n36_suspend_α
n35_rev_assign_var_β:   mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n34_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n36_suspend_α:          lea              rax, [rip + n36_suspend_β]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 8], rax;            jmp   placequeen_γ
n36_suspend_β:                                                                jmp   n35_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n37_unmark_α:           mov              rsp, qword ptr [rsp + 112];          jmp   n2_to_β
#-----------------------------------------------------------------------------------------------------------------------
placequeen_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
placequeen_β:
                                                                              jmp   n36_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
placequeen_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
placequeen_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__solvequeen:
solvequeen_α_body:
                        lea              rax, [rip + n105_suspend_β]
                        mov              qword ptr [rsp + 384], rax
#-----------------------------------------------------------------------------------------------------------------------
n96_disjunction_α:      mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              dword ptr [rsp + 272], 0;            jmp   n107_var_α
n96_disjunction_as:     mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 0;                              jne   .Lx112_0
                                                                              jmp   n97_var_α
.Lx112_0:                                                                     jmp   n97_var_α
n96_disjunction_β:      mov              eax, dword ptr [rsp + 272];          jmp   n97_var_α
n96_disjunction_af:     add              dword ptr [rsp + 272], 1
                        mov              eax, dword ptr [rsp + 272];          jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 248], rax;          jmp   n98_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n98_proc_gen_α:         mov              qword ptr [rsp + 208], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx116_20
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx116_21
.Lx116_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx116_21:              lea              rax, [rip + .Lx116_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx116_1
                        lea              rcx, [rip + .Lx116_3]
                        lea              rdx, [rip + .Lx116_4];               jmp   rax
.Lx116_3:               mov              qword ptr [rsp + 216], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 208]
                        test             rax, rax;                            jne   .Lx116_5
                        mov              qword ptr [rsp + 208], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx116_2
.Lx116_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx116_2
.Lx116_4:               mov              rax, qword ptr [rsp + 208]
                        test             rax, rax;                            jne   .Lx116_6
                        mov              qword ptr [rsp + 208], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx116_2
.Lx116_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx116_2
.Lx116_1:               call             rt_faildescr@PLT
.Lx116_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx116_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
.Lx116_29:              mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104;                            je    solvequeen_ω
                                                                              jmp   n99_var_α
n98_proc_gen_β:         call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 216];          jmp   qword ptr [rsp]
.Lx116_7:               add              rsp, 8
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104;                            je    solvequeen_ω
                                                                              jmp   n99_var_α
.Lx116_0:               .quad            .Lx116_0_s
.Lx116_0_s:             .string          "placequeen"
#-----------------------------------------------------------------------------------------------------------------------
n99_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 152], rax;          jmp   n100_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:     mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n101_coerce_numeric_α
.Lx119_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n101_coerce_numeric_α:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx121_1
                        cmp              eax, 3;                              jne   .Lx121_0
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 3;                              jne   .Lx121_0
.Lx121_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax;          jmp   n102_binop_α
.Lx121_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 160]
                        lea              rdx, [rsp + 128]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n102_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n102_binop_α:           mov              eax, dword ptr [rsp + 128]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx122_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 112], 3
                        mov              qword ptr [rsp + 120], rax;          jmp   .Lx122_7
.Lx122_2:               and              edx, 1;                              jz    .Lx122_0
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx122_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx122_4
.Lx122_3:               movq             xmm0, rsi
.Lx122_4:               cmp              ecx, 5;                              je    .Lx122_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx122_6
.Lx122_5:               movq             xmm1, rdi
.Lx122_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 112], 5
                        mov              qword ptr [rsp + 120], rax
.Lx122_7:                                                                     jmp   n103_proc_gen_α
.Lx122_0:               mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n98_proc_gen_β
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n103_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n103_proc_gen_α:        mov              qword ptr [rsp + 80], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx124_20
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx124_21
.Lx124_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx124_21:              lea              rax, [rip + .Lx124_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx124_1
                        lea              rcx, [rip + .Lx124_3]
                        lea              rdx, [rip + .Lx124_4];               jmp   rax
.Lx124_3:               mov              qword ptr [rsp + 88], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 80]
                        test             rax, rax;                            jne   .Lx124_5
                        mov              qword ptr [rsp + 80], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx124_2
.Lx124_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx124_2
.Lx124_4:               mov              rax, qword ptr [rsp + 80]
                        test             rax, rax;                            jne   .Lx124_6
                        mov              qword ptr [rsp + 80], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx124_2
.Lx124_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx124_2
.Lx124_1:               call             rt_faildescr@PLT
.Lx124_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx124_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
.Lx124_29:              mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    n98_proc_gen_β
                                                                              jmp   n104_conjunction_α
n103_proc_gen_β:        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 88];           jmp   qword ptr [rsp]
.Lx124_7:               add              rsp, 8
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    n98_proc_gen_β
                                                                              jmp   n104_conjunction_α
.Lx124_0:               .quad            .Lx124_0_s
.Lx124_0_s:             .string          "solvequeen"
#-----------------------------------------------------------------------------------------------------------------------
n104_conjunction_α:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax;           jmp   n105_suspend_α
n104_conjunction_β:                                                           jmp   solvequeen_ω
#-----------------------------------------------------------------------------------------------------------------------
n105_suspend_α:         lea              rax, [rip + n105_suspend_β]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   solvequeen_γ
n105_suspend_β:                                                               jmp   solvequeen_ω
#-----------------------------------------------------------------------------------------------------------------------
n106_conjunction_α:                                                           jmp   n96_disjunction_as
n106_conjunction_β:                                                           jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 360], rax;          jmp   n108_var_α
n107_var_β:                                                                   jmp   n96_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 368], rax           # result
                        mov              qword ptr [rsp + 376], rdx;          jmp   n109_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n109_binop_test_α:      mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 112;                            je    .Lx132_0
                        mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 112;                            je    .Lx132_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx132_2
                        mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 3;                              jne   .Lx132_2
.Lx132_1:               mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 376]
                        cmp              rax, rcx;                            jle   n96_disjunction_af
                        mov              rcx, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rcx
                        mov              rcx, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rcx;          jmp   n110_call_proc_staged_α
.Lx132_0:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        mov              r8d, 7
                        lea              r9, [rsp + 336]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx132_1
                        cmp              eax, 1;                              je    n96_disjunction_af
                                                                              jmp   n110_call_proc_staged_α
.Lx132_2:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n96_disjunction_af
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax;          jmp   n110_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n110_call_proc_staged_α:
                        call             writeboard_dcα;                      jmp   .Lx134_2
.Lx134_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx134_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
.Lx134_29:              mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              eax, 104;                            je    solvequeen_ω
                                                                              jmp   solvequeen_ω
n110_call_proc_staged_β:
                                                                              jmp   solvequeen_ω
.Lx134_0:               .quad            .Lx134_0_s
.Lx134_0_s:             .string          "writeboard"
#-----------------------------------------------------------------------------------------------------------------------
solvequeen_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
solvequeen_β:
                                                                              jmp   n105_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
solvequeen_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
solvequeen_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__writeboard:
                        sub              rsp, 1056
                        mov              qword ptr [rsp + 1032], rcx
                        mov              qword ptr [rsp + 1040], rdx
                        mov              rdi, rsp
                        add              rdi, 912
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
writeboard_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:      mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 2
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n136_var_α
.Lx174_0:               .quad            .Lx174_0_s
.Lx174_0_s:             .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 880], rax           # result
                        mov              qword ptr [rsp + 888], rdx;          jmp   n137_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n137_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lrkfn177:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn177]
                        lea              rsi, [rsp + 816]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              eax, 104;                            je    n140_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n138_lit_string_α
n137_call_builtin_icon_β:
                                                                              jmp   n140_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 1
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n139_call_builtin_icon_α
.Lx178_0:               .quad            .Lx178_0_s
.Lx178_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lrkfn180:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn180]
                        lea              rsi, [rsp + 752]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              eax, 104;                            je    n140_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n140_lit_integer_α
n139_call_builtin_icon_β:
                                                                              jmp   n140_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:     mov              qword ptr [rsp + 80], 3              # result
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n141_var_α
.Lx181_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n142_to_α
#-----------------------------------------------------------------------------------------------------------------------
n142_to_α:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax
                        mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 96], 3
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 64], rax
.Lx184_0:               mov              rax, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 104]
                        cmp              rax, rcx;                            jg    n173_call_builtin_icon_α
                        mov              qword ptr [rsp + 48], 3
                        mov              qword ptr [rsp + 56], rax;           jmp   n143_assign_α
n142_to_β:              inc              qword ptr [rsp + 64];                jmp   .Lx184_0
#-----------------------------------------------------------------------------------------------------------------------
n143_assign_α:          mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n144_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n144_bound_α:           mov              qword ptr [rsp + 112], rsp;          jmp   n145_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052304                      # rw
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n146_var_α
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:             mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 696], rax;          jmp   n147_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n147_subscript_α:       mov              rdi, qword ptr [rsp + 672]
                        mov              rsi, qword ptr [rsp + 680]
                        mov              rdx, qword ptr [rsp + 688]
                        mov              rcx, qword ptr [rsp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n150_lit_string_α
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n148_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n148_deref_α:           mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n150_lit_string_α
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n149_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n149_assign_α:          mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n150_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:      mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 2
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n151_var_α
.Lx195_0:               .quad            .Lx195_0_s
.Lx195_0_s:             .string          "| "
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 640], rax           # result
                        mov              qword ptr [rsp + 648], rdx;          jmp   n152_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n152_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn198:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn198]
                        lea              rsi, [rsp + 576]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              eax, 104;                            je    n156_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n153_lit_string_α
n152_call_builtin_icon_β:
                                                                              jmp   n156_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:      mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n154_binop_α
.Lx199_0:               .quad            .Lx199_0_s
.Lx199_0_s:             .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n154_binop_α:           mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 656]
                        mov              rcx, qword ptr [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n155_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n155_assign_α:          mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n156_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n157_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:     mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n158_var_α
.Lx204_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:             mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 488], rax;          jmp   n159_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n159_coerce_numeric_α:  mov              eax, dword ptr [rsp + 944]
                        cmp              eax, 5;                              je    .Lx208_1
                        cmp              eax, 3;                              jne   .Lx208_0
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 3;                              jne   .Lx208_0
.Lx208_1:               mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 456], rax;          jmp   n160_binop_α
.Lx208_0:               lea              rdi, [rsp + 944]
                        lea              rsi, [rsp + 464]
                        lea              rdx, [rsp + 448]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n160_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n160_binop_α:           mov              eax, 3
                        mov              ecx, dword ptr [rsp + 448]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx209_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rsp + 456]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 432], 3
                        mov              qword ptr [rsp + 440], rax;          jmp   .Lx209_7
.Lx209_2:               and              edx, 1;                              jz    .Lx209_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rsp + 456]
                        cmp              eax, 5;                              je    .Lx209_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx209_4
.Lx209_3:               movq             xmm0, rsi
.Lx209_4:               cmp              ecx, 5;                              je    .Lx209_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx209_6
.Lx209_5:               movq             xmm1, rdi
.Lx209_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 432], 5
                        mov              qword ptr [rsp + 440], rax
.Lx209_7:                                                                     jmp   n161_subscript_α
.Lx209_0:               mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            je    n164_var_α
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n161_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n161_subscript_α:       mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n164_var_α
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n162_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:      mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 1
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n163_assign_var_α
.Lx211_0:               .quad            .Lx211_0_s
.Lx211_0_s:             .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n163_assign_var_α:      mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        mov              rdx, qword ptr [rsp + 528]
                        mov              rcx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n164_var_α
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 408], rax;          jmp   n165_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n165_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn216:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rsp + 368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              eax, 104;                            je    n166_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n166_lit_string_α
n165_call_builtin_icon_β:
                                                                              jmp   n166_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:      mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 2
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n167_var_α
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 320], rax           # result
                        mov              qword ptr [rsp + 328], rdx;          jmp   n168_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n168_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn220:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn220]
                        lea              rsi, [rsp + 256]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 104;                            je    n172_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n169_lit_string_α
n168_call_builtin_icon_β:
                                                                              jmp   n172_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:      mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 1
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n170_call_builtin_icon_α
.Lx221_0:               .quad            .Lx221_0_s
.Lx221_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n170_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn223:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn223]
                        lea              rsi, [rsp + 192]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104;                            je    n172_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n171_conjunction_α
n170_call_builtin_icon_β:
                                                                              jmp   n172_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n171_conjunction_α:     mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax;          jmp   n172_unmark_α
n171_conjunction_β:                                                           jmp   n172_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n172_unmark_α:          mov              rsp, qword ptr [rsp + 112];          jmp   n142_to_β
#-----------------------------------------------------------------------------------------------------------------------
n173_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn228:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rsp + 16]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    writeboard_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   writeboard_γ
n173_call_builtin_icon_β:
                                                                              jmp   writeboard_ω
#-----------------------------------------------------------------------------------------------------------------------
writeboard_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
writeboard_β:
                                                                              jmp   writeboard_ω
#-----------------------------------------------------------------------------------------------------------------------
writeboard_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1032]
                        add              rsp, 1056;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
writeboard_ω:
                        mov              rcx, qword ptr [rsp + 1040]
                        add              rsp, 1056;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
writeboard_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx229_2]
                        lea              rdx, [rip + .Lx229_3];               jmp   FN__writeboard
.Lx229_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx229_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
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
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
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
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 736
                        mov              qword ptr [rsp + 712], rcx
                        mov              qword ptr [rsp + 720], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n230_disjunction_α:     mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              dword ptr [rsp + 528], 0;            jmp   n256_var_ref_α
n230_disjunction_as:    mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 0;                              jne   .Lx262_0
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax;          jmp   n231_assign_α
.Lx262_0:               cmp              eax, 1;                              jne   .Lx262_1
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 520], rax;          jmp   n231_assign_α
.Lx262_1:                                                                     jmp   n231_assign_α
n230_disjunction_β:     mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 0;                              je    n230_disjunction_af
                                                                              jmp   n230_disjunction_af
n230_disjunction_af:    add              dword ptr [rsp + 528], 1
                        mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 1;                              je    n255_lit_integer_α
                                                                              jmp   n232_var_α
#-----------------------------------------------------------------------------------------------------------------------
n231_assign_α:          mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [r9 + 0], rax              # n
                        mov              qword ptr [r9 + 8], rdx;             jmp   n232_var_α
#-----------------------------------------------------------------------------------------------------------------------
n232_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 496], rax           # result
                        mov              qword ptr [rsp + 504], rdx;          jmp   n233_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n233_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn266:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn266]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 104;                            je    n235_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n234_assign_α
n233_call_builtin_icon_β:
                                                                              jmp   n235_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n234_assign_α:          mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [r9 + 16], rax             # rw
                        mov              qword ptr [r9 + 24], rdx;            jmp   n235_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_integer_α:     mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n236_var_α
.Lx268_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 416], rax           # result
                        mov              qword ptr [rsp + 424], rdx;          jmp   n237_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n237_coerce_numeric_α:  mov              eax, dword ptr [rsp + 416]
                        cmp              eax, 5;                              je    .Lx271_1
                        cmp              eax, 3;                              jne   .Lx271_0
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 3;                              jne   .Lx271_0
.Lx271_1:               mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax;          jmp   n238_binop_α
.Lx271_0:               lea              rdi, [rsp + 416]
                        lea              rsi, [rsp + 400]
                        lea              rdx, [rsp + 384]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n238_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n238_binop_α:           mov              eax, 3
                        mov              ecx, dword ptr [rsp + 384]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx272_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rsp + 392]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 368], 3
                        mov              qword ptr [rsp + 376], rax;          jmp   .Lx272_7
.Lx272_2:               and              edx, 1;                              jz    .Lx272_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rsp + 392]
                        cmp              eax, 5;                              je    .Lx272_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx272_4
.Lx272_3:               movq             xmm0, rsi
.Lx272_4:               cmp              ecx, 5;                              je    .Lx272_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx272_6
.Lx272_5:               movq             xmm1, rdi
.Lx272_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 368], 5
                        mov              qword ptr [rsp + 376], rax
.Lx272_7:                                                                     jmp   n239_lit_integer_α
.Lx272_0:               mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        mov              rdx, qword ptr [rsp + 384]
                        mov              rcx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            je    n244_lit_integer_α
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n239_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_integer_α:     mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n240_coerce_numeric_α
.Lx273_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n240_coerce_numeric_α:  mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 5;                              je    .Lx275_1
                        cmp              eax, 3;                              jne   .Lx275_0
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 3;                              jne   .Lx275_0
.Lx275_1:               mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 360], rax;          jmp   n241_binop_α
.Lx275_0:               lea              rdi, [rsp + 368]
                        lea              rsi, [rsp + 432]
                        lea              rdx, [rsp + 352]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n241_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n241_binop_α:           mov              eax, dword ptr [rsp + 352]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx276_2
                        mov              rax, qword ptr [rsp + 360]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 336], 3
                        mov              qword ptr [rsp + 344], rax;          jmp   .Lx276_7
.Lx276_2:               and              edx, 1;                              jz    .Lx276_0
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx276_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx276_4
.Lx276_3:               movq             xmm0, rsi
.Lx276_4:               cmp              ecx, 5;                              je    .Lx276_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx276_6
.Lx276_5:               movq             xmm1, rdi
.Lx276_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 336], 5
                        mov              qword ptr [rsp + 344], rax
.Lx276_7:                                                                     jmp   n242_call_builtin_icon_α
.Lx276_0:               mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n244_lit_integer_α
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n242_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n242_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn278:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn278]
                        lea              rsi, [rsp + 304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              eax, 104;                            je    n244_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n243_assign_α
n242_call_builtin_icon_β:
                                                                              jmp   n244_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n243_assign_α:          mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [r9 + 32], rax             # dd
                        mov              qword ptr [r9 + 40], rdx;            jmp   n244_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_integer_α:     mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n245_var_α
.Lx280_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n245_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 256], rax           # result
                        mov              qword ptr [rsp + 264], rdx;          jmp   n246_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n246_coerce_numeric_α:  mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 5;                              je    .Lx283_1
                        cmp              eax, 3;                              jne   .Lx283_0
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 3;                              jne   .Lx283_0
.Lx283_1:               mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax;          jmp   n247_binop_α
.Lx283_0:               lea              rdi, [rsp + 256]
                        lea              rsi, [rsp + 240]
                        lea              rdx, [rsp + 224]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n247_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n247_binop_α:           mov              eax, 3
                        mov              ecx, dword ptr [rsp + 224]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx284_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rsp + 232]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 208], 3
                        mov              qword ptr [rsp + 216], rax;          jmp   .Lx284_7
.Lx284_2:               and              edx, 1;                              jz    .Lx284_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rsp + 232]
                        cmp              eax, 5;                              je    .Lx284_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx284_4
.Lx284_3:               movq             xmm0, rsi
.Lx284_4:               cmp              ecx, 5;                              je    .Lx284_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx284_6
.Lx284_5:               movq             xmm1, rdi
.Lx284_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 208], 5
                        mov              qword ptr [rsp + 216], rax
.Lx284_7:                                                                     jmp   n248_lit_integer_α
.Lx284_0:               mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              eax, 104;                            je    n253_lit_integer_α
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n248_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_integer_α:     mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n249_coerce_numeric_α
.Lx285_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n249_coerce_numeric_α:  mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 5;                              je    .Lx287_1
                        cmp              eax, 3;                              jne   .Lx287_0
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 3;                              jne   .Lx287_0
.Lx287_1:               mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax;          jmp   n250_binop_α
.Lx287_0:               lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 272]
                        lea              rdx, [rsp + 192]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n250_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n250_binop_α:           mov              eax, dword ptr [rsp + 192]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx288_2
                        mov              rax, qword ptr [rsp + 200]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 176], 3
                        mov              qword ptr [rsp + 184], rax;          jmp   .Lx288_7
.Lx288_2:               and              edx, 1;                              jz    .Lx288_0
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx288_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx288_4
.Lx288_3:               movq             xmm0, rsi
.Lx288_4:               cmp              ecx, 5;                              je    .Lx288_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx288_6
.Lx288_5:               movq             xmm1, rdi
.Lx288_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 176], 5
                        mov              qword ptr [rsp + 184], rax
.Lx288_7:                                                                     jmp   n251_call_builtin_icon_α
.Lx288_0:               mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n253_lit_integer_α
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n251_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n251_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn290:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]
                        lea              rsi, [rsp + 144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104;                            je    n253_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n252_assign_α
n251_call_builtin_icon_β:
                                                                              jmp   n253_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n252_assign_α:          mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [r9 + 48], rax             # ud
                        mov              qword ptr [r9 + 56], rdx;            jmp   n253_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_integer_α:     mov              qword ptr [rsp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n254_proc_gen_α
.Lx292_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n254_proc_gen_α:        mov              qword ptr [rsp + 64], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx294_20
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx294_21
.Lx294_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx294_21:              lea              rax, [rip + .Lx294_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx294_1
                        lea              rcx, [rip + .Lx294_3]
                        lea              rdx, [rip + .Lx294_4];               jmp   rax
.Lx294_3:               mov              qword ptr [rsp + 72], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 64]
                        test             rax, rax;                            jne   .Lx294_5
                        mov              qword ptr [rsp + 64], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx294_2
.Lx294_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx294_2
.Lx294_4:               mov              rax, qword ptr [rsp + 64]
                        test             rax, rax;                            jne   .Lx294_6
                        mov              qword ptr [rsp + 64], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx294_2
.Lx294_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx294_2
.Lx294_1:               call             rt_faildescr@PLT
.Lx294_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx294_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
.Lx294_29:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    main_ω
                                                                              jmp   main_γ
n254_proc_gen_β:        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 72];           jmp   qword ptr [rsp]
.Lx294_7:               add              rsp, 8
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    main_ω
                                                                              jmp   main_γ
.Lx294_0:               .quad            .Lx294_0_s
.Lx294_0_s:             .string          "solvequeen"
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_integer_α:     mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n230_disjunction_as
n255_lit_integer_β:                                                           jmp   n230_disjunction_af
.Lx295_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n257_lit_integer_α
n256_var_ref_β:                                                               jmp   n230_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_integer_α:     mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n258_subscript_α
.Lx298_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n258_subscript_α:       mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        mov              rdx, qword ptr [rsp + 608]
                        mov              rcx, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n230_disjunction_af
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n259_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n259_deref_α:           mov              rdi, qword ptr [rsp + 624]
                        mov              rsi, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n230_disjunction_af
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n260_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n260_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn302:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn302]
                        lea              rsi, [rsp + 560]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              eax, 104;                            je    n230_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n230_disjunction_as
n260_call_builtin_icon_β:
                                                                              jmp   n230_disjunction_af
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
.Lstartup_pname0:       .string          "placequeen"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__placequeen
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            736
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "solvequeen"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__solvequeen
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            400
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "writeboard"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__writeboard
                        .quad            writeboard_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            960
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
