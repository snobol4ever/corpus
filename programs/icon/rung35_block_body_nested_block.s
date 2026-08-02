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
                        sub              rsp, 224
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
                        mov              qword ptr [rbp + 272], 3                       # result
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n1_assign_α
.Lx16_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n3_lit_integer_α
.Lx18_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n4_to_α
.Lx19_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n4_to_α:
                        mov              rdi, qword ptr [rbp + 112]                     # v
                        mov              rsi, qword ptr [rbp + 120]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax
                        mov              rdi, qword ptr [rbp + 128]                     # v
                        mov              rsi, qword ptr [rbp + 136]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 96], rax
.Lx21_0:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 136]
                        cmp              rax, rcx
                                                                                        jle   .Lx21_240
                        add              rsp, 224
                                                                                        jmp   n14_var_α
.Lx21_240:
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n5_assign_α
n4_to_β:
                        inc              qword ptr [rbp + 96]
                                                                                        jmp   .Lx21_0
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n6_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n6_bound_α:
                        mov              qword ptr [rbp + 144], rsp
                                                                                        jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n9_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n9_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 5
                                                                                        je    .Lx30_1
                        cmp              eax, 3
                                                                                        jne   .Lx30_0
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 3
                                                                                        jne   .Lx30_0
.Lx30_1:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n10_coerce_numeric_α
.Lx30_0:
                        lea              rdi, [rbp + 288]                               # self
                        lea              rsi, [rbp + 304]                               # other
                        lea              rdx, [rbp + 224]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n10_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n10_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 5
                                                                                        je    .Lx32_1
                        cmp              eax, 3
                                                                                        jne   .Lx32_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 3
                                                                                        jne   .Lx32_0
.Lx32_1:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n11_binop_α
.Lx32_0:
                        lea              rdi, [rbp + 304]                               # self
                        lea              rsi, [rbp + 288]                               # other
                        lea              rdx, [rbp + 208]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n11_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_α:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx33_0
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx33_0
                        mov              rax, qword ptr [rbp + 232]
                        mov              rcx, qword ptr [rbp + 216]
                        add              rax, rcx
                        mov              qword ptr [rbp + 192], 3
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n12_assign_α
.Lx33_0:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n13_unmark_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n12_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n13_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n13_unmark_α:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n4_to_β
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n15_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn40:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn40]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n15_call_builtin_icon_β:
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
