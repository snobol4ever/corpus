                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__range:
range_α_body:
                        lea              rax, [rip + n6_suspend_β]
                        mov              qword ptr [rsp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              r11, 1
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 104], rax;          jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:               mov              r11, 2
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 120], rax;          jmp   n2_to_α
#-----------------------------------------------------------------------------------------------------------------------
n2_to_α:                mov              r11, 3
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
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 112], 3
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 80], rax
.Lx13_0:                mov              rax, qword ptr [rsp + 80]
                        mov              rcx, qword ptr [rsp + 120]
                        cmp              rax, rcx;                            jg    range_ω
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax;           jmp   n3_assign_α
n2_to_β:                mov              r11, 3
                        inc              qword ptr [rsp + 80];                jmp   .Lx13_0
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              r11, 4
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n4_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n4_bound_α:             mov              r11, 5
                        mov              qword ptr [rsp + 128], rsp;          jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              r11, 6
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax;          jmp   n6_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n6_suspend_α:           mov              r11, 7
                        lea              rax, [rip + n6_suspend_β]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 8], rax;            jmp   range_γ
n6_suspend_β:           mov              r11, 7;                              jmp   n7_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n7_unmark_α:            mov              r11, 8
                        mov              rsp, qword ptr [rsp + 128];          jmp   n2_to_β
#-----------------------------------------------------------------------------------------------------------------------
range_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
range_β:
                                                                              jmp   n6_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
range_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
range_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__divisors:
divisors_α_body:
                        lea              rax, [rip + n37_suspend_β]
                        mov              qword ptr [rsp + 320], rax
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:      mov              r11, 9
                        mov              qword ptr [rsp + 80], 3              # result
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n24_var_α
.Lx39_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              r11, 10
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 104], rax;          jmp   n25_to_α
#-----------------------------------------------------------------------------------------------------------------------
n25_to_α:               mov              r11, 11
                        mov              rdi, qword ptr [rsp + 80]
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
.Lx43_0:                mov              rax, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 104]
                        cmp              rax, rcx;                            jg    divisors_ω
                        mov              qword ptr [rsp + 48], 3
                        mov              qword ptr [rsp + 56], rax;           jmp   n26_assign_α
n25_to_β:               mov              r11, 11
                        inc              qword ptr [rsp + 64];                jmp   .Lx43_0
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:           mov              r11, 12
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n27_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n27_bound_α:            mov              r11, 13
                        mov              qword ptr [rsp + 112], rsp;          jmp   n28_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n28_disjunction_α:      mov              r11, 14
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              dword ptr [rsp + 176], 0;            jmp   n29_var_α
n28_disjunction_as:     mov              r11, 14
                        mov              eax, dword ptr [rsp + 176]
                        cmp              eax, 0;                              jne   .Lx48_0
                                                                              jmp   n38_unmark_α
.Lx48_0:                                                                      jmp   n38_unmark_α
n28_disjunction_β:      mov              r11, 14
                        mov              eax, dword ptr [rsp + 176];          jmp   n38_unmark_α
n28_disjunction_af:     mov              r11, 14
                        add              dword ptr [rsp + 176], 1
                        mov              eax, dword ptr [rsp + 176];          jmp   n38_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              mov              r11, 15
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax;          jmp   n30_var_α
n29_var_β:              mov              r11, 15;                             jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              mov              r11, 16
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax;          jmp   n31_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n31_coerce_numeric_α:   mov              r11, 17
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lx54_1
                        cmp              al, 3;                               jne   .Lx54_0
                        mov              eax, dword ptr [rsp + 336]
                        cmp              al, 3;                               jne   .Lx54_0
.Lx54_1:                mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 264], rax;          jmp   n32_coerce_numeric_α
.Lx54_0:                lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 336]
                        lea              rdx, [rsp + 256]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n32_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n32_coerce_numeric_α:   mov              r11, 18
                        mov              eax, dword ptr [rsp + 336]
                        cmp              al, 5;                               je    .Lx56_1
                        cmp              al, 3;                               jne   .Lx56_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx56_0
.Lx56_1:                mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 248], rax;          jmp   n33_binop_α
.Lx56_0:                lea              rdi, [rsp + 336]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 240]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n33_binop_α:            mov              r11, 19
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mod@PLT
                        cmp              al, 104;                             je    n28_disjunction_af
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n34_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      mov              r11, 20
                        mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n35_binop_test_α
.Lx58_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n35_binop_test_α:       mov              r11, 21
                        mov              eax, dword ptr [rsp + 224]
                        cmp              al, 112;                             je    .Lx59_0
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 112;                             je    .Lx59_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              al, 3;                               jne   .Lx59_2
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 3;                               jne   .Lx59_2
.Lx59_1:                mov              rax, qword ptr [rsp + 232]
                        mov              rcx, qword ptr [rsp + 312]
                        cmp              rax, rcx;                            jne   n28_disjunction_af
                        mov              rcx, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 208], rcx
                        mov              rcx, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 216], rcx;          jmp   n36_var_α
