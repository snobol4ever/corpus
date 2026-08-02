                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_icon_α:
                        sub              rsp, 352
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        .section         .rodata
.Lrkfn20:               .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn20]                          # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n2_call_builtin_icon_α
                                                                                        jmp   n1_assign_α
n0_call_builtin_icon_β:
                                                                                        jmp   n2_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n2_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn23:               .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn23]                          # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx22_240
                        add              rsp, 352
                                                                                        jmp   n14_var_α
.Lx22_240:
                                                                                        jmp   n3_assign_α
n2_call_builtin_icon_β:
                        add              rsp, 352
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n5_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n5_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 480]                     # lo
                        mov              rsi, qword ptr [rbp + 488]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n6_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_charset_α:
                        mov              qword ptr [rbp + 320], 2                       # result
                        mov              dword ptr [rbp + 324], -1
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n7_scan_upto_α
.Lx29_0:
                        .quad            .Lx29_0_s
.Lx29_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n7_scan_upto_α:
                        mov              qword ptr [rbp + 304], r14
.Lx31_0:
                        mov              rax, qword ptr [rbp + 304]
                        cmp              rax, r15
                                                                                        jl    .Lx31_240
                        add              rsp, 352
                                                                                        jmp   n18_scan_α
.Lx31_240:
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx31_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx31_1
                        mov              qword ptr [rbp + 288], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n8_scan_tab_α
.Lx31_1:
                        inc              qword ptr [rbp + 304]
                                                                                        jmp   .Lx31_0
n7_scan_upto_β:
                        inc              qword ptr [rbp + 304]
                                                                                        jmp   .Lx31_0
.Lx31_2:
                        .quad            .Lx31_2_s
.Lx31_2_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n8_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 296]
                        cmp              rax, 1
                                                                                        jge   .Lx33_0
                        add              rax, r15
                        add              rax, 1
.Lx33_0:
                        cmp              rax, 1
                                                                                        jge   .Lx33_239
                        add              rsp, 16
                                                                                        jmp   n7_scan_upto_β
.Lx33_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx33_240
                        add              rsp, 16
                                                                                        jmp   n7_scan_upto_β
.Lx33_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n9_var_α
n8_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n7_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n10_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_charset_α:
                        mov              qword ptr [rbp + 464], 2                       # result
                        mov              dword ptr [rbp + 468], -1
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n11_scan_many_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_many_α:
                        mov              eax, r14d
.Lx38_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx38_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx38_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx38_1
                        add              eax, 1
                                                                                        jmp   .Lx38_0
.Lx38_1:
                        cmp              eax, r14d
                                                                                        je    n6_lit_charset_α
                        mov              qword ptr [rbp + 448], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 456], rcx
                                                                                        jmp   n12_scan_tab_α
n11_scan_many_β:
                                                                                        jmp   n6_lit_charset_α
.Lx38_2:
                        .quad            .Lx38_2_s
.Lx38_2_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n12_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 456]
                        cmp              rax, 1
                                                                                        jge   .Lx40_0
                        add              rax, r15
                        add              rax, 1
.Lx40_0:
                        cmp              rax, 1
                                                                                        jge   .Lx40_239
                        add              rsp, 16
                                                                                        jmp   n6_lit_charset_α
.Lx40_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx40_240
                        add              rsp, 16
                                                                                        jmp   n6_lit_charset_α
.Lx40_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n13_call_builtin_icon_α
n12_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n6_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn42:               .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn42]                          # fn
                        lea              rsi, [rbp + 352]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n6_lit_charset_α
                                                                                        jmp   n6_lit_charset_α
n13_call_builtin_icon_β:
                                                                                        jmp   n6_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n15_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn46:               .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn46]                          # fn
                        lea              rsi, [rbp + 96]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n16_iterate_α
n15_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_iterate_α:
                        mov              qword ptr [rbp + 64], 0
.Lx48_0:
                        mov              rdi, qword ptr [rbp + 80]                      # obj
                        mov              rsi, qword ptr [rbp + 88]                      # obj
                        mov              rdx, qword ptr [rbp + 64]                      # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              rax, 99
                                                                                        je    main_ω
                                                                                        jmp   n17_call_builtin_icon_α
n16_iterate_β:
                        inc              qword ptr [rbp + 64]
                                                                                        jmp   .Lx48_0
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn50:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn50]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    n16_iterate_β
                                                                                        jmp   n16_iterate_β
n17_call_builtin_icon_β:
                                                                                        jmp   n16_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n18_scan_α:
                        lea              rdi, [rbp + 208]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 208]
                        mov              r14, qword ptr [rbp + 216]
                        mov              r15, qword ptr [rbp + 224]
                                                                                        jmp   n2_call_builtin_icon_α
n18_scan_β:
                                                                                        jmp   n2_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
