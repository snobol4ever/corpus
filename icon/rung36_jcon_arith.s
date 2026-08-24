                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__numtest:
                        sub              rsp, 2544
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
numtest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              r11, 1
                        mov              qword ptr [rsp + 2336], 0
                        mov              qword ptr [rsp + 2344], 0
                        mov              dword ptr [rsp + 2352], 0;           jmp   n98_var_ref_α
n0_disjunction_as:      mov              r11, 1
                        mov              eax, dword ptr [rsp + 2352]
                        cmp              eax, 0;                              jne   .Lx105_0
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n1_var_α
.Lx105_0:                                                                     jmp   n1_var_α
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 2352];         jmp   n1_var_α
n0_disjunction_af:      mov              r11, 1
                        add              dword ptr [rsp + 2352], 1
                        mov              eax, dword ptr [rsp + 2352];         jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:               mov              r11, 2
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n2_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n2_coerce_numeric_α:    mov              r11, 3
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lx109_1
                        cmp              al, 3;                               jne   .Lx109_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx109_0
.Lx109_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n3_unop_α
.Lx109_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 2304]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n3_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n3_unop_α:              mov              r11, 4
                        mov              rdi, qword ptr [rsp + 2304]
                        mov              rsi, qword ptr [rsp + 2312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_pos@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n4_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n4_call_proc_staged_α:  mov              r11, 5
                        lea              rsi, [rsp + 2288]
                        call             wr5_dcα;                             jmp   .Lx112_2
.Lx112_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx112_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2240]
                        mov              rdx, qword ptr [rsp + 2248]
.Lx112_29:              mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        cmp              al, 104;                             je    n5_var_α
                                                                              jmp   n5_var_α
n4_call_proc_staged_β:  mov              r11, 5;                              jmp   n5_var_α
.Lx112_0:               .quad            .Lx112_0_s
.Lx112_0_s:             .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              r11, 6
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n6_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_proc_staged_α:  mov              r11, 7
                        lea              rsi, [rsp + 2224]
                        call             wr5_dcα;                             jmp   .Lx116_2
.Lx116_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx116_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2176]
                        mov              rdx, qword ptr [rsp + 2184]
.Lx116_29:              mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx
                        cmp              al, 104;                             je    n7_var_α
                                                                              jmp   n7_var_α
n6_call_proc_staged_β:  mov              r11, 7;                              jmp   n7_var_α
.Lx116_0:               .quad            .Lx116_0_s
.Lx116_0_s:             .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              r11, 8
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n8_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α: mov              r11, 9
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2136], rax
                        .section         .rodata
.Lrkfn120:              .string          "abs"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn120]
                        lea              rsi, [rsp + 2128]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196711
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                        cmp              al, 104;                             je    n10_var_α
                                                                              jmp   n9_call_proc_staged_α
n8_call_builtin_icon_β: mov              r11, 9;                              jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_proc_staged_α:  mov              r11, 10
                        lea              rsi, [rsp + 2112]
                        call             wr5_dcα;                             jmp   .Lx122_2
.Lx122_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx122_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2064]
                        mov              rdx, qword ptr [rsp + 2072]
.Lx122_29:              mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        cmp              al, 104;                             je    n10_var_α
                                                                              jmp   n10_var_α
n9_call_proc_staged_β:  mov              r11, 10;                             jmp   n10_var_α
.Lx122_0:               .quad            .Lx122_0_s
.Lx122_0_s:             .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              mov              r11, 11
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n11_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:   mov              r11, 12
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 5;                               je    .Lx126_1
                        cmp              al, 3;                               jne   .Lx126_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lx126_0
.Lx126_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n12_unop_α
.Lx126_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 2032]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n12_unop_α:             mov              r11, 13
                        mov              rdi, qword ptr [rsp + 2032]
                        mov              rsi, qword ptr [rsp + 2040]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx;         jmp   n13_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_proc_staged_α: mov              r11, 14
                        lea              rsi, [rsp + 2016]
                        call             wr5_dcα;                             jmp   .Lx129_2
.Lx129_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx129_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1968]
                        mov              rdx, qword ptr [rsp + 1976]
.Lx129_29:              mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        cmp              al, 104;                             je    n14_var_α
                                                                              jmp   n14_var_α
n13_call_proc_staged_β: mov              r11, 14;                             jmp   n14_var_α
.Lx129_0:               .quad            .Lx129_0_s
.Lx129_0_s:             .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:              mov              r11, 15
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              mov              r11, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n16_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n16_coerce_numeric_α:   mov              r11, 17
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lx135_1
                        cmp              al, 3;                               jne   .Lx135_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lx135_0
.Lx135_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n17_coerce_numeric_α
.Lx135_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 1920]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n17_coerce_numeric_α:   mov              r11, 18
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 5;                               je    .Lx137_1
                        cmp              al, 3;                               jne   .Lx137_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx137_0
.Lx137_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n18_binop_α
.Lx137_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 1904]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:            mov              r11, 19
                        mov              eax, dword ptr [rsp + 1920]
                        mov              ecx, dword ptr [rsp + 1904]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx138_2
                        mov              rax, qword ptr [rsp + 1928]
                        mov              rdx, qword ptr [rsp + 1912]
                        add              rax, rdx
                        mov              qword ptr [rsp + 1888], 3
                        mov              qword ptr [rsp + 1896], rax;         jmp   .Lx138_7
.Lx138_2:               and              edx, 1;                              jz    .Lx138_0
                        mov              rsi, qword ptr [rsp + 1928]
                        mov              rdi, qword ptr [rsp + 1912]
                        cmp              al, 5;                               je    .Lx138_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx138_4
.Lx138_3:               movq             xmm0, rsi
.Lx138_4:               cmp              cl, 5;                               je    .Lx138_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx138_6
.Lx138_5:               movq             xmm1, rdi
.Lx138_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1888], 5
                        mov              qword ptr [rsp + 1896], rax
.Lx138_7:                                                                     jmp   n19_call_proc_staged_α
.Lx138_0:               mov              rdi, qword ptr [rsp + 1920]
                        mov              rsi, qword ptr [rsp + 1928]
                        mov              rdx, qword ptr [rsp + 1904]
                        mov              rcx, qword ptr [rsp + 1912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n20_var_α
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx;         jmp   n19_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_proc_staged_α: mov              r11, 20
                        lea              rsi, [rsp + 1888]
                        call             wr5_dcα;                             jmp   .Lx140_2
.Lx140_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx140_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1840]
                        mov              rdx, qword ptr [rsp + 1848]
.Lx140_29:              mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              al, 104;                             je    n20_var_α
                                                                              jmp   n20_var_α
n19_call_proc_staged_β: mov              r11, 20;                             jmp   n20_var_α
.Lx140_0:               .quad            .Lx140_0_s
.Lx140_0_s:             .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              mov              r11, 21
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:              mov              r11, 22
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n22_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n22_coerce_numeric_α:   mov              r11, 23
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lx146_1
                        cmp              al, 3;                               jne   .Lx146_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lx146_0
.Lx146_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n23_coerce_numeric_α
.Lx146_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 1792]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n23_coerce_numeric_α:   mov              r11, 24
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 5;                               je    .Lx148_1
                        cmp              al, 3;                               jne   .Lx148_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx148_0
.Lx148_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n24_binop_α
.Lx148_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 1776]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n24_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:            mov              r11, 25
                        mov              eax, dword ptr [rsp + 1792]
                        mov              ecx, dword ptr [rsp + 1776]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx149_2
                        mov              rax, qword ptr [rsp + 1800]
                        mov              rdx, qword ptr [rsp + 1784]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 1760], 3
                        mov              qword ptr [rsp + 1768], rax;         jmp   .Lx149_7
.Lx149_2:               and              edx, 1;                              jz    .Lx149_0
                        mov              rsi, qword ptr [rsp + 1800]
                        mov              rdi, qword ptr [rsp + 1784]
                        cmp              al, 5;                               je    .Lx149_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx149_4
.Lx149_3:               movq             xmm0, rsi
.Lx149_4:               cmp              cl, 5;                               je    .Lx149_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx149_6
.Lx149_5:               movq             xmm1, rdi
.Lx149_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1760], 5
                        mov              qword ptr [rsp + 1768], rax
.Lx149_7:                                                                     jmp   n25_call_proc_staged_α
.Lx149_0:               mov              rdi, qword ptr [rsp + 1792]
                        mov              rsi, qword ptr [rsp + 1800]
                        mov              rdx, qword ptr [rsp + 1776]
                        mov              rcx, qword ptr [rsp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n26_var_α
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx;         jmp   n25_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_proc_staged_α: mov              r11, 26
                        lea              rsi, [rsp + 1760]
                        call             wr5_dcα;                             jmp   .Lx151_2
.Lx151_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx151_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1712]
                        mov              rdx, qword ptr [rsp + 1720]
.Lx151_29:              mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              al, 104;                             je    n26_var_α
                                                                              jmp   n26_var_α
n25_call_proc_staged_β: mov              r11, 26;                             jmp   n26_var_α
.Lx151_0:               .quad            .Lx151_0_s
.Lx151_0_s:             .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              mov              r11, 27
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n27_var_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:              mov              r11, 28
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n28_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n28_coerce_numeric_α:   mov              r11, 29
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lx157_1
                        cmp              al, 3;                               jne   .Lx157_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lx157_0
.Lx157_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n29_coerce_numeric_α
.Lx157_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 1664]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n29_coerce_numeric_α:   mov              r11, 30
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 5;                               je    .Lx159_1
                        cmp              al, 3;                               jne   .Lx159_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx159_0
.Lx159_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n30_binop_α
.Lx159_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 1648]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n30_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n30_binop_α:            mov              r11, 31
                        mov              eax, dword ptr [rsp + 1664]
                        mov              ecx, dword ptr [rsp + 1648]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx160_2
                        mov              rax, qword ptr [rsp + 1672]
                        mov              rdx, qword ptr [rsp + 1656]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 1632], 3
                        mov              qword ptr [rsp + 1640], rax;         jmp   .Lx160_7
.Lx160_2:               and              edx, 1;                              jz    .Lx160_0
                        mov              rsi, qword ptr [rsp + 1672]
                        mov              rdi, qword ptr [rsp + 1656]
                        cmp              al, 5;                               je    .Lx160_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx160_4
.Lx160_3:               movq             xmm0, rsi
.Lx160_4:               cmp              cl, 5;                               je    .Lx160_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx160_6
.Lx160_5:               movq             xmm1, rdi
.Lx160_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1632], 5
                        mov              qword ptr [rsp + 1640], rax
.Lx160_7:                                                                     jmp   n31_call_proc_staged_α
.Lx160_0:               mov              rdi, qword ptr [rsp + 1664]
                        mov              rsi, qword ptr [rsp + 1672]
                        mov              rdx, qword ptr [rsp + 1648]
                        mov              rcx, qword ptr [rsp + 1656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n32_disjunction_α
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n31_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_proc_staged_α: mov              r11, 32
                        lea              rsi, [rsp + 1632]
                        call             wr5_dcα;                             jmp   .Lx162_2
.Lx162_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx162_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1584]
                        mov              rdx, qword ptr [rsp + 1592]
.Lx162_29:              mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    n32_disjunction_α
                                                                              jmp   n32_disjunction_α
n31_call_proc_staged_β: mov              r11, 32;                             jmp   n32_disjunction_α
.Lx162_0:               .quad            .Lx162_0_s
.Lx162_0_s:             .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n32_disjunction_α:      mov              r11, 33
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              dword ptr [rsp + 1328], 0;           jmp   n35_var_α
n32_disjunction_as:     mov              r11, 33
                        mov              eax, dword ptr [rsp + 1328]
                        cmp              eax, 0;                              jne   .Lx164_0
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n44_disjunction_α
.Lx164_0:               cmp              eax, 1;                              jne   .Lx164_1
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n44_disjunction_α
.Lx164_1:                                                                     jmp   n44_disjunction_α
n32_disjunction_β:      mov              r11, 33
                        mov              eax, dword ptr [rsp + 1328]
                        cmp              eax, 0;                              je    n44_disjunction_α
                                                                              jmp   n44_disjunction_α
n32_disjunction_af:     mov              r11, 33
                        add              dword ptr [rsp + 1328], 1
                        mov              eax, dword ptr [rsp + 1328]
                        cmp              eax, 1;                              je    n33_var_α
                                                                              jmp   n44_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              r11, 34
                        mov              rax, qword ptr [r9 + 0]              # numtest__STATIC__f
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1568], rax          # result
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n34_call_proc_staged_α
n33_var_β:              mov              r11, 34;                             jmp   n44_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_proc_staged_α: mov              r11, 35
                        lea              rsi, [rsp + 1568]
                        call             wr5_dcα;                             jmp   .Lx167_2
.Lx167_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx167_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1520]
                        mov              rdx, qword ptr [rsp + 1528]
.Lx167_29:              mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              al, 104;                             je    n44_disjunction_α
                                                                              jmp   n32_disjunction_as
n34_call_proc_staged_β: mov              r11, 35;                             jmp   n44_disjunction_α
.Lx167_0:               .quad            .Lx167_0_s
.Lx167_0_s:             .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:              mov              r11, 36
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n36_lit_integer_α
n35_var_β:              mov              r11, 36;                             jmp   n32_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      mov              r11, 37
                        mov              qword ptr [rsp + 1504], 3            # result
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n37_binop_test_α
.Lx170_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_test_α:       mov              r11, 38
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 112;                             je    .Lx171_0
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              al, 112;                             je    .Lx171_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lx171_2
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              al, 3;                               jne   .Lx171_2
.Lx171_1:               mov              rax, qword ptr [rsp + 40]
                        mov              rcx, qword ptr [rsp + 1512]
                        cmp              rax, rcx;                            je    n32_disjunction_af
                        mov              rcx, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1472], rcx
                        mov              rcx, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1480], rcx;         jmp   n38_var_α
.Lx171_0:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 1504]
                        mov              rcx, qword ptr [rsp + 1512]
                        mov              r8d, 10
                        lea              r9, [rsp + 1472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx171_1
                        cmp              eax, 1;                              je    n32_disjunction_af
                                                                              jmp   n38_var_α
.Lx171_2:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 1504]
                        mov              rcx, qword ptr [rsp + 1512]
                        mov              r8d, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n32_disjunction_af
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              mov              r11, 39
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              mov              r11, 40
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n40_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n40_coerce_numeric_α:   mov              r11, 41
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lx177_1
                        cmp              al, 3;                               jne   .Lx177_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lx177_0
.Lx177_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n41_coerce_numeric_α
.Lx177_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 1424]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n41_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n41_coerce_numeric_α:   mov              r11, 42
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 5;                               je    .Lx179_1
                        cmp              al, 3;                               jne   .Lx179_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx179_0
.Lx179_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n42_binop_α
.Lx179_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 1408]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n42_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n42_binop_α:            mov              r11, 43
                        mov              rdi, qword ptr [rsp + 1424]
                        mov              rsi, qword ptr [rsp + 1432]
                        mov              rdx, qword ptr [rsp + 1408]
                        mov              rcx, qword ptr [rsp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n44_disjunction_α
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n43_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_proc_staged_α: mov              r11, 44
                        lea              rsi, [rsp + 1392]
                        call             wr5_dcα;                             jmp   .Lx182_2
.Lx182_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx182_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
.Lx182_29:              mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              al, 104;                             je    n44_disjunction_α
                                                                              jmp   n32_disjunction_as
n43_call_proc_staged_β: mov              r11, 44;                             jmp   n44_disjunction_α
.Lx182_0:               .quad            .Lx182_0_s
.Lx182_0_s:             .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n44_disjunction_α:      mov              r11, 45
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              dword ptr [rsp + 1056], 0;           jmp   n47_var_α
n44_disjunction_as:     mov              r11, 45
                        mov              eax, dword ptr [rsp + 1056]
                        cmp              eax, 0;                              jne   .Lx184_0
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n56_var_α
.Lx184_0:               cmp              eax, 1;                              jne   .Lx184_1
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n56_var_α
.Lx184_1:                                                                     jmp   n56_var_α
n44_disjunction_β:      mov              r11, 45
                        mov              eax, dword ptr [rsp + 1056]
                        cmp              eax, 0;                              je    n56_var_α
                                                                              jmp   n56_var_α
n44_disjunction_af:     mov              r11, 45
                        add              dword ptr [rsp + 1056], 1
                        mov              eax, dword ptr [rsp + 1056]
                        cmp              eax, 1;                              je    n45_var_α
                                                                              jmp   n56_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              mov              r11, 46
                        mov              rax, qword ptr [r9 + 0]              # numtest__STATIC__f
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1296], rax          # result
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n46_call_proc_staged_α
n45_var_β:              mov              r11, 46;                             jmp   n56_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_call_proc_staged_α: mov              r11, 47
                        lea              rsi, [rsp + 1296]
                        call             wr5_dcα;                             jmp   .Lx187_2
.Lx187_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx187_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1248]
                        mov              rdx, qword ptr [rsp + 1256]
.Lx187_29:              mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    n56_var_α
                                                                              jmp   n44_disjunction_as
n46_call_proc_staged_β: mov              r11, 47;                             jmp   n56_var_α
.Lx187_0:               .quad            .Lx187_0_s
.Lx187_0_s:             .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              mov              r11, 48
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n48_lit_integer_α
n47_var_β:              mov              r11, 48;                             jmp   n44_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      mov              r11, 49
                        mov              qword ptr [rsp + 1232], 3            # result
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n49_binop_test_α
.Lx190_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_test_α:       mov              r11, 50
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 112;                             je    .Lx191_0
                        mov              eax, dword ptr [rsp + 1232]
                        cmp              al, 112;                             je    .Lx191_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lx191_2
                        mov              eax, dword ptr [rsp + 1232]
                        cmp              al, 3;                               jne   .Lx191_2
