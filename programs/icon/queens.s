                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_safe_α
proc_safe_α:
                        sub              rsp, 752
                        mov              qword ptr [rsp + 728], rcx
                        mov              qword ptr [rsp + 736], rdx
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_safe_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              dword ptr [rsp + 560], 0;            jmp   n31_var_ref_α
n0_disjunction_as:      mov              eax, dword ptr [rsp + 560]
                        cmp              eax, 0;                              jne   .Lx38_0
                                                                              jmp   n1_disjunction_α
.Lx38_0:                                                                      jmp   n1_disjunction_α
n0_disjunction_β:       mov              eax, dword ptr [rsp + 560];          jmp   n1_disjunction_α
n0_disjunction_af:      add              dword ptr [rsp + 560], 1
                        mov              eax, dword ptr [rsp + 560];          jmp   n1_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:       mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              dword ptr [rsp + 304], 0;            jmp   n17_var_ref_α
n1_disjunction_as:      mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 0;                              jne   .Lx40_0
                                                                              jmp   n2_disjunction_α
.Lx40_0:                                                                      jmp   n2_disjunction_α
n1_disjunction_β:       mov              eax, dword ptr [rsp + 304];          jmp   n2_disjunction_α
n1_disjunction_af:      add              dword ptr [rsp + 304], 1
                        mov              eax, dword ptr [rsp + 304];          jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:       mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              dword ptr [rsp + 64], 0;             jmp   n4_var_ref_α
n2_disjunction_as:      mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 0;                              jne   .Lx42_0
                                                                              jmp   n3_return_α
.Lx42_0:                                                                      jmp   n3_return_α
n2_disjunction_β:       mov              eax, dword ptr [rsp + 64];           jmp   n3_return_α
n2_disjunction_af:      add              dword ptr [rsp + 64], 1
                        mov              eax, dword ptr [rsp + 64];           jmp   n3_return_α
#-----------------------------------------------------------------------------------------------------------------------
n3_return_α:            mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   proc_safe_γ
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              rax, 4294967336
                        mov              rdx, 1879052352                      # down
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx;          jmp   n5_var_α
n4_var_ref_β:                                                                 jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 200], rax;          jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n7_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:    mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 5;                              je    .Lx51_1
                        cmp              eax, 3;                              jne   .Lx51_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx51_0
.Lx51_1:                mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 184], rax;          jmp   n8_coerce_numeric_α
.Lx51_0:                lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 176]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n8_coerce_numeric_α:    mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx53_1
                        cmp              eax, 3;                              jne   .Lx53_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 3;                              jne   .Lx53_0
.Lx53_1:                mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 168], rax;          jmp   n9_binop_α
.Lx53_0:                lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 160]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:             mov              eax, dword ptr [rsp + 176]
                        cmp              eax, 3;                              jne   .Lx54_0
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 3;                              jne   .Lx54_0
                        mov              rax, qword ptr [rsp + 184]
                        mov              rcx, qword ptr [rsp + 168]
                        add              rax, rcx
                        mov              qword ptr [rsp + 144], 3
                        mov              qword ptr [rsp + 152], rax;          jmp   n10_lit_integer_α
.Lx54_0:                mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n2_disjunction_af
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n11_coerce_numeric_α
.Lx55_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:   mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 5;                              je    .Lx57_1
                        cmp              eax, 3;                              jne   .Lx57_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 3;                              jne   .Lx57_0
.Lx57_1:                mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 136], rax;          jmp   n12_binop_α
.Lx57_0:                lea              rdi, [rsp + 144]
                        lea              rsi, [rsp + 224]
                        lea              rdx, [rsp + 128]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:            mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 3;                              jne   .Lx58_0
                        mov              rax, qword ptr [rsp + 136]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 112], 3
                        mov              qword ptr [rsp + 120], rax;          jmp   n13_subscript_α
.Lx58_0:                mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n2_disjunction_af
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n13_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n13_subscript_α:        mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n2_disjunction_af
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n14_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n14_deref_α:            mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n2_disjunction_af
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n16_binop_test_α
.Lx61_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_test_α:       mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 112;                            je    .Lx62_0
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 112;                            je    .Lx62_0
                        mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 3;                              jne   .Lx62_2
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 3;                              jne   .Lx62_2
.Lx62_1:                mov              rax, qword ptr [rsp + 264]
                        mov              rcx, qword ptr [rsp + 280]
                        cmp              rax, rcx;                            je    n2_disjunction_af
                        mov              rcx, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 80], rcx
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 88], rcx;           jmp   proc_safe_ω
.Lx62_0:                mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              r8d, 10
                        lea              r9, [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx62_1
                        cmp              eax, 1;                              je    n2_disjunction_af
                                                                              jmp   proc_safe_ω
.Lx62_2:                mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              r8d, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n2_disjunction_af
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 88], rax;           jmp   proc_safe_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052336                      # up
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n18_var_α
n17_var_ref_β:                                                                jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 448], rax           # result
                        mov              qword ptr [rsp + 456], rdx;          jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 472], rax;          jmp   n20_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n20_coerce_numeric_α:   mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 5;                              je    .Lx69_1
                        cmp              eax, 3;                              jne   .Lx69_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 3;                              jne   .Lx69_0
.Lx69_1:                mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 440], rax;          jmp   n21_coerce_numeric_α
.Lx69_0:                lea              rdi, [rsp + 448]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 432]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n21_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n21_coerce_numeric_α:   mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 5;                              je    .Lx71_1
                        cmp              eax, 3;                              jne   .Lx71_0
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 3;                              jne   .Lx71_0
.Lx71_1:                mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 424], rax;          jmp   n22_binop_α
.Lx71_0:                lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 448]
                        lea              rdx, [rsp + 416]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n22_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:            mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 3;                              jne   .Lx72_0
                        mov              eax, dword ptr [rsp + 416]
                        cmp              eax, 3;                              jne   .Lx72_0
                        mov              rax, qword ptr [rsp + 440]
                        mov              rcx, qword ptr [rsp + 424]
                        add              rax, rcx
                        mov              qword ptr [rsp + 400], 3
                        mov              qword ptr [rsp + 408], rax;          jmp   n23_var_α
.Lx72_0:                mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 416]
                        mov              rcx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n1_disjunction_af
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 488], rax;          jmp   n24_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n24_coerce_numeric_α:   mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 5;                              je    .Lx76_1
                        cmp              eax, 3;                              jne   .Lx76_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx76_0