.Lx59_0:                mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        mov              r8d, 9
                        lea              r9, [rsp + 208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx59_1
                        cmp              eax, 1;                              je    n28_disjunction_af
                                                                              jmp   n36_var_α
.Lx59_2:                mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n28_disjunction_af
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 216], rax;          jmp   n36_var_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              mov              r11, 22
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 200], rax;          jmp   n37_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n37_suspend_α:          mov              r11, 23
                        lea              rax, [rip + n37_suspend_β]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 8], rax;            jmp   divisors_γ
n37_suspend_β:          mov              r11, 23;                             jmp   n28_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n38_unmark_α:           mov              r11, 24
                        mov              rsp, qword ptr [rsp + 112];          jmp   n25_to_β
#-----------------------------------------------------------------------------------------------------------------------
divisors_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
divisors_β:
                                                                              jmp   n37_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
divisors_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
divisors_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__fibs:
fibs_α_body:
                        lea              rax, [rip + n74_suspend_β]
                        mov              qword ptr [rsp + 288], rax
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:      mov              r11, 25
                        mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n67_assign_α
.Lx86_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              r11, 26
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n68_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:      mov              r11, 27
                        mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n69_assign_α
.Lx88_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:           mov              r11, 28
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n70_var_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              mov              r11, 29
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 56], rax;           jmp   n71_var_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              mov              r11, 30
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax;           jmp   n72_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_test_α:       mov              r11, 31
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 112;                             je    .Lx94_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 112;                             je    .Lx94_0
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 3;                               jne   .Lx94_2
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx94_2
.Lx94_1:                mov              rax, qword ptr [rsp + 312]
                        mov              rcx, qword ptr [rsp + 24]
                        cmp              rax, rcx;                            jg    fibs_ω
                        mov              rcx, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 32], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 40], rcx;           jmp   n73_var_α
.Lx94_0:                mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 6
                        lea              r9, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx94_1
                        cmp              eax, 1;                              je    fibs_ω
                                                                              jmp   n73_var_α
.Lx94_2:                mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    fibs_ω
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 40], rax;           jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              mov              r11, 32
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 248], rax;          jmp   n74_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n74_suspend_α:          mov              r11, 33
                        lea              rax, [rip + n74_suspend_β]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 8], rax;            jmp   fibs_γ
n74_suspend_β:          mov              r11, 33;                             jmp   n75_var_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 216], rax;          jmp   n76_var_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              mov              r11, 35
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 232], rax;          jmp   n77_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n77_coerce_numeric_α:   mov              r11, 36
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 5;                               je    .Lx104_1
                        cmp              al, 3;                               jne   .Lx104_0
                        mov              eax, dword ptr [rsp + 320]
                        cmp              al, 3;                               jne   .Lx104_0
.Lx104_1:               mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 200], rax;          jmp   n78_coerce_numeric_α
.Lx104_0:               lea              rdi, [rsp + 304]
                        lea              rsi, [rsp + 320]
                        lea              rdx, [rsp + 192]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n78_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n78_coerce_numeric_α:   mov              r11, 37
                        mov              eax, dword ptr [rsp + 320]
                        cmp              al, 5;                               je    .Lx106_1
                        cmp              al, 3;                               jne   .Lx106_0
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 3;                               jne   .Lx106_0
.Lx106_1:               mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 184], rax;          jmp   n79_binop_α
.Lx106_0:               lea              rdi, [rsp + 320]
                        lea              rsi, [rsp + 304]
                        lea              rdx, [rsp + 176]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n79_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n79_binop_α:            mov              r11, 38
                        mov              eax, dword ptr [rsp + 192]
                        mov              ecx, dword ptr [rsp + 176]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx107_2
                        mov              rax, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 184]
                        add              rax, rdx
                        mov              qword ptr [rsp + 160], 3
                        mov              qword ptr [rsp + 168], rax;          jmp   .Lx107_7
.Lx107_2:               and              edx, 1;                              jz    .Lx107_0
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdi, qword ptr [rsp + 184]
                        cmp              al, 5;                               je    .Lx107_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx107_4
.Lx107_3:               movq             xmm0, rsi
.Lx107_4:               cmp              cl, 5;                               je    .Lx107_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx107_6
.Lx107_5:               movq             xmm1, rdi
.Lx107_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 160], 5
                        mov              qword ptr [rsp + 168], rax