.Lx191_1:               mov              rax, qword ptr [rsp + 40]
                        mov              rcx, qword ptr [rsp + 1240]
                        cmp              rax, rcx;                            je    n44_disjunction_af
                        mov              rcx, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1200], rcx
                        mov              rcx, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1208], rcx;         jmp   n50_var_α
.Lx191_0:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 1232]
                        mov              rcx, qword ptr [rsp + 1240]
                        mov              r8d, 10
                        lea              r9, [rsp + 1200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx191_1
                        cmp              eax, 1;                              je    n44_disjunction_af
                                                                              jmp   n50_var_α
.Lx191_2:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 1232]
                        mov              rcx, qword ptr [rsp + 1240]
                        mov              r8d, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n44_disjunction_af
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:              mov              r11, 51
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n51_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              mov              r11, 52
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n52_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n52_coerce_numeric_α:   mov              r11, 53
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lx197_1
                        cmp              al, 3;                               jne   .Lx197_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lx197_0
.Lx197_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n53_coerce_numeric_α
.Lx197_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 1152]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n53_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n53_coerce_numeric_α:   mov              r11, 54
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 5;                               je    .Lx199_1
                        cmp              al, 3;                               jne   .Lx199_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx199_0
.Lx199_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n54_binop_α
.Lx199_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 1136]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n54_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n54_binop_α:            mov              r11, 55
                        mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdx, qword ptr [rsp + 1136]
                        mov              rcx, qword ptr [rsp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n56_var_α
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n55_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n55_call_proc_staged_α: mov              r11, 56
                        lea              rsi, [rsp + 1120]
                        call             wr5_dcα;                             jmp   .Lx202_2
.Lx202_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx202_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
.Lx202_29:              mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              al, 104;                             je    n56_var_α
                                                                              jmp   n44_disjunction_as
n55_call_proc_staged_β: mov              r11, 56;                             jmp   n56_var_α
.Lx202_0:               .quad            .Lx202_0_s
.Lx202_0_s:             .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              mov              r11, 57
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n57_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n57_coerce_numeric_α:   mov              r11, 58
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 5;                               je    .Lx206_1
                        cmp              al, 3;                               jne   .Lx206_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lx206_0
.Lx206_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n58_unop_α
.Lx206_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 1008]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n58_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n58_unop_α:             mov              r11, 59
                        mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n59_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n59_call_proc_staged_α: mov              r11, 60
                        lea              rsi, [rsp + 992]
                        call             wr5_dcα;                             jmp   .Lx209_2
.Lx209_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx209_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 944]
                        mov              rdx, qword ptr [rsp + 952]
.Lx209_29:              mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              al, 104;                             je    n60_disjunction_α
                                                                              jmp   n60_disjunction_α
n59_call_proc_staged_β: mov              r11, 60;                             jmp   n60_disjunction_α
.Lx209_0:               .quad            .Lx209_0_s
.Lx209_0_s:             .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n60_disjunction_α:      mov              r11, 61
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              dword ptr [rsp + 864], 0;            jmp   n95_var_α
n60_disjunction_as:     mov              r11, 61
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 0;                              jne   .Lx211_0
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax;          jmp   n61_call_proc_staged_α
.Lx211_0:               cmp              eax, 1;                              jne   .Lx211_1
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 856], rax;          jmp   n61_call_proc_staged_α
.Lx211_1:                                                                     jmp   n61_call_proc_staged_α
n60_disjunction_β:      mov              r11, 61
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 0;                              je    n60_disjunction_af
                                                                              jmp   n60_disjunction_af
n60_disjunction_af:     mov              r11, 61
                        add              dword ptr [rsp + 864], 1
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 1;                              je    n94_var_α
                                                                              jmp   n62_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_proc_staged_α: mov              r11, 62
                        lea              rsi, [rsp + 848]
                        call             wr5_dcα;                             jmp   .Lx213_2
.Lx213_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx213_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
.Lx213_29:              mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n60_disjunction_β
                                                                              jmp   n62_disjunction_α
n61_call_proc_staged_β: mov              r11, 62;                             jmp   n60_disjunction_β
.Lx213_0:               .quad            .Lx213_0_s
.Lx213_0_s:             .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n62_disjunction_α:      mov              r11, 63
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              dword ptr [rsp + 720], 0;            jmp   n91_var_α
n62_disjunction_as:     mov              r11, 63
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 0;                              jne   .Lx215_0
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax;          jmp   n63_call_proc_staged_α
.Lx215_0:               cmp              eax, 1;                              jne   .Lx215_1
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 712], rax;          jmp   n63_call_proc_staged_α
.Lx215_1:                                                                     jmp   n63_call_proc_staged_α
n62_disjunction_β:      mov              r11, 63
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 0;                              je    n62_disjunction_af
                                                                              jmp   n62_disjunction_af
n62_disjunction_af:     mov              r11, 63
                        add              dword ptr [rsp + 720], 1
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 1;                              je    n90_var_α
                                                                              jmp   n64_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n63_call_proc_staged_α: mov              r11, 64
                        lea              rsi, [rsp + 704]
                        call             wr5_dcα;                             jmp   .Lx217_2
.Lx217_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx217_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
.Lx217_29:              mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n62_disjunction_β
                                                                              jmp   n64_disjunction_α
n63_call_proc_staged_β: mov              r11, 64;                             jmp   n62_disjunction_β
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n64_disjunction_α:      mov              r11, 65
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              dword ptr [rsp + 576], 0;            jmp   n87_var_α
n64_disjunction_as:     mov              r11, 65
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              jne   .Lx219_0
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax;          jmp   n65_call_proc_staged_α
.Lx219_0:               cmp              eax, 1;                              jne   .Lx219_1
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 568], rax;          jmp   n65_call_proc_staged_α
.Lx219_1:                                                                     jmp   n65_call_proc_staged_α
n64_disjunction_β:      mov              r11, 65
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              je    n64_disjunction_af
                                                                              jmp   n64_disjunction_af
n64_disjunction_af:     mov              r11, 65
                        add              dword ptr [rsp + 576], 1
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 1;                              je    n86_var_α
                                                                              jmp   n66_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_proc_staged_α: mov              r11, 66
                        lea              rsi, [rsp + 560]
                        call             wr5_dcα;                             jmp   .Lx221_2
.Lx221_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx221_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
.Lx221_29:              mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n64_disjunction_β
                                                                              jmp   n66_disjunction_α
n65_call_proc_staged_β: mov              r11, 66;                             jmp   n64_disjunction_β
.Lx221_0:               .quad            .Lx221_0_s
.Lx221_0_s:             .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n66_disjunction_α:      mov              r11, 67
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              dword ptr [rsp + 432], 0;            jmp   n83_var_α
n66_disjunction_as:     mov              r11, 67
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 0;                              jne   .Lx223_0
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax;          jmp   n67_call_proc_staged_α
.Lx223_0:               cmp              eax, 1;                              jne   .Lx223_1
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 424], rax;          jmp   n67_call_proc_staged_α
.Lx223_1:                                                                     jmp   n67_call_proc_staged_α
n66_disjunction_β:      mov              r11, 67
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 0;                              je    n66_disjunction_af
                                                                              jmp   n66_disjunction_af
n66_disjunction_af:     mov              r11, 67
                        add              dword ptr [rsp + 432], 1
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 1;                              je    n82_var_α
                                                                              jmp   n68_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_proc_staged_α: mov              r11, 68
                        lea              rsi, [rsp + 416]
                        call             wr5_dcα;                             jmp   .Lx225_2
.Lx225_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx225_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
.Lx225_29:              mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n66_disjunction_β
                                                                              jmp   n68_disjunction_α
n67_call_proc_staged_β: mov              r11, 68;                             jmp   n66_disjunction_β
.Lx225_0:               .quad            .Lx225_0_s
.Lx225_0_s:             .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n68_disjunction_α:      mov              r11, 69
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              dword ptr [rsp + 288], 0;            jmp   n79_var_α
n68_disjunction_as:     mov              r11, 69
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 0;                              jne   .Lx227_0
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax;          jmp   n69_call_proc_staged_α
.Lx227_0:               cmp              eax, 1;                              jne   .Lx227_1
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 280], rax;          jmp   n69_call_proc_staged_α
.Lx227_1:                                                                     jmp   n69_call_proc_staged_α
n68_disjunction_β:      mov              r11, 69
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 0;                              je    n68_disjunction_af
                                                                              jmp   n68_disjunction_af
n68_disjunction_af:     mov              r11, 69
                        add              dword ptr [rsp + 288], 1
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 1;                              je    n78_var_α
                                                                              jmp   n70_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n69_call_proc_staged_α: mov              r11, 70
                        lea              rsi, [rsp + 272]
                        call             wr5_dcα;                             jmp   .Lx229_2
.Lx229_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx229_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
.Lx229_29:              mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n68_disjunction_β
                                                                              jmp   n70_disjunction_α
n69_call_proc_staged_β: mov              r11, 70;                             jmp   n68_disjunction_β
.Lx229_0:               .quad            .Lx229_0_s
.Lx229_0_s:             .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n70_disjunction_α:      mov              r11, 71
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              dword ptr [rsp + 144], 0;            jmp   n75_var_α
n70_disjunction_as:     mov              r11, 71
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 0;                              jne   .Lx231_0
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax;          jmp   n71_call_proc_staged_α
.Lx231_0:               cmp              eax, 1;                              jne   .Lx231_1
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 136], rax;          jmp   n71_call_proc_staged_α
.Lx231_1:                                                                     jmp   n71_call_proc_staged_α
n70_disjunction_β:      mov              r11, 71
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 0;                              je    n70_disjunction_af
                                                                              jmp   n70_disjunction_af
n70_disjunction_af:     mov              r11, 71
                        add              dword ptr [rsp + 144], 1
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 1;                              je    n74_var_α
                                                                              jmp   n72_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_proc_staged_α: mov              r11, 72
                        lea              rsi, [rsp + 128]
                        call             wr5_dcα;                             jmp   .Lx233_2
.Lx233_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx233_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx233_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n70_disjunction_β
                                                                              jmp   n72_call_builtin_icon_α
n71_call_proc_staged_β: mov              r11, 72;                             jmp   n70_disjunction_β
.Lx233_0:               .quad            .Lx233_0_s
.Lx233_0_s:             .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_icon_α:
                        mov              r11, 73
                        .section         .rodata
.Lrkfn235:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn235]
                        lea              rsi, [rsp + 64]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n73_return_α
                                                                              jmp   n73_return_α
n72_call_builtin_icon_β:
                        mov              r11, 73;                             jmp   n73_return_α
#-----------------------------------------------------------------------------------------------------------------------
n73_return_α:           mov              r11, 74
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   numtest_γ
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:              mov              r11, 75
                        mov              rax, qword ptr [r9 + 0]              # numtest__STATIC__f
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 208], rax           # result
                        mov              qword ptr [rsp + 216], rdx;          jmp   n70_disjunction_as
n74_var_β:              mov              r11, 75;                             jmp   n70_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:              mov              r11, 76
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 184], rax;          jmp   n76_var_α
n75_var_β:              mov              r11, 76;                             jmp   n70_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              mov              r11, 77
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 200], rax;          jmp   n77_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n77_binop_test_α:       mov              r11, 78
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 112;                             je    .Lx242_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 112;                             je    .Lx242_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx242_2
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lx242_2
.Lx242_1:               mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              rax, rcx;                            jle   n70_disjunction_af
                        mov              rcx, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 160], rcx
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 168], rcx;          jmp   n70_disjunction_as
.Lx242_0:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 7
                        lea              r9, [rsp + 160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx242_1
                        cmp              eax, 1;                              je    n70_disjunction_af
                                                                              jmp   n70_disjunction_as
.Lx242_2:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n70_disjunction_af
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 168], rax;          jmp   n70_disjunction_as
n77_binop_test_β:       mov              r11, 78;                             jmp   n70_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:              mov              r11, 79
                        mov              rax, qword ptr [r9 + 0]              # numtest__STATIC__f
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 352], rax           # result
                        mov              qword ptr [rsp + 360], rdx;          jmp   n68_disjunction_as
n78_var_β:              mov              r11, 79;                             jmp   n68_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              mov              r11, 80
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 328], rax;          jmp   n80_var_α
n79_var_β:              mov              r11, 80;                             jmp   n68_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:              mov              r11, 81
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 344], rax;          jmp   n81_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n81_binop_test_α:       mov              r11, 82
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 112;                             je    .Lx248_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 112;                             je    .Lx248_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx248_2
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lx248_2
.Lx248_1:               mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              rax, rcx;                            jl    n68_disjunction_af
                        mov              rcx, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 304], rcx
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 312], rcx;          jmp   n68_disjunction_as
.Lx248_0:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 8
                        lea              r9, [rsp + 304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx248_1
                        cmp              eax, 1;                              je    n68_disjunction_af
                                                                              jmp   n68_disjunction_as
.Lx248_2:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n68_disjunction_af
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 312], rax;          jmp   n68_disjunction_as
n81_binop_test_β:       mov              r11, 82;                             jmp   n68_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              mov              r11, 83
                        mov              rax, qword ptr [r9 + 0]              # numtest__STATIC__f
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 496], rax           # result
                        mov              qword ptr [rsp + 504], rdx;          jmp   n66_disjunction_as
n82_var_β:              mov              r11, 83;                             jmp   n66_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              mov              r11, 84
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 472], rax;          jmp   n84_var_α
n83_var_β:              mov              r11, 84;                             jmp   n66_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              mov              r11, 85
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 488], rax;          jmp   n85_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_test_α:       mov              r11, 86
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 112;                             je    .Lx254_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 112;                             je    .Lx254_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx254_2
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lx254_2
.Lx254_1:               mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              rax, rcx;                            je    n66_disjunction_af
                        mov              rcx, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 448], rcx
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 456], rcx;          jmp   n66_disjunction_as
.Lx254_0:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 10
                        lea              r9, [rsp + 448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx254_1
                        cmp              eax, 1;                              je    n66_disjunction_af
                                                                              jmp   n66_disjunction_as
.Lx254_2:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n66_disjunction_af
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 456], rax;          jmp   n66_disjunction_as
n85_binop_test_β:       mov              r11, 86;                             jmp   n66_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:              mov              r11, 87
                        mov              rax, qword ptr [r9 + 0]              # numtest__STATIC__f
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 640], rax           # result
                        mov              qword ptr [rsp + 648], rdx;          jmp   n64_disjunction_as
n86_var_β:              mov              r11, 87;                             jmp   n64_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:              mov              r11, 88
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 616], rax;          jmp   n88_var_α
n87_var_β:              mov              r11, 88;                             jmp   n64_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              mov              r11, 89
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 632], rax;          jmp   n89_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n89_binop_test_α:       mov              r11, 90
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 112;                             je    .Lx260_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 112;                             je    .Lx260_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx260_2
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lx260_2
.Lx260_1:               mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              rax, rcx;                            jne   n64_disjunction_af
                        mov              rcx, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 592], rcx
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 600], rcx;          jmp   n64_disjunction_as
.Lx260_0:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 9
                        lea              r9, [rsp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx260_1
                        cmp              eax, 1;                              je    n64_disjunction_af
                                                                              jmp   n64_disjunction_as
.Lx260_2:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n64_disjunction_af
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 600], rax;          jmp   n64_disjunction_as
n89_binop_test_β:       mov              r11, 90;                             jmp   n64_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              mov              r11, 91
                        mov              rax, qword ptr [r9 + 0]              # numtest__STATIC__f
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 784], rax           # result
                        mov              qword ptr [rsp + 792], rdx;          jmp   n62_disjunction_as
n90_var_β:              mov              r11, 91;                             jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:              mov              r11, 92
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 760], rax;          jmp   n92_var_α
n91_var_β:              mov              r11, 92;                             jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              mov              r11, 93
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 776], rax;          jmp   n93_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n93_binop_test_α:       mov              r11, 94
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 112;                             je    .Lx266_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 112;                             je    .Lx266_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx266_2
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lx266_2
.Lx266_1:               mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              rax, rcx;                            jg    n62_disjunction_af
                        mov              rcx, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 736], rcx
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 744], rcx;          jmp   n62_disjunction_as
.Lx266_0:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 6
                        lea              r9, [rsp + 736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx266_1
                        cmp              eax, 1;                              je    n62_disjunction_af
                                                                              jmp   n62_disjunction_as
.Lx266_2:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n62_disjunction_af
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 744], rax;          jmp   n62_disjunction_as
n93_binop_test_β:       mov              r11, 94;                             jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:              mov              r11, 95
                        mov              rax, qword ptr [r9 + 0]              # numtest__STATIC__f
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 928], rax           # result
                        mov              qword ptr [rsp + 936], rdx;          jmp   n60_disjunction_as
n94_var_β:              mov              r11, 95;                             jmp   n60_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              mov              r11, 96
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 904], rax;          jmp   n96_var_α
n95_var_β:              mov              r11, 96;                             jmp   n60_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              mov              r11, 97
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 920], rax;          jmp   n97_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n97_binop_test_α:       mov              r11, 98
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 112;                             je    .Lx272_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 112;                             je    .Lx272_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx272_2
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lx272_2
.Lx272_1:               mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              rax, rcx;                            jge   n60_disjunction_af
                        mov              rcx, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 880], rcx
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 888], rcx;          jmp   n60_disjunction_as
.Lx272_0:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 5
                        lea              r9, [rsp + 880]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx272_1
                        cmp              eax, 1;                              je    n60_disjunction_af
                                                                              jmp   n60_disjunction_as