.Lx76_1:                mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 392], rax;          jmp   n25_coerce_numeric_α
.Lx76_0:                lea              rdi, [rsp + 400]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 384]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n25_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n25_coerce_numeric_α:   mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx78_1
                        cmp              eax, 3;                              jne   .Lx78_0
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 3;                              jne   .Lx78_0
.Lx78_1:                mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 376], rax;          jmp   n26_binop_α
.Lx78_0:                lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 400]
                        lea              rdx, [rsp + 368]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n26_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n26_binop_α:            mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 3;                              jne   .Lx79_0
                        mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 3;                              jne   .Lx79_0
                        mov              rax, qword ptr [rsp + 392]
                        mov              rcx, qword ptr [rsp + 376]
                        sub              rax, rcx
                        mov              qword ptr [rsp + 352], 3
                        mov              qword ptr [rsp + 360], rax;          jmp   n27_subscript_α
.Lx79_0:                mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n1_disjunction_af
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n27_subscript_α:        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 352]
                        mov              rcx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n1_disjunction_af
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n28_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n28_deref_α:            mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n1_disjunction_af
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n29_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n30_binop_test_α
.Lx82_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n30_binop_test_α:       mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 112;                            je    .Lx83_0
                        mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 112;                            je    .Lx83_0
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 3;                              jne   .Lx83_2
                        mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 3;                              jne   .Lx83_2
.Lx83_1:                mov              rax, qword ptr [rsp + 520]
                        mov              rcx, qword ptr [rsp + 536]
                        cmp              rax, rcx;                            je    n1_disjunction_af
                        mov              rcx, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 320], rcx
                        mov              rcx, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 328], rcx;          jmp   proc_safe_ω
.Lx83_0:                mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              rdx, qword ptr [rsp + 528]
                        mov              rcx, qword ptr [rsp + 536]
                        mov              r8d, 10
                        lea              r9, [rsp + 320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx83_1
                        cmp              eax, 1;                              je    n1_disjunction_af
                                                                              jmp   proc_safe_ω
.Lx83_2:                mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              rdx, qword ptr [rsp + 528]
                        mov              rcx, qword ptr [rsp + 536]
                        mov              r8d, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n1_disjunction_af
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 328], rax;          jmp   proc_safe_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052320                      # rows
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n32_var_α
n31_var_ref_β:                                                                jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 616], rax;          jmp   n33_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n33_subscript_α:        mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        mov              rdx, qword ptr [rsp + 608]
                        mov              rcx, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n0_disjunction_af
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n34_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n34_deref_α:            mov              rdi, qword ptr [rsp + 624]
                        mov              rsi, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n0_disjunction_af
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n35_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:      mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n36_binop_test_α
.Lx90_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n36_binop_test_α:       mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 112;                            je    .Lx91_0
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 112;                            je    .Lx91_0
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 3;                              jne   .Lx91_2
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 3;                              jne   .Lx91_2
.Lx91_1:                mov              rax, qword ptr [rsp + 648]
                        mov              rcx, qword ptr [rsp + 664]
                        cmp              rax, rcx;                            je    n0_disjunction_af
                        mov              rcx, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 576], rcx
                        mov              rcx, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 584], rcx;          jmp   proc_safe_ω
.Lx91_0:                mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 656]
                        mov              rcx, qword ptr [rsp + 664]
                        mov              r8d, 10
                        lea              r9, [rsp + 576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx91_1
                        cmp              eax, 1;                              je    n0_disjunction_af
                                                                              jmp   proc_safe_ω
.Lx91_2:                mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 656]
                        mov              rcx, qword ptr [rsp + 664]
                        mov              r8d, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n0_disjunction_af
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 584], rax;          jmp   proc_safe_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_safe_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_safe_β:
                                                                              jmp   proc_safe_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_safe_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 728]
                        add              rsp, 752;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_safe_ω:
                        mov              rcx, qword ptr [rsp + 736]
                        add              rsp, 752;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_safe_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx92_2]
                        lea              rdx, [rip + .Lx92_3];                jmp   proc_safe_α
.Lx92_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx92_3:                pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_show_α
proc_show_α:
                        sub              rsp, 1360
                        mov              qword ptr [rsp + 1336], rcx
                        mov              qword ptr [rsp + 1344], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
proc_show_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:              mov              rax, qword ptr [r9 + 80]             # qcount
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 1184], rax          # result
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n94_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:      mov              qword ptr [rsp + 1200], 3            # result
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n95_coerce_numeric_α
.Lx152_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n95_coerce_numeric_α:   mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 5;                              je    .Lx154_1
                        cmp              eax, 3;                              jne   .Lx154_0
                        mov              eax, dword ptr [rsp + 1200]
                        cmp              eax, 3;                              jne   .Lx154_0
.Lx154_1:               mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n96_binop_α
.Lx154_0:               lea              rdi, [rsp + 1184]
                        lea              rsi, [rsp + 1200]
                        lea              rdx, [rsp + 1168]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n96_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n96_binop_α:            mov              eax, dword ptr [rsp + 1168]
                        cmp              eax, 3;                              jne   .Lx155_0
                        mov              rax, qword ptr [rsp + 1176]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 1152], 3
                        mov              qword ptr [rsp + 1160], rax;         jmp   n97_assign_α
.Lx155_0:               mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              rdx, qword ptr [rsp + 1200]
                        mov              rcx, qword ptr [rsp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n98_lit_string_α
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n97_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:           mov              rax, qword ptr [rsp + 1152]
                        mov              rdx, qword ptr [rsp + 1160]
                        mov              qword ptr [r9 + 80], rax             # qcount
                        mov              qword ptr [r9 + 88], rdx;            jmp   n98_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 1
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n99_lit_integer_α
.Lx157_0:               .quad            .Lx157_0_s
.Lx157_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:      mov              qword ptr [rsp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n100_var_α
.Lx158_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1120], rax          # result
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n101_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n101_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1120]
                        cmp              eax, 5;                              je    .Lx161_1
                        cmp              eax, 3;                              jne   .Lx161_0
                        mov              eax, dword ptr [rsp + 1104]
                        cmp              eax, 3;                              jne   .Lx161_0
.Lx161_1:               mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n102_binop_α
.Lx161_0:               lea              rdi, [rsp + 1120]
                        lea              rsi, [rsp + 1104]
                        lea              rdx, [rsp + 1088]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n102_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n102_binop_α:           mov              eax, dword ptr [rsp + 1088]
                        cmp              eax, 3;                              jne   .Lx162_0
                        mov              rax, 4
                        mov              rcx, qword ptr [rsp + 1096]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 1072], 3
                        mov              qword ptr [rsp + 1080], rax;         jmp   n103_lit_integer_α
