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
n0_lit_string_α:
                        sub              rsp, 368
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
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rbp + 416], 2                       # result
                        mov              dword ptr [rbp + 420], 43
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n1_assign_α
.Lx21_0:
                        .quad            .Lx21_0_s
.Lx21_0_s:
                        .string          "the quick brown fox jumps over the lazy dog"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 400], 3                       # result
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n3_assign_α
.Lx23_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n5_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n5_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 368]                     # lo
                        mov              rsi, qword ptr [rbp + 376]                     # hi
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
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], -1
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n7_scan_upto_α
.Lx29_0:
                        .quad            .Lx29_0_s
.Lx29_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n7_scan_upto_α:
                        mov              qword ptr [rbp + 176], r14
.Lx31_0:
                        mov              rax, qword ptr [rbp + 176]
                        cmp              rax, r15
                                                                                        jl    .Lx31_240
                        add              rsp, 368
                                                                                        jmp   n20_scan_α
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
                        mov              qword ptr [rbp + 160], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n8_scan_tab_α
.Lx31_1:
                        inc              qword ptr [rbp + 176]
                                                                                        jmp   .Lx31_0
n7_scan_upto_β:
                        inc              qword ptr [rbp + 176]
                                                                                        jmp   .Lx31_0
.Lx31_2:
                        .quad            .Lx31_2_s
.Lx31_2_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n8_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 168]
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
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n9_lit_charset_α
n8_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n7_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_charset_α:
                        mov              qword ptr [rbp + 352], 2                       # result
                        mov              dword ptr [rbp + 356], -1
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n10_scan_many_α
.Lx34_0:
                        .quad            .Lx34_0_s
.Lx34_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n10_scan_many_α:
                        mov              eax, r14d
.Lx36_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx36_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx36_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx36_1
                        add              eax, 1
                                                                                        jmp   .Lx36_0
.Lx36_1:
                        cmp              eax, r14d
                                                                                        je    n12_var_α
                        mov              qword ptr [rbp + 336], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 344], rcx
                                                                                        jmp   n11_scan_tab_α
n10_scan_many_β:
                                                                                        jmp   n12_var_α
.Lx36_2:
                        .quad            .Lx36_2_s
.Lx36_2_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 344]
                        cmp              rax, 1
                                                                                        jge   .Lx38_0
                        add              rax, r15
                        add              rax, 1
.Lx38_0:
                        cmp              rax, 1
                                                                                        jge   .Lx38_239
                        add              rsp, 16
                                                                                        jmp   n12_var_α
.Lx38_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx38_240
                        add              rsp, 16
                                                                                        jmp   n12_var_α
.Lx38_240:
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
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n12_var_α
n11_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n13_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rbp + 288], 3                       # result
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n14_coerce_numeric_α
.Lx41_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n14_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 5
                                                                                        je    .Lx43_1
                        cmp              eax, 3
                                                                                        jne   .Lx43_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 3
                                                                                        jne   .Lx43_0
.Lx43_1:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n15_binop_α
.Lx43_0:
                        lea              rdi, [rbp + 432]                               # self
                        lea              rsi, [rbp + 288]                               # other
                        lea              rdx, [rbp + 256]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n15_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 3
                                                                                        jne   .Lx44_0
                        mov              rax, qword ptr [rbp + 264]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 240], 3
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n16_assign_α
.Lx44_0:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n6_lit_charset_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n16_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n17_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n17_conjunction_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n6_lit_charset_α
n17_conjunction_β:
                                                                                        jmp   n6_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n19_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
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
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n19_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_scan_α:
                        lea              rdi, [rbp + 80]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 80]
                        mov              r14, qword ptr [rbp + 88]
                        mov              r15, qword ptr [rbp + 96]
                                                                                        jmp   n18_var_α
n20_scan_β:
                                                                                        jmp   n18_var_α
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
