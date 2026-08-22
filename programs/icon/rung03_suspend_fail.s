                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__positive:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rcx
                        mov              qword ptr [rsp + 176], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
positive_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              r11, 1
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n1_var_α
n0_disjunction_as:      mov              r11, 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lx7_0
                                                                              jmp   positive_γ
.Lx7_0:                                                                       jmp   positive_γ
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 48];           jmp   positive_ω
n0_disjunction_af:      mov              r11, 1
                        add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48];           jmp   positive_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:               mov              r11, 2
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 104], rax;          jmp   n2_lit_integer_α
n1_var_β:               mov              r11, 2;                              jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n3_binop_test_α
.Lx10_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_test_α:        mov              r11, 4
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 112;                             je    .Lx11_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              al, 112;                             je    .Lx11_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx11_2
                        mov              eax, dword ptr [rsp + 112]
                        cmp              al, 3;                               jne   .Lx11_2
.Lx11_1:                mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 120]
                        cmp              rax, rcx;                            jle   n0_disjunction_af
                        mov              rcx, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rcx
                        mov              rcx, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rcx;           jmp   n4_var_α
.Lx11_0:                mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        mov              r8d, 7
                        lea              r9, [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx11_1
                        cmp              eax, 1;                              je    n0_disjunction_af
                                                                              jmp   n4_var_α
.Lx11_2:                mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n0_disjunction_af
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax;           jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              r11, 5
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax;           jmp   n5_return_α
#-----------------------------------------------------------------------------------------------------------------------
n5_return_α:            mov              r11, 6
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   positive_γ
#-----------------------------------------------------------------------------------------------------------------------
positive_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
positive_β:
                                                                              jmp   positive_ω
#-----------------------------------------------------------------------------------------------------------------------
positive_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 168]
                        add              rsp, 192;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
positive_ω:
                        mov              rcx, qword ptr [rsp + 176]
                        add              rsp, 192;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
positive_dcα:
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
                        lea              rcx, [rip + .Lx15_2]
                        lea              rdx, [rip + .Lx15_3];                jmp   FN__positive
.Lx15_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx15_3:                pop              r11
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
                        sub              rsp, 432
                        mov              qword ptr [rsp + 408], rcx
                        mov              qword ptr [rsp + 416], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n16_disjunction_α:      mov              r11, 7
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              dword ptr [rsp + 240], 0;            jmp   n17_lit_integer_α
n16_disjunction_as:     mov              r11, 7
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 0;                              jne   .Lx29_0
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax;          jmp   n21_disjunction_α
.Lx29_0:                                                                      jmp   n21_disjunction_α
n16_disjunction_β:      mov              r11, 7
                        mov              eax, dword ptr [rsp + 240];          jmp   n21_disjunction_α
n16_disjunction_af:     mov              r11, 7
                        add              dword ptr [rsp + 240], 1
                        mov              eax, dword ptr [rsp + 240];          jmp   n21_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      mov              r11, 8
                        mov              qword ptr [rsp + 368], 3             # result
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n18_call_proc_staged_α
n17_lit_integer_β:      mov              r11, 8;                              jmp   n16_disjunction_af
.Lx30_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n18_call_proc_staged_α: mov              r11, 9
                        lea              rsi, [rsp + 368]
                        call             positive_dcα;                        jmp   .Lx32_2
.Lx32_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx32_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
.Lx32_29:               mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n16_disjunction_af
                                                                              jmp   n19_lit_integer_α
n18_call_proc_staged_β: mov              r11, 9;                              jmp   n16_disjunction_af
.Lx32_0:                .quad            .Lx32_0_s
.Lx32_0_s:              .string          "positive"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      mov              r11, 10
                        mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n20_call_builtin_icon_α
.Lx33_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_icon_α:
                        mov              r11, 11
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn35:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn35]
                        lea              rsi, [rsp + 272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n21_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n16_disjunction_as
n20_call_builtin_icon_β:
                        mov              r11, 11;                             jmp   n21_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n21_disjunction_α:      mov              r11, 12
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n24_lit_integer_α
n21_disjunction_as:     mov              r11, 12
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Lx37_0
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   main_γ
.Lx37_0:                cmp              eax, 1;                              jne   .Lx37_1
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 8], rax;            jmp   main_γ
.Lx37_1:                                                                      jmp   main_γ
n21_disjunction_β:      mov              r11, 12
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              je    main_ω
                                                                              jmp   main_ω
n21_disjunction_af:     mov              r11, 12
                        add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 1;                              je    n22_lit_integer_α
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rsp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n23_call_builtin_icon_α
n22_lit_integer_β:      mov              r11, 13;                             jmp   main_ω
.Lx38_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_icon_α:
                        mov              r11, 14
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn40:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn40]
                        lea              rsi, [rsp + 176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_disjunction_as
n23_call_builtin_icon_β:
                        mov              r11, 14;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      mov              r11, 15
                        mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n25_call_proc_staged_α
n24_lit_integer_β:      mov              r11, 15;                             jmp   n21_disjunction_af
.Lx41_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n25_call_proc_staged_α: mov              r11, 16
                        lea              rsi, [rsp + 144]
                        call             positive_dcα;                        jmp   .Lx43_2
.Lx43_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx43_29
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
.Lx43_29:               mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n21_disjunction_af
                                                                              jmp   n26_lit_integer_α
n25_call_proc_staged_β: mov              r11, 16;                             jmp   n21_disjunction_af
.Lx43_0:                .quad            .Lx43_0_s
.Lx43_0_s:              .string          "positive"
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              r11, 17
                        mov              qword ptr [rsp + 80], 3              # result
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n27_call_builtin_icon_α
.Lx44_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              r11, 18
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn46:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn46]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_disjunction_as
n27_call_builtin_icon_β:
                        mov              r11, 18;                             jmp   main_ω
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
.Lstartup_pname0:       .string          "positive"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__positive
                        .quad            positive_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            128
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