.Lx107_7:                                                                     jmp   n80_assign_α
.Lx107_0:               mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 176]
                        mov              rcx, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n81_var_α
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n80_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:           mov              r11, 39
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n81_var_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              mov              r11, 40
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 152], rax;          jmp   n82_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:           mov              r11, 41
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n83_var_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              mov              r11, 42
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 120], rax;          jmp   n84_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:           mov              r11, 43
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx;          jmp   n85_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n85_conjunction_α:      mov              r11, 44
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 88], rax;           jmp   n70_var_α
n85_conjunction_β:      mov              r11, 44;                             jmp   n70_var_α
#-----------------------------------------------------------------------------------------------------------------------
fibs_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
fibs_β:
                                                                              jmp   n74_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
fibs_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
fibs_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__perfect:
perfect_α_body:
                        lea              rax, [rip + n142_suspend_β]
                        mov              qword ptr [rsp + 560], rax
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_integer_α:     mov              r11, 45
                        mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n117_var_α
.Lx144_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:             mov              r11, 46
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 152], rax;          jmp   n118_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n118_proc_gen_α:        mov              r11, 47
                        mov              qword ptr [rsp + 96], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx148_20
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx148_21
.Lx148_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx148_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx148_22
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx148_23
.Lx148_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx148_23:              lea              rax, [rip + .Lx148_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx148_1
                        lea              rcx, [rip + .Lx148_3]
                        lea              rdx, [rip + .Lx148_4];               jmp   rax
.Lx148_3:               mov              qword ptr [rsp + 104], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 96]
                        test             rax, rax;                            jne   .Lx148_5
                        mov              qword ptr [rsp + 96], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx148_2
.Lx148_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx148_2
.Lx148_4:               mov              rax, qword ptr [rsp + 96]
                        test             rax, rax;                            jne   .Lx148_6
                        mov              qword ptr [rsp + 96], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx148_2
.Lx148_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx148_2
.Lx148_1:               call             rt_faildescr@PLT
.Lx148_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx148_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
.Lx148_29:              mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    perfect_ω
                                                                              jmp   n119_assign_α
n118_proc_gen_β:        mov              r11, 47
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 104];          jmp   qword ptr [rsp]
.Lx148_7:               add              rsp, 8
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    perfect_ω
                                                                              jmp   n119_assign_α
.Lx148_0:               .quad            .Lx148_0_s
.Lx148_0_s:             .string          "range"
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:          mov              r11, 48
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n120_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n120_bound_α:           mov              r11, 49
                        mov              qword ptr [rsp + 160], rsp;          jmp   n121_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:     mov              r11, 50
                        mov              qword ptr [rsp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n122_assign_α
.Lx152_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n122_assign_α:          mov              r11, 51
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n123_var_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             mov              r11, 52
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 456], rax;          jmp   n124_var_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             mov              r11, 53
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax;          jmp   n125_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n125_proc_gen_α:        mov              r11, 54
                        mov              qword ptr [rsp + 496], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx159_20
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx159_21
.Lx159_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx159_21:              lea              rax, [rip + .Lx159_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx159_1
                        lea              rcx, [rip + .Lx159_3]
                        lea              rdx, [rip + .Lx159_4];               jmp   rax
.Lx159_3:               mov              qword ptr [rsp + 504], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 496]
                        test             rax, rax;                            jne   .Lx159_5
                        mov              qword ptr [rsp + 496], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx159_2
.Lx159_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx159_2
.Lx159_4:               mov              rax, qword ptr [rsp + 496]
                        test             rax, rax;                            jne   .Lx159_6
                        mov              qword ptr [rsp + 496], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx159_2
.Lx159_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx159_2
.Lx159_1:               call             rt_faildescr@PLT
.Lx159_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx159_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
.Lx159_29:              mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n130_var_α
                                                                              jmp   n126_coerce_numeric_α
n125_proc_gen_β:        mov              r11, 54
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 504];          jmp   qword ptr [rsp]
.Lx159_7:               add              rsp, 8
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n130_var_α
                                                                              jmp   n126_coerce_numeric_α
.Lx159_0:               .quad            .Lx159_0_s
.Lx159_0_s:             .string          "divisors"
#-----------------------------------------------------------------------------------------------------------------------
n126_coerce_numeric_α:  mov              r11, 55
                        mov              eax, dword ptr [rsp + 592]
                        cmp              al, 5;                               je    .Lx161_1
                        cmp              al, 3;                               jne   .Lx161_0
                        mov              eax, dword ptr [rsp + 464]
                        cmp              al, 3;                               jne   .Lx161_0
.Lx161_1:               mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 440], rax;          jmp   n127_coerce_numeric_α
.Lx161_0:               lea              rdi, [rsp + 592]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n127_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n127_coerce_numeric_α:  mov              r11, 56
                        mov              eax, dword ptr [rsp + 464]
                        cmp              al, 5;                               je    .Lx163_1
                        cmp              al, 3;                               jne   .Lx163_0
                        mov              eax, dword ptr [rsp + 592]
                        cmp              al, 3;                               jne   .Lx163_0