.Lx272_2:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n60_disjunction_af
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 888], rax;          jmp   n60_disjunction_as
n97_binop_test_β:       mov              r11, 98;                             jmp   n60_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          mov              r11, 99
                        mov              rax, 4294967336
                        mov              rdx, 1879052304                      # numtest__INITFLAG__0
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx;         jmp   n99_nulltest_var_α
n98_var_ref_β:          mov              r11, 99;                             jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n99_nulltest_var_α:     mov              r11, 100
                        mov              eax, dword ptr [rsp + 2400]
                        cmp              al, 104;                             je    n0_disjunction_af
                        mov              rdi, qword ptr [rsp + 2400]
                        mov              rsi, qword ptr [rsp + 2408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n0_disjunction_af
                        cmp              eax, 0;                              jne   n0_disjunction_af
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n100_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:     mov              r11, 101
                        mov              qword ptr [rsp + 2448], 3            # result
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n101_assign_var_α
.Lx276_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_var_α:      mov              r11, 102
                        mov              rdi, qword ptr [rsp + 2416]
                        mov              rsi, qword ptr [rsp + 2424]
                        mov              rdx, qword ptr [rsp + 2448]
                        mov              rcx, qword ptr [rsp + 2456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n0_disjunction_af
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx;         jmp   n102_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      mov              r11, 103
                        mov              qword ptr [rsp + 2384], 2            # result
                        mov              dword ptr [rsp + 2388], 3
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n103_assign_α
.Lx278_0:               .quad            .Lx278_0_s
.Lx278_0_s:             .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:          mov              r11, 104
                        mov              rax, qword ptr [rsp + 2384]
                        mov              rdx, qword ptr [rsp + 2392]
                        mov              qword ptr [r9 + 0], rax              # numtest__STATIC__f
                        mov              qword ptr [r9 + 8], rdx
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx;         jmp   n0_disjunction_as
n103_assign_β:          mov              r11, 104;                            jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
numtest_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
numtest_β:
                                                                              jmp   numtest_ω
#-----------------------------------------------------------------------------------------------------------------------
numtest_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 2544;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
numtest_ω:
                        add              rsp, 2544;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
numtest_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx280_3]
                        push             rcx
                        lea              rcx, [rip + .Lx280_2]
                        push             rcx;                                 jmp   FN__numtest
.Lx280_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx280_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__bitcombo:
                        sub              rsp, 688
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
bitcombo_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n281_disjunction_α:     mov              r11, 105
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              dword ptr [rsp + 144], 0;            jmp   n297_var_α
n281_disjunction_as:    mov              r11, 105
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 0;                              jne   .Lx301_0
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax;          jmp   n282_call_proc_staged_α
.Lx301_0:               cmp              eax, 1;                              jne   .Lx301_1
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 136], rax;          jmp   n282_call_proc_staged_α
.Lx301_1:               cmp              eax, 2;                              jne   .Lx301_2
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 136], rax;          jmp   n282_call_proc_staged_α
.Lx301_2:               cmp              eax, 3;                              jne   .Lx301_3
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 136], rax;          jmp   n282_call_proc_staged_α
.Lx301_3:               cmp              eax, 4;                              jne   .Lx301_4
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 136], rax;          jmp   n282_call_proc_staged_α
.Lx301_4:               cmp              eax, 5;                              jne   .Lx301_5
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 136], rax;          jmp   n282_call_proc_staged_α
.Lx301_5:               cmp              eax, 6;                              jne   .Lx301_6
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 136], rax;          jmp   n282_call_proc_staged_α
.Lx301_6:                                                                     jmp   n282_call_proc_staged_α
n281_disjunction_β:     mov              r11, 105
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 0;                              je    n281_disjunction_af
                        cmp              eax, 1;                              je    n281_disjunction_af
                        cmp              eax, 2;                              je    n281_disjunction_af
                        cmp              eax, 3;                              je    n281_disjunction_af
                        cmp              eax, 4;                              je    n281_disjunction_af
                        cmp              eax, 5;                              je    n281_disjunction_af
                                                                              jmp   n281_disjunction_af
n281_disjunction_af:    mov              r11, 105
                        add              dword ptr [rsp + 144], 1
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 1;                              je    n296_var_α
                        cmp              eax, 2;                              je    n294_var_α
                        cmp              eax, 3;                              je    n292_var_α
                        cmp              eax, 4;                              je    n289_var_α
                        cmp              eax, 5;                              je    n286_var_α
                        cmp              eax, 6;                              je    n283_var_α
                                                                              jmp   n298_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n282_call_proc_staged_α:
                        mov              r11, 106
                        lea              rsi, [rsp + 128]
                        call             wr5_dcα;                             jmp   .Lx303_2
.Lx303_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx303_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx303_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n281_disjunction_β
                                                                              jmp   n281_disjunction_β
n282_call_proc_staged_β:
                        mov              r11, 106;                            jmp   n281_disjunction_β
.Lx303_0:               .quad            .Lx303_0_s
.Lx303_0_s:             .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:             mov              r11, 107
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 584], rax;          jmp   n284_var_α
n283_var_β:             mov              r11, 107;                            jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:             mov              r11, 108
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 600], rax;          jmp   n285_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n285_call_builtin_icon_α:
                        mov              r11, 109
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn309:              .string          "ixor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn309]
                        lea              rsi, [rsp + 528]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262273
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n281_disjunction_af
                                                                              jmp   n281_disjunction_as
n285_call_builtin_icon_β:
                        mov              r11, 109;                            jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n286_var_α:             mov              r11, 110
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 488], rax;          jmp   n287_var_α
n286_var_β:             mov              r11, 110;                            jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:             mov              r11, 111
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 504], rax;          jmp   n288_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n288_call_builtin_icon_α:
                        mov              r11, 112
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn315:              .string          "ior"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn315]
                        lea              rsi, [rsp + 432]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196735
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n281_disjunction_af
                                                                              jmp   n281_disjunction_as
n288_call_builtin_icon_β:
                        mov              r11, 112;                            jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n289_var_α:             mov              r11, 113
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 392], rax;          jmp   n290_var_α
n289_var_β:             mov              r11, 113;                            jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n290_var_α:             mov              r11, 114
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 408], rax;          jmp   n291_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n291_call_builtin_icon_α:
                        mov              r11, 115
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn321:              .string          "iand"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn321]
                        lea              rsi, [rsp + 336]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262266
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n281_disjunction_af
                                                                              jmp   n281_disjunction_as
n291_call_builtin_icon_β:
                        mov              r11, 115;                            jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n292_var_α:             mov              r11, 116
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 312], rax;          jmp   n293_call_builtin_icon_α
n292_var_β:             mov              r11, 116;                            jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n293_call_builtin_icon_α:
                        mov              r11, 117
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn325:              .string          "icom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn325]
                        lea              rsi, [rsp + 272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262267
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n281_disjunction_af
                                                                              jmp   n281_disjunction_as
n293_call_builtin_icon_β:
                        mov              r11, 117;                            jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:             mov              r11, 118
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 248], rax;          jmp   n295_call_builtin_icon_α
n294_var_β:             mov              r11, 118;                            jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n295_call_builtin_icon_α:
                        mov              r11, 119
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn329:              .string          "icom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn329]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262267
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n281_disjunction_af
                                                                              jmp   n281_disjunction_as
n295_call_builtin_icon_β:
                        mov              r11, 119;                            jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n296_var_α:             mov              r11, 120
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 184], rax;          jmp   n281_disjunction_as
n296_var_β:             mov              r11, 120;                            jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n297_var_α:             mov              r11, 121
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 168], rax;          jmp   n281_disjunction_as
n297_var_β:             mov              r11, 121;                            jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n298_call_builtin_icon_α:
                        mov              r11, 122
                        .section         .rodata
.Lrkfn335:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn335]
                        lea              rsi, [rsp + 64]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n299_return_α
                                                                              jmp   n299_return_α
n298_call_builtin_icon_β:
                        mov              r11, 122;                            jmp   n299_return_α
#-----------------------------------------------------------------------------------------------------------------------
n299_return_α:          mov              r11, 123
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   bitcombo_γ
#-----------------------------------------------------------------------------------------------------------------------
bitcombo_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
bitcombo_β:
                                                                              jmp   bitcombo_ω
#-----------------------------------------------------------------------------------------------------------------------
bitcombo_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 688;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
bitcombo_ω:
                        add              rsp, 688;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
bitcombo_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx337_3]
                        push             rcx
                        lea              rcx, [rip + .Lx337_2]
                        push             rcx;                                 jmp   FN__bitcombo
.Lx337_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx337_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__wr5:
                        sub              rsp, 720
                        mov              rdi, rsp
                        add              rdi, 624
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
wr5_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n338_disjunction_α:     mov              r11, 124
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              dword ptr [rsp + 432], 0;            jmp   n339_var_α
n338_disjunction_as:    mov              r11, 124
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 0;                              jne   .Lx363_0
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax;          jmp   n346_var_α
.Lx363_0:                                                                     jmp   n346_var_α
n338_disjunction_β:     mov              r11, 124
                        mov              eax, dword ptr [rsp + 432];          jmp   n346_var_α
n338_disjunction_af:    mov              r11, 124
                        add              dword ptr [rsp + 432], 1
                        mov              eax, dword ptr [rsp + 432];          jmp   n346_var_α
#-----------------------------------------------------------------------------------------------------------------------
n339_var_α:             mov              r11, 125
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 600], rax;          jmp   n340_call_builtin_icon_α
n339_var_β:             mov              r11, 125;                            jmp   n338_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n340_call_builtin_icon_α:
                        mov              r11, 126
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn367:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn367]
                        lea              rsi, [rsp + 560]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262313
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n338_disjunction_af
                                                                              jmp   n341_lit_string_α
n340_call_builtin_icon_β:
                        mov              r11, 126;                            jmp   n338_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:      mov              r11, 127
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 4
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n342_binop_test_α
.Lx368_0:               .quad            .Lx368_0_s
.Lx368_0_s:             .string          "real"
#-----------------------------------------------------------------------------------------------------------------------
n342_binop_test_α:      mov              r11, 128
                        mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
                        mov              rdx, qword ptr [rsp + 608]
                        mov              rcx, qword ptr [rsp + 616]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n338_disjunction_af
                        mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n343_var_α
#-----------------------------------------------------------------------------------------------------------------------
n343_var_α:             mov              r11, 129
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 520], rax;          jmp   n344_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n344_call_proc_staged_α:
                        mov              r11, 130
                        lea              rsi, [rsp + 512]
                        call             r1_dcα;                              jmp   .Lx373_2
.Lx373_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx373_29
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
.Lx373_29:              mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n346_var_α
                                                                              jmp   n345_assign_α
n344_call_proc_staged_β:
                        mov              r11, 130;                            jmp   n346_var_α
.Lx373_0:               .quad            .Lx373_0_s
.Lx373_0_s:             .string          "r1"
#-----------------------------------------------------------------------------------------------------------------------
n345_assign_α:          mov              r11, 131
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n338_disjunction_as
n345_assign_β:          mov              r11, 131;                            jmp   n346_var_α
#-----------------------------------------------------------------------------------------------------------------------
n346_var_α:             mov              r11, 132
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 408], rax;          jmp   n347_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n347_call_builtin_icon_α:
                        mov              r11, 133
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn378:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn378]
                        lea              rsi, [rsp + 368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n349_disjunction_α
                                                                              jmp   n348_assign_α
n347_call_builtin_icon_β:
                        mov              r11, 133;                            jmp   n349_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n348_assign_α:          mov              r11, 134
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n349_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n349_disjunction_α:     mov              r11, 135
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              dword ptr [rsp + 144], 0;            jmp   n350_var_α
n349_disjunction_as:    mov              r11, 135
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 0;                              jne   .Lx381_0
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax;          jmp   n358_var_α
.Lx381_0:                                                                     jmp   n358_var_α
n349_disjunction_β:     mov              r11, 135
                        mov              eax, dword ptr [rsp + 144];          jmp   n358_var_α
n349_disjunction_af:    mov              r11, 135
                        add              dword ptr [rsp + 144], 1
                        mov              eax, dword ptr [rsp + 144];          jmp   n358_var_α
#-----------------------------------------------------------------------------------------------------------------------
n350_var_α:             mov              r11, 136
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 312], rax;          jmp   n351_unop_α
n350_var_β:             mov              r11, 136;                            jmp   n349_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n351_unop_α:            mov              r11, 137
                        mov              rdi, qword ptr [rsp + 624]
                        mov              rsi, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n352_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_integer_α:     mov              r11, 138
                        mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n353_binop_test_α
.Lx385_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n353_binop_test_α:      mov              r11, 139
                        mov              eax, dword ptr [rsp + 288]
                        cmp              al, 112;                             je    .Lx386_0
                        mov              eax, dword ptr [rsp + 320]
                        cmp              al, 112;                             je    .Lx386_0
                        mov              eax, dword ptr [rsp + 288]
                        cmp              al, 3;                               jne   .Lx386_2
                        mov              eax, dword ptr [rsp + 320]
                        cmp              al, 3;                               jne   .Lx386_2
.Lx386_1:               mov              rax, qword ptr [rsp + 296]
                        mov              rcx, qword ptr [rsp + 328]
                        cmp              rax, rcx;                            jge   n349_disjunction_af
                        mov              rcx, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rcx
                        mov              rcx, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rcx;          jmp   n354_var_α
.Lx386_0:               mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        mov              r8d, 5
                        lea              r9, [rsp + 272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx386_1
                        cmp              eax, 1;                              je    n349_disjunction_af
                                                                              jmp   n354_var_α
.Lx386_2:               mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        mov              r8d, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n349_disjunction_af
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax;          jmp   n354_var_α
#-----------------------------------------------------------------------------------------------------------------------
n354_var_α:             mov              r11, 140
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 248], rax;          jmp   n355_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_integer_α:     mov              r11, 141
                        mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n356_call_builtin_icon_α
.Lx389_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n356_call_builtin_icon_α:
                        mov              r11, 142
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn391:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn391]
                        lea              rsi, [rsp + 192]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n358_var_α
                                                                              jmp   n357_assign_α
n356_call_builtin_icon_β:
                        mov              r11, 142;                            jmp   n358_var_α
#-----------------------------------------------------------------------------------------------------------------------
n357_assign_α:          mov              r11, 143
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n349_disjunction_as
n357_assign_β:          mov              r11, 143;                            jmp   n358_var_α
#-----------------------------------------------------------------------------------------------------------------------
n358_var_α:             mov              r11, 144
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 104], rax;          jmp   n359_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:      mov              r11, 145
                        mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 1
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n360_call_builtin_icon_α
.Lx395_0:               .quad            .Lx395_0_s
.Lx395_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n360_call_builtin_icon_α:
                        mov              r11, 146
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn397:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn397]
                        lea              rsi, [rsp + 48]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    n361_return_α
                                                                              jmp   n361_return_α
n360_call_builtin_icon_β:
                        mov              r11, 146;                            jmp   n361_return_α
#-----------------------------------------------------------------------------------------------------------------------
n361_return_α:          mov              r11, 147
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   wr5_γ
#-----------------------------------------------------------------------------------------------------------------------
wr5_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
wr5_β:
                                                                              jmp   wr5_ω
#-----------------------------------------------------------------------------------------------------------------------
wr5_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 720;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
wr5_ω:
                        add              rsp, 720;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
wr5_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx399_3]
                        push             rcx
                        lea              rcx, [rip + .Lx399_2]
                        push             rcx;                                 jmp   FN__wr5
.Lx399_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx399_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__r1:
                        sub              rsp, 592
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
r1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n400_disjunction_α:     mov              r11, 148
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n413_var_α
n400_disjunction_as:    mov              r11, 148
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lx429_0
                                                                              jmp   r1_γ
.Lx429_0:               cmp              eax, 1;                              jne   .Lx429_1
                                                                              jmp   r1_γ
.Lx429_1:                                                                     jmp   r1_γ
n400_disjunction_β:     mov              r11, 148
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              je    r1_ω
                                                                              jmp   r1_ω
n400_disjunction_af:    mov              r11, 148
                        add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 1;                              je    n401_var_α
                                                                              jmp   r1_ω
#-----------------------------------------------------------------------------------------------------------------------
n401_var_α:             mov              r11, 149
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 472], rax;          jmp   n402_lit_integer_α
n401_var_β:             mov              r11, 149;                            jmp   r1_ω
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_integer_α:     mov              r11, 150
                        mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n403_coerce_numeric_α
.Lx432_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n403_coerce_numeric_α:  mov              r11, 151
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lx434_1
                        cmp              al, 3;                               jne   .Lx434_0
                        mov              eax, dword ptr [rsp + 480]
                        cmp              al, 3;                               jne   .Lx434_0
.Lx434_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 456], rax;          jmp   n404_binop_α
.Lx434_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 480]
                        lea              rdx, [rsp + 448]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n404_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n404_binop_α:           mov              r11, 152
                        mov              eax, dword ptr [rsp + 448]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx435_2
                        mov              rax, qword ptr [rsp + 456]
                        mov              rdx, 10
                        imul             rax, rdx
                        mov              qword ptr [rsp + 432], 3
                        mov              qword ptr [rsp + 440], rax;          jmp   .Lx435_7
.Lx435_2:               and              edx, 1;                              jz    .Lx435_0
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdi, 10
                        cmp              al, 5;                               je    .Lx435_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx435_4
.Lx435_3:               movq             xmm0, rsi
.Lx435_4:               cmp              cl, 5;                               je    .Lx435_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx435_6
.Lx435_5:               movq             xmm1, rdi
.Lx435_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 432], 5
                        mov              qword ptr [rsp + 440], rax
.Lx435_7:                                                                     jmp   n405_lit_real_α
.Lx435_0:               mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    r1_ω
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n405_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_real_α:        mov              r11, 153
                        mov              qword ptr [rsp + 496], 5             # result
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n406_coerce_numeric_α
.Lx436_0:               .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n406_coerce_numeric_α:  mov              r11, 154
                        mov              eax, dword ptr [rsp + 432]
                        cmp              al, 5;                               je    .Lx438_1
                        cmp              al, 3;                               jne   .Lx438_0
                        mov              eax, dword ptr [rsp + 496]
                        cmp              al, 3;                               jne   .Lx438_0
