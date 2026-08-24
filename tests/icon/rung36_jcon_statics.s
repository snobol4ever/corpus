                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__foo:
                        sub              rsp, 192
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
foo_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              r11, 1
                        mov              rax, qword ptr [r9 + 0]              # foo__STATIC__a
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 128], rax           # result
                        mov              qword ptr [rsp + 136], rdx;          jmp   n1_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α: mov              r11, 2
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn7:                .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn7]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n3_lit_integer_α
                                                                              jmp   n2_call_builtin_icon_α
n1_call_builtin_icon_β: mov              r11, 2;                              jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α: mov              r11, 3
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn9:                .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn9]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    n3_lit_integer_α
                                                                              jmp   n3_lit_integer_α
n2_call_builtin_icon_β: mov              r11, 3;                              jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 16], 3              # result
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rsp + 24], rax;           jmp   n4_assign_α
.Lx10_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              r11, 5
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 0], rax              # foo__STATIC__a
                        mov              qword ptr [r9 + 8], rdx;             jmp   foo_γ
#-----------------------------------------------------------------------------------------------------------------------
foo_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
foo_β:
                                                                              jmp   foo_ω
#-----------------------------------------------------------------------------------------------------------------------
foo_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 192;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
foo_ω:
                        add              rsp, 192;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
foo_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx12_3]
                        push             rcx
                        lea              rcx, [rip + .Lx12_2]
                        push             rcx;                                 jmp   FN__foo
.Lx12_2:                add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx12_3:                add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__p:
                        sub              rsp, 320
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
p_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n13_disjunction_α:      mov              r11, 6
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              dword ptr [rsp + 160], 0;            jmp   n21_var_ref_α
n13_disjunction_as:     mov              r11, 6
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 0;                              jne   .Lx28_0
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax;          jmp   n14_var_α
.Lx28_0:                                                                      jmp   n14_var_α
n13_disjunction_β:      mov              r11, 6
                        mov              eax, dword ptr [rsp + 160];          jmp   n14_var_α
n13_disjunction_af:     mov              r11, 6
                        add              dword ptr [rsp + 160], 1
                        mov              eax, dword ptr [rsp + 160];          jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:              mov              r11, 7
                        mov              rax, qword ptr [r9 + 16]             # p__STATIC__c
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 112], rax           # result
                        mov              qword ptr [rsp + 120], rdx;          jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      mov              r11, 8
                        mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n16_coerce_numeric_α
.Lx30_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n16_coerce_numeric_α:   mov              r11, 9
                        mov              eax, dword ptr [rsp + 112]
                        cmp              al, 5;                               je    .Lx32_1
                        cmp              al, 3;                               jne   .Lx32_0
                        mov              eax, dword ptr [rsp + 128]
                        cmp              al, 3;                               jne   .Lx32_0
.Lx32_1:                mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 104], rax;          jmp   n17_binop_α
.Lx32_0:                lea              rdi, [rsp + 112]
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 96]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n17_binop_α:            mov              r11, 10
                        mov              eax, dword ptr [rsp + 96]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx33_2
                        mov              rax, qword ptr [rsp + 104]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax;           jmp   .Lx33_7
.Lx33_2:                and              edx, 1;                              jz    .Lx33_0
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx33_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx33_4
.Lx33_3:                movq             xmm0, rsi
.Lx33_4:                cmp              cl, 5;                               je    .Lx33_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx33_6
.Lx33_5:                movq             xmm1, rdi
.Lx33_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 80], 5
                        mov              qword ptr [rsp + 88], rax
.Lx33_7:                                                                      jmp   n18_assign_α
.Lx33_0:                mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n19_var_α
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n18_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:           mov              r11, 11
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 16], rax             # p__STATIC__c
                        mov              qword ptr [r9 + 24], rdx;            jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:              mov              r11, 12
                        mov              rax, qword ptr [r9 + 16]             # p__STATIC__c
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 48], rax            # result
                        mov              qword ptr [rsp + 56], rdx;           jmp   n20_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_icon_α:
                        mov              r11, 13
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn37:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn37]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    p_ω
                                                                              jmp   p_γ