.Lx162_0:               mov              rdi, qword ptr [rsp + 1104]
                        mov              rsi, qword ptr [rsp + 1112]
                        mov              rdx, qword ptr [rsp + 1088]
                        mov              rcx, qword ptr [rsp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            je    n108_lit_string_α
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n103_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:     mov              qword ptr [rsp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n104_coerce_numeric_α
.Lx163_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n104_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 5;                              je    .Lx165_1
                        cmp              eax, 3;                              jne   .Lx165_0
                        mov              eax, dword ptr [rsp + 1136]
                        cmp              eax, 3;                              jne   .Lx165_0
.Lx165_1:               mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n105_binop_α
.Lx165_0:               lea              rdi, [rsp + 1072]
                        lea              rsi, [rsp + 1136]
                        lea              rdx, [rsp + 1056]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n105_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n105_binop_α:           mov              eax, dword ptr [rsp + 1056]
                        cmp              eax, 3;                              jne   .Lx166_0
                        mov              rax, qword ptr [rsp + 1064]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 1040], 3
                        mov              qword ptr [rsp + 1048], rax;         jmp   n106_call_builtin_icon_α
.Lx166_0:               mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              rdx, qword ptr [rsp + 1136]
                        mov              rcx, qword ptr [rsp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n108_lit_string_α
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n106_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lrkfn168:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn168]
                        lea              rsi, [rsp + 976]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              eax, 104;                            je    n108_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n107_assign_α
n106_call_builtin_icon_β:
                                                                              jmp   n108_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n107_assign_α:          mov              rax, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n108_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:      mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 9
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n109_var_α
.Lx170_0:               .quad            .Lx170_0_s
.Lx170_0_s:             .string          "solution "
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:             mov              rax, qword ptr [r9 + 80]             # qcount
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 928], rax           # result
                        mov              qword ptr [rsp + 936], rdx;          jmp   n110_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n111_call_builtin_icon_α
.Lx172_0:               .quad            .Lx172_0_s
.Lx172_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 888], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 856], rax
                        .section         .rodata
.Lrkfn174:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn174]
                        lea              rsi, [rsp + 848]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              eax, 104;                            je    n112_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n112_lit_integer_α
n111_call_builtin_icon_β:
                                                                              jmp   n112_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:     mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n113_var_α
.Lx175_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 160], rax           # result
                        mov              qword ptr [rsp + 168], rdx;          jmp   n114_to_α
#-----------------------------------------------------------------------------------------------------------------------
n114_to_α:              mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 144], 3
                        mov              qword ptr [rsp + 152], rax
                        mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], 3
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 128], rax
.Lx178_0:               mov              rax, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 168]
                        cmp              rax, rcx;                            jg    n148_lit_string_α
                        mov              qword ptr [rsp + 112], 3
                        mov              qword ptr [rsp + 120], rax;          jmp   n115_assign_α
n114_to_β:              inc              qword ptr [rsp + 128];               jmp   .Lx178_0
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:          mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n116_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n116_bound_α:           mov              qword ptr [rsp + 176], rsp;          jmp   n117_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:      mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 2
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n118_var_α
.Lx182_0:               .quad            .Lx182_0_s
.Lx182_0_s:             .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 824], rax;          jmp   n119_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n119_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lrkfn186:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn186]
                        lea              rsi, [rsp + 752]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              eax, 104;                            je    n120_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n120_lit_string_α
n119_call_builtin_icon_β:
                                                                              jmp   n120_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:      mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 4
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n121_var_α
.Lx187_0:               .quad            .Lx187_0_s
.Lx187_0_s:             .string          "|   "
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 704], rax           # result
                        mov              qword ptr [rsp + 712], rdx;          jmp   n122_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn190:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn190]
                        lea              rsi, [rsp + 640]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              eax, 104;                            je    n126_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n123_lit_string_α
n122_call_builtin_icon_β:
                                                                              jmp   n126_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:      mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 1
                        mov              rax, qword ptr [rip + .Lx191_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n124_binop_α
.Lx191_0:               .quad            .Lx191_0_s
.Lx191_0_s:             .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n124_binop_α:           mov              rdi, qword ptr [rsp + 624]
                        mov              rsi, qword ptr [rsp + 632]
                        mov              rdx, qword ptr [rsp + 720]
                        mov              rcx, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n125_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n125_assign_α:          mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n126_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1248]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n127_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:     mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n128_var_ref_α
.Lx196_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052304                      # placed
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n129_var_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_α:             mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 488], rax;          jmp   n130_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n130_subscript_α:       mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n143_lit_string_α
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n131_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n131_deref_α:           mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n143_lit_string_α
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n132_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_integer_α:     mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n133_coerce_numeric_α
.Lx203_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n133_coerce_numeric_α:  mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 5;                              je    .Lx205_1
                        cmp              eax, 3;                              jne   .Lx205_0
                        mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 3;                              jne   .Lx205_0
.Lx205_1:               mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 456], rax;          jmp   n134_binop_α
.Lx205_0:               lea              rdi, [rsp + 512]
                        lea              rsi, [rsp + 528]
                        lea              rdx, [rsp + 448]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n134_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n134_binop_α:           mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 3;                              jne   .Lx206_0
                        mov              rax, qword ptr [rsp + 456]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 432], 3
                        mov              qword ptr [rsp + 440], rax;          jmp   n135_coerce_numeric_α
.Lx206_0:               mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 528]
                        mov              rcx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n143_lit_string_α
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n135_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n135_coerce_numeric_α:  mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 5;                              je    .Lx208_1
                        cmp              eax, 3;                              jne   .Lx208_0
                        mov              eax, dword ptr [rsp + 416]
                        cmp              eax, 3;                              jne   .Lx208_0
.Lx208_1:               mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax;          jmp   n136_binop_α
.Lx208_0:               lea              rdi, [rsp + 432]
                        lea              rsi, [rsp + 416]
                        lea              rdx, [rsp + 400]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n136_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n136_binop_α:           mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 3;                              jne   .Lx209_0
                        mov              rax, 4
                        mov              rcx, qword ptr [rsp + 408]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 384], 3
                        mov              qword ptr [rsp + 392], rax;          jmp   n137_lit_integer_α
.Lx209_0:               mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            je    n143_lit_string_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n137_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:     mov              qword ptr [rsp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n138_coerce_numeric_α
.Lx210_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n138_coerce_numeric_α:  mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 5;                              je    .Lx212_1
                        cmp              eax, 3;                              jne   .Lx212_0
                        mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 3;                              jne   .Lx212_0
.Lx212_1:               mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 376], rax;          jmp   n139_binop_α
.Lx212_0:               lea              rdi, [rsp + 384]
                        lea              rsi, [rsp + 544]
                        lea              rdx, [rsp + 368]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n139_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n139_binop_α:           mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 3;                              jne   .Lx213_0
                        mov              rax, qword ptr [rsp + 376]
                        mov              rcx, 3
                        add              rax, rcx
                        mov              qword ptr [rsp + 352], 3
                        mov              qword ptr [rsp + 360], rax;          jmp   n140_subscript_α