.Lx163_1:               mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 424], rax;          jmp   n128_binop_α
.Lx163_0:               lea              rdi, [rsp + 464]
                        lea              rsi, [rsp + 592]
                        lea              rdx, [rsp + 416]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n128_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n128_binop_α:           mov              r11, 57
                        mov              eax, dword ptr [rsp + 432]
                        mov              ecx, dword ptr [rsp + 416]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx164_2
                        mov              rax, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 424]
                        add              rax, rdx
                        mov              qword ptr [rsp + 400], 3
                        mov              qword ptr [rsp + 408], rax;          jmp   .Lx164_7
.Lx164_2:               and              edx, 1;                              jz    .Lx164_0
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdi, qword ptr [rsp + 424]
                        cmp              al, 5;                               je    .Lx164_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx164_4
.Lx164_3:               movq             xmm0, rsi
.Lx164_4:               cmp              cl, 5;                               je    .Lx164_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx164_6
.Lx164_5:               movq             xmm1, rdi
.Lx164_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 400], 5
                        mov              qword ptr [rsp + 408], rax
.Lx164_7:                                                                     jmp   n129_assign_α
.Lx164_0:               mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 416]
                        mov              rcx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n130_var_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n129_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n129_assign_α:          mov              r11, 58
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n125_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:             mov              r11, 59
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 376], rax;          jmp   n131_var_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:             mov              r11, 60
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 392], rax;          jmp   n132_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n132_coerce_numeric_α:  mov              r11, 61
                        mov              eax, dword ptr [rsp + 592]
                        cmp              al, 5;                               je    .Lx171_1
                        cmp              al, 3;                               jne   .Lx171_0
                        mov              eax, dword ptr [rsp + 576]
                        cmp              al, 3;                               jne   .Lx171_0
.Lx171_1:               mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 360], rax;          jmp   n133_coerce_numeric_α
.Lx171_0:               lea              rdi, [rsp + 592]
                        lea              rsi, [rsp + 576]
                        lea              rdx, [rsp + 352]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n133_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n133_coerce_numeric_α:  mov              r11, 62
                        mov              eax, dword ptr [rsp + 576]
                        cmp              al, 5;                               je    .Lx173_1
                        cmp              al, 3;                               jne   .Lx173_0
                        mov              eax, dword ptr [rsp + 592]
                        cmp              al, 3;                               jne   .Lx173_0
.Lx173_1:               mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 344], rax;          jmp   n134_binop_α
.Lx173_0:               lea              rdi, [rsp + 576]
                        lea              rsi, [rsp + 592]
                        lea              rdx, [rsp + 336]
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
n134_binop_α:           mov              r11, 63
                        mov              eax, dword ptr [rsp + 352]
                        mov              ecx, dword ptr [rsp + 336]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx174_2
                        mov              rax, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 344]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 320], 3
                        mov              qword ptr [rsp + 328], rax;          jmp   .Lx174_7
.Lx174_2:               and              edx, 1;                              jz    .Lx174_0
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdi, qword ptr [rsp + 344]
                        cmp              al, 5;                               je    .Lx174_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx174_4
.Lx174_3:               movq             xmm0, rsi
.Lx174_4:               cmp              cl, 5;                               je    .Lx174_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx174_6
.Lx174_5:               movq             xmm1, rdi
.Lx174_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 320], 5
                        mov              qword ptr [rsp + 328], rax
.Lx174_7:                                                                     jmp   n135_assign_α
.Lx174_0:               mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 336]
                        mov              rcx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             je    n136_disjunction_α
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n135_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:          mov              r11, 64
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n136_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n136_disjunction_α:     mov              r11, 65
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              dword ptr [rsp + 240], 0;            jmp   n138_var_α
n136_disjunction_as:    mov              r11, 65
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 0;                              jne   .Lx177_0
                                                                              jmp   n137_conjunction_α
.Lx177_0:                                                                     jmp   n137_conjunction_α
n136_disjunction_β:     mov              r11, 65
                        mov              eax, dword ptr [rsp + 240];          jmp   n143_unmark_α
n136_disjunction_af:    mov              r11, 65
                        add              dword ptr [rsp + 240], 1
                        mov              eax, dword ptr [rsp + 240];          jmp   n143_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n137_conjunction_α:     mov              r11, 66
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax;          jmp   n143_unmark_α
n137_conjunction_β:     mov              r11, 66;                             jmp   n143_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             mov              r11, 67
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 296], rax;          jmp   n139_var_α
n138_var_β:             mov              r11, 67;                             jmp   n136_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:             mov              r11, 68
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 312], rax;          jmp   n140_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n140_binop_test_α:      mov              r11, 69
                        mov              eax, dword ptr [rsp + 592]
                        cmp              al, 112;                             je    .Lx183_0
                        mov              eax, dword ptr [rsp + 576]
                        cmp              al, 112;                             je    .Lx183_0
                        mov              eax, dword ptr [rsp + 592]
                        cmp              al, 3;                               jne   .Lx183_2
                        mov              eax, dword ptr [rsp + 576]
                        cmp              al, 3;                               jne   .Lx183_2
