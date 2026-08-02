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
                        sub              rsp, 80
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
                        mov              qword ptr [rbp + 80], 3                        # result
                        mov              rax, qword ptr [rip + .Lx5_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1_lit_integer_α
.Lx5_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 96], 3                        # result
                        mov              rax, qword ptr [rip + .Lx6_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n2_lit_integer_α
.Lx6_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx7_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n3_to_by_α
.Lx7_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n3_to_by_α:
                        mov              rdi, qword ptr [rbp + 80]                      # v
                        mov              rsi, qword ptr [rbp + 88]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rdi, qword ptr [rbp + 96]                      # v
                        mov              rsi, qword ptr [rbp + 104]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 96], 3
                        mov              qword ptr [rbp + 104], rax
                        mov              rdi, qword ptr [rbp + 112]                     # v
                        mov              rsi, qword ptr [rbp + 120]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 64], rax
.Lx9_0:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 120]
                        cmp              rdx, 0
                                                                                        jl    .Lx9_1
                        cmp              rax, rcx
                                                                                        jle   .Lx9_239
                        add              rsp, 80
                                                                                        jmp   main_ω
.Lx9_239:
                                                                                        jmp   .Lx9_2
.Lx9_1:
                        cmp              rax, rcx
                                                                                        jge   .Lx9_240
                        add              rsp, 80
                                                                                        jmp   main_ω
.Lx9_240:
.Lx9_2:
                        mov              qword ptr [rbp + 48], 3
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n4_call_builtin_icon_α
n3_to_by_β:
                        mov              rdx, qword ptr [rbp + 120]
                        mov              rax, qword ptr [rbp + 64]
                        add              rax, rdx
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   .Lx9_0
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn11:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn11]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    n3_to_by_β
                                                                                        jmp   n3_to_by_β
n4_call_builtin_icon_β:
                                                                                        jmp   n3_to_by_β
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
