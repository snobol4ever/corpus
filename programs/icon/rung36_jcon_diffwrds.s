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
                        sub              rsp, 608
                        mov              qword ptr [rsp + 584], rcx
                        mov              qword ptr [rsp + 592], rdx
                        mov              rdi, rsp
                        add              rdi, 528
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_icon_α: .section         .rodata
.Lrkfn20:               .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn20]
                        lea              rsi, [rsp + 512]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n2_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_assign_α
n0_call_builtin_icon_β:                                                       jmp   n2_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n2_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α: .section         .rodata
.Lrkfn23:               .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn23]
                        lea              rsi, [rsp + 176]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n14_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n3_assign_α
n2_call_builtin_icon_β:                                                       jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 488], rax;          jmp   n5_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n5_scan_enter_α:        mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n6_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_charset_α:       mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], -1
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n7_scan_upto_α
.Lx29_0:                .quad            .Lx29_0_s
.Lx29_0_s:              .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n7_scan_upto_α:         mov              qword ptr [rsp + 304], r14
.Lx31_0:                mov              rax, qword ptr [rsp + 304]
                        cmp              rax, r15;                            jge   n18_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx31_2]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx31_1
                        mov              qword ptr [rsp + 288], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 296], rax;          jmp   n8_scan_tab_α
.Lx31_1:                inc              qword ptr [rsp + 304];               jmp   .Lx31_0
n7_scan_upto_β:         inc              qword ptr [rsp + 304];               jmp   .Lx31_0
.Lx31_2:                .quad            .Lx31_2_s
.Lx31_2_s:              .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n8_scan_tab_α:          mov              rax, qword ptr [rsp + 296]
                        cmp              rax, 1;                              jge   .Lx33_0
                        add              rax, r15
                        add              rax, 1
.Lx33_0:                cmp              rax, 1;                              jl    n7_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n7_scan_upto_β
                        mov              qword ptr [rsp + 272], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n9_var_α
n8_scan_tab_β:          mov              r14, qword ptr [rsp + 272];          jmp   n7_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 408], rax;          jmp   n10_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_charset_α:      mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], -1
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n11_scan_many_α
.Lx36_0:                .quad            .Lx36_0_s
.Lx36_0_s:              .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_many_α:        mov              eax, r14d
.Lx38_0:                cmp              eax, r15d;                           jge   .Lx38_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx38_2]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx38_1
                        add              eax, 1;                              jmp   .Lx38_0
.Lx38_1:                cmp              eax, r14d;                           je    n6_lit_charset_α
                        mov              qword ptr [rsp + 448], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 456], rcx;          jmp   n12_scan_tab_α
n11_scan_many_β:                                                              jmp   n6_lit_charset_α
.Lx38_2:                .quad            .Lx38_2_s
.Lx38_2_s:              .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n12_scan_tab_α:         mov              rax, qword ptr [rsp + 456]
                        cmp              rax, 1;                              jge   .Lx40_0
                        add              rax, r15
                        add              rax, 1
.Lx40_0:                cmp              rax, 1;                              jl    n6_lit_charset_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n6_lit_charset_α
                        mov              qword ptr [rsp + 432], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n13_call_builtin_icon_α
n12_scan_tab_β:         mov              r14, qword ptr [rsp + 432];          jmp   n6_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn42:               .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn42]
                        lea              rsi, [rsp + 352]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n6_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n6_lit_charset_α
n13_call_builtin_icon_β:
                                                                              jmp   n6_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:              mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 136], rax;          jmp   n15_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn46:               .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn46]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n16_iterate_α
n15_call_builtin_icon_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_iterate_α:          mov              qword ptr [rsp + 64], 0
.Lx48_0:                mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              rax, 104;                            je    main_ω
                                                                              jmp   n17_call_builtin_icon_α
n16_iterate_β:          inc              qword ptr [rsp + 64];                jmp   .Lx48_0
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
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
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n16_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n16_iterate_β
n17_call_builtin_icon_β:
                                                                              jmp   n16_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n18_scan_α:             lea              rdi, [rsp + 208]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 208]
                        mov              r14, qword ptr [rsp + 216]
                        mov              r15, qword ptr [rsp + 224];          jmp   n2_call_builtin_icon_α
n18_scan_β:                                                                   jmp   n2_call_builtin_icon_α
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