.Lx183_1:               mov              rax, qword ptr [rsp + 600]
                        mov              rcx, qword ptr [rsp + 584]
                        cmp              rax, rcx;                            jne   n136_disjunction_af
                        mov              rcx, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 272], rcx
                        mov              rcx, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 280], rcx;          jmp   n141_var_α
.Lx183_0:               mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        mov              rdx, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 584]
                        mov              r8d, 9
                        lea              r9, [rsp + 272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx183_1
                        cmp              eax, 1;                              je    n136_disjunction_af
                                                                              jmp   n141_var_α
.Lx183_2:               mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        mov              rdx, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 584]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n136_disjunction_af
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 280], rax;          jmp   n141_var_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             mov              r11, 70
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 264], rax;          jmp   n142_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n142_suspend_α:         mov              r11, 71
                        lea              rax, [rip + n142_suspend_β]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 8], rax;            jmp   perfect_γ
n142_suspend_β:         mov              r11, 71;                             jmp   n136_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n143_unmark_α:          mov              r11, 72
                        mov              rsp, qword ptr [rsp + 160];          jmp   n118_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
perfect_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
perfect_β:
                                                                              jmp   n142_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
perfect_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
perfect_ω:
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
                        sub              rsp, 1472
                        mov              qword ptr [rsp + 1448], rcx
                        mov              qword ptr [rsp + 1456], rdx
                        mov              rdi, rsp
                        add              rdi, 1376
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:      mov              r11, 73
                        mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 12
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n191_call_builtin_icon_α
.Lx252_0:               .quad            .Lx252_0_s
.Lx252_0_s:             .string          "Fibs to 100:"
#-----------------------------------------------------------------------------------------------------------------------
n191_call_builtin_icon_α:
                        mov              r11, 74
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1336], rax
                        .section         .rodata
.Lrkfn254:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn254]
                        lea              rsi, [rsp + 1328]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n192_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n192_lit_string_α
n191_call_builtin_icon_β:
                        mov              r11, 74;                             jmp   n192_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:      mov              r11, 75
                        mov              qword ptr [rsp + 1296], 2            # result
                        mov              dword ptr [rsp + 1300], 0
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n193_assign_α
.Lx255_0:               .quad            .Lx255_0_s
.Lx255_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n193_assign_α:          mov              r11, 76
                        mov              rax, qword ptr [rsp + 1296]
                        mov              rdx, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n194_var_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             mov              r11, 77
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:      mov              r11, 78
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 1
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n196_lit_integer_α
.Lx259_0:               .quad            .Lx259_0_s
.Lx259_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_integer_α:     mov              r11, 79
                        mov              qword ptr [rsp + 1280], 3            # result
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n197_proc_gen_α
.Lx260_0:               .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n197_proc_gen_α:        mov              r11, 80
                        mov              qword ptr [rsp + 1248], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx262_20
                        mov              rax, qword ptr [rsp + 1280]
                        mov              rdx, qword ptr [rsp + 1288]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx262_21
.Lx262_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1280]
                        mov              rdx, qword ptr [rsp + 1288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx262_21:              lea              rax, [rip + .Lx262_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx262_1
                        lea              rcx, [rip + .Lx262_3]
                        lea              rdx, [rip + .Lx262_4];               jmp   rax
.Lx262_3:               mov              qword ptr [rsp + 1256], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1248]
                        test             rax, rax;                            jne   .Lx262_5
                        mov              qword ptr [rsp + 1248], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx262_2
.Lx262_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx262_2
.Lx262_4:               mov              rax, qword ptr [rsp + 1248]
                        test             rax, rax;                            jne   .Lx262_6
                        mov              qword ptr [rsp + 1248], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx262_2
.Lx262_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx262_2
.Lx262_1:               call             rt_faildescr@PLT
.Lx262_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx262_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
.Lx262_29:              mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n201_lit_string_α
                                                                              jmp   n198_binop_α
n197_proc_gen_β:        mov              r11, 80
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 1256];         jmp   qword ptr [rsp]
.Lx262_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n201_lit_string_α
                                                                              jmp   n198_binop_α
