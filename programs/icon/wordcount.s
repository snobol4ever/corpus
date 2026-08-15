                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 512
                        mov              qword ptr [rsp + 488], rcx
                        mov              qword ptr [rsp + 496], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 43
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n1_assign_α
.Lx21_0:                .quad            .Lx21_0_s
.Lx21_0_s:              .string          "the quick brown fox jumps over the lazy dog"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n3_assign_α
.Lx23_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 376], rax;          jmp   n5_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n5_scan_enter_α:        mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n6_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_charset_α:       mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], -1
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n7_scan_upto_α
.Lx29_0:                .quad            .Lx29_0_s
.Lx29_0_s:              .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n7_scan_upto_α:         mov              qword ptr [rsp + 176], r14
.Lx31_0:                mov              rax, qword ptr [rsp + 176]
                        cmp              rax, r15;                            jge   n20_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx31_2]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx31_1
                        mov              qword ptr [rsp + 160], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 168], rax;          jmp   n8_scan_tab_α
.Lx31_1:                inc              qword ptr [rsp + 176];               jmp   .Lx31_0
n7_scan_upto_β:         inc              qword ptr [rsp + 176];               jmp   .Lx31_0
.Lx31_2:                .quad            .Lx31_2_s
.Lx31_2_s:              .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n8_scan_tab_α:          sub              rsp, 16
                        mov              rax, qword ptr [rsp + 168]
                        cmp              rax, 1;                              jge   .Lx33_0
                        add              rax, r15
                        add              rax, 1
.Lx33_0:                cmp              rax, 1;                              jge   .Lx33_239
                        add              rsp, 16;                             jmp   n7_scan_upto_β
.Lx33_239:              mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx33_240
                        add              rsp, 16;                             jmp   n7_scan_upto_β
.Lx33_240:              mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n9_lit_charset_α
n8_scan_tab_β:          mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n7_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_charset_α:       mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], -1
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n10_scan_many_α
.Lx34_0:                .quad            .Lx34_0_s
.Lx34_0_s:              .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n10_scan_many_α:        mov              eax, r14d
.Lx36_0:                cmp              eax, r15d;                           jge   .Lx36_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx36_2]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx36_1
                        add              eax, 1;                              jmp   .Lx36_0
.Lx36_1:                cmp              eax, r14d;                           je    n12_var_α
                        mov              qword ptr [rsp + 336], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 344], rcx;          jmp   n11_scan_tab_α
n10_scan_many_β:                                                              jmp   n12_var_α
.Lx36_2:                .quad            .Lx36_2_s
.Lx36_2_s:              .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_tab_α:         sub              rsp, 16
                        mov              rax, qword ptr [rsp + 344]
                        cmp              rax, 1;                              jge   .Lx38_0
                        add              rax, r15
                        add              rax, 1
.Lx38_0:                cmp              rax, 1;                              jge   .Lx38_239
                        add              rsp, 16;                             jmp   n12_var_α
.Lx38_239:              mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx38_240
                        add              rsp, 16;                             jmp   n12_var_α
.Lx38_240:              mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n12_var_α
n11_scan_tab_β:         mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 280], rax;          jmp   n13_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n14_coerce_numeric_α
.Lx41_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n14_coerce_numeric_α:   mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 5;                              je    .Lx43_1
                        cmp              eax, 3;                              jne   .Lx43_0
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 3;                              jne   .Lx43_0
.Lx43_1:                mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 264], rax;          jmp   n15_binop_α
.Lx43_0:                lea              rdi, [rsp + 432]
                        lea              rsi, [rsp + 288]
                        lea              rdx, [rsp + 256]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n15_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:            mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 3;                              jne   .Lx44_0
                        mov              rax, qword ptr [rsp + 264]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 240], 3
                        mov              qword ptr [rsp + 248], rax;          jmp   n16_assign_α
.Lx44_0:                mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n6_lit_charset_α
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n17_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n17_conjunction_α:      mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax;          jmp   n6_lit_charset_α
n17_conjunction_β:                                                            jmp   n6_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 56], rax;           jmp   n19_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn50:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn50]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_γ
n19_call_builtin_icon_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_scan_α:             lea              rdi, [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 80]
                        mov              r14, qword ptr [rsp + 88]
                        mov              r15, qword ptr [rsp + 96];           jmp   n18_var_α
n20_scan_β:                                                                   jmp   n18_var_α
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