.Lx213_0:               mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdx, qword ptr [rsp + 544]
                        mov              rcx, qword ptr [rsp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n143_lit_string_α
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n140_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n140_subscript_α:       mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 352]
                        mov              rcx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n143_lit_string_α
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n141_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:      mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 1
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n142_assign_var_α
.Lx215_0:               .quad            .Lx215_0_s
.Lx215_0_s:             .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n142_assign_var_α:      mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n143_lit_string_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n143_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:      mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 2
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n144_var_α
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 328], rax;          jmp   n145_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n145_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn221:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn221]
                        lea              rsi, [rsp + 256]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 104;                            je    n147_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n146_conjunction_α
n145_call_builtin_icon_β:
                                                                              jmp   n147_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n146_conjunction_α:     mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 232], rax;          jmp   n147_unmark_α
n146_conjunction_β:                                                           jmp   n147_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n147_unmark_α:          mov              rsp, qword ptr [rsp + 176];          jmp   n114_to_β
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:      mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 2
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n149_var_α
.Lx225_0:               .quad            .Lx225_0_s
.Lx225_0_s:             .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:             mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 88], rax;           jmp   n150_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n150_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn229:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn229]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    proc_show_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   proc_show_γ
n150_call_builtin_icon_β:
                                                                              jmp   proc_show_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_show_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_show_β:
                                                                              jmp   proc_show_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_show_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1336]
                        add              rsp, 1360;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_show_ω:
                        mov              rcx, qword ptr [rsp + 1344]
                        add              rsp, 1360;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_show_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx230_2]
                        lea              rdx, [rip + .Lx230_3];               jmp   proc_show_α
.Lx230_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx230_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_try_col_α
proc_try_col_α:
                        sub              rsp, 1680
                        mov              qword ptr [rsp + 1656], rcx
                        mov              qword ptr [rsp + 1664], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
proc_try_col_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n231_disjunction_α:     mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              dword ptr [rsp + 1472], 0;           jmp   n314_var_α
n231_disjunction_as:    mov              eax, dword ptr [rsp + 1472]
                        cmp              eax, 0;                              jne   .Lx320_0
                                                                              jmp   n232_lit_integer_α
.Lx320_0:                                                                     jmp   n232_lit_integer_α
n231_disjunction_β:     mov              eax, dword ptr [rsp + 1472];         jmp   n232_lit_integer_α
n231_disjunction_af:    add              dword ptr [rsp + 1472], 1
                        mov              eax, dword ptr [rsp + 1472];         jmp   n232_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_integer_α:     mov              qword ptr [rsp + 80], 3              # result
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n233_var_α
.Lx321_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n234_to_α
#-----------------------------------------------------------------------------------------------------------------------
n234_to_α:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax
                        mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], 3
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 64], rax
.Lx324_0:               mov              rax, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 104]
                        cmp              rax, rcx;                            jg    proc_try_col_ω
                        mov              qword ptr [rsp + 48], 3
                        mov              qword ptr [rsp + 56], rax;           jmp   n235_assign_α
n234_to_β:              inc              qword ptr [rsp + 64];                jmp   .Lx324_0
#-----------------------------------------------------------------------------------------------------------------------
n235_assign_α:          mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx;         jmp   n236_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n236_bound_α:           mov              qword ptr [rsp + 112], rsp;          jmp   n237_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n237_disjunction_α:     mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              dword ptr [rsp + 176], 0;            jmp   n238_var_α
n237_disjunction_as:    mov              eax, dword ptr [rsp + 176]
                        cmp              eax, 0;                              jne   .Lx329_0
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 168], rax;          jmp   n312_unmark_α
.Lx329_0:                                                                     jmp   n312_unmark_α
n237_disjunction_β:     mov              eax, dword ptr [rsp + 176];          jmp   n312_unmark_α
n237_disjunction_af:    add              dword ptr [rsp + 176], 1
                        mov              eax, dword ptr [rsp + 176];          jmp   n312_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n239_var_α
n238_var_β:                                                                   jmp   n237_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n239_var_α:             mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n240_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n240_call_proc_staged_α:
                        lea              rsi, [rsp + 1424]
                        lea              rdx, [rsp + 1440]
                        call             proc_safe_dcα;                       jmp   .Lx335_2
.Lx335_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx335_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
.Lx335_29:              mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              eax, 104;                            je    n237_disjunction_af
                                                                              jmp   n241_var_ref_α
n240_call_proc_staged_β:
                                                                              jmp   n237_disjunction_af