.Lx262_0:               .quad            .Lx262_0_s
.Lx262_0_s:             .string          "fibs"
#-----------------------------------------------------------------------------------------------------------------------
n198_binop_α:           mov              r11, 81
                        mov              rdi, qword ptr [rsp + 1200]
                        mov              rsi, qword ptr [rsp + 1208]
                        mov              rdx, qword ptr [rsp + 1216]
                        mov              rcx, qword ptr [rsp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n199_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n199_binop_α:           mov              r11, 82
                        mov              rdi, qword ptr [rsp + 1376]
                        mov              rsi, qword ptr [rsp + 1384]
                        mov              rdx, qword ptr [rsp + 1184]
                        mov              rcx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n200_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n200_assign_α:          mov              r11, 83
                        mov              rax, qword ptr [rsp + 1152]
                        mov              rdx, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n197_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:      mov              r11, 84
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 1
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n202_var_α
.Lx266_0:               .quad            .Lx266_0_s
.Lx266_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:             mov              r11, 85
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n203_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:     mov              r11, 86
                        mov              qword ptr [rsp + 1120], 3            # result
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n204_lit_integer_α
.Lx269_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_integer_α:     mov              r11, 87
                        mov              qword ptr [rsp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n205_subscript_α
.Lx270_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n205_subscript_α:       mov              r11, 88
                        mov              rdi, qword ptr [rsp + 1104]
                        mov              rsi, qword ptr [rsp + 1112]
                        mov              rdx, qword ptr [rsp + 1120]
                        mov              rcx, qword ptr [rsp + 1128]
                        mov              r8, qword ptr [rsp + 1136]
                        mov              r9, qword ptr [rsp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n208_lit_string_α
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n206_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n206_binop_α:           mov              r11, 89
                        mov              rdi, qword ptr [rsp + 1072]
                        mov              rsi, qword ptr [rsp + 1080]
                        mov              rdx, qword ptr [rsp + 1088]
                        mov              rcx, qword ptr [rsp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n207_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n207_call_builtin_icon_α:
                        mov              r11, 90
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1032], rax
                        .section         .rodata
.Lrkfn274:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn274]
                        lea              rsi, [rsp + 1024]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              al, 104;                             je    n208_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n208_lit_string_α
n207_call_builtin_icon_β:
                        mov              r11, 90;                             jmp   n208_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_string_α:      mov              r11, 91
                        mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 25
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n209_call_builtin_icon_α
.Lx275_0:               .quad            .Lx275_0_s
.Lx275_0_s:             .string          "Perfect numbers to 10000:"
#-----------------------------------------------------------------------------------------------------------------------
n209_call_builtin_icon_α:
                        mov              r11, 92
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                        .section         .rodata
.Lrkfn277:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn277]
                        lea              rsi, [rsp + 960]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              al, 104;                             je    n210_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n210_lit_string_α
n209_call_builtin_icon_β:
                        mov              r11, 92;                             jmp   n210_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:      mov              r11, 93
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 2
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n211_lit_integer_α
.Lx278_0:               .quad            .Lx278_0_s
.Lx278_0_s:             .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_integer_α:     mov              r11, 94
                        mov              qword ptr [rsp + 928], 3             # result
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n212_proc_gen_α
.Lx279_0:               .quad            10000
#-----------------------------------------------------------------------------------------------------------------------
n212_proc_gen_α:        mov              r11, 95
                        mov              qword ptr [rsp + 896], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx281_20
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx281_21
.Lx281_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx281_21:              lea              rax, [rip + .Lx281_7]
                        push             rax
                        mov              edi, 3
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx281_1
                        lea              rcx, [rip + .Lx281_3]
                        lea              rdx, [rip + .Lx281_4];               jmp   rax
.Lx281_3:               mov              qword ptr [rsp + 904], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 896]
                        test             rax, rax;                            jne   .Lx281_5
                        mov              qword ptr [rsp + 896], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx281_2
.Lx281_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx281_2
.Lx281_4:               mov              rax, qword ptr [rsp + 896]
                        test             rax, rax;                            jne   .Lx281_6
                        mov              qword ptr [rsp + 896], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx281_2
.Lx281_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx281_2
.Lx281_1:               call             rt_faildescr@PLT
.Lx281_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx281_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
.Lx281_29:              mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n215_lit_string_α
                                                                              jmp   n213_binop_α
n212_proc_gen_β:        mov              r11, 95
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 904];          jmp   qword ptr [rsp]
.Lx281_7:               add              rsp, 8
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n215_lit_string_α
                                                                              jmp   n213_binop_α
.Lx281_0:               .quad            .Lx281_0_s
.Lx281_0_s:             .string          "perfect"
#-----------------------------------------------------------------------------------------------------------------------
n213_binop_α:           mov              r11, 96
                        mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n214_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n214_call_builtin_icon_α:
                        mov              r11, 97
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax
                        .section         .rodata
.Lrkfn284:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn284]
                        lea              rsi, [rsp + 800]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n212_proc_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n212_proc_gen_β
