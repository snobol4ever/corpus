                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__decr:
                        sub              rsp, 336
                        mov              qword ptr [rsp + 312], rcx
                        mov              qword ptr [rsp + 320], rdx
                        mov              rdi, rsp
                        add              rdi, 240
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
decr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 232], rax;          jmp   n1_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 168], rax;          jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n4_coerce_numeric_α
.Lx16_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:    mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 5;                              je    .Lx18_1
                        cmp              eax, 3;                              jne   .Lx18_0
                        mov              eax, dword ptr [rsp + 176]
                        cmp              eax, 3;                              jne   .Lx18_0
.Lx18_1:                mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 152], rax;          jmp   n5_binop_α
.Lx18_0:                lea              rdi, [rsp + 240]
                        lea              rsi, [rsp + 176]
                        lea              rdx, [rsp + 144]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n5_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_α:             mov              eax, dword ptr [rsp + 144]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx19_2
                        mov              rax, qword ptr [rsp + 152]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 128], 3
                        mov              qword ptr [rsp + 136], rax;          jmp   .Lx19_7
.Lx19_2:                and              edx, 1;                              jz    .Lx19_0
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx19_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx19_4
.Lx19_3:                movq             xmm0, rsi
.Lx19_4:                cmp              ecx, 5;                              je    .Lx19_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx19_6
.Lx19_5:                movq             xmm1, rdi
.Lx19_6:                subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 128], 5
                        mov              qword ptr [rsp + 136], rax
.Lx19_7:                                                                      jmp   n6_assign_α
.Lx19_0:                mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 176]
                        mov              rcx, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n2_var_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n7_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n8_binop_test_α
.Lx21_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_test_α:        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 112;                            je    .Lx22_0
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 112;                            je    .Lx22_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 3;                              jne   .Lx22_2
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 3;                              jne   .Lx22_2
.Lx22_1:                mov              rax, qword ptr [rsp + 120]
                        mov              rcx, qword ptr [rsp + 200]
                        cmp              rax, rcx;                            jge   n2_var_α
                        mov              rcx, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 96], rcx
                        mov              rcx, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 104], rcx;          jmp   n9_var_α
.Lx22_0:                mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        mov              r8d, 5
                        lea              r9, [rsp + 96]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx22_1
                        cmp              eax, 1;                              je    n2_var_α
                                                                              jmp   n9_var_α
.Lx22_2:                mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        mov              r8d, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n2_var_α
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 104], rax;          jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 88], rax;           jmp   n10_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn26:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn26]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    decr_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   decr_γ
n10_call_builtin_icon_β:
                                                                              jmp   decr_ω
#-----------------------------------------------------------------------------------------------------------------------
decr_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
decr_β:
                                                                              jmp   decr_ω
#-----------------------------------------------------------------------------------------------------------------------
decr_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 312]
                        add              rsp, 336;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
decr_ω:
                        mov              rcx, qword ptr [rsp + 320]
                        add              rsp, 336;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
decr_dcα:
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
                        lea              rcx, [rip + .Lx27_2]
                        lea              rdx, [rip + .Lx27_3];                jmp   FN__decr
.Lx27_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx27_3:                pop              r11
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
                        sub              rsp, 112
                        mov              qword ptr [rsp + 88], rcx
                        mov              qword ptr [rsp + 96], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n29_call_proc_staged_α
.Lx30_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n29_call_proc_staged_α: sub              rsp, 16
                        lea              rsi, [rsp + 16]                      # lit_integer
                        call             decr_dcα;                            jmp   .Lx32_2
.Lx32_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx32_29
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
.Lx32_29:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx32_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   main_ω
.Lx32_240:              add              rsp, 32;                             jmp   main_γ
n29_call_proc_staged_β:                                                       jmp   main_ω
.Lx32_0:                .quad            .Lx32_0_s
.Lx32_0_s:              .string          "decr"
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
.Lstartup_pname0:       .string          "decr"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__decr
                        .quad            decr_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            256
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