.Lx438_1:               mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 424], rax;          jmp   n407_binop_α
.Lx438_0:               lea              rdi, [rsp + 432]
                        lea              rsi, [rsp + 496]
                        lea              rdx, [rsp + 416]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n407_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n407_binop_α:           mov              r11, 155
                        mov              eax, dword ptr [rsp + 416]
                        mov              ecx, dword ptr [rsp + 496]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx439_2
                        mov              rax, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 504]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 400], 3
                        mov              qword ptr [rsp + 408], rax;          jmp   .Lx439_7
.Lx439_2:               and              edx, 1;                              jz    .Lx439_0
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdi, qword ptr [rsp + 504]
                        cmp              al, 5;                               je    .Lx439_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx439_4
.Lx439_3:               movq             xmm0, rsi
.Lx439_4:               cmp              cl, 5;                               je    .Lx439_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx439_6
.Lx439_5:               movq             xmm1, rdi
.Lx439_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 400], 5
                        mov              qword ptr [rsp + 408], rax
.Lx439_7:                                                                     jmp   n408_call_builtin_icon_α
.Lx439_0:               mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 496]
                        mov              rcx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    r1_ω
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n408_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n408_call_builtin_icon_α:
                        mov              r11, 156
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn441:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn441]
                        lea              rsi, [rsp + 368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    r1_ω
                                                                              jmp   n409_lit_real_α
n408_call_builtin_icon_β:
                        mov              r11, 156;                            jmp   r1_ω
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_real_α:        mov              r11, 157
                        mov              qword ptr [rsp + 512], 5             # result
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n410_coerce_numeric_α
.Lx442_0:               .quad            4621819117588971520
#-----------------------------------------------------------------------------------------------------------------------
n410_coerce_numeric_α:  mov              r11, 158
                        mov              eax, dword ptr [rsp + 352]
                        cmp              al, 5;                               je    .Lx444_1
                        cmp              al, 3;                               jne   .Lx444_0
                        mov              eax, dword ptr [rsp + 512]
                        cmp              al, 3;                               jne   .Lx444_0
.Lx444_1:               mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 344], rax;          jmp   n411_binop_α
.Lx444_0:               lea              rdi, [rsp + 352]
                        lea              rsi, [rsp + 512]
                        lea              rdx, [rsp + 336]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n411_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n411_binop_α:           mov              r11, 159
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    r1_ω
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n412_return_α
#-----------------------------------------------------------------------------------------------------------------------
n412_return_α:          mov              r11, 160
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   r1_γ
#-----------------------------------------------------------------------------------------------------------------------
n413_var_α:             mov              r11, 161
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 296], rax;          jmp   n414_lit_integer_α
n413_var_β:             mov              r11, 161;                            jmp   n400_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_integer_α:     mov              r11, 162
                        mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n415_binop_test_α
.Lx449_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n415_binop_test_α:      mov              r11, 163
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 112;                             je    .Lx450_0
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 112;                             je    .Lx450_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx450_2
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 3;                               jne   .Lx450_2
.Lx450_1:               mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 312]
                        cmp              rax, rcx;                            jl    n400_disjunction_af
                        mov              rcx, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rcx
                        mov              rcx, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rcx;          jmp   n416_var_α
.Lx450_0:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        mov              r8d, 8
                        lea              r9, [rsp + 272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx450_1
                        cmp              eax, 1;                              je    n400_disjunction_af
                                                                              jmp   n416_var_α
.Lx450_2:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        mov              r8d, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n400_disjunction_af
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax;          jmp   n416_var_α
#-----------------------------------------------------------------------------------------------------------------------
n416_var_α:             mov              r11, 164
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n417_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_integer_α:     mov              r11, 165
                        mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n418_coerce_numeric_α
.Lx453_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n418_coerce_numeric_α:  mov              r11, 166
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lx455_1
                        cmp              al, 3;                               jne   .Lx455_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              al, 3;                               jne   .Lx455_0
.Lx455_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 200], rax;          jmp   n419_binop_α
.Lx455_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 224]
                        lea              rdx, [rsp + 192]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n419_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n419_binop_α:           mov              r11, 167
                        mov              eax, dword ptr [rsp + 192]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx456_2
                        mov              rax, qword ptr [rsp + 200]
                        mov              rdx, 10
                        imul             rax, rdx
                        mov              qword ptr [rsp + 176], 3
                        mov              qword ptr [rsp + 184], rax;          jmp   .Lx456_7
.Lx456_2:               and              edx, 1;                              jz    .Lx456_0
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdi, 10
                        cmp              al, 5;                               je    .Lx456_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx456_4
.Lx456_3:               movq             xmm0, rsi
.Lx456_4:               cmp              cl, 5;                               je    .Lx456_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx456_6
.Lx456_5:               movq             xmm1, rdi
.Lx456_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 176], 5
                        mov              qword ptr [rsp + 184], rax
.Lx456_7:                                                                     jmp   n420_lit_real_α
.Lx456_0:               mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    r1_ω
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n420_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n420_lit_real_α:        mov              r11, 168
                        mov              qword ptr [rsp + 240], 5             # result
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n421_coerce_numeric_α
.Lx457_0:               .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n421_coerce_numeric_α:  mov              r11, 169
                        mov              eax, dword ptr [rsp + 176]
                        cmp              al, 5;                               je    .Lx459_1
                        cmp              al, 3;                               jne   .Lx459_0
                        mov              eax, dword ptr [rsp + 240]
                        cmp              al, 3;                               jne   .Lx459_0
.Lx459_1:               mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax;          jmp   n422_binop_α
.Lx459_0:               lea              rdi, [rsp + 176]
                        lea              rsi, [rsp + 240]
                        lea              rdx, [rsp + 160]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n422_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n422_binop_α:           mov              r11, 170
                        mov              eax, dword ptr [rsp + 160]
                        mov              ecx, dword ptr [rsp + 240]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx460_2
                        mov              rax, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 248]
                        add              rax, rdx
                        mov              qword ptr [rsp + 144], 3
                        mov              qword ptr [rsp + 152], rax;          jmp   .Lx460_7
.Lx460_2:               and              edx, 1;                              jz    .Lx460_0
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdi, qword ptr [rsp + 248]
                        cmp              al, 5;                               je    .Lx460_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx460_4
.Lx460_3:               movq             xmm0, rsi
.Lx460_4:               cmp              cl, 5;                               je    .Lx460_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx460_6
.Lx460_5:               movq             xmm1, rdi
.Lx460_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 144], 5
                        mov              qword ptr [rsp + 152], rax
.Lx460_7:                                                                     jmp   n423_call_builtin_icon_α
.Lx460_0:               mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    r1_ω
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n423_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n423_call_builtin_icon_α:
                        mov              r11, 171
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn462:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn462]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    r1_ω
                                                                              jmp   n424_lit_real_α
n423_call_builtin_icon_β:
                        mov              r11, 171;                            jmp   r1_ω
#-----------------------------------------------------------------------------------------------------------------------
n424_lit_real_α:        mov              r11, 172
                        mov              qword ptr [rsp + 256], 5             # result
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n425_coerce_numeric_α
.Lx463_0:               .quad            4621819117588971520
#-----------------------------------------------------------------------------------------------------------------------
n425_coerce_numeric_α:  mov              r11, 173
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 5;                               je    .Lx465_1
                        cmp              al, 3;                               jne   .Lx465_0
                        mov              eax, dword ptr [rsp + 256]
                        cmp              al, 3;                               jne   .Lx465_0
.Lx465_1:               mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 88], rax;           jmp   n426_binop_α
.Lx465_0:               lea              rdi, [rsp + 96]
                        lea              rsi, [rsp + 256]
                        lea              rdx, [rsp + 80]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n426_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n426_binop_α:           mov              r11, 174
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    r1_ω
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx;           jmp   n427_return_α
#-----------------------------------------------------------------------------------------------------------------------
n427_return_α:          mov              r11, 175
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   r1_γ
#-----------------------------------------------------------------------------------------------------------------------
r1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
r1_β:
                                                                              jmp   r1_ω
#-----------------------------------------------------------------------------------------------------------------------
r1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 592;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
r1_ω:
                        add              rsp, 592;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
r1_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx468_3]
                        push             rcx
                        lea              rcx, [rip + .Lx468_2]
                        push             rcx;                                 jmp   FN__r1
.Lx468_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx468_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__shifttest:
                        sub              rsp, 800
                        mov              rdi, rsp
                        add              rdi, 720
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
shifttest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n469_disjunction_α:     mov              r11, 176
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              dword ptr [rsp + 32], 0;             jmp   n494_lit_integer_α
n469_disjunction_as:    mov              r11, 176
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 0;                              jne   .Lx496_0
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax;           jmp   n470_assign_α
.Lx496_0:               cmp              eax, 1;                              jne   .Lx496_1
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax;           jmp   n470_assign_α
.Lx496_1:               cmp              eax, 2;                              jne   .Lx496_2
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax;           jmp   n470_assign_α
.Lx496_2:               cmp              eax, 3;                              jne   .Lx496_3
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 24], rax;           jmp   n470_assign_α
.Lx496_3:               cmp              eax, 4;                              jne   .Lx496_4
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 24], rax;           jmp   n470_assign_α
.Lx496_4:                                                                     jmp   n470_assign_α
n469_disjunction_β:     mov              r11, 176
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 0;                              je    n469_disjunction_af
                        cmp              eax, 1;                              je    n469_disjunction_af
                        cmp              eax, 2;                              je    n492_to_by_β
                        cmp              eax, 3;                              je    n469_disjunction_af
                                                                              jmp   n469_disjunction_af
n469_disjunction_af:    mov              r11, 176
                        add              dword ptr [rsp + 32], 1
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 1;                              je    n493_lit_integer_α
                        cmp              eax, 2;                              je    n489_lit_integer_α
                        cmp              eax, 3;                              je    n488_lit_integer_α
                        cmp              eax, 4;                              je    n487_lit_integer_α
                                                                              jmp   shifttest_ω
#-----------------------------------------------------------------------------------------------------------------------
n470_assign_α:          mov              r11, 177
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n471_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n471_bound_α:           mov              r11, 178
                        mov              qword ptr [rsp + 192], rsp;          jmp   n472_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_integer_α:     mov              r11, 179
                        mov              qword ptr [rsp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n473_var_α
.Lx500_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n473_var_α:             mov              r11, 180
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 712], rax;          jmp   n474_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n474_call_builtin_icon_α:
                        mov              r11, 181
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn504:              .string          "ishift"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn504]
                        lea              rsi, [rsp + 640]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393344
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n476_lit_integer_α
                                                                              jmp   n475_call_proc_staged_α
n474_call_builtin_icon_β:
                        mov              r11, 181;                            jmp   n476_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n475_call_proc_staged_α:
                        mov              r11, 182
                        lea              rsi, [rsp + 624]
                        call             wr25_dcα;                            jmp   .Lx506_2
.Lx506_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx506_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
.Lx506_29:              mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n476_lit_integer_α
                                                                              jmp   n476_lit_integer_α
n475_call_proc_staged_β:
                        mov              r11, 182;                            jmp   n476_lit_integer_α
.Lx506_0:               .quad            .Lx506_0_s
.Lx506_0_s:             .string          "wr25"
#-----------------------------------------------------------------------------------------------------------------------
n476_lit_integer_α:     mov              r11, 183
                        mov              qword ptr [rsp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n477_var_α
.Lx507_0:               .quad            1703
#-----------------------------------------------------------------------------------------------------------------------
n477_var_α:             mov              r11, 184
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 568], rax;          jmp   n478_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n478_call_builtin_icon_α:
                        mov              r11, 185
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn511:              .string          "ishift"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn511]
                        lea              rsi, [rsp + 496]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393344
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n480_lit_integer_α
                                                                              jmp   n479_call_proc_staged_α
n478_call_builtin_icon_β:
                        mov              r11, 185;                            jmp   n480_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n479_call_proc_staged_α:
                        mov              r11, 186
                        lea              rsi, [rsp + 480]
                        call             wr25_dcα;                            jmp   .Lx513_2
.Lx513_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx513_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
.Lx513_29:              mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n480_lit_integer_α
                                                                              jmp   n480_lit_integer_α
n479_call_proc_staged_β:
                        mov              r11, 186;                            jmp   n480_lit_integer_α
.Lx513_0:               .quad            .Lx513_0_s
.Lx513_0_s:             .string          "wr25"
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_integer_α:     mov              r11, 187
                        mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n481_var_α
.Lx514_0:               .quad            18446744073709551365
#-----------------------------------------------------------------------------------------------------------------------
n481_var_α:             mov              r11, 188
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 424], rax;          jmp   n482_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n482_call_builtin_icon_α:
                        mov              r11, 189
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn518:              .string          "ishift"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn518]
                        lea              rsi, [rsp + 352]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393344
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n484_call_builtin_icon_α
                                                                              jmp   n483_call_proc_staged_α
n482_call_builtin_icon_β:
                        mov              r11, 189;                            jmp   n484_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n483_call_proc_staged_α:
                        mov              r11, 190
                        lea              rsi, [rsp + 336]
                        call             wr25_dcα;                            jmp   .Lx520_2
.Lx520_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx520_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
.Lx520_29:              mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n484_call_builtin_icon_α
                                                                              jmp   n484_call_builtin_icon_α
n483_call_proc_staged_β:
                        mov              r11, 190;                            jmp   n484_call_builtin_icon_α
.Lx520_0:               .quad            .Lx520_0_s
.Lx520_0_s:             .string          "wr25"
#-----------------------------------------------------------------------------------------------------------------------
n484_call_builtin_icon_α:
                        mov              r11, 191
                        .section         .rodata
.Lrkfn522:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn522]
                        lea              rsi, [rsp + 272]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n486_unmark_α
                                                                              jmp   n485_conjunction_α
n484_call_builtin_icon_β:
                        mov              r11, 191;                            jmp   n486_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n485_conjunction_α:     mov              r11, 192
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 248], rax;          jmp   n486_unmark_α
n485_conjunction_β:     mov              r11, 192;                            jmp   n486_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n486_unmark_α:          mov              r11, 193
                        mov              rsp, qword ptr [rsp + 192];          jmp   n469_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n487_lit_integer_α:     mov              r11, 194
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx526_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n469_disjunction_as
n487_lit_integer_β:     mov              r11, 194;                            jmp   n469_disjunction_af
.Lx526_0:               .quad            18446744073709551552
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_integer_α:     mov              r11, 195
                        mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n469_disjunction_as
n488_lit_integer_β:     mov              r11, 195;                            jmp   n469_disjunction_af
.Lx527_0:               .quad            18446744073709551553
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_integer_α:     mov              r11, 196
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n490_lit_integer_α
n489_lit_integer_β:     mov              r11, 196;                            jmp   n469_disjunction_af
.Lx528_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_integer_α:     mov              r11, 197
                        mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n491_lit_integer_α
.Lx529_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_integer_α:     mov              r11, 198
                        mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n492_to_by_α
.Lx530_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n492_to_by_α:           mov              r11, 199
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
                        mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], 3
                        mov              qword ptr [rsp + 136], rax
                        mov              rdi, qword ptr [rsp + 144]
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
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 96], rax
.Lx532_0:               mov              rax, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 152]
                        cmp              rdx, 0;                              jl    .Lx532_1
                        cmp              rax, rcx;                            jg    n469_disjunction_af
                                                                              jmp   .Lx532_2
.Lx532_1:               cmp              rax, rcx;                            jl    n469_disjunction_af
.Lx532_2:               mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax;           jmp   n469_disjunction_as
n492_to_by_β:           mov              r11, 199
                        mov              rdx, qword ptr [rsp + 152]
                        mov              rax, qword ptr [rsp + 96]
                        add              rax, rdx
                        mov              qword ptr [rsp + 96], rax;           jmp   .Lx532_0
#-----------------------------------------------------------------------------------------------------------------------
n493_lit_integer_α:     mov              r11, 200
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n469_disjunction_as
n493_lit_integer_β:     mov              r11, 200;                            jmp   n469_disjunction_af
.Lx533_0:               .quad            63
#-----------------------------------------------------------------------------------------------------------------------
n494_lit_integer_α:     mov              r11, 201
                        mov              qword ptr [rsp + 48], 3              # result
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n469_disjunction_as
n494_lit_integer_β:     mov              r11, 201;                            jmp   n469_disjunction_af
.Lx534_0:               .quad            64
#-----------------------------------------------------------------------------------------------------------------------
shifttest_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
shifttest_β:
                                                                              jmp   shifttest_ω
#-----------------------------------------------------------------------------------------------------------------------
shifttest_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 800;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
shifttest_ω:
                        add              rsp, 800;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
shifttest_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx535_3]
                        push             rcx
                        lea              rcx, [rip + .Lx535_2]
                        push             rcx;                                 jmp   FN__shifttest
.Lx535_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx535_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__wr25:
                        sub              rsp, 240
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
wr25_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n536_var_α:             mov              r11, 202
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 152], rax;          jmp   n537_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n537_lit_integer_α:     mov              r11, 203
                        mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n538_call_builtin_icon_α
.Lx542_0:               .quad            25
#-----------------------------------------------------------------------------------------------------------------------
n538_call_builtin_icon_α:
                        mov              r11, 204
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn544:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn544]
                        lea              rsi, [rsp + 96]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    wr25_ω
                                                                              jmp   n539_call_builtin_icon_α
n538_call_builtin_icon_β:
                        mov              r11, 204;                            jmp   wr25_ω
#-----------------------------------------------------------------------------------------------------------------------
n539_call_builtin_icon_α:
                        mov              r11, 205
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn546:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn546]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    wr25_ω
                                                                              jmp   wr25_γ
n539_call_builtin_icon_β:
                        mov              r11, 205;                            jmp   wr25_ω
#-----------------------------------------------------------------------------------------------------------------------
wr25_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
wr25_β:
                                                                              jmp   wr25_ω
#-----------------------------------------------------------------------------------------------------------------------
wr25_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 240;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
wr25_ω:
                        add              rsp, 240;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