n214_call_builtin_icon_β:
                        mov              r11, 97;                             jmp   n212_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:      mov              r11, 98
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 44
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n216_call_builtin_icon_α
.Lx285_0:               .quad            .Lx285_0_s
.Lx285_0_s:             .string          "Primes to 50 (trial division by generators):"
#-----------------------------------------------------------------------------------------------------------------------
n216_call_builtin_icon_α:
                        mov              r11, 99
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn287:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn287]
                        lea              rsi, [rsp + 736]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n217_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n217_lit_string_α
n216_call_builtin_icon_β:
                        mov              r11, 99;                             jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:      mov              r11, 100
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 0
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n218_assign_α
.Lx288_0:               .quad            .Lx288_0_s
.Lx288_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n218_assign_α:          mov              r11, 101
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n219_var_α
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             mov              r11, 102
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 184], rax;          jmp   n220_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:      mov              r11, 103
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 1
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n221_lit_integer_α
.Lx292_0:               .quad            .Lx292_0_s
.Lx292_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_integer_α:     mov              r11, 104
                        mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n222_lit_integer_α
.Lx293_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_integer_α:     mov              r11, 105
                        mov              qword ptr [rsp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n223_proc_gen_α
.Lx294_0:               .quad            50
#-----------------------------------------------------------------------------------------------------------------------
n223_proc_gen_α:        mov              r11, 106
                        mov              qword ptr [rsp + 640], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx296_20
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx296_21
.Lx296_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx296_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx296_22
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx296_23
.Lx296_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx296_23:              lea              rax, [rip + .Lx296_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx296_1
                        lea              rcx, [rip + .Lx296_3]
                        lea              rdx, [rip + .Lx296_4];               jmp   rax
.Lx296_3:               mov              qword ptr [rsp + 648], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 640]
                        test             rax, rax;                            jne   .Lx296_5
                        mov              qword ptr [rsp + 640], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx296_2
.Lx296_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx296_2
.Lx296_4:               mov              rax, qword ptr [rsp + 640]
                        test             rax, rax;                            jne   .Lx296_6
                        mov              qword ptr [rsp + 640], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx296_2
.Lx296_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx296_2
.Lx296_1:               call             rt_faildescr@PLT
.Lx296_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx296_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
.Lx296_29:              mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n225_lit_integer_α
                                                                              jmp   n224_assign_α
n223_proc_gen_β:        mov              r11, 106
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 648];          jmp   qword ptr [rsp]
.Lx296_7:               add              rsp, 8
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n225_lit_integer_α
                                                                              jmp   n224_assign_α
.Lx296_0:               .quad            .Lx296_0_s
.Lx296_0_s:             .string          "range"
#-----------------------------------------------------------------------------------------------------------------------
n224_assign_α:          mov              r11, 107
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n225_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_integer_α:     mov              r11, 108
                        mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n226_var_α
.Lx298_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             mov              r11, 109
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 376], rax;          jmp   n227_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_integer_α:     mov              r11, 110
                        mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n228_var_α
.Lx301_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n228_var_α:             mov              r11, 111
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 568], rax;          jmp   n229_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_real_α:        mov              r11, 112
                        mov              qword ptr [rsp + 576], 5             # result
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n230_coerce_numeric_α
.Lx304_0:               .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n230_coerce_numeric_α:  mov              r11, 113
                        mov              eax, dword ptr [rsp + 1392]
                        cmp              al, 5;                               je    .Lx306_1
                        cmp              al, 3;                               jne   .Lx306_0
                        mov              eax, dword ptr [rsp + 576]
                        cmp              al, 3;                               jne   .Lx306_0
.Lx306_1:               mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 552], rax;          jmp   n231_binop_α
.Lx306_0:               lea              rdi, [rsp + 1392]
                        lea              rsi, [rsp + 576]
                        lea              rdx, [rsp + 544]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n231_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n231_binop_α:           mov              r11, 114
                        mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
                        mov              rdx, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              al, 104;                             je    n238_var_α
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n232_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n232_call_builtin_icon_α:
                        mov              r11, 115
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn309:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn309]
                        lea              rsi, [rsp + 496]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n238_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n233_proc_gen_α
n232_call_builtin_icon_β:
                        mov              r11, 115;                            jmp   n238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n233_proc_gen_α:        mov              r11, 116
                        mov              qword ptr [rsp + 432], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx311_20
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx311_21
.Lx311_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx311_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx311_22
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx311_23
.Lx311_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx311_23:              lea              rax, [rip + .Lx311_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx311_1
                        lea              rcx, [rip + .Lx311_3]
                        lea              rdx, [rip + .Lx311_4];               jmp   rax
.Lx311_3:               mov              qword ptr [rsp + 440], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 432]
                        test             rax, rax;                            jne   .Lx311_5
                        mov              qword ptr [rsp + 432], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx311_2
.Lx311_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx311_2
.Lx311_4:               mov              rax, qword ptr [rsp + 432]
                        test             rax, rax;                            jne   .Lx311_6
                        mov              qword ptr [rsp + 432], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx311_2
