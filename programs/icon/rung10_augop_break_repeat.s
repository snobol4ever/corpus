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
n0_lit_integer_α:
                        sub              rsp, 160
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
                        mov              qword ptr [rbp + 208], 3                       # result
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1_assign_α
.Lx12_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 176], 3                       # result
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n4_lit_integer_α
.Lx16_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n5_to_α
.Lx17_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n5_to_α:
                        mov              rdi, qword ptr [rbp + 176]                     # v
                        mov              rsi, qword ptr [rbp + 184]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 176], 3
                        mov              qword ptr [rbp + 184], rax
                        mov              rdi, qword ptr [rbp + 192]                     # v
                        mov              rsi, qword ptr [rbp + 200]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 192], 3
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 160], rax
.Lx19_0:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 200]
                        cmp              rax, rcx
                                                                                        jle   .Lx19_240
                        add              rsp, 160
                                                                                        jmp   n10_var_α
.Lx19_240:
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n6_coerce_numeric_α
n5_to_β:
                        inc              qword ptr [rbp + 160]
                                                                                        jmp   .Lx19_0
#-----------------------------------------------------------------------------------------------------------------------
n6_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 5
                                                                                        je    .Lx21_1
                        cmp              eax, 3
                                                                                        jne   .Lx21_0
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 3
                                                                                        jne   .Lx21_0
.Lx21_1:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n7_coerce_numeric_α
.Lx21_0:
                        lea              rdi, [rbp + 224]                               # self
                        lea              rsi, [rbp + 144]                               # other
                        lea              rdx, [rbp + 112]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n7_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 5
                                                                                        je    .Lx23_1
                        cmp              eax, 3
                                                                                        jne   .Lx23_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx23_0
.Lx23_1:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n8_binop_α
.Lx23_0:
                        lea              rdi, [rbp + 144]                               # self
                        lea              rsi, [rbp + 224]                               # other
                        lea              rdx, [rbp + 96]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n8_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 3
                                                                                        jne   .Lx24_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx24_0
                        mov              rax, qword ptr [rbp + 120]
                        mov              rcx, qword ptr [rbp + 104]
                        add              rax, rcx
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n9_assign_α
.Lx24_0:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx24_240
                        add              rsp, 160
                                                                                        jmp   n10_var_α
.Lx24_240:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n9_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n5_to_β
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n11_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn29:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn29]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n11_call_builtin_icon_β:
                                                                                        jmp   main_ω
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
