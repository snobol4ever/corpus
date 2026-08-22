                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__sum_to:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              rdi, rsp
                        add              rdi, 208
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
sum_to_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n1_assign_α
.Lx12_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 120], rax;          jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n4_var_α
.Lx16_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 184], rax;          jmp   n5_to_α
#-----------------------------------------------------------------------------------------------------------------------
n5_to_α:                mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 160], 3
                        mov              qword ptr [rsp + 168], rax
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 176], 3
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 144], rax
.Lx20_0:                mov              rax, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 184]
                        cmp              rax, rcx;                            jg    n10_var_α
                        mov              qword ptr [rsp + 128], 3
                        mov              qword ptr [rsp + 136], rax;          jmp   n6_coerce_numeric_α
n5_to_β:                inc              qword ptr [rsp + 144];               jmp   .Lx20_0
#-----------------------------------------------------------------------------------------------------------------------
n6_coerce_numeric_α:    mov              eax, dword ptr [rsp + 208]
                        cmp              al, 5;                               je    .Lx22_1
                        cmp              al, 3;                               jne   .Lx22_0
                        mov              eax, dword ptr [rsp + 128]
                        cmp              al, 3;                               jne   .Lx22_0
.Lx22_1:                mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 104], rax;          jmp   n7_coerce_numeric_α
.Lx22_0:                lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 96]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n7_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:    mov              eax, dword ptr [rsp + 128]
                        cmp              al, 5;                               je    .Lx24_1
                        cmp              al, 3;                               jne   .Lx24_0
                        mov              eax, dword ptr [rsp + 208]
                        cmp              al, 3;                               jne   .Lx24_0
.Lx24_1:                mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax;           jmp   n8_binop_α
.Lx24_0:                lea              rdi, [rsp + 128]
                        lea              rsi, [rsp + 208]
                        lea              rdx, [rsp + 80]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:             mov              eax, dword ptr [rsp + 96]
                        mov              ecx, dword ptr [rsp + 80]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx25_2
                        mov              rax, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 88]
                        add              rax, rdx
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax;           jmp   .Lx25_7
.Lx25_2:                and              edx, 1;                              jz    .Lx25_0
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdi, qword ptr [rsp + 88]
                        cmp              al, 5;                               je    .Lx25_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx25_4
.Lx25_3:                movq             xmm0, rsi
.Lx25_4:                cmp              cl, 5;                               je    .Lx25_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx25_6
.Lx25_5:                movq             xmm1, rdi
.Lx25_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 64], 5
                        mov              qword ptr [rsp + 72], rax
.Lx25_7:                                                                      jmp   n9_assign_α
.Lx25_0:                mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 80]
                        mov              rcx, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n10_var_α
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n5_to_β
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 40], rax;           jmp   n11_return_α
#-----------------------------------------------------------------------------------------------------------------------
n11_return_α:           mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   sum_to_γ
#-----------------------------------------------------------------------------------------------------------------------
sum_to_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
sum_to_β:
                                                                              jmp   sum_to_ω
#-----------------------------------------------------------------------------------------------------------------------
sum_to_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 280]
                        add              rsp, 304;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sum_to_ω:
                        mov              rcx, qword ptr [rsp + 288]
                        add              rsp, 304;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sum_to_dcα:
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
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx30_2]
                        lea              rdx, [rip + .Lx30_3];                jmp   FN__sum_to
.Lx30_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx30_3:                pop              r11
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
n31_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_call_proc_staged_α
.Lx34_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n32_call_proc_staged_α: sub              rsp, 16
                        lea              rsi, [rsp + 16]                      # lit_integer
                        call             sum_to_dcα;                          jmp   .Lx36_2
.Lx36_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx36_29
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
.Lx36_29:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx36_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   main_ω
.Lx36_240:                                                                    jmp   n33_call_builtin_icon_α
n32_call_proc_staged_β:                                                       jmp   main_ω
.Lx36_0:                .quad            .Lx36_0_s
.Lx36_0_s:              .string          "sum_to"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd38:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd38]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx37_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   main_ω
.Lx37_240:              mov              qword ptr [rsp + 0], rax             # result
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
.Lstartup_pname0:       .string          "sum_to"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__sum_to
                        .quad            sum_to_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            224
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