.Lx311_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx311_2
.Lx311_1:               call             rt_faildescr@PLT
.Lx311_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx311_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
.Lx311_29:              mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n238_var_α
                                                                              jmp   n234_coerce_numeric_α
n233_proc_gen_β:        mov              r11, 116
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 440];          jmp   qword ptr [rsp]
.Lx311_7:               add              rsp, 8
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n238_var_α
                                                                              jmp   n234_coerce_numeric_α
.Lx311_0:               .quad            .Lx311_0_s
.Lx311_0_s:             .string          "range"
#-----------------------------------------------------------------------------------------------------------------------
n234_coerce_numeric_α:  mov              r11, 117
                        mov              eax, dword ptr [rsp + 1392]
                        cmp              al, 5;                               je    .Lx313_1
                        cmp              al, 3;                               jne   .Lx313_0
                        mov              eax, dword ptr [rsp + 384]
                        cmp              al, 3;                               jne   .Lx313_0
.Lx313_1:               mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 360], rax;          jmp   n235_coerce_numeric_α
.Lx313_0:               lea              rdi, [rsp + 1392]
                        lea              rsi, [rsp + 384]
                        lea              rdx, [rsp + 352]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n235_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n235_coerce_numeric_α:  mov              r11, 118
                        mov              eax, dword ptr [rsp + 384]
                        cmp              al, 5;                               je    .Lx315_1
                        cmp              al, 3;                               jne   .Lx315_0
                        mov              eax, dword ptr [rsp + 1392]
                        cmp              al, 3;                               jne   .Lx315_0
.Lx315_1:               mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax;          jmp   n236_binop_α
.Lx315_0:               lea              rdi, [rsp + 384]
                        lea              rsi, [rsp + 1392]
                        lea              rdx, [rsp + 336]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n236_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n236_binop_α:           mov              r11, 119
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 336]
                        mov              rcx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mod@PLT
                        cmp              al, 104;                             je    n238_var_α
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n237_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n237_binop_test_α:      mov              r11, 120
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 112;                             je    .Lx317_0
                        mov              eax, dword ptr [rsp + 320]
                        cmp              al, 112;                             je    .Lx317_0
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 3;                               jne   .Lx317_2
                        mov              eax, dword ptr [rsp + 320]
                        cmp              al, 3;                               jne   .Lx317_2
.Lx317_1:               mov              rax, qword ptr [rsp + 312]
                        mov              rcx, qword ptr [rsp + 328]
                        cmp              rax, rcx;                            jne   n233_proc_gen_β
                        mov              rcx, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rcx
                        mov              rcx, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rcx;          jmp   n245_lit_string_α
.Lx317_0:               mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        mov              r8d, 9
                        lea              r9, [rsp + 288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx317_1
                        cmp              eax, 1;                              je    n233_proc_gen_β
                                                                              jmp   n245_lit_string_α
.Lx317_2:               mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n233_proc_gen_β
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax;          jmp   n245_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:             mov              r11, 121
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0;            jmp   n239_var_α
n238_var_β:             mov              r11, 121;                            jmp   n245_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n239_var_α:             mov              r11, 122
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 264], rax;          jmp   n240_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n240_conjunction_α:     mov              r11, 123
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 248], rax;          jmp   n241_conjunction_α
n240_conjunction_β:     mov              r11, 123;                            jmp   n245_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n241_conjunction_α:     mov              r11, 124
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax;          jmp   n242_binop_α
n241_conjunction_β:     mov              r11, 124;                            jmp   n245_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n242_binop_α:           mov              r11, 125
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n243_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n243_binop_α:           mov              r11, 126
                        mov              rdi, qword ptr [rsp + 1376]
                        mov              rsi, qword ptr [rsp + 1384]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n244_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n244_assign_α:          mov              r11, 127
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n245_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 1
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n246_var_α
.Lx326_0:               .quad            .Lx326_0_s
.Lx326_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:             mov              r11, 129
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 104], rax;          jmp   n247_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_integer_α:     mov              r11, 130
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n248_lit_integer_α
.Lx329_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_integer_α:     mov              r11, 131
                        mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n249_subscript_α
.Lx330_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n249_subscript_α:       mov              r11, 132
                        mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        mov              r8, qword ptr [rsp + 128]
                        mov              r9, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n250_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n250_binop_α:           mov              r11, 133
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 80]
                        mov              rcx, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n251_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n251_call_builtin_icon_α:
                        mov              r11, 134
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn334:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn334]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_γ
n251_call_builtin_icon_β:
                        mov              r11, 134;                            jmp   main_ω
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
.Lstartup_pname0:       .string          "range"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__range
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            224
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "divisors"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__divisors
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            352
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "fibs"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__fibs
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            352
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "perfect"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__perfect
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            608
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