wr25_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx547_3]
                        push             rcx
                        lea              rcx, [rip + .Lx547_2]
                        push             rcx;                                 jmp   FN__wr25
.Lx547_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx547_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__pow:
                        sub              rsp, 1488
                        mov              rdi, rsp
                        add              rdi, 1376
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
pow_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n548_disjunction_α:     mov              r11, 206
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              dword ptr [rsp + 1248], 0;           jmp   n601_var_α
n548_disjunction_as:    mov              r11, 206
                        mov              eax, dword ptr [rsp + 1248]
                        cmp              eax, 0;                              jne   .Lx609_0
                                                                              jmp   n549_var_α
.Lx609_0:                                                                     jmp   n549_var_α
n548_disjunction_β:     mov              r11, 206
                        mov              eax, dword ptr [rsp + 1248];         jmp   n549_var_α
n548_disjunction_af:    mov              r11, 206
                        add              dword ptr [rsp + 1248], 1
                        mov              eax, dword ptr [rsp + 1248];         jmp   n549_var_α
#-----------------------------------------------------------------------------------------------------------------------
n549_var_α:             mov              r11, 207
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n550_var_α
#-----------------------------------------------------------------------------------------------------------------------
n550_var_α:             mov              r11, 208
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n551_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n551_coerce_numeric_α:  mov              r11, 209
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lx615_1
                        cmp              al, 3;                               jne   .Lx615_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lx615_0
.Lx615_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n552_coerce_numeric_α
.Lx615_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 1184]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n552_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n552_coerce_numeric_α:  mov              r11, 210
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 5;                               je    .Lx617_1
                        cmp              al, 3;                               jne   .Lx617_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx617_0
.Lx617_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n553_binop_α
.Lx617_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 1168]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n553_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n553_binop_α:           mov              r11, 211
                        mov              rdi, qword ptr [rsp + 1184]
                        mov              rsi, qword ptr [rsp + 1192]
                        mov              rdx, qword ptr [rsp + 1168]
                        mov              rcx, qword ptr [rsp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n555_disjunction_α
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n554_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n554_assign_α:          mov              r11, 212
                        mov              rax, qword ptr [rsp + 1152]
                        mov              rdx, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n555_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n555_disjunction_α:     mov              r11, 213
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              dword ptr [rsp + 496], 0;            jmp   n556_var_α
n555_disjunction_as:    mov              r11, 213
                        mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 0;                              jne   .Lx621_0
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax;          jmp   n588_var_α
.Lx621_0:                                                                     jmp   n588_var_α
n555_disjunction_β:     mov              r11, 213
                        mov              eax, dword ptr [rsp + 496];          jmp   n560_disjunction_β
n555_disjunction_af:    mov              r11, 213
                        add              dword ptr [rsp + 496], 1
                        mov              eax, dword ptr [rsp + 496];          jmp   n588_var_α
#-----------------------------------------------------------------------------------------------------------------------
n556_var_α:             mov              r11, 214
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n557_call_builtin_icon_α
n556_var_β:             mov              r11, 214;                            jmp   n555_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n557_call_builtin_icon_α:
                        mov              r11, 215
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn625:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn625]
                        lea              rsi, [rsp + 1072]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262313
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n555_disjunction_af
                                                                              jmp   n558_lit_string_α
n557_call_builtin_icon_β:
                        mov              r11, 215;                            jmp   n555_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n558_lit_string_α:      mov              r11, 216
                        mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 4
                        mov              rax, qword ptr [rip + .Lx626_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n559_binop_test_α
.Lx626_0:               .quad            .Lx626_0_s
.Lx626_0_s:             .string          "real"
#-----------------------------------------------------------------------------------------------------------------------
n559_binop_test_α:      mov              r11, 217
                        mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              rdx, qword ptr [rsp + 1120]
                        mov              rcx, qword ptr [rsp + 1128]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n555_disjunction_af
                        mov              rdi, qword ptr [rsp + 1120]
                        mov              rsi, qword ptr [rsp + 1128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n560_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n560_disjunction_α:     mov              r11, 218
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              dword ptr [rsp + 528], 0;            jmp   n573_var_α
n560_disjunction_as:    mov              r11, 218
                        mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 0;                              jne   .Lx629_0
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax;          jmp   n555_disjunction_as
.Lx629_0:               cmp              eax, 1;                              jne   .Lx629_1
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 520], rax;          jmp   n555_disjunction_as
.Lx629_1:                                                                     jmp   n555_disjunction_as
n560_disjunction_β:     mov              r11, 218
                        mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 0;                              je    n588_var_α
                                                                              jmp   n588_var_α
n560_disjunction_af:    mov              r11, 218
                        add              dword ptr [rsp + 528], 1
                        mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 1;                              je    n561_var_α
                                                                              jmp   n588_var_α
#-----------------------------------------------------------------------------------------------------------------------
n561_var_α:             mov              r11, 219
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 984], rax;          jmp   n562_lit_integer_α
n561_var_β:             mov              r11, 219;                            jmp   n588_var_α
#-----------------------------------------------------------------------------------------------------------------------
n562_lit_integer_α:     mov              r11, 220
                        mov              qword ptr [rsp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n563_coerce_numeric_α
.Lx632_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n563_coerce_numeric_α:  mov              r11, 221
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              al, 5;                               je    .Lx634_1
                        cmp              al, 3;                               jne   .Lx634_0
                        mov              eax, dword ptr [rsp + 992]
                        cmp              al, 3;                               jne   .Lx634_0
.Lx634_1:               mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 968], rax;          jmp   n564_binop_α
.Lx634_0:               lea              rdi, [rsp + 1376]
                        lea              rsi, [rsp + 992]
                        lea              rdx, [rsp + 960]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n564_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n564_binop_α:           mov              r11, 222
                        mov              eax, dword ptr [rsp + 960]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx635_2
                        mov              rax, qword ptr [rsp + 968]
                        mov              rdx, 1000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 944], 3
                        mov              qword ptr [rsp + 952], rax;          jmp   .Lx635_7
.Lx635_2:               and              edx, 1;                              jz    .Lx635_0
                        mov              rsi, qword ptr [rsp + 968]
                        mov              rdi, 1000
                        cmp              al, 5;                               je    .Lx635_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx635_4
.Lx635_3:               movq             xmm0, rsi
.Lx635_4:               cmp              cl, 5;                               je    .Lx635_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx635_6
.Lx635_5:               movq             xmm1, rdi
.Lx635_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 944], 5
                        mov              qword ptr [rsp + 952], rax
.Lx635_7:                                                                     jmp   n565_lit_real_α
.Lx635_0:               mov              rdi, qword ptr [rsp + 960]
                        mov              rsi, qword ptr [rsp + 968]
                        mov              rdx, qword ptr [rsp + 992]
                        mov              rcx, qword ptr [rsp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n588_var_α
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n565_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n565_lit_real_α:        mov              r11, 223
                        mov              qword ptr [rsp + 1008], 5            # result
                        mov              rax, qword ptr [rip + .Lx636_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n566_coerce_numeric_α
.Lx636_0:               .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n566_coerce_numeric_α:  mov              r11, 224
                        mov              eax, dword ptr [rsp + 944]
                        cmp              al, 5;                               je    .Lx638_1
                        cmp              al, 3;                               jne   .Lx638_0
                        mov              eax, dword ptr [rsp + 1008]
                        cmp              al, 3;                               jne   .Lx638_0
.Lx638_1:               mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 936], rax;          jmp   n567_binop_α
.Lx638_0:               lea              rdi, [rsp + 944]
                        lea              rsi, [rsp + 1008]
                        lea              rdx, [rsp + 928]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n567_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n567_binop_α:           mov              r11, 225
                        mov              eax, dword ptr [rsp + 928]
                        mov              ecx, dword ptr [rsp + 1008]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx639_2
                        mov              rax, qword ptr [rsp + 936]
                        mov              rdx, qword ptr [rsp + 1016]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 912], 3
                        mov              qword ptr [rsp + 920], rax;          jmp   .Lx639_7
.Lx639_2:               and              edx, 1;                              jz    .Lx639_0
                        mov              rsi, qword ptr [rsp + 936]
                        mov              rdi, qword ptr [rsp + 1016]
                        cmp              al, 5;                               je    .Lx639_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx639_4
.Lx639_3:               movq             xmm0, rsi
.Lx639_4:               cmp              cl, 5;                               je    .Lx639_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx639_6
.Lx639_5:               movq             xmm1, rdi
.Lx639_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 912], 5
                        mov              qword ptr [rsp + 920], rax
.Lx639_7:                                                                     jmp   n568_call_builtin_icon_α
.Lx639_0:               mov              rdi, qword ptr [rsp + 928]
                        mov              rsi, qword ptr [rsp + 936]
                        mov              rdx, qword ptr [rsp + 1008]
                        mov              rcx, qword ptr [rsp + 1016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n588_var_α
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n568_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n568_call_builtin_icon_α:
                        mov              r11, 226
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 888], rax
                        .section         .rodata
.Lrkfn641:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn641]
                        lea              rsi, [rsp + 880]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n588_var_α
                                                                              jmp   n569_lit_real_α
n568_call_builtin_icon_β:
                        mov              r11, 226;                            jmp   n588_var_α
#-----------------------------------------------------------------------------------------------------------------------
n569_lit_real_α:        mov              r11, 227
                        mov              qword ptr [rsp + 1024], 5            # result
                        mov              rax, qword ptr [rip + .Lx642_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n570_coerce_numeric_α
.Lx642_0:               .quad            4652007308841189376
#-----------------------------------------------------------------------------------------------------------------------
n570_coerce_numeric_α:  mov              r11, 228
                        mov              eax, dword ptr [rsp + 864]
                        cmp              al, 5;                               je    .Lx644_1
                        cmp              al, 3;                               jne   .Lx644_0
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              al, 3;                               jne   .Lx644_0
.Lx644_1:               mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 856], rax;          jmp   n571_binop_α
.Lx644_0:               lea              rdi, [rsp + 864]
                        lea              rsi, [rsp + 1024]
                        lea              rdx, [rsp + 848]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n571_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n571_binop_α:           mov              r11, 229
                        mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdx, qword ptr [rsp + 1024]
                        mov              rcx, qword ptr [rsp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n588_var_α
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n572_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n572_assign_α:          mov              r11, 230
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n560_disjunction_as
n572_assign_β:          mov              r11, 230;                            jmp   n588_var_α
#-----------------------------------------------------------------------------------------------------------------------
n573_var_α:             mov              r11, 231
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 792], rax;          jmp   n574_lit_integer_α
n573_var_β:             mov              r11, 231;                            jmp   n560_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n574_lit_integer_α:     mov              r11, 232
                        mov              qword ptr [rsp + 800], 3             # result
                        mov              rax, qword ptr [rip + .Lx649_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n575_binop_test_α
.Lx649_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n575_binop_test_α:      mov              r11, 233
                        mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              rdx, qword ptr [rsp + 800]
                        mov              rcx, qword ptr [rsp + 808]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n560_disjunction_af
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax;          jmp   n576_var_α
#-----------------------------------------------------------------------------------------------------------------------
n576_var_α:             mov              r11, 234
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 712], rax;          jmp   n577_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n577_lit_integer_α:     mov              r11, 235
                        mov              qword ptr [rsp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Lx653_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n578_coerce_numeric_α
.Lx653_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n578_coerce_numeric_α:  mov              r11, 236
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              al, 5;                               je    .Lx655_1
                        cmp              al, 3;                               jne   .Lx655_0
                        mov              eax, dword ptr [rsp + 720]
                        cmp              al, 3;                               jne   .Lx655_0
.Lx655_1:               mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 696], rax;          jmp   n579_binop_α
.Lx655_0:               lea              rdi, [rsp + 1376]
                        lea              rsi, [rsp + 720]
                        lea              rdx, [rsp + 688]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n579_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n579_binop_α:           mov              r11, 237
                        mov              eax, dword ptr [rsp + 688]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx656_2
                        mov              rax, qword ptr [rsp + 696]
                        mov              rdx, 1000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 672], 3
                        mov              qword ptr [rsp + 680], rax;          jmp   .Lx656_7
.Lx656_2:               and              edx, 1;                              jz    .Lx656_0
                        mov              rsi, qword ptr [rsp + 696]
                        mov              rdi, 1000
                        cmp              al, 5;                               je    .Lx656_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx656_4
.Lx656_3:               movq             xmm0, rsi
.Lx656_4:               cmp              cl, 5;                               je    .Lx656_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx656_6
.Lx656_5:               movq             xmm1, rdi
.Lx656_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 672], 5
                        mov              qword ptr [rsp + 680], rax
.Lx656_7:                                                                     jmp   n580_lit_real_α
.Lx656_0:               mov              rdi, qword ptr [rsp + 688]
                        mov              rsi, qword ptr [rsp + 696]
                        mov              rdx, qword ptr [rsp + 720]
                        mov              rcx, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n588_var_α
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n580_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n580_lit_real_α:        mov              r11, 238
                        mov              qword ptr [rsp + 736], 5             # result
                        mov              rax, qword ptr [rip + .Lx657_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n581_coerce_numeric_α
.Lx657_0:               .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n581_coerce_numeric_α:  mov              r11, 239
                        mov              eax, dword ptr [rsp + 672]
                        cmp              al, 5;                               je    .Lx659_1
                        cmp              al, 3;                               jne   .Lx659_0
                        mov              eax, dword ptr [rsp + 736]
                        cmp              al, 3;                               jne   .Lx659_0
.Lx659_1:               mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 664], rax;          jmp   n582_binop_α
.Lx659_0:               lea              rdi, [rsp + 672]
                        lea              rsi, [rsp + 736]
                        lea              rdx, [rsp + 656]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n582_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n582_binop_α:           mov              r11, 240
                        mov              eax, dword ptr [rsp + 656]
                        mov              ecx, dword ptr [rsp + 736]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx660_2
                        mov              rax, qword ptr [rsp + 664]
                        mov              rdx, qword ptr [rsp + 744]
                        add              rax, rdx
                        mov              qword ptr [rsp + 640], 3
                        mov              qword ptr [rsp + 648], rax;          jmp   .Lx660_7
.Lx660_2:               and              edx, 1;                              jz    .Lx660_0
                        mov              rsi, qword ptr [rsp + 664]
                        mov              rdi, qword ptr [rsp + 744]
                        cmp              al, 5;                               je    .Lx660_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx660_4
.Lx660_3:               movq             xmm0, rsi
.Lx660_4:               cmp              cl, 5;                               je    .Lx660_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx660_6
.Lx660_5:               movq             xmm1, rdi
.Lx660_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 640], 5
                        mov              qword ptr [rsp + 648], rax
.Lx660_7:                                                                     jmp   n583_call_builtin_icon_α
.Lx660_0:               mov              rdi, qword ptr [rsp + 656]
                        mov              rsi, qword ptr [rsp + 664]
                        mov              rdx, qword ptr [rsp + 736]
                        mov              rcx, qword ptr [rsp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n588_var_α
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n583_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n583_call_builtin_icon_α:
                        mov              r11, 241
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        .section         .rodata
.Lrkfn662:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn662]
                        lea              rsi, [rsp + 608]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n588_var_α
                                                                              jmp   n584_lit_real_α
n583_call_builtin_icon_β:
                        mov              r11, 241;                            jmp   n588_var_α
#-----------------------------------------------------------------------------------------------------------------------
n584_lit_real_α:        mov              r11, 242
                        mov              qword ptr [rsp + 752], 5             # result
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n585_coerce_numeric_α
.Lx663_0:               .quad            4652007308841189376
#-----------------------------------------------------------------------------------------------------------------------
n585_coerce_numeric_α:  mov              r11, 243
                        mov              eax, dword ptr [rsp + 592]
                        cmp              al, 5;                               je    .Lx665_1
                        cmp              al, 3;                               jne   .Lx665_0
                        mov              eax, dword ptr [rsp + 752]
                        cmp              al, 3;                               jne   .Lx665_0
.Lx665_1:               mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 584], rax;          jmp   n586_binop_α
.Lx665_0:               lea              rdi, [rsp + 592]
                        lea              rsi, [rsp + 752]
                        lea              rdx, [rsp + 576]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n586_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n586_binop_α:           mov              r11, 244
                        mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, qword ptr [rsp + 584]
                        mov              rdx, qword ptr [rsp + 752]
                        mov              rcx, qword ptr [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n588_var_α
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n587_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n587_assign_α:          mov              r11, 245
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n560_disjunction_as
n587_assign_β:          mov              r11, 245;                            jmp   n588_var_α
#-----------------------------------------------------------------------------------------------------------------------
n588_var_α:             mov              r11, 246
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 232], rax;          jmp   n589_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n589_lit_integer_α:     mov              r11, 247
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx670_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n590_call_builtin_icon_α
.Lx670_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n590_call_builtin_icon_α:
                        mov              r11, 248
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn672:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn672]
                        lea              rsi, [rsp + 176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n600_return_α
                                                                              jmp   n591_lit_string_α
n590_call_builtin_icon_β:
                        mov              r11, 248;                            jmp   n600_return_α
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_string_α:      mov              r11, 249
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 3
                        mov              rax, qword ptr [rip + .Lx673_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n592_var_α
.Lx673_0:               .quad            .Lx673_0_s
.Lx673_0_s:             .string          " ^ "
#-----------------------------------------------------------------------------------------------------------------------
n592_var_α:             mov              r11, 250
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 344], rax;          jmp   n593_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n593_lit_integer_α:     mov              r11, 251
                        mov              qword ptr [rsp + 352], 3             # result
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n594_call_builtin_icon_α
.Lx676_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n594_call_builtin_icon_α:
                        mov              r11, 252
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn678:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn678]
                        lea              rsi, [rsp + 288]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262275
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n600_return_α
                                                                              jmp   n595_lit_string_α
n594_call_builtin_icon_β:
                        mov              r11, 252;                            jmp   n600_return_α