n20_call_builtin_icon_β:
                        mov              r11, 13;                             jmp   p_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        mov              rdx, 1879052320                      # p__INITFLAG__0
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n22_nulltest_var_α
n21_var_ref_β:          mov              r11, 14;                             jmp   n13_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n22_nulltest_var_α:     mov              r11, 15
                        mov              eax, dword ptr [rsp + 208]
                        cmp              al, 104;                             je    n13_disjunction_af
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n13_disjunction_af
                        cmp              eax, 0;                              jne   n13_disjunction_af
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 232], rax;          jmp   n23_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:      mov              r11, 16
                        mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n24_assign_var_α
.Lx41_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_var_α:       mov              r11, 17
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n13_disjunction_af
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n25_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      mov              r11, 18
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n26_assign_α
.Lx43_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:           mov              r11, 19
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [r9 + 16], rax             # p__STATIC__c
                        mov              qword ptr [r9 + 24], rdx
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n13_disjunction_as
n26_assign_β:           mov              r11, 19;                             jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
p_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
p_β:
                                                                              jmp   p_ω
#-----------------------------------------------------------------------------------------------------------------------
p_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 320;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
p_ω:
                        add              rsp, 320;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
p_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx45_3]
                        push             rcx
                        lea              rcx, [rip + .Lx45_2]
                        push             rcx;                                 jmp   FN__p
.Lx45_2:                add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx45_3:                add              rsp, 24
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
                        mov              edi, 3
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 3
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "foo__STATIC__a"
.Lgvan1:                .string          "p__STATIC__c"
.Lgvan2:                .string          "p__INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 176
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n46_call_proc_staged_α: sub              rsp, 16
                        mov              r11, 20
                        call             foo_dcα;                             jmp   .Lx51_2
.Lx51_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx51_29
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
.Lx51_29:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx51_240
                        add              rsp, 16;                             jmp   n47_call_proc_staged_α
.Lx51_240:                                                                    jmp   n47_call_proc_staged_α
n46_call_proc_staged_β: mov              r11, 20;                             jmp   n47_call_proc_staged_α
.Lx51_0:                .quad            .Lx51_0_s
.Lx51_0_s:              .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n47_call_proc_staged_α: sub              rsp, 16
                        mov              r11, 21
                        call             foo_dcα;                             jmp   .Lx53_2
.Lx53_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx53_29
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
.Lx53_29:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx53_240
                        add              rsp, 16;                             jmp   n48_call_proc_staged_α
.Lx53_240:                                                                    jmp   n48_call_proc_staged_α
n47_call_proc_staged_β: mov              r11, 21;                             jmp   n48_call_proc_staged_α
.Lx53_0:                .quad            .Lx53_0_s
.Lx53_0_s:              .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_proc_staged_α: sub              rsp, 16
                        mov              r11, 22
                        call             p_dcα;                               jmp   .Lx55_2
.Lx55_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx55_29
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
.Lx55_29:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx55_240
                        add              rsp, 16;                             jmp   n49_call_proc_staged_α
.Lx55_240:                                                                    jmp   n49_call_proc_staged_α
n48_call_proc_staged_β: mov              r11, 22;                             jmp   n49_call_proc_staged_α
.Lx55_0:                .quad            .Lx55_0_s
.Lx55_0_s:              .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n49_call_proc_staged_α: sub              rsp, 16
                        mov              r11, 23
                        call             p_dcα;                               jmp   .Lx57_2
.Lx57_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx57_29
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
.Lx57_29:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx57_240
                        add              rsp, 16
                        add              rsp, 48;                             jmp   main_ω
.Lx57_240:              add              rsp, 64;                             jmp   main_γ
n49_call_proc_staged_β: mov              r11, 23;                             jmp   main_ω
.Lx57_0:                .quad            .Lx57_0_s
.Lx57_0_s:              .string          "p"
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
.Lstartup_pname0:       .string          "foo"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__foo
                        .quad            foo_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            144
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "p"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__p
                        .quad            p_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            272
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
