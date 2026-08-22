                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__fact:
                        sub              rsp, 368
                        mov              qword ptr [rsp + 344], rcx
                        mov              qword ptr [rsp + 352], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
fact_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              r11, 1
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              dword ptr [rsp + 224], 0;            jmp   n11_var_α
n0_disjunction_as:      mov              r11, 1
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 0;                              jne   .Lx17_0
                                                                              jmp   n1_var_α
.Lx17_0:                                                                      jmp   n1_var_α
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 224];          jmp   n1_var_α
n0_disjunction_af:      mov              r11, 1
                        add              dword ptr [rsp + 224], 1
                        mov              eax, dword ptr [rsp + 224];          jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:               mov              r11, 2
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 88], rax;           jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              r11, 3
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 184], rax;          jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n4_coerce_numeric_α
.Lx22_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:    mov              r11, 5
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lx24_1
                        cmp              al, 3;                               jne   .Lx24_0
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 3;                               jne   .Lx24_0
.Lx24_1:                mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 168], rax;          jmp   n5_binop_α
.Lx24_0:                lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 192]
                        lea              rdx, [rsp + 160]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_α:             mov              r11, 6
                        mov              eax, dword ptr [rsp + 160]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx25_2
                        mov              rax, qword ptr [rsp + 168]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 144], 3
                        mov              qword ptr [rsp + 152], rax;          jmp   .Lx25_7
.Lx25_2:                and              edx, 1;                              jz    .Lx25_0
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx25_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx25_4
.Lx25_3:                movq             xmm0, rsi
.Lx25_4:                cmp              cl, 5;                               je    .Lx25_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx25_6
.Lx25_5:                movq             xmm1, rdi
.Lx25_6:                subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 144], 5
                        mov              qword ptr [rsp + 152], rax
.Lx25_7:                                                                      jmp   n6_call_proc_staged_α
.Lx25_0:                mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             je    fact_ω
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n6_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_proc_staged_α:  mov              r11, 7
                        lea              rsi, [rsp + 144]
                        call             fact_dcα;                            jmp   .Lx27_2
.Lx27_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx27_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx27_29:               mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    fact_ω
                                                                              jmp   n7_coerce_numeric_α
n6_call_proc_staged_β:  mov              r11, 7;                              jmp   fact_ω
.Lx27_0:                .quad            .Lx27_0_s
.Lx27_0_s:              .string          "fact"
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:    mov              r11, 8
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lx29_1
                        cmp              al, 3;                               jne   .Lx29_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 3;                               jne   .Lx29_0
.Lx29_1:                mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax;           jmp   n8_coerce_numeric_α
.Lx29_0:                lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 96]
                        lea              rdx, [rsp + 64]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n8_coerce_numeric_α:    mov              r11, 9
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 5;                               je    .Lx31_1
                        cmp              al, 3;                               jne   .Lx31_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx31_0
.Lx31_1:                mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax;           jmp   n9_binop_α
.Lx31_0:                lea              rdi, [rsp + 96]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 48]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:             mov              r11, 10
                        mov              eax, dword ptr [rsp + 64]
                        mov              ecx, dword ptr [rsp + 48]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx32_2
                        mov              rax, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 56]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   .Lx32_7
.Lx32_2:                and              edx, 1;                              jz    .Lx32_0
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdi, qword ptr [rsp + 56]
                        cmp              al, 5;                               je    .Lx32_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx32_4
.Lx32_3:                movq             xmm0, rsi
.Lx32_4:                cmp              cl, 5;                               je    .Lx32_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx32_6
.Lx32_5:                movq             xmm1, rdi
.Lx32_6:                mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 32], 5
                        mov              qword ptr [rsp + 40], rax
.Lx32_7:                                                                      jmp   n10_return_α
.Lx32_0:                mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             je    fact_ω
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n10_return_α
#-----------------------------------------------------------------------------------------------------------------------
n10_return_α:           mov              r11, 11
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   fact_γ
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              r11, 12
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax;          jmp   n12_lit_integer_α
n11_var_β:              mov              r11, 12;                             jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n13_binop_test_α
.Lx36_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_test_α:       mov              r11, 14
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 112;                             je    .Lx37_0
                        mov              eax, dword ptr [rsp + 288]
                        cmp              al, 112;                             je    .Lx37_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx37_2
                        mov              eax, dword ptr [rsp + 288]
                        cmp              al, 3;                               jne   .Lx37_2
.Lx37_1:                mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 296]
                        cmp              rax, rcx;                            jne   n0_disjunction_af
                        mov              rcx, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rcx
                        mov              rcx, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rcx;          jmp   n14_lit_integer_α
.Lx37_0:                mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              r8d, 9
                        lea              r9, [rsp + 256]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx37_1
                        cmp              eax, 1;                              je    n0_disjunction_af
                                                                              jmp   n14_lit_integer_α
.Lx37_2:                mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n0_disjunction_af
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax;          jmp   n14_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      mov              r11, 15
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n15_return_α
.Lx38_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n15_return_α:           mov              r11, 16
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   fact_γ
#-----------------------------------------------------------------------------------------------------------------------
fact_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
fact_β:
                                                                              jmp   fact_ω
#-----------------------------------------------------------------------------------------------------------------------
fact_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 344]
                        add              rsp, 368;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
fact_ω:
                        mov              rcx, qword ptr [rsp + 352]
                        add              rsp, 368;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
fact_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx40_2]
                        lea              rdx, [rip + .Lx40_3];                jmp   FN__fact
.Lx40_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx40_3:                pop              r11
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
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rcx
                        mov              qword ptr [rsp + 144], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_call_proc_staged_α
.Lx44_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n42_call_proc_staged_α: sub              rsp, 16
                        mov              r11, 18
                        lea              rsi, [rsp + 16]                      # lit_integer
                        call             fact_dcα;                            jmp   .Lx46_2
.Lx46_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx46_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx46_29:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx46_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   main_ω
.Lx46_240:                                                                    jmp   n43_call_builtin_icon_α
n42_call_proc_staged_β: mov              r11, 18;                             jmp   main_ω
.Lx46_0:                .quad            .Lx46_0_s
.Lx46_0_s:              .string          "fact"
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_icon_α:
                        sub              rsp, 16
                        mov              r11, 19
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd48:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd48]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx47_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   main_ω
.Lx47_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48;                             jmp   main_ω
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
.Lstartup_pname0:       .string          "fact"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__fact
                        .quad            fact_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            304
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