#-----------------------------------------------------------------------------------------------------------------------
n595_lit_string_α:      mov              r11, 253
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 1
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n596_var_α
.Lx679_0:               .quad            .Lx679_0_s
.Lx679_0_s:             .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n596_var_α:             mov              r11, 254
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 456], rax;          jmp   n597_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n597_lit_integer_α:     mov              r11, 255
                        mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx682_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n598_call_builtin_icon_α
.Lx682_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n598_call_builtin_icon_α:
                        mov              r11, 256
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn684:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn684]
                        lea              rsi, [rsp + 400]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n600_return_α
                                                                              jmp   n599_call_builtin_icon_α
n598_call_builtin_icon_β:
                        mov              r11, 256;                            jmp   n600_return_α
#-----------------------------------------------------------------------------------------------------------------------
n599_call_builtin_icon_α:
                        mov              r11, 257
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn686:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn686]
                        lea              rsi, [rsp + 64]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n600_return_α
                                                                              jmp   n600_return_α
n599_call_builtin_icon_β:
                        mov              r11, 257;                            jmp   n600_return_α
#-----------------------------------------------------------------------------------------------------------------------
n600_return_α:          mov              r11, 258
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   pow_γ
#-----------------------------------------------------------------------------------------------------------------------
n601_var_α:             mov              r11, 259
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n602_lit_integer_α
n601_var_β:             mov              r11, 259;                            jmp   n548_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n602_lit_integer_α:     mov              r11, 260
                        mov              qword ptr [rsp + 1360], 3            # result
                        mov              rax, qword ptr [rip + .Lx690_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n603_binop_test_α
.Lx690_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n603_binop_test_α:      mov              r11, 261
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 112;                             je    .Lx691_0
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              al, 112;                             je    .Lx691_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx691_2
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              al, 3;                               jne   .Lx691_2
.Lx691_1:               mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 1368]
                        cmp              rax, rcx;                            jne   n548_disjunction_af
                        mov              rcx, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1328], rcx
                        mov              rcx, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1336], rcx;         jmp   n604_var_α
.Lx691_0:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 1360]
                        mov              rcx, qword ptr [rsp + 1368]
                        mov              r8d, 9
                        lea              r9, [rsp + 1328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx691_1
                        cmp              eax, 1;                              je    n548_disjunction_af
                                                                              jmp   n604_var_α
.Lx691_2:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 1360]
                        mov              rcx, qword ptr [rsp + 1368]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n548_disjunction_af
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n604_var_α
#-----------------------------------------------------------------------------------------------------------------------
n604_var_α:             mov              r11, 262
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n605_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n605_lit_integer_α:     mov              r11, 263
                        mov              qword ptr [rsp + 1312], 3            # result
                        mov              rax, qword ptr [rip + .Lx694_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n606_binop_test_α
.Lx694_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n606_binop_test_α:      mov              r11, 264
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 112;                             je    .Lx695_0
                        mov              eax, dword ptr [rsp + 1312]
                        cmp              al, 112;                             je    .Lx695_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lx695_2
                        mov              eax, dword ptr [rsp + 1312]
                        cmp              al, 3;                               jne   .Lx695_2
.Lx695_1:               mov              rax, qword ptr [rsp + 40]
                        mov              rcx, qword ptr [rsp + 1320]
                        cmp              rax, rcx;                            jg    n548_disjunction_af
                        mov              rcx, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1280], rcx
                        mov              rcx, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1288], rcx;         jmp   n607_conjunction_α
.Lx695_0:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 1312]
                        mov              rcx, qword ptr [rsp + 1320]
                        mov              r8d, 6
                        lea              r9, [rsp + 1280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx695_1
                        cmp              eax, 1;                              je    n548_disjunction_af
                                                                              jmp   n607_conjunction_α
.Lx695_2:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 1312]
                        mov              rcx, qword ptr [rsp + 1320]
                        mov              r8d, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n548_disjunction_af
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n607_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n607_conjunction_α:     mov              r11, 265
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1272], rax;         jmp   pow_ω
n607_conjunction_β:     mov              r11, 265;                            jmp   n548_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
pow_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pow_β:
                                                                              jmp   pow_ω
#-----------------------------------------------------------------------------------------------------------------------
pow_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 1488;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
pow_ω:
                        add              rsp, 1488;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
pow_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx697_3]
                        push             rcx
                        lea              rcx, [rip + .Lx697_2]
                        push             rcx;                                 jmp   FN__pow
.Lx697_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx697_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "numtest__STATIC__f"
.Lgvan1:                .string          "numtest__INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 3696
                        mov              rdi, rsp
                        add              rdi, 3584
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n698_lit_integer_α:     mov              r11, 266
                        mov              qword ptr [rsp + 3552], 3            # result
                        mov              rax, qword ptr [rip + .Lx822_0]
                        mov              qword ptr [rsp + 3560], rax;         jmp   n699_lit_integer_α
.Lx822_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n699_lit_integer_α:     mov              r11, 267
                        mov              qword ptr [rsp + 3568], 3            # result
                        mov              rax, qword ptr [rip + .Lx823_0]
                        mov              qword ptr [rsp + 3576], rax;         jmp   n700_call_proc_staged_α
.Lx823_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n700_call_proc_staged_α:
                        mov              r11, 268
                        lea              rsi, [rsp + 3552]
                        lea              rdx, [rsp + 3568]
                        call             numtest_dcα;                         jmp   .Lx825_2
.Lx825_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx825_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3488], rax
                        mov              qword ptr [rsp + 3496], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3488]
                        mov              rdx, qword ptr [rsp + 3496]
.Lx825_29:              mov              qword ptr [rsp + 3488], rax
                        mov              qword ptr [rsp + 3496], rdx
                        cmp              al, 104;                             je    n701_lit_integer_α
                                                                              jmp   n701_lit_integer_α
n700_call_proc_staged_β:
                        mov              r11, 268;                            jmp   n701_lit_integer_α
.Lx825_0:               .quad            .Lx825_0_s
.Lx825_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n701_lit_integer_α:     mov              r11, 269
                        mov              qword ptr [rsp + 3456], 3            # result
                        mov              rax, qword ptr [rip + .Lx826_0]
                        mov              qword ptr [rsp + 3464], rax;         jmp   n702_lit_integer_α
.Lx826_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n702_lit_integer_α:     mov              r11, 270
                        mov              qword ptr [rsp + 3472], 3            # result
                        mov              rax, qword ptr [rip + .Lx827_0]
                        mov              qword ptr [rsp + 3480], rax;         jmp   n703_call_proc_staged_α
.Lx827_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n703_call_proc_staged_α:
                        mov              r11, 271
                        lea              rsi, [rsp + 3456]
                        lea              rdx, [rsp + 3472]
                        call             numtest_dcα;                         jmp   .Lx829_2
.Lx829_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx829_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3392]
                        mov              rdx, qword ptr [rsp + 3400]
.Lx829_29:              mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx
                        cmp              al, 104;                             je    n704_lit_integer_α
                                                                              jmp   n704_lit_integer_α
n703_call_proc_staged_β:
                        mov              r11, 271;                            jmp   n704_lit_integer_α
.Lx829_0:               .quad            .Lx829_0_s
.Lx829_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n704_lit_integer_α:     mov              r11, 272
                        mov              qword ptr [rsp + 3360], 3            # result
                        mov              rax, qword ptr [rip + .Lx830_0]
                        mov              qword ptr [rsp + 3368], rax;         jmp   n705_lit_integer_α
.Lx830_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n705_lit_integer_α:     mov              r11, 273
                        mov              qword ptr [rsp + 3376], 3            # result
                        mov              rax, qword ptr [rip + .Lx831_0]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n706_call_proc_staged_α
.Lx831_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n706_call_proc_staged_α:
                        mov              r11, 274
                        lea              rsi, [rsp + 3360]
                        lea              rdx, [rsp + 3376]
                        call             numtest_dcα;                         jmp   .Lx833_2
.Lx833_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx833_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3296]
                        mov              rdx, qword ptr [rsp + 3304]
.Lx833_29:              mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              al, 104;                             je    n707_lit_integer_α
                                                                              jmp   n707_lit_integer_α
n706_call_proc_staged_β:
                        mov              r11, 274;                            jmp   n707_lit_integer_α
.Lx833_0:               .quad            .Lx833_0_s
.Lx833_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n707_lit_integer_α:     mov              r11, 275
                        mov              qword ptr [rsp + 3264], 3            # result
                        mov              rax, qword ptr [rip + .Lx834_0]
                        mov              qword ptr [rsp + 3272], rax;         jmp   n708_lit_integer_α
.Lx834_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n708_lit_integer_α:     mov              r11, 276
                        mov              qword ptr [rsp + 3280], 3            # result
                        mov              rax, qword ptr [rip + .Lx835_0]
                        mov              qword ptr [rsp + 3288], rax;         jmp   n709_call_proc_staged_α
.Lx835_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n709_call_proc_staged_α:
                        mov              r11, 277
                        lea              rsi, [rsp + 3264]
                        lea              rdx, [rsp + 3280]
                        call             numtest_dcα;                         jmp   .Lx837_2
.Lx837_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx837_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3200]
                        mov              rdx, qword ptr [rsp + 3208]
.Lx837_29:              mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        cmp              al, 104;                             je    n710_lit_integer_α
                                                                              jmp   n710_lit_integer_α
n709_call_proc_staged_β:
                        mov              r11, 277;                            jmp   n710_lit_integer_α
.Lx837_0:               .quad            .Lx837_0_s
.Lx837_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n710_lit_integer_α:     mov              r11, 278
                        mov              qword ptr [rsp + 3168], 3            # result
                        mov              rax, qword ptr [rip + .Lx838_0]
                        mov              qword ptr [rsp + 3176], rax;         jmp   n711_lit_integer_α
.Lx838_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n711_lit_integer_α:     mov              r11, 279
                        mov              qword ptr [rsp + 3184], 3            # result
                        mov              rax, qword ptr [rip + .Lx839_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n712_call_proc_staged_α
.Lx839_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n712_call_proc_staged_α:
                        mov              r11, 280
                        lea              rsi, [rsp + 3168]
                        lea              rdx, [rsp + 3184]
                        call             numtest_dcα;                         jmp   .Lx841_2
.Lx841_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx841_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3104]
                        mov              rdx, qword ptr [rsp + 3112]
.Lx841_29:              mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        cmp              al, 104;                             je    n713_lit_integer_α
                                                                              jmp   n713_lit_integer_α
n712_call_proc_staged_β:
                        mov              r11, 280;                            jmp   n713_lit_integer_α
.Lx841_0:               .quad            .Lx841_0_s
.Lx841_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n713_lit_integer_α:     mov              r11, 281
                        mov              qword ptr [rsp + 3072], 3            # result
                        mov              rax, qword ptr [rip + .Lx842_0]
                        mov              qword ptr [rsp + 3080], rax;         jmp   n714_lit_integer_α
.Lx842_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n714_lit_integer_α:     mov              r11, 282
                        mov              qword ptr [rsp + 3088], 3            # result
                        mov              rax, qword ptr [rip + .Lx843_0]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n715_call_proc_staged_α
.Lx843_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n715_call_proc_staged_α:
                        mov              r11, 283
                        lea              rsi, [rsp + 3072]
                        lea              rdx, [rsp + 3088]
                        call             numtest_dcα;                         jmp   .Lx845_2
.Lx845_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx845_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3008]
                        mov              rdx, qword ptr [rsp + 3016]
.Lx845_29:              mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx
                        cmp              al, 104;                             je    n716_lit_integer_α
                                                                              jmp   n716_lit_integer_α
n715_call_proc_staged_β:
                        mov              r11, 283;                            jmp   n716_lit_integer_α
.Lx845_0:               .quad            .Lx845_0_s
.Lx845_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n716_lit_integer_α:     mov              r11, 284
                        mov              qword ptr [rsp + 2976], 3            # result
                        mov              rax, qword ptr [rip + .Lx846_0]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n717_lit_integer_α
.Lx846_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n717_lit_integer_α:     mov              r11, 285
                        mov              qword ptr [rsp + 2992], 3            # result
                        mov              rax, qword ptr [rip + .Lx847_0]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n718_call_proc_staged_α
.Lx847_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n718_call_proc_staged_α:
                        mov              r11, 286
                        lea              rsi, [rsp + 2976]
                        lea              rdx, [rsp + 2992]
                        call             numtest_dcα;                         jmp   .Lx849_2
.Lx849_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx849_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2912]
                        mov              rdx, qword ptr [rsp + 2920]
.Lx849_29:              mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              al, 104;                             je    n719_lit_integer_α
                                                                              jmp   n719_lit_integer_α
n718_call_proc_staged_β:
                        mov              r11, 286;                            jmp   n719_lit_integer_α
.Lx849_0:               .quad            .Lx849_0_s
.Lx849_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n719_lit_integer_α:     mov              r11, 287
                        mov              qword ptr [rsp + 2880], 3            # result
                        mov              rax, qword ptr [rip + .Lx850_0]
                        mov              qword ptr [rsp + 2888], rax;         jmp   n720_lit_integer_α
.Lx850_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n720_lit_integer_α:     mov              r11, 288
                        mov              qword ptr [rsp + 2896], 3            # result
                        mov              rax, qword ptr [rip + .Lx851_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n721_call_proc_staged_α
.Lx851_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n721_call_proc_staged_α:
                        mov              r11, 289
                        lea              rsi, [rsp + 2880]
                        lea              rdx, [rsp + 2896]
                        call             numtest_dcα;                         jmp   .Lx853_2
.Lx853_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx853_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2816]
                        mov              rdx, qword ptr [rsp + 2824]
.Lx853_29:              mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        cmp              al, 104;                             je    n722_lit_real_α
                                                                              jmp   n722_lit_real_α
n721_call_proc_staged_β:
                        mov              r11, 289;                            jmp   n722_lit_real_α
.Lx853_0:               .quad            .Lx853_0_s
.Lx853_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n722_lit_real_α:        mov              r11, 290
                        mov              qword ptr [rsp + 2784], 5            # result
                        mov              rax, qword ptr [rip + .Lx854_0]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n723_lit_integer_α
.Lx854_0:               .quad            4618666597849812173
#-----------------------------------------------------------------------------------------------------------------------
n723_lit_integer_α:     mov              r11, 291
                        mov              qword ptr [rsp + 2800], 3            # result
                        mov              rax, qword ptr [rip + .Lx855_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n724_call_proc_staged_α
.Lx855_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n724_call_proc_staged_α:
                        mov              r11, 292
                        lea              rsi, [rsp + 2784]
                        lea              rdx, [rsp + 2800]
                        call             numtest_dcα;                         jmp   .Lx857_2
.Lx857_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx857_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2720]
                        mov              rdx, qword ptr [rsp + 2728]
.Lx857_29:              mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                        cmp              al, 104;                             je    n725_lit_integer_α
                                                                              jmp   n725_lit_integer_α
n724_call_proc_staged_β:
                        mov              r11, 292;                            jmp   n725_lit_integer_α
.Lx857_0:               .quad            .Lx857_0_s
.Lx857_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n725_lit_integer_α:     mov              r11, 293
                        mov              qword ptr [rsp + 2688], 3            # result
                        mov              rax, qword ptr [rip + .Lx858_0]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n726_lit_real_α
.Lx858_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n726_lit_real_α:        mov              r11, 294
                        mov              qword ptr [rsp + 2704], 5            # result
                        mov              rax, qword ptr [rip + .Lx859_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n727_call_proc_staged_α
.Lx859_0:               .quad            4612811918334230528
#-----------------------------------------------------------------------------------------------------------------------
n727_call_proc_staged_α:
                        mov              r11, 295
                        lea              rsi, [rsp + 2688]
                        lea              rdx, [rsp + 2704]
                        call             numtest_dcα;                         jmp   .Lx861_2
.Lx861_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx861_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2624]
                        mov              rdx, qword ptr [rsp + 2632]
.Lx861_29:              mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx
                        cmp              al, 104;                             je    n728_lit_real_α
                                                                              jmp   n728_lit_real_α
n727_call_proc_staged_β:
                        mov              r11, 295;                            jmp   n728_lit_real_α
.Lx861_0:               .quad            .Lx861_0_s
.Lx861_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n728_lit_real_α:        mov              r11, 296
                        mov              qword ptr [rsp + 2592], 5            # result
                        mov              rax, qword ptr [rip + .Lx862_0]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n729_lit_real_α
.Lx862_0:               .quad            4617765877924338074
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_real_α:        mov              r11, 297
                        mov              qword ptr [rsp + 2608], 5            # result
                        mov              rax, qword ptr [rip + .Lx863_0]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n730_call_proc_staged_α
.Lx863_0:               .quad            4608083138725491507
#-----------------------------------------------------------------------------------------------------------------------
n730_call_proc_staged_α:
                        mov              r11, 298
                        lea              rsi, [rsp + 2592]
                        lea              rdx, [rsp + 2608]
                        call             numtest_dcα;                         jmp   .Lx865_2
.Lx865_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx865_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2528]
                        mov              rdx, qword ptr [rsp + 2536]
.Lx865_29:              mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        cmp              al, 104;                             je    n731_lit_string_α
                                                                              jmp   n731_lit_string_α
n730_call_proc_staged_β:
                        mov              r11, 298;                            jmp   n731_lit_string_α
.Lx865_0:               .quad            .Lx865_0_s
.Lx865_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_string_α:      mov              r11, 299
                        mov              qword ptr [rsp + 2496], 2            # result
                        mov              dword ptr [rsp + 2500], 3
                        mov              rax, qword ptr [rip + .Lx866_0]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n732_lit_real_α
.Lx866_0:               .quad            .Lx866_0_s
.Lx866_0_s:             .string          " 1 "
#-----------------------------------------------------------------------------------------------------------------------
n732_lit_real_α:        mov              r11, 300
                        mov              qword ptr [rsp + 2512], 5            # result
                        mov              rax, qword ptr [rip + .Lx867_0]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n733_call_proc_staged_α
