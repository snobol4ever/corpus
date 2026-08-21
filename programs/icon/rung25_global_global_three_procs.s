                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__reset:
                        sub              rsp, 80
                        mov              qword ptr [rsp + 56], rcx
                        mov              qword ptr [rsp + 64], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
reset_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              qword ptr [rsp + 16], 3              # result
                        mov              rax, qword ptr [rip + .Lx2_0]
                        mov              qword ptr [rsp + 24], rax;           jmp   n1_assign_α
.Lx2_0:                 .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 0], rax              # accum
                        mov              qword ptr [r9 + 8], rdx;             jmp   reset_γ
#-----------------------------------------------------------------------------------------------------------------------
reset_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
reset_β:
                                                                              jmp   reset_ω
#-----------------------------------------------------------------------------------------------------------------------
reset_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 56]
                        add              rsp, 80;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
reset_ω:
                        mov              rcx, qword ptr [rsp + 64]
                        add              rsp, 80;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
reset_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx4_2]
                        lea              rdx, [rip + .Lx4_3];                 jmp   FN__reset
.Lx4_2:                 pop              r11
                        pop              r11;                                 jmp   r11
.Lx4_3:                 pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__bump:
                        sub              rsp, 128
                        mov              qword ptr [rsp + 104], rcx
                        mov              qword ptr [rsp + 112], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
bump_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              rax, qword ptr [r9 + 0]              # accum
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 48], rax            # result
                        mov              qword ptr [rsp + 56], rdx;           jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n7_coerce_numeric_α
.Lx11_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:    mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 5;                              je    .Lx13_1
                        cmp              eax, 3;                              jne   .Lx13_0
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 3;                              jne   .Lx13_0
.Lx13_1:                mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax;           jmp   n8_binop_α
.Lx13_0:                lea              rdi, [rsp + 48]
                        lea              rsi, [rsp + 64]
                        lea              rdx, [rsp + 32]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:             mov              eax, dword ptr [rsp + 32]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx14_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 16], 3
                        mov              qword ptr [rsp + 24], rax;           jmp   .Lx14_7
.Lx14_2:                and              edx, 1;                              jz    .Lx14_0
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx14_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx14_4
.Lx14_3:                movq             xmm0, rsi
.Lx14_4:                cmp              ecx, 5;                              je    .Lx14_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx14_6
.Lx14_5:                movq             xmm1, rdi
.Lx14_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 16], 5
                        mov              qword ptr [rsp + 24], rax
.Lx14_7:                                                                      jmp   n9_assign_α
.Lx14_0:                mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    bump_ω
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 0], rax              # accum
                        mov              qword ptr [r9 + 8], rdx;             jmp   bump_γ
#-----------------------------------------------------------------------------------------------------------------------
bump_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
bump_β:
                                                                              jmp   bump_ω
#-----------------------------------------------------------------------------------------------------------------------
bump_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 104]
                        add              rsp, 128;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
bump_ω:
                        mov              rcx, qword ptr [rsp + 112]
                        add              rsp, 128;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
bump_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx16_2]
                        lea              rdx, [rip + .Lx16_3];                jmp   FN__bump
.Lx16_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx16_3:                pop              r11
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
                        mov              edi, 1
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 1
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "accum"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_proc_staged_α: call             reset_dcα;                           jmp   .Lx26_2
.Lx26_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx26_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
.Lx26_29:               mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104;                            je    n18_call_proc_staged_α
                                                                              jmp   n18_call_proc_staged_α
n17_call_proc_staged_β:                                                       jmp   n18_call_proc_staged_α
.Lx26_0:                .quad            .Lx26_0_s
.Lx26_0_s:              .string          "reset"
#-----------------------------------------------------------------------------------------------------------------------
n18_call_proc_staged_α: call             bump_dcα;                            jmp   .Lx28_2
.Lx28_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx28_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
.Lx28_29:               mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 104;                            je    n19_call_proc_staged_α
                                                                              jmp   n19_call_proc_staged_α
n18_call_proc_staged_β:                                                       jmp   n19_call_proc_staged_α
.Lx28_0:                .quad            .Lx28_0_s
.Lx28_0_s:              .string          "bump"
#-----------------------------------------------------------------------------------------------------------------------
n19_call_proc_staged_α: call             bump_dcα;                            jmp   .Lx30_2
.Lx30_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx30_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
.Lx30_29:               mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n20_call_proc_staged_α
                                                                              jmp   n20_call_proc_staged_α
n19_call_proc_staged_β:                                                       jmp   n20_call_proc_staged_α
.Lx30_0:                .quad            .Lx30_0_s
.Lx30_0_s:              .string          "bump"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_proc_staged_α: call             bump_dcα;                            jmp   .Lx32_2
.Lx32_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx32_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
.Lx32_29:               mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104;                            je    n21_call_proc_staged_α
                                                                              jmp   n21_call_proc_staged_α
n20_call_proc_staged_β:                                                       jmp   n21_call_proc_staged_α
.Lx32_0:                .quad            .Lx32_0_s
.Lx32_0_s:              .string          "bump"
#-----------------------------------------------------------------------------------------------------------------------
n21_call_proc_staged_α: call             bump_dcα;                            jmp   .Lx34_2
.Lx34_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx34_29
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
.Lx34_29:               mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n22_call_proc_staged_α
                                                                              jmp   n22_call_proc_staged_α
n21_call_proc_staged_β:                                                       jmp   n22_call_proc_staged_α
.Lx34_0:                .quad            .Lx34_0_s
.Lx34_0_s:              .string          "bump"
#-----------------------------------------------------------------------------------------------------------------------
n22_call_proc_staged_α: call             bump_dcα;                            jmp   .Lx36_2
.Lx36_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx36_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
.Lx36_29:               mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104;                            je    n23_var_α
                                                                              jmp   n23_var_α
n22_call_proc_staged_β:                                                       jmp   n23_var_α
.Lx36_0:                .quad            .Lx36_0_s
.Lx36_0_s:              .string          "bump"
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              rax, qword ptr [r9 + 0]              # accum
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 48], rax            # result
                        mov              qword ptr [rsp + 56], rdx;           jmp   n24_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn39:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn39]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
n24_call_builtin_icon_β:
                                                                              jmp   main_ω
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
.Lstartup_pname0:       .string          "reset"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__reset
                        .quad            reset_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            32
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "bump"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__bump
                        .quad            bump_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            80
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
