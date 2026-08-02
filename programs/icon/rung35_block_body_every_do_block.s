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
                        sub              rsp, 272
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
                        mov              qword ptr [rbp + 48], 3                        # result
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n1_lit_integer_α
.Lx14_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n2_to_α
.Lx15_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n2_to_α:
                        mov              rdi, qword ptr [rbp + 48]                      # v
                        mov              rsi, qword ptr [rbp + 56]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 48], 3
                        mov              qword ptr [rbp + 56], rax
                        mov              rdi, qword ptr [rbp + 64]                      # v
                        mov              rsi, qword ptr [rbp + 72]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 32], rax
.Lx17_0:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 72]
                        cmp              rax, rcx
                                                                                        jle   .Lx17_240
                        add              rsp, 272
                                                                                        jmp   main_ω
.Lx17_240:
                        mov              qword ptr [rbp + 16], 3
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n3_assign_α
n2_to_β:
                        inc              qword ptr [rbp + 32]
                                                                                        jmp   .Lx17_0
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n4_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n4_bound_α:
                        mov              qword ptr [rbp + 80], rsp
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 256], 3                       # result
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n7_coerce_numeric_α
.Lx23_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 5
                                                                                        je    .Lx25_1
                        cmp              eax, 3
                                                                                        jne   .Lx25_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 3
                                                                                        jne   .Lx25_0
.Lx25_1:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n8_binop_α
.Lx25_0:
                        lea              rdi, [rbp + 272]                               # self
                        lea              rsi, [rbp + 256]                               # other
                        lea              rdx, [rbp + 224]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n8_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx26_0
                        mov              rax, qword ptr [rbp + 232]
                        mov              rcx, 2
                        imul             rax, rcx
                        mov              qword ptr [rbp + 208], 3
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n9_assign_α
.Lx26_0:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n10_var_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n9_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n11_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn31:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn31]                          # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n13_unmark_α
                                                                                        jmp   n12_conjunction_α
n11_call_builtin_icon_β:
                                                                                        jmp   n13_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n12_conjunction_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n13_unmark_α
n12_conjunction_β:
                                                                                        jmp   n13_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n13_unmark_α:
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   n2_to_β
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