.Lx867_0:               .quad            4612811918334230528
#-----------------------------------------------------------------------------------------------------------------------
n733_call_proc_staged_α:
                        mov              r11, 301
                        lea              rsi, [rsp + 2496]
                        lea              rdx, [rsp + 2512]
                        call             numtest_dcα;                         jmp   .Lx869_2
.Lx869_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx869_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2432]
                        mov              rdx, qword ptr [rsp + 2440]
.Lx869_29:              mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              al, 104;                             je    n734_lit_string_α
                                                                              jmp   n734_lit_string_α
n733_call_proc_staged_β:
                        mov              r11, 301;                            jmp   n734_lit_string_α
.Lx869_0:               .quad            .Lx869_0_s
.Lx869_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_string_α:      mov              r11, 302
                        mov              qword ptr [rsp + 2400], 2            # result
                        mov              dword ptr [rsp + 2404], 4
                        mov              rax, qword ptr [rip + .Lx870_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n735_lit_real_α
.Lx870_0:               .quad            .Lx870_0_s
.Lx870_0_s:             .string          " 3.4"
#-----------------------------------------------------------------------------------------------------------------------
n735_lit_real_α:        mov              r11, 303
                        mov              qword ptr [rsp + 2416], 5            # result
                        mov              rax, qword ptr [rip + .Lx871_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n736_call_proc_staged_α
.Lx871_0:               .quad            4610334938539176755
#-----------------------------------------------------------------------------------------------------------------------
n736_call_proc_staged_α:
                        mov              r11, 304
                        lea              rsi, [rsp + 2400]
                        lea              rdx, [rsp + 2416]
                        call             numtest_dcα;                         jmp   .Lx873_2
.Lx873_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx873_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2336]
                        mov              rdx, qword ptr [rsp + 2344]
.Lx873_29:              mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              al, 104;                             je    n737_lit_string_α
                                                                              jmp   n737_lit_string_α
n736_call_proc_staged_β:
                        mov              r11, 304;                            jmp   n737_lit_string_α
.Lx873_0:               .quad            .Lx873_0_s
.Lx873_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n737_lit_string_α:      mov              r11, 305
                        mov              qword ptr [rsp + 2304], 2            # result
                        mov              dword ptr [rsp + 2308], 3
                        mov              rax, qword ptr [rip + .Lx874_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n738_lit_string_α
.Lx874_0:               .quad            .Lx874_0_s
.Lx874_0_s:             .string          " 5 "
#-----------------------------------------------------------------------------------------------------------------------
n738_lit_string_α:      mov              r11, 306
                        mov              qword ptr [rsp + 2320], 2            # result
                        mov              dword ptr [rsp + 2324], 3
                        mov              rax, qword ptr [rip + .Lx875_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n739_call_proc_staged_α
.Lx875_0:               .quad            .Lx875_0_s
.Lx875_0_s:             .string          " 5 "
#-----------------------------------------------------------------------------------------------------------------------
n739_call_proc_staged_α:
                        mov              r11, 307
                        lea              rsi, [rsp + 2304]
                        lea              rdx, [rsp + 2320]
                        call             numtest_dcα;                         jmp   .Lx877_2
.Lx877_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx877_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2240]
                        mov              rdx, qword ptr [rsp + 2248]
.Lx877_29:              mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        cmp              al, 104;                             je    n740_lit_charset_α
                                                                              jmp   n740_lit_charset_α
n739_call_proc_staged_β:
                        mov              r11, 307;                            jmp   n740_lit_charset_α
.Lx877_0:               .quad            .Lx877_0_s
.Lx877_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n740_lit_charset_α:     mov              r11, 308
                        mov              qword ptr [rsp + 2208], 2            # result
                        mov              dword ptr [rsp + 2212], -1
                        mov              rax, qword ptr [rip + .Lx878_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n741_lit_charset_α
.Lx878_0:               .quad            .Lx878_0_s
.Lx878_0_s:             .string          "04"
#-----------------------------------------------------------------------------------------------------------------------
n741_lit_charset_α:     mov              r11, 309
                        mov              qword ptr [rsp + 2224], 2            # result
                        mov              dword ptr [rsp + 2228], -1
                        mov              rax, qword ptr [rip + .Lx879_0]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n742_call_proc_staged_α
.Lx879_0:               .quad            .Lx879_0_s
.Lx879_0_s:             .string          "7"
#-----------------------------------------------------------------------------------------------------------------------
n742_call_proc_staged_α:
                        mov              r11, 310
                        lea              rsi, [rsp + 2208]
                        lea              rdx, [rsp + 2224]
                        call             numtest_dcα;                         jmp   .Lx881_2
.Lx881_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx881_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2144]
                        mov              rdx, qword ptr [rsp + 2152]
.Lx881_29:              mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        cmp              al, 104;                             je    n743_lit_integer_α
                                                                              jmp   n743_lit_integer_α
n742_call_proc_staged_β:
                        mov              r11, 310;                            jmp   n743_lit_integer_α
.Lx881_0:               .quad            .Lx881_0_s
.Lx881_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n743_lit_integer_α:     mov              r11, 311
                        mov              qword ptr [rsp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Lx882_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n744_lit_charset_α
.Lx882_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n744_lit_charset_α:     mov              r11, 312
                        mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], -1
                        mov              rax, qword ptr [rip + .Lx883_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n745_call_proc_staged_α
.Lx883_0:               .quad            .Lx883_0_s
.Lx883_0_s:             .string          "12"
#-----------------------------------------------------------------------------------------------------------------------
n745_call_proc_staged_α:
                        mov              r11, 313
                        lea              rsi, [rsp + 2112]
                        lea              rdx, [rsp + 2128]
                        call             numtest_dcα;                         jmp   .Lx885_2
.Lx885_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx885_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2048]
                        mov              rdx, qword ptr [rsp + 2056]
.Lx885_29:              mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        cmp              al, 104;                             je    n746_lit_real_α
                                                                              jmp   n746_lit_real_α
n745_call_proc_staged_β:
                        mov              r11, 313;                            jmp   n746_lit_real_α
.Lx885_0:               .quad            .Lx885_0_s
.Lx885_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n746_lit_real_α:        mov              r11, 314
                        mov              qword ptr [rsp + 2016], 5            # result
                        mov              rax, qword ptr [rip + .Lx886_0]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n747_lit_real_α
.Lx886_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n747_lit_real_α:        mov              r11, 315
                        mov              qword ptr [rsp + 2032], 5            # result
                        mov              rax, qword ptr [rip + .Lx887_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n748_call_proc_staged_α
.Lx887_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n748_call_proc_staged_α:
                        mov              r11, 316
                        lea              rsi, [rsp + 2016]
                        lea              rdx, [rsp + 2032]
                        call             numtest_dcα;                         jmp   .Lx889_2
.Lx889_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx889_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1952]
                        mov              rdx, qword ptr [rsp + 1960]
.Lx889_29:              mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              al, 104;                             je    n749_lit_real_α
                                                                              jmp   n749_lit_real_α
n748_call_proc_staged_β:
                        mov              r11, 316;                            jmp   n749_lit_real_α
.Lx889_0:               .quad            .Lx889_0_s
.Lx889_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n749_lit_real_α:        mov              r11, 317
                        mov              qword ptr [rsp + 1920], 5            # result
                        mov              rax, qword ptr [rip + .Lx890_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n750_lit_real_α
.Lx890_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n750_lit_real_α:        mov              r11, 318
                        mov              qword ptr [rsp + 1936], 5            # result
                        mov              rax, qword ptr [rip + .Lx891_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n751_call_proc_staged_α
.Lx891_0:               .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n751_call_proc_staged_α:
                        mov              r11, 319
                        lea              rsi, [rsp + 1920]
                        lea              rdx, [rsp + 1936]
                        call             numtest_dcα;                         jmp   .Lx893_2
.Lx893_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx893_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1856]
                        mov              rdx, qword ptr [rsp + 1864]
.Lx893_29:              mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              al, 104;                             je    n752_lit_real_α
                                                                              jmp   n752_lit_real_α
n751_call_proc_staged_β:
                        mov              r11, 319;                            jmp   n752_lit_real_α
.Lx893_0:               .quad            .Lx893_0_s
.Lx893_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n752_lit_real_α:        mov              r11, 320
                        mov              qword ptr [rsp + 1824], 5            # result
                        mov              rax, qword ptr [rip + .Lx894_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n753_lit_real_α
.Lx894_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n753_lit_real_α:        mov              r11, 321
                        mov              qword ptr [rsp + 1840], 5            # result
                        mov              rax, qword ptr [rip + .Lx895_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n754_call_proc_staged_α
.Lx895_0:               .quad            13830554455654793216
#-----------------------------------------------------------------------------------------------------------------------
n754_call_proc_staged_α:
                        mov              r11, 322
                        lea              rsi, [rsp + 1824]
                        lea              rdx, [rsp + 1840]
                        call             numtest_dcα;                         jmp   .Lx897_2
.Lx897_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx897_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1760]
                        mov              rdx, qword ptr [rsp + 1768]
.Lx897_29:              mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        cmp              al, 104;                             je    n755_lit_integer_α
                                                                              jmp   n755_lit_integer_α
n754_call_proc_staged_β:
                        mov              r11, 322;                            jmp   n755_lit_integer_α
.Lx897_0:               .quad            .Lx897_0_s
.Lx897_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n755_lit_integer_α:     mov              r11, 323
                        mov              qword ptr [rsp + 1728], 3            # result
                        mov              rax, qword ptr [rip + .Lx898_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n756_lit_integer_α
.Lx898_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n756_lit_integer_α:     mov              r11, 324
                        mov              qword ptr [rsp + 1744], 3            # result
                        mov              rax, qword ptr [rip + .Lx899_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n757_call_proc_staged_α
.Lx899_0:               .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n757_call_proc_staged_α:
                        mov              r11, 325
                        lea              rsi, [rsp + 1728]
                        lea              rdx, [rsp + 1744]
                        call             numtest_dcα;                         jmp   .Lx901_2
.Lx901_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx901_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1664]
                        mov              rdx, qword ptr [rsp + 1672]
.Lx901_29:              mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              al, 104;                             je    n758_lit_real_α
                                                                              jmp   n758_lit_real_α
n757_call_proc_staged_β:
                        mov              r11, 325;                            jmp   n758_lit_real_α
.Lx901_0:               .quad            .Lx901_0_s
.Lx901_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n758_lit_real_α:        mov              r11, 326
                        mov              qword ptr [rsp + 1632], 5            # result
                        mov              rax, qword ptr [rip + .Lx902_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n759_lit_real_α
.Lx902_0:               .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n759_lit_real_α:        mov              r11, 327
                        mov              qword ptr [rsp + 1648], 5            # result
                        mov              rax, qword ptr [rip + .Lx903_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n760_call_proc_staged_α
.Lx903_0:               .quad            13835058055282163712
#-----------------------------------------------------------------------------------------------------------------------
n760_call_proc_staged_α:
                        mov              r11, 328
                        lea              rsi, [rsp + 1632]
                        lea              rdx, [rsp + 1648]
                        call             numtest_dcα;                         jmp   .Lx905_2
.Lx905_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx905_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1568]
                        mov              rdx, qword ptr [rsp + 1576]
.Lx905_29:              mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              al, 104;                             je    n761_lit_integer_α
                                                                              jmp   n761_lit_integer_α
n760_call_proc_staged_β:
                        mov              r11, 328;                            jmp   n761_lit_integer_α
.Lx905_0:               .quad            .Lx905_0_s
.Lx905_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n761_lit_integer_α:     mov              r11, 329
                        mov              qword ptr [rsp + 1536], 3            # result
                        mov              rax, qword ptr [rip + .Lx906_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n762_lit_integer_α
.Lx906_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n762_lit_integer_α:     mov              r11, 330
                        mov              qword ptr [rsp + 1552], 3            # result
                        mov              rax, qword ptr [rip + .Lx907_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n763_call_proc_staged_α
.Lx907_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n763_call_proc_staged_α:
                        mov              r11, 331
                        lea              rsi, [rsp + 1536]
                        lea              rdx, [rsp + 1552]
                        call             numtest_dcα;                         jmp   .Lx909_2
.Lx909_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx909_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1472]
                        mov              rdx, qword ptr [rsp + 1480]
.Lx909_29:              mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        cmp              al, 104;                             je    n764_lit_real_α
                                                                              jmp   n764_lit_real_α
n763_call_proc_staged_β:
                        mov              r11, 331;                            jmp   n764_lit_real_α
.Lx909_0:               .quad            .Lx909_0_s
.Lx909_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n764_lit_real_α:        mov              r11, 332
                        mov              qword ptr [rsp + 1440], 5            # result
                        mov              rax, qword ptr [rip + .Lx910_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n765_lit_string_α
.Lx910_0:               .quad            13837309855095848960
#-----------------------------------------------------------------------------------------------------------------------
n765_lit_string_α:      mov              r11, 333
                        mov              qword ptr [rsp + 1456], 2            # result
                        mov              dword ptr [rsp + 1460], 4
                        mov              rax, qword ptr [rip + .Lx911_0]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n766_call_proc_staged_α
.Lx911_0:               .quad            .Lx911_0_s
.Lx911_0_s:             .string          " 2. "
#-----------------------------------------------------------------------------------------------------------------------
n766_call_proc_staged_α:
                        mov              r11, 334
                        lea              rsi, [rsp + 1440]
                        lea              rdx, [rsp + 1456]
                        call             numtest_dcα;                         jmp   .Lx913_2
.Lx913_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx913_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1376]
                        mov              rdx, qword ptr [rsp + 1384]
.Lx913_29:              mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              al, 104;                             je    n767_lit_integer_α
                                                                              jmp   n767_lit_integer_α
n766_call_proc_staged_β:
                        mov              r11, 334;                            jmp   n767_lit_integer_α
.Lx913_0:               .quad            .Lx913_0_s
.Lx913_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n767_lit_integer_α:     mov              r11, 335
                        mov              qword ptr [rsp + 1344], 3            # result
                        mov              rax, qword ptr [rip + .Lx914_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n768_lit_integer_α
.Lx914_0:               .quad            18446744073709551610
#-----------------------------------------------------------------------------------------------------------------------
n768_lit_integer_α:     mov              r11, 336
                        mov              qword ptr [rsp + 1360], 3            # result
                        mov              rax, qword ptr [rip + .Lx915_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n769_call_proc_staged_α
.Lx915_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n769_call_proc_staged_α:
                        mov              r11, 337
                        lea              rsi, [rsp + 1344]
                        lea              rdx, [rsp + 1360]
                        call             numtest_dcα;                         jmp   .Lx917_2
.Lx917_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx917_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1280]
                        mov              rdx, qword ptr [rsp + 1288]
.Lx917_29:              mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              al, 104;                             je    n770_lit_real_α
                                                                              jmp   n770_lit_real_α
n769_call_proc_staged_β:
                        mov              r11, 337;                            jmp   n770_lit_real_α
.Lx917_0:               .quad            .Lx917_0_s
.Lx917_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n770_lit_real_α:        mov              r11, 338
                        mov              qword ptr [rsp + 1248], 5            # result
                        mov              rax, qword ptr [rip + .Lx918_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n771_lit_real_α
.Lx918_0:               .quad            13841813454723219456
#-----------------------------------------------------------------------------------------------------------------------
n771_lit_real_α:        mov              r11, 339
                        mov              qword ptr [rsp + 1264], 5            # result
                        mov              rax, qword ptr [rip + .Lx919_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n772_call_proc_staged_α
.Lx919_0:               .quad            13837309855095848960
#-----------------------------------------------------------------------------------------------------------------------
n772_call_proc_staged_α:
                        mov              r11, 340
                        lea              rsi, [rsp + 1248]
                        lea              rdx, [rsp + 1264]
                        call             numtest_dcα;                         jmp   .Lx921_2
.Lx921_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx921_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
.Lx921_29:              mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    n773_call_builtin_icon_α
                                                                              jmp   n773_call_builtin_icon_α
n772_call_proc_staged_β:
                        mov              r11, 340;                            jmp   n773_call_builtin_icon_α
.Lx921_0:               .quad            .Lx921_0_s
.Lx921_0_s:             .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n773_call_builtin_icon_α:
                        mov              r11, 341
                        .section         .rodata
.Lrkfn923:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn923]
                        lea              rsi, [rsp + 1168]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    n774_disjunction_α
                                                                              jmp   n774_disjunction_α
n773_call_builtin_icon_β:
                        mov              r11, 341;                            jmp   n774_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n774_disjunction_α:     mov              r11, 342
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              dword ptr [rsp + 928], 0;            jmp   n791_lit_integer_α
n774_disjunction_as:    mov              r11, 342
                        mov              eax, dword ptr [rsp + 928]
                        cmp              eax, 0;                              jne   .Lx925_0
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 920], rax;          jmp   n775_assign_α
.Lx925_0:               cmp              eax, 1;                              jne   .Lx925_1
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 920], rax;          jmp   n775_assign_α
.Lx925_1:               cmp              eax, 2;                              jne   .Lx925_2
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 920], rax;          jmp   n775_assign_α
.Lx925_2:               cmp              eax, 3;                              jne   .Lx925_3
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 920], rax;          jmp   n775_assign_α
.Lx925_3:                                                                     jmp   n775_assign_α
n774_disjunction_β:     mov              r11, 342
                        mov              eax, dword ptr [rsp + 928]
                        cmp              eax, 0;                              je    n774_disjunction_af
                        cmp              eax, 1;                              je    n774_disjunction_af
                        cmp              eax, 2;                              je    n774_disjunction_af
                                                                              jmp   n774_disjunction_af
n774_disjunction_af:    mov              r11, 342
                        add              dword ptr [rsp + 928], 1
                        mov              eax, dword ptr [rsp + 928]
                        cmp              eax, 1;                              je    n790_lit_integer_α
                        cmp              eax, 2;                              je    n789_lit_integer_α
                        cmp              eax, 3;                              je    n788_lit_integer_α
                                                                              jmp   n792_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n775_assign_α:          mov              r11, 343
                        mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx;         jmp   n776_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n776_disjunction_α:     mov              r11, 344
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              dword ptr [rsp + 816], 0;            jmp   n787_lit_integer_α
n776_disjunction_as:    mov              r11, 344
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 0;                              jne   .Lx928_0
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax;          jmp   n777_assign_α
.Lx928_0:               cmp              eax, 1;                              jne   .Lx928_1
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 808], rax;          jmp   n777_assign_α
.Lx928_1:               cmp              eax, 2;                              jne   .Lx928_2
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 808], rax;          jmp   n777_assign_α
.Lx928_2:               cmp              eax, 3;                              jne   .Lx928_3
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 808], rax;          jmp   n777_assign_α
.Lx928_3:                                                                     jmp   n777_assign_α
n776_disjunction_β:     mov              r11, 344
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 0;                              je    n776_disjunction_af
                        cmp              eax, 1;                              je    n776_disjunction_af
                        cmp              eax, 2;                              je    n776_disjunction_af
                                                                              jmp   n776_disjunction_af
n776_disjunction_af:    mov              r11, 344
                        add              dword ptr [rsp + 816], 1
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 1;                              je    n786_lit_integer_α
                        cmp              eax, 2;                              je    n785_lit_integer_α
                        cmp              eax, 3;                              je    n784_lit_integer_α
                                                                              jmp   n774_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n777_assign_α:          mov              r11, 345
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n778_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n778_conjunction_α:     mov              r11, 346
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 776], rax;          jmp   n779_bound_α
n778_conjunction_β:     mov              r11, 346;                            jmp   n792_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n779_bound_α:           mov              r11, 347
                        mov              qword ptr [rsp + 1008], rsp;         jmp   n780_var_α
#-----------------------------------------------------------------------------------------------------------------------
n780_var_α:             mov              r11, 348
                        mov              rax, qword ptr [rsp + 3600]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 3608]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n781_var_α