.Lx335_0:               .quad            .Lx335_0_s
.Lx335_0_s:             .string          "safe"
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052304                      # placed
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n242_var_α
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n243_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n243_subscript_α:       mov              rdi, qword ptr [rsp + 1280]
                        mov              rsi, qword ptr [rsp + 1288]
                        mov              rdx, qword ptr [rsp + 1296]
                        mov              rcx, qword ptr [rsp + 1304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n246_var_ref_α
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n244_var_α
#-----------------------------------------------------------------------------------------------------------------------
n244_var_α:             mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n245_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n245_assign_var_α:      mov              rdi, qword ptr [rsp + 1312]
                        mov              rsi, qword ptr [rsp + 1320]
                        mov              rdx, qword ptr [rsp + 1344]
                        mov              rcx, qword ptr [rsp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n246_var_ref_α
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n246_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n246_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052320                      # rows
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n247_var_α
#-----------------------------------------------------------------------------------------------------------------------
n247_var_α:             mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n248_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n248_subscript_α:       mov              rdi, qword ptr [rsp + 1200]
                        mov              rsi, qword ptr [rsp + 1208]
                        mov              rdx, qword ptr [rsp + 1216]
                        mov              rcx, qword ptr [rsp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n251_var_ref_α
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n249_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_integer_α:     mov              qword ptr [rsp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n250_assign_var_α
.Lx349_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n250_assign_var_α:      mov              rdi, qword ptr [rsp + 1232]
                        mov              rsi, qword ptr [rsp + 1240]
                        mov              rdx, qword ptr [rsp + 1264]
                        mov              rcx, qword ptr [rsp + 1272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n251_var_ref_α
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n251_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n251_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052336                      # up
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n252_var_α
#-----------------------------------------------------------------------------------------------------------------------
n252_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1104], rax          # result
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n253_var_α
#-----------------------------------------------------------------------------------------------------------------------
n253_var_α:             mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n254_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n254_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1104]
                        cmp              eax, 5;                              je    .Lx357_1
                        cmp              eax, 3;                              jne   .Lx357_0
                        mov              eax, dword ptr [rsp + 1584]
                        cmp              eax, 3;                              jne   .Lx357_0
.Lx357_1:               mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n255_coerce_numeric_α
.Lx357_0:               lea              rdi, [rsp + 1104]
                        lea              rsi, [rsp + 1584]
                        lea              rdx, [rsp + 1088]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n255_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n255_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1584]
                        cmp              eax, 5;                              je    .Lx359_1
                        cmp              eax, 3;                              jne   .Lx359_0
                        mov              eax, dword ptr [rsp + 1104]
                        cmp              eax, 3;                              jne   .Lx359_0
.Lx359_1:               mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n256_binop_α
.Lx359_0:               lea              rdi, [rsp + 1584]
                        lea              rsi, [rsp + 1104]
                        lea              rdx, [rsp + 1072]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n256_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n256_binop_α:           mov              eax, dword ptr [rsp + 1088]
                        cmp              eax, 3;                              jne   .Lx360_0
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 3;                              jne   .Lx360_0
                        mov              rax, qword ptr [rsp + 1096]
                        mov              rcx, qword ptr [rsp + 1080]
                        add              rax, rcx
                        mov              qword ptr [rsp + 1056], 3
                        mov              qword ptr [rsp + 1064], rax;         jmp   n257_var_α
.Lx360_0:               mov              rdi, qword ptr [rsp + 1088]
                        mov              rsi, qword ptr [rsp + 1096]
                        mov              rdx, qword ptr [rsp + 1072]
                        mov              rcx, qword ptr [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n264_var_ref_α
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n257_var_α
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n258_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n258_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1056]
                        cmp              eax, 5;                              je    .Lx364_1
                        cmp              eax, 3;                              jne   .Lx364_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx364_0
.Lx364_1:               mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n259_coerce_numeric_α
.Lx364_0:               lea              rdi, [rsp + 1056]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 1040]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n259_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n259_coerce_numeric_α:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx366_1
                        cmp              eax, 3;                              jne   .Lx366_0
                        mov              eax, dword ptr [rsp + 1056]
                        cmp              eax, 3;                              jne   .Lx366_0
.Lx366_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n260_binop_α
.Lx366_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 1056]
                        lea              rdx, [rsp + 1024]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n260_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n260_binop_α:           mov              eax, dword ptr [rsp + 1040]
                        cmp              eax, 3;                              jne   .Lx367_0
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 3;                              jne   .Lx367_0
                        mov              rax, qword ptr [rsp + 1048]
                        mov              rcx, qword ptr [rsp + 1032]
                        sub              rax, rcx
                        mov              qword ptr [rsp + 1008], 3
                        mov              qword ptr [rsp + 1016], rax;         jmp   n261_subscript_α
.Lx367_0:               mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 1024]
                        mov              rcx, qword ptr [rsp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n264_var_ref_α
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n261_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n261_subscript_α:       mov              rdi, qword ptr [rsp + 992]
                        mov              rsi, qword ptr [rsp + 1000]
                        mov              rdx, qword ptr [rsp + 1008]
                        mov              rcx, qword ptr [rsp + 1016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n264_var_ref_α
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n262_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_integer_α:     mov              qword ptr [rsp + 1184], 3            # result
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n263_assign_var_α
.Lx369_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n263_assign_var_α:      mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdx, qword ptr [rsp + 1184]
                        mov              rcx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n264_var_ref_α
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n264_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n264_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052352                      # down
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n265_var_α
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:             mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 904], rax;          jmp   n266_var_α
#-----------------------------------------------------------------------------------------------------------------------
n266_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 920], rax;          jmp   n267_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n267_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1584]
                        cmp              eax, 5;                              je    .Lx378_1
                        cmp              eax, 3;                              jne   .Lx378_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx378_0
.Lx378_1:               mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 888], rax;          jmp   n268_coerce_numeric_α
.Lx378_0:               lea              rdi, [rsp + 1584]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 880]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n268_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n268_coerce_numeric_α:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx380_1
                        cmp              eax, 3;                              jne   .Lx380_0
                        mov              eax, dword ptr [rsp + 1584]
                        cmp              eax, 3;                              jne   .Lx380_0
.Lx380_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 872], rax;          jmp   n269_binop_α
.Lx380_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 1584]
                        lea              rdx, [rsp + 864]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n269_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n269_binop_α:           mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 3;                              jne   .Lx381_0
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 3;                              jne   .Lx381_0
                        mov              rax, qword ptr [rsp + 888]
                        mov              rcx, qword ptr [rsp + 872]
                        add              rax, rcx
                        mov              qword ptr [rsp + 848], 3
                        mov              qword ptr [rsp + 856], rax;          jmp   n270_lit_integer_α
.Lx381_0:               mov              rdi, qword ptr [rsp + 880]
                        mov              rsi, qword ptr [rsp + 888]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n276_var_α
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n270_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_integer_α:     mov              qword ptr [rsp + 928], 3             # result
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n271_coerce_numeric_α
.Lx382_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n271_coerce_numeric_α:  mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 5;                              je    .Lx384_1
                        cmp              eax, 3;                              jne   .Lx384_0
                        mov              eax, dword ptr [rsp + 928]
                        cmp              eax, 3;                              jne   .Lx384_0
.Lx384_1:               mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 840], rax;          jmp   n272_binop_α
.Lx384_0:               lea              rdi, [rsp + 848]
                        lea              rsi, [rsp + 928]
                        lea              rdx, [rsp + 832]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n272_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n272_binop_α:           mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 3;                              jne   .Lx385_0
                        mov              rax, qword ptr [rsp + 840]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 816], 3
                        mov              qword ptr [rsp + 824], rax;          jmp   n273_subscript_α
.Lx385_0:               mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        mov              rdx, qword ptr [rsp + 928]
                        mov              rcx, qword ptr [rsp + 936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n276_var_α
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n273_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n273_subscript_α:       mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, qword ptr [rsp + 816]
                        mov              rcx, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n276_var_α
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n274_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_integer_α:     mov              qword ptr [rsp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n275_assign_var_α
.Lx387_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n275_assign_var_α:      mov              rdi, qword ptr [rsp + 944]
                        mov              rsi, qword ptr [rsp + 952]
                        mov              rdx, qword ptr [rsp + 976]
                        mov              rcx, qword ptr [rsp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n276_var_α
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n276_var_α
#-----------------------------------------------------------------------------------------------------------------------
n276_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 776], rax;          jmp   n277_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_integer_α:     mov              qword ptr [rsp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n278_coerce_numeric_α
.Lx391_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n278_coerce_numeric_α:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx393_1
                        cmp              eax, 3;                              jne   .Lx393_0
                        mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 3;                              jne   .Lx393_0
.Lx393_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 760], rax;          jmp   n279_binop_α
.Lx393_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 784]
                        lea              rdx, [rsp + 752]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n279_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n279_binop_α:           mov              eax, dword ptr [rsp + 752]
                        cmp              eax, 3;                              jne   .Lx394_0
                        mov              rax, qword ptr [rsp + 760]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 736], 3
                        mov              qword ptr [rsp + 744], rax;          jmp   n280_call_proc_staged_α
