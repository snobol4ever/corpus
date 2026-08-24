                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__countdown:
                        sub              rsp, 368
                        mov              rdi, rsp
                        add              rdi, 272
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
countdown_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n1_assign_α
.Lx13_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              r11, 2
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              r11, 3
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 56], rax;           jmp   n3_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:               mov              r11, 4
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax;           jmp   n4_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n4_binop_test_α:        mov              r11, 5
                        mov              eax, dword ptr [rsp + 272]
                        cmp              al, 112;                             je    .Lx19_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 112;                             je    .Lx19_0
                        mov              eax, dword ptr [rsp + 272]
                        cmp              al, 3;                               jne   .Lx19_2
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx19_2
.Lx19_1:                mov              rax, qword ptr [rsp + 280]
                        mov              rcx, qword ptr [rsp + 24]
                        cmp              rax, rcx;                            jle   n5_var_α
                        mov              rcx, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 32], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 40], rcx;           jmp   countdown_ω
.Lx19_0:                mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 7
                        lea              r9, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx19_1
                        cmp              eax, 1;                              je    n5_var_α
                                                                              jmp   countdown_ω
.Lx19_2:                mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n5_var_α
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 40], rax;           jmp   countdown_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              r11, 6
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax;          jmp   n6_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α: mov              r11, 7
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn23:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn23]
                        lea              rsi, [rsp + 192]
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
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n2_var_α
                                                                              jmp   n7_var_α
n6_call_builtin_icon_β: mov              r11, 7;                              jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              r11, 8
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 152], rax;          jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       mov              r11, 9
                        mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n9_coerce_numeric_α
.Lx26_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n9_coerce_numeric_α:    mov              r11, 10
                        mov              eax, dword ptr [rsp + 272]
                        cmp              al, 5;                               je    .Lx28_1
                        cmp              al, 3;                               jne   .Lx28_0
                        mov              eax, dword ptr [rsp + 160]
                        cmp              al, 3;                               jne   .Lx28_0
.Lx28_1:                mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 136], rax;          jmp   n10_binop_α
.Lx28_0:                lea              rdi, [rsp + 272]
                        lea              rsi, [rsp + 160]
                        lea              rdx, [rsp + 128]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_α:            mov              r11, 11
                        mov              eax, dword ptr [rsp + 128]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx29_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 112], 3
                        mov              qword ptr [rsp + 120], rax;          jmp   .Lx29_7
.Lx29_2:                and              edx, 1;                              jz    .Lx29_0
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx29_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx29_4
.Lx29_3:                movq             xmm0, rsi
.Lx29_4:                cmp              cl, 5;                               je    .Lx29_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx29_6
.Lx29_5:                movq             xmm1, rdi
.Lx29_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 112], 5
                        mov              qword ptr [rsp + 120], rax
.Lx29_7:                                                                      jmp   n11_assign_α
.Lx29_0:                mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n2_var_α
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n11_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:           mov              r11, 12
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx;          jmp   n12_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n12_conjunction_α:      mov              r11, 13
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 88], rax;           jmp   n2_var_α
n12_conjunction_β:      mov              r11, 13;                             jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
countdown_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
countdown_β:
                                                                              jmp   countdown_ω
#-----------------------------------------------------------------------------------------------------------------------
countdown_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 368;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
countdown_ω:
                        add              rsp, 368;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
countdown_dcα:
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
                        lea              rcx, [rip + .Lx32_3]
                        push             rcx
                        lea              rcx, [rip + .Lx32_2]
                        push             rcx;                                 jmp   FN__countdown
.Lx32_2:                add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx32_3:                add              rsp, 24
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
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 112
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_call_proc_staged_α
.Lx35_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n34_call_proc_staged_α: sub              rsp, 16
                        mov              r11, 15
                        lea              rsi, [rsp + 16]                      # lit_integer
                        call             countdown_dcα;                       jmp   .Lx37_2
.Lx37_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx37_29
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
.Lx37_29:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx37_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   main_ω
.Lx37_240:              add              rsp, 32;                             jmp   main_γ
n34_call_proc_staged_β: mov              r11, 15;                             jmp   main_ω
.Lx37_0:                .quad            .Lx37_0_s
.Lx37_0_s:              .string          "countdown"
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
.Lstartup_pname0:       .string          "countdown"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__countdown
                        .quad            countdown_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            288
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