#-----------------------------------------------------------------------------------------------------------------------
n781_var_α:             mov              r11, 349
                        mov              rax, qword ptr [rsp + 3584]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 3592]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n782_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n782_call_proc_staged_α:
                        mov              r11, 350
                        lea              rsi, [rsp + 1120]
                        lea              rdx, [rsp + 1136]
                        call             bitcombo_dcα;                        jmp   .Lx938_2
.Lx938_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx938_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
.Lx938_29:              mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n783_unmark_α
                                                                              jmp   n783_unmark_α
n782_call_proc_staged_β:
                        mov              r11, 350;                            jmp   n783_unmark_α
.Lx938_0:               .quad            .Lx938_0_s
.Lx938_0_s:             .string          "bitcombo"
#-----------------------------------------------------------------------------------------------------------------------
n783_unmark_α:          mov              r11, 351
                        mov              rsp, qword ptr [rsp + 1008];         jmp   n776_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n784_lit_integer_α:     mov              r11, 352
                        mov              qword ptr [rsp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Lx941_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n776_disjunction_as
n784_lit_integer_β:     mov              r11, 352;                            jmp   n776_disjunction_af
.Lx941_0:               .quad            61
#-----------------------------------------------------------------------------------------------------------------------
n785_lit_integer_α:     mov              r11, 353
                        mov              qword ptr [rsp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Lx942_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n776_disjunction_as
n785_lit_integer_β:     mov              r11, 353;                            jmp   n776_disjunction_af
.Lx942_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n786_lit_integer_α:     mov              r11, 354
                        mov              qword ptr [rsp + 848], 3             # result
                        mov              rax, qword ptr [rip + .Lx943_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n776_disjunction_as
n786_lit_integer_β:     mov              r11, 354;                            jmp   n776_disjunction_af
.Lx943_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n787_lit_integer_α:     mov              r11, 355
                        mov              qword ptr [rsp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Lx944_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n776_disjunction_as
n787_lit_integer_β:     mov              r11, 355;                            jmp   n776_disjunction_af
.Lx944_0:               .quad            18446744073709551593
#-----------------------------------------------------------------------------------------------------------------------
n788_lit_integer_α:     mov              r11, 356
                        mov              qword ptr [rsp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Lx945_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n774_disjunction_as
n788_lit_integer_β:     mov              r11, 356;                            jmp   n774_disjunction_af
.Lx945_0:               .quad            191
#-----------------------------------------------------------------------------------------------------------------------
n789_lit_integer_α:     mov              r11, 357
                        mov              qword ptr [rsp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Lx946_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n774_disjunction_as
n789_lit_integer_β:     mov              r11, 357;                            jmp   n774_disjunction_af
.Lx946_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n790_lit_integer_α:     mov              r11, 358
                        mov              qword ptr [rsp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Lx947_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n774_disjunction_as
n790_lit_integer_β:     mov              r11, 358;                            jmp   n774_disjunction_af
.Lx947_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n791_lit_integer_α:     mov              r11, 359
                        mov              qword ptr [rsp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Lx948_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n774_disjunction_as
n791_lit_integer_β:     mov              r11, 359;                            jmp   n774_disjunction_af
.Lx948_0:               .quad            18446744073709551607
#-----------------------------------------------------------------------------------------------------------------------
n792_call_builtin_icon_α:
                        mov              r11, 360
                        .section         .rodata
.Lrkfn950:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn950]
                        lea              rsi, [rsp + 752]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n793_call_proc_staged_α
                                                                              jmp   n793_call_proc_staged_α
n792_call_builtin_icon_β:
                        mov              r11, 360;                            jmp   n793_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n793_call_proc_staged_α:
                        mov              r11, 361
                        call             shifttest_dcα;                       jmp   .Lx952_2
.Lx952_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx952_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
.Lx952_29:              mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n794_call_builtin_icon_α
                                                                              jmp   n794_call_builtin_icon_α
n793_call_proc_staged_β:
                        mov              r11, 361;                            jmp   n794_call_builtin_icon_α
.Lx952_0:               .quad            .Lx952_0_s
.Lx952_0_s:             .string          "shifttest"
#-----------------------------------------------------------------------------------------------------------------------
n794_call_builtin_icon_α:
                        mov              r11, 362
                        .section         .rodata
.Lrkfn954:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn954]
                        lea              rsi, [rsp + 688]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n795_lit_integer_α
                                                                              jmp   n795_lit_integer_α
n794_call_builtin_icon_β:
                        mov              r11, 362;                            jmp   n795_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n795_lit_integer_α:     mov              r11, 363
                        mov              qword ptr [rsp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Lx955_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n796_lit_integer_α
.Lx955_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n796_lit_integer_α:     mov              r11, 364
                        mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Lx956_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n797_to_α
.Lx956_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n797_to_α:              mov              r11, 365
                        mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 576], 3
                        mov              qword ptr [rsp + 584], rax
                        mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 592], 3
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 560], rax
.Lx958_0:               mov              rax, qword ptr [rsp + 560]
                        mov              rcx, qword ptr [rsp + 600]
                        cmp              rax, rcx;                            jg    n802_disjunction_α
                        mov              qword ptr [rsp + 544], 3
                        mov              qword ptr [rsp + 552], rax;          jmp   n798_lit_integer_α
n797_to_β:              mov              r11, 365
                        inc              qword ptr [rsp + 560];               jmp   .Lx958_0
#-----------------------------------------------------------------------------------------------------------------------
n798_lit_integer_α:     mov              r11, 366
                        mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Lx959_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n799_lit_integer_α
.Lx959_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n799_lit_integer_α:     mov              r11, 367
                        mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx960_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n800_to_α
.Lx960_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n800_to_α:              mov              r11, 368
                        mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 640], 3
                        mov              qword ptr [rsp + 648], rax
                        mov              rdi, qword ptr [rsp + 656]
                        mov              rsi, qword ptr [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 656], 3
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 624], rax
.Lx962_0:               mov              rax, qword ptr [rsp + 624]
                        mov              rcx, qword ptr [rsp + 664]
                        cmp              rax, rcx;                            jg    n797_to_β
                        mov              qword ptr [rsp + 608], 3
                        mov              qword ptr [rsp + 616], rax;          jmp   n801_call_proc_staged_α
n800_to_β:              mov              r11, 368
                        inc              qword ptr [rsp + 624];               jmp   .Lx962_0
#-----------------------------------------------------------------------------------------------------------------------
n801_call_proc_staged_α:
                        mov              r11, 369
                        lea              rsi, [rsp + 544]
                        lea              rdx, [rsp + 608]
                        call             pow_dcα;                             jmp   .Lx964_2
.Lx964_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx964_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
.Lx964_29:              mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n800_to_β
                                                                              jmp   n800_to_β
n801_call_proc_staged_β:
                        mov              r11, 369;                            jmp   n800_to_β
.Lx964_0:               .quad            .Lx964_0_s
.Lx964_0_s:             .string          "pow"
#-----------------------------------------------------------------------------------------------------------------------
n802_disjunction_α:     mov              r11, 370
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              dword ptr [rsp + 304], 0;            jmp   n812_lit_real_α
n802_disjunction_as:    mov              r11, 370
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 0;                              jne   .Lx966_0
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax;          jmp   n803_lit_integer_α
.Lx966_0:               cmp              eax, 1;                              jne   .Lx966_1
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax;          jmp   n803_lit_integer_α
.Lx966_1:               cmp              eax, 2;                              jne   .Lx966_2
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 296], rax;          jmp   n803_lit_integer_α
.Lx966_2:                                                                     jmp   n803_lit_integer_α
n802_disjunction_β:     mov              r11, 370
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 0;                              je    n802_disjunction_af
                        cmp              eax, 1;                              je    n802_disjunction_af
                                                                              jmp   n802_disjunction_af
n802_disjunction_af:    mov              r11, 370
                        add              dword ptr [rsp + 304], 1
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 1;                              je    n811_lit_integer_α
                        cmp              eax, 2;                              je    n810_lit_real_α
                                                                              jmp   n813_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n803_lit_integer_α:     mov              r11, 371
                        mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Lx967_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n804_lit_integer_α
.Lx967_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n804_lit_integer_α:     mov              r11, 372
                        mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Lx968_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n805_to_α
.Lx968_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n805_to_α:              mov              r11, 373
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 432], 3
                        mov              qword ptr [rsp + 440], rax
                        mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 448], 3
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 416], rax
.Lx970_0:               mov              rax, qword ptr [rsp + 416]
                        mov              rcx, qword ptr [rsp + 456]
                        cmp              rax, rcx;                            jg    n802_disjunction_β
                        mov              qword ptr [rsp + 400], 3
                        mov              qword ptr [rsp + 408], rax;          jmp   n806_lit_real_α
n805_to_β:              mov              r11, 373
                        inc              qword ptr [rsp + 416];               jmp   .Lx970_0
#-----------------------------------------------------------------------------------------------------------------------
n806_lit_real_α:        mov              r11, 374
                        mov              qword ptr [rsp + 464], 5             # result
                        mov              rax, qword ptr [rip + .Lx971_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n807_coerce_numeric_α
.Lx971_0:               .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n807_coerce_numeric_α:  mov              r11, 375
                        mov              eax, dword ptr [rsp + 400]
                        cmp              al, 5;                               je    .Lx973_1
                        cmp              al, 3;                               jne   .Lx973_0
                        mov              eax, dword ptr [rsp + 464]
                        cmp              al, 3;                               jne   .Lx973_0
.Lx973_1:               mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 392], rax;          jmp   n808_binop_α
.Lx973_0:               lea              rdi, [rsp + 400]
                        lea              rsi, [rsp + 464]
                        lea              rdx, [rsp + 384]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n808_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n808_binop_α:           mov              r11, 376
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 464]
                        mov              rcx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n802_disjunction_β
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n809_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n809_call_proc_staged_α:
                        mov              r11, 377
                        lea              rsi, [rsp + 288]
                        lea              rdx, [rsp + 368]
                        call             pow_dcα;                             jmp   .Lx976_2
.Lx976_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx976_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
.Lx976_29:              mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n805_to_β
                                                                              jmp   n805_to_β
n809_call_proc_staged_β:
                        mov              r11, 377;                            jmp   n805_to_β
.Lx976_0:               .quad            .Lx976_0_s
.Lx976_0_s:             .string          "pow"
#-----------------------------------------------------------------------------------------------------------------------
n810_lit_real_α:        mov              r11, 378
                        mov              qword ptr [rsp + 352], 5             # result
                        mov              rax, qword ptr [rip + .Lx977_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n802_disjunction_as
n810_lit_real_β:        mov              r11, 378;                            jmp   n802_disjunction_af
.Lx977_0:               .quad            4609434218613702656
#-----------------------------------------------------------------------------------------------------------------------
n811_lit_integer_α:     mov              r11, 379
                        mov              qword ptr [rsp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Lx978_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n802_disjunction_as
n811_lit_integer_β:     mov              r11, 379;                            jmp   n802_disjunction_af
.Lx978_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n812_lit_real_α:        mov              r11, 380
                        mov              qword ptr [rsp + 320], 5             # result
                        mov              rax, qword ptr [rip + .Lx979_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n802_disjunction_as
n812_lit_real_β:        mov              r11, 380;                            jmp   n802_disjunction_af
.Lx979_0:               .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n813_disjunction_α:     mov              r11, 381
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              dword ptr [rsp + 80], 0;             jmp   n821_lit_real_α
n813_disjunction_as:    mov              r11, 381
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              jne   .Lx981_0
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax;           jmp   n814_lit_integer_α
.Lx981_0:               cmp              eax, 1;                              jne   .Lx981_1
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 72], rax;           jmp   n814_lit_integer_α
.Lx981_1:               cmp              eax, 2;                              jne   .Lx981_2
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 72], rax;           jmp   n814_lit_integer_α
.Lx981_2:               cmp              eax, 3;                              jne   .Lx981_3
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 72], rax;           jmp   n814_lit_integer_α
.Lx981_3:                                                                     jmp   n814_lit_integer_α
n813_disjunction_β:     mov              r11, 381
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              je    n813_disjunction_af
                        cmp              eax, 1;                              je    n813_disjunction_af
                        cmp              eax, 2;                              je    n813_disjunction_af
                                                                              jmp   n813_disjunction_af
n813_disjunction_af:    mov              r11, 381
                        add              dword ptr [rsp + 80], 1
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 1;                              je    n820_lit_real_α
                        cmp              eax, 2;                              je    n819_lit_real_α
                        cmp              eax, 3;                              je    n818_lit_real_α
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n814_lit_integer_α:     mov              r11, 382
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx982_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n815_lit_integer_α
.Lx982_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n815_lit_integer_α:     mov              r11, 383
                        mov              qword ptr [rsp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Lx983_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n816_to_α
.Lx983_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n816_to_α:              mov              r11, 384
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 192], 3
                        mov              qword ptr [rsp + 200], rax
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], 3
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 176], rax
.Lx985_0:               mov              rax, qword ptr [rsp + 176]
                        mov              rcx, qword ptr [rsp + 216]
                        cmp              rax, rcx;                            jg    n813_disjunction_β
                        mov              qword ptr [rsp + 160], 3
                        mov              qword ptr [rsp + 168], rax;          jmp   n817_call_proc_staged_α
n816_to_β:              mov              r11, 384
                        inc              qword ptr [rsp + 176];               jmp   .Lx985_0
#-----------------------------------------------------------------------------------------------------------------------
n817_call_proc_staged_α:
                        mov              r11, 385
                        lea              rsi, [rsp + 64]
                        lea              rdx, [rsp + 160]
                        call             pow_dcα;                             jmp   .Lx987_2
.Lx987_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx987_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx987_29:              mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n816_to_β
                                                                              jmp   n816_to_β
n817_call_proc_staged_β:
                        mov              r11, 385;                            jmp   n816_to_β
.Lx987_0:               .quad            .Lx987_0_s
.Lx987_0_s:             .string          "pow"
#-----------------------------------------------------------------------------------------------------------------------
n818_lit_real_α:        mov              r11, 386
                        mov              qword ptr [rsp + 144], 5             # result
                        mov              rax, qword ptr [rip + .Lx988_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n813_disjunction_as
n818_lit_real_β:        mov              r11, 386;                            jmp   n813_disjunction_af
.Lx988_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n819_lit_real_α:        mov              r11, 387
                        mov              qword ptr [rsp + 128], 5             # result
                        mov              rax, qword ptr [rip + .Lx989_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n813_disjunction_as
n819_lit_real_β:        mov              r11, 387;                            jmp   n813_disjunction_af
.Lx989_0:               .quad            13826050856027422720
#-----------------------------------------------------------------------------------------------------------------------
n820_lit_real_α:        mov              r11, 388
                        mov              qword ptr [rsp + 112], 5             # result
                        mov              rax, qword ptr [rip + .Lx990_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n813_disjunction_as
n820_lit_real_β:        mov              r11, 388;                            jmp   n813_disjunction_af
.Lx990_0:               .quad            13830554455654793216
#-----------------------------------------------------------------------------------------------------------------------
n821_lit_real_α:        mov              r11, 389
                        mov              qword ptr [rsp + 96], 5              # result
                        mov              rax, qword ptr [rip + .Lx991_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n813_disjunction_as
n821_lit_real_β:        mov              r11, 389;                            jmp   n813_disjunction_af
.Lx991_0:               .quad            13832806255468478464
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
.Lstartup_pname0:       .string          "numtest"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__numtest
                        .quad            numtest_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            2464
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "bitcombo"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__bitcombo
                        .quad            bitcombo_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            608
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "wr5"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__wr5
                        .quad            wr5_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            640
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "r1"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__r1
                        .quad            r1_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            528
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "shifttest"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__shifttest
                        .quad            shifttest_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            736
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "wr25"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__wr25
                        .quad            wr25_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            176
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "pow"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__pow
                        .quad            pow_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1392
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