.Lx394_0:               mov              rdi, qword ptr [rsp + 752]
                        mov              rsi, qword ptr [rsp + 760]
                        mov              rdx, qword ptr [rsp + 784]
                        mov              rcx, qword ptr [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n281_var_ref_α
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n280_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n280_call_proc_staged_α:
                        lea              rsi, [rsp + 736]
                        call             proc_try_col_dcα;                    jmp   .Lx396_2
.Lx396_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx396_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
.Lx396_29:              mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 104;                            je    n281_var_ref_α
                                                                              jmp   n281_var_ref_α
n280_call_proc_staged_β:
                                                                              jmp   n281_var_ref_α
.Lx396_0:               .quad            .Lx396_0_s
.Lx396_0_s:             .string          "try_col"
#-----------------------------------------------------------------------------------------------------------------------
n281_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052320                      # rows
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n282_var_α
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:             mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 632], rax;          jmp   n283_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n283_subscript_α:       mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        mov              rdx, qword ptr [rsp + 624]
                        mov              rcx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n286_var_ref_α
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n284_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_integer_α:     mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n285_assign_var_α
.Lx402_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n285_assign_var_α:      mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n286_var_ref_α
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n286_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052336                      # up
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n287_var_α
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 512], rax           # result
                        mov              qword ptr [rsp + 520], rdx;          jmp   n288_var_α
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:             mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 536], rax;          jmp   n289_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n289_coerce_numeric_α:  mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 5;                              je    .Lx410_1
                        cmp              eax, 3;                              jne   .Lx410_0
                        mov              eax, dword ptr [rsp + 1584]
                        cmp              eax, 3;                              jne   .Lx410_0
.Lx410_1:               mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 504], rax;          jmp   n290_coerce_numeric_α
.Lx410_0:               lea              rdi, [rsp + 512]
                        lea              rsi, [rsp + 1584]
                        lea              rdx, [rsp + 496]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n290_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n290_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1584]
                        cmp              eax, 5;                              je    .Lx412_1
                        cmp              eax, 3;                              jne   .Lx412_0
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 3;                              jne   .Lx412_0
.Lx412_1:               mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 488], rax;          jmp   n291_binop_α
.Lx412_0:               lea              rdi, [rsp + 1584]
                        lea              rsi, [rsp + 512]
                        lea              rdx, [rsp + 480]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n291_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n291_binop_α:           mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 3;                              jne   .Lx413_0
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 3;                              jne   .Lx413_0
                        mov              rax, qword ptr [rsp + 504]
                        mov              rcx, qword ptr [rsp + 488]
                        add              rax, rcx
                        mov              qword ptr [rsp + 464], 3
                        mov              qword ptr [rsp + 472], rax;          jmp   n292_var_α
.Lx413_0:               mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n299_var_ref_α
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n292_var_α
#-----------------------------------------------------------------------------------------------------------------------
n292_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 552], rax;          jmp   n293_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n293_coerce_numeric_α:  mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 5;                              je    .Lx417_1
                        cmp              eax, 3;                              jne   .Lx417_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx417_0
.Lx417_1:               mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 456], rax;          jmp   n294_coerce_numeric_α
.Lx417_0:               lea              rdi, [rsp + 464]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 448]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n294_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n294_coerce_numeric_α:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx419_1
                        cmp              eax, 3;                              jne   .Lx419_0
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 3;                              jne   .Lx419_0
.Lx419_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 440], rax;          jmp   n295_binop_α
.Lx419_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 464]
                        lea              rdx, [rsp + 432]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n295_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n295_binop_α:           mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 3;                              jne   .Lx420_0
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 3;                              jne   .Lx420_0
                        mov              rax, qword ptr [rsp + 456]
                        mov              rcx, qword ptr [rsp + 440]
                        sub              rax, rcx
                        mov              qword ptr [rsp + 416], 3
                        mov              qword ptr [rsp + 424], rax;          jmp   n296_subscript_α
.Lx420_0:               mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n299_var_ref_α
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n296_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n296_subscript_α:       mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        mov              rdx, qword ptr [rsp + 416]
                        mov              rcx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n299_var_ref_α
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n297_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_integer_α:     mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n298_assign_var_α
.Lx422_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n298_assign_var_α:      mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n299_var_ref_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n299_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n299_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052352                      # down
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n300_var_α
#-----------------------------------------------------------------------------------------------------------------------
n300_var_α:             mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 312], rax;          jmp   n301_var_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 328], rax;          jmp   n302_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n302_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1584]
                        cmp              eax, 5;                              je    .Lx431_1
                        cmp              eax, 3;                              jne   .Lx431_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx431_0
.Lx431_1:               mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 296], rax;          jmp   n303_coerce_numeric_α
.Lx431_0:               lea              rdi, [rsp + 1584]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 288]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n303_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n303_coerce_numeric_α:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx433_1
                        cmp              eax, 3;                              jne   .Lx433_0
                        mov              eax, dword ptr [rsp + 1584]
                        cmp              eax, 3;                              jne   .Lx433_0
.Lx433_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax;          jmp   n304_binop_α
.Lx433_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 1584]
                        lea              rdx, [rsp + 272]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n304_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n304_binop_α:           mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 3;                              jne   .Lx434_0
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 3;                              jne   .Lx434_0
                        mov              rax, qword ptr [rsp + 296]
                        mov              rcx, qword ptr [rsp + 280]
                        add              rax, rcx
                        mov              qword ptr [rsp + 256], 3
                        mov              qword ptr [rsp + 264], rax;          jmp   n305_lit_integer_α
.Lx434_0:               mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n312_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n305_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_integer_α:     mov              qword ptr [rsp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n306_coerce_numeric_α
.Lx435_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n306_coerce_numeric_α:  mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 5;                              je    .Lx437_1
                        cmp              eax, 3;                              jne   .Lx437_0
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 3;                              jne   .Lx437_0
.Lx437_1:               mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 248], rax;          jmp   n307_binop_α
.Lx437_0:               lea              rdi, [rsp + 256]
                        lea              rsi, [rsp + 336]
                        lea              rdx, [rsp + 240]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n307_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n307_binop_α:           mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 3;                              jne   .Lx438_0
                        mov              rax, qword ptr [rsp + 248]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 224], 3
                        mov              qword ptr [rsp + 232], rax;          jmp   n308_subscript_α
.Lx438_0:               mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 336]
                        mov              rcx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n312_unmark_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n308_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n308_subscript_α:       mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n312_unmark_α
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n309_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n309_lit_integer_α:     mov              qword ptr [rsp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n310_assign_var_α
.Lx440_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n310_assign_var_α:      mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 384]
                        mov              rcx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n312_unmark_α
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n311_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n311_conjunction_α:     mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 200], rax;          jmp   n237_disjunction_as
n311_conjunction_β:                                                           jmp   n312_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n312_unmark_α:          mov              rsp, qword ptr [rsp + 112];          jmp   n234_to_β
#-----------------------------------------------------------------------------------------------------------------------
n313_conjunction_α:                                                           jmp   n231_disjunction_as
n313_conjunction_β:                                                           jmp   n232_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n315_var_α
n314_var_β:                                                                   jmp   n231_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n315_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1568], rax          # result
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n316_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n316_binop_test_α:      mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 112;                            je    .Lx449_0
                        mov              eax, dword ptr [rsp + 1568]
                        cmp              eax, 112;                            je    .Lx449_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx449_2
                        mov              eax, dword ptr [rsp + 1568]
                        cmp              eax, 3;                              jne   .Lx449_2
.Lx449_1:               mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 1576]
                        cmp              rax, rcx;                            jle   n231_disjunction_af
                        mov              rcx, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1536], rcx
                        mov              rcx, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1544], rcx;         jmp   n317_call_proc_staged_α
.Lx449_0:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 1568]
                        mov              rcx, qword ptr [rsp + 1576]
                        mov              r8d, 7
                        lea              r9, [rsp + 1536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx449_1
                        cmp              eax, 1;                              je    n231_disjunction_af
                                                                              jmp   n317_call_proc_staged_α
.Lx449_2:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 1568]
                        mov              rcx, qword ptr [rsp + 1576]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n231_disjunction_af
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n317_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n317_call_proc_staged_α:
                        call             proc_show_dcα;                       jmp   .Lx451_2
.Lx451_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx451_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1504]
                        mov              rdx, qword ptr [rsp + 1512]
.Lx451_29:              mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              eax, 104;                            je    n318_return_α
                                                                              jmp   n318_return_α
n317_call_proc_staged_β:
                                                                              jmp   n318_return_α
.Lx451_0:               .quad            .Lx451_0_s
.Lx451_0_s:             .string          "show"
#-----------------------------------------------------------------------------------------------------------------------
n318_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   proc_try_col_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_try_col_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_try_col_β:
                                                                              jmp   proc_try_col_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_try_col_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1656]
                        add              rsp, 1680;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_try_col_ω:
                        mov              rcx, qword ptr [rsp + 1664]
                        add              rsp, 1680;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_try_col_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx453_2]
                        lea              rdx, [rip + .Lx453_3];               jmp   proc_try_col_α
.Lx453_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx453_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "safe"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_safe_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 672
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_safe_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "show"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_show_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1264
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_show_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "try_col"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_try_col_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1600
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_try_col_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "n"
.Lgvan1:                .string          "placed"
.Lgvan2:                .string          "rows"
.Lgvan3:                .string          "up"
.Lgvan4:                .string          "down"
.Lgvan5:                .string          "qcount"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 6
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 6
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
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 1120
                        mov              qword ptr [rsp + 1096], rcx
                        mov              qword ptr [rsp + 1104], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n454_disjunction_α:     mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              dword ptr [rsp + 912], 0;            jmp   n495_var_ref_α
n454_disjunction_as:    mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 0;                              jne   .Lx501_0
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 904], rax;          jmp   n455_assign_α
.Lx501_0:               cmp              eax, 1;                              jne   .Lx501_1
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 904], rax;          jmp   n455_assign_α
.Lx501_1:                                                                     jmp   n455_assign_α
n454_disjunction_β:     mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 0;                              je    n454_disjunction_af
                                                                              jmp   n454_disjunction_af
n454_disjunction_af:    add              dword ptr [rsp + 912], 1
                        mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 1;                              je    n494_lit_integer_α
                                                                              jmp   n456_var_α
#-----------------------------------------------------------------------------------------------------------------------
n455_assign_α:          mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        mov              qword ptr [r9 + 0], rax              # n
                        mov              qword ptr [r9 + 8], rdx;             jmp   n456_var_α
#-----------------------------------------------------------------------------------------------------------------------
n456_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 864], rax           # result
                        mov              qword ptr [rsp + 872], rdx;          jmp   n457_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n457_lit_integer_α:     mov              qword ptr [rsp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n458_call_builtin_icon_α
.Lx504_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n458_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lrkfn506:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn506]
                        lea              rsi, [rsp + 816]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              eax, 104;                            je    n460_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n459_assign_α
n458_call_builtin_icon_β:
                                                                              jmp   n460_var_α
#-----------------------------------------------------------------------------------------------------------------------
n459_assign_α:          mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [r9 + 16], rax             # placed
                        mov              qword ptr [r9 + 24], rdx;            jmp   n460_var_α
#-----------------------------------------------------------------------------------------------------------------------
n460_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 768], rax           # result
                        mov              qword ptr [rsp + 776], rdx;          jmp   n461_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n461_lit_integer_α:     mov              qword ptr [rsp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n462_call_builtin_icon_α
.Lx509_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n462_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        .section         .rodata
.Lrkfn511:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn511]
                        lea              rsi, [rsp + 720]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              eax, 104;                            je    n464_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n463_assign_α
n462_call_builtin_icon_β:
                                                                              jmp   n464_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n463_assign_α:          mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              qword ptr [r9 + 32], rax             # rows
                        mov              qword ptr [r9 + 40], rdx;            jmp   n464_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n464_lit_integer_α:     mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n465_var_α
.Lx513_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n465_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 656], rax           # result
                        mov              qword ptr [rsp + 664], rdx;          jmp   n466_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n466_coerce_numeric_α:  mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 5;                              je    .Lx516_1
                        cmp              eax, 3;                              jne   .Lx516_0
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 3;                              jne   .Lx516_0
.Lx516_1:               mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax;          jmp   n467_binop_α
.Lx516_0:               lea              rdi, [rsp + 656]
                        lea              rsi, [rsp + 640]
                        lea              rdx, [rsp + 624]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n467_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n467_binop_α:           mov              eax, dword ptr [rsp + 624]
                        cmp              eax, 3;                              jne   .Lx517_0
                        mov              rax, 2
                        mov              rcx, qword ptr [rsp + 632]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 608], 3
                        mov              qword ptr [rsp + 616], rax;          jmp   n468_lit_integer_α
.Lx517_0:               mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 624]
                        mov              rcx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            je    n474_lit_integer_α
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n468_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_integer_α:     mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n469_coerce_numeric_α
.Lx518_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n469_coerce_numeric_α:  mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 5;                              je    .Lx520_1
                        cmp              eax, 3;                              jne   .Lx520_0
                        mov              eax, dword ptr [rsp + 672]
                        cmp              eax, 3;                              jne   .Lx520_0
.Lx520_1:               mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 600], rax;          jmp   n470_binop_α
.Lx520_0:               lea              rdi, [rsp + 608]
                        lea              rsi, [rsp + 672]
                        lea              rdx, [rsp + 592]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n470_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n470_binop_α:           mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 3;                              jne   .Lx521_0
                        mov              rax, qword ptr [rsp + 600]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 576], 3
                        mov              qword ptr [rsp + 584], rax;          jmp   n471_lit_integer_α
.Lx521_0:               mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n474_lit_integer_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n471_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_integer_α:     mov              qword ptr [rsp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Lx522_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n472_call_builtin_icon_α
.Lx522_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n472_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn524:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn524]
                        lea              rsi, [rsp + 528]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 104;                            je    n474_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n473_assign_α
n472_call_builtin_icon_β:
                                                                              jmp   n474_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n473_assign_α:          mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [r9 + 48], rax             # up
                        mov              qword ptr [r9 + 56], rdx;            jmp   n474_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_integer_α:     mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Lx526_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n475_var_α
.Lx526_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n475_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 464], rax           # result
                        mov              qword ptr [rsp + 472], rdx;          jmp   n476_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n476_coerce_numeric_α:  mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 5;                              je    .Lx529_1
                        cmp              eax, 3;                              jne   .Lx529_0
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 3;                              jne   .Lx529_0
.Lx529_1:               mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax;          jmp   n477_binop_α
.Lx529_0:               lea              rdi, [rsp + 464]
                        lea              rsi, [rsp + 448]
                        lea              rdx, [rsp + 432]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n477_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n477_binop_α:           mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 3;                              jne   .Lx530_0
                        mov              rax, 2
                        mov              rcx, qword ptr [rsp + 440]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 416], 3
                        mov              qword ptr [rsp + 424], rax;          jmp   n478_lit_integer_α
.Lx530_0:               mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            je    n484_lit_integer_α
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n478_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_integer_α:     mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n479_coerce_numeric_α
.Lx531_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n479_coerce_numeric_α:  mov              eax, dword ptr [rsp + 416]
                        cmp              eax, 5;                              je    .Lx533_1
                        cmp              eax, 3;                              jne   .Lx533_0
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 3;                              jne   .Lx533_0
.Lx533_1:               mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 408], rax;          jmp   n480_binop_α
.Lx533_0:               lea              rdi, [rsp + 416]
                        lea              rsi, [rsp + 480]
                        lea              rdx, [rsp + 400]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n480_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n480_binop_α:           mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 3;                              jne   .Lx534_0
                        mov              rax, qword ptr [rsp + 408]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 384], 3
                        mov              qword ptr [rsp + 392], rax;          jmp   n481_lit_integer_α
.Lx534_0:               mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n484_lit_integer_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n481_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_integer_α:     mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n482_call_builtin_icon_α
.Lx535_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n482_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn537:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn537]
                        lea              rsi, [rsp + 336]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104;                            je    n484_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n483_assign_α
n482_call_builtin_icon_β:
                                                                              jmp   n484_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n483_assign_α:          mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [r9 + 64], rax             # down
                        mov              qword ptr [r9 + 72], rdx;            jmp   n484_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n484_lit_integer_α:     mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n485_assign_α
.Lx539_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n485_assign_α:          mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [r9 + 80], rax             # qcount
                        mov              qword ptr [r9 + 88], rdx;            jmp   n486_var_α
#-----------------------------------------------------------------------------------------------------------------------
n486_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 256], rax           # result
                        mov              qword ptr [rsp + 264], rdx;          jmp   n487_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n487_lit_string_α:      mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 8
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n488_call_builtin_icon_α
.Lx542_0:               .quad            .Lx542_0_s
.Lx542_0_s:             .string          "-Queens:"
#-----------------------------------------------------------------------------------------------------------------------
n488_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn544:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn544]
                        lea              rsi, [rsp + 208]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 104;                            je    n489_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n489_lit_integer_α
n488_call_builtin_icon_β:
                                                                              jmp   n489_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_integer_α:     mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n490_call_proc_staged_α
.Lx545_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n490_call_proc_staged_α:
                        lea              rsi, [rsp + 176]
                        call             proc_try_col_dcα;                    jmp   .Lx547_2
.Lx547_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx547_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
.Lx547_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104;                            je    n491_var_α
                                                                              jmp   n491_var_α
n490_call_proc_staged_β:
                                                                              jmp   n491_var_α
.Lx547_0:               .quad            .Lx547_0_s
.Lx547_0_s:             .string          "try_col"
#-----------------------------------------------------------------------------------------------------------------------
n491_var_α:             mov              rax, qword ptr [r9 + 80]             # qcount
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n492_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:      mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 17
                        mov              rax, qword ptr [rip + .Lx549_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n493_call_builtin_icon_α
.Lx549_0:               .quad            .Lx549_0_s
.Lx549_0_s:             .string          " solutions total."
#-----------------------------------------------------------------------------------------------------------------------
n493_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn551:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn551]
                        lea              rsi, [rsp + 48]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_γ
n493_call_builtin_icon_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n494_lit_integer_α:     mov              qword ptr [rsp + 1040], 3            # result
                        mov              rax, qword ptr [rip + .Lx552_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n454_disjunction_as
n494_lit_integer_β:                                                           jmp   n454_disjunction_af
.Lx552_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n495_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n496_lit_integer_α
n495_var_ref_β:                                                               jmp   n454_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n496_lit_integer_α:     mov              qword ptr [rsp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n497_subscript_α
.Lx555_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n497_subscript_α:       mov              rdi, qword ptr [rsp + 976]
                        mov              rsi, qword ptr [rsp + 984]
                        mov              rdx, qword ptr [rsp + 992]
                        mov              rcx, qword ptr [rsp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n454_disjunction_af
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n498_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n498_deref_α:           mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n454_disjunction_af
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n499_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n499_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 952], rax
                        .section         .rodata
.Lrkfn559:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn559]
                        lea              rsi, [rsp + 944]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              eax, 104;                            je    n454_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n454_disjunction_as
n499_call_builtin_icon_β:
                                                                              jmp   n454_disjunction_af
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
                        .section         .note.GNU-stack,"",@progbits
