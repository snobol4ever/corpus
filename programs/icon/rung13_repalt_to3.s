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
                        mov              qword ptr [rbp + 64], 0
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        sub              rsp, 144
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
                        mov              qword ptr [rbp + 80], 3                        # result
                        mov              rax, qword ptr [rip + .Lx8_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1_repalt_α
.Lx8_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n1_repalt_α:
                        mov              qword ptr [rbp + 112], 0
                                                                                        jmp   n4_lit_integer_α
n1_repalt_ry:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        mov              qword ptr [rbp + 112], 1
                                                                                        jmp   n2_limit_α
n1_repalt_rt:
                        mov              rax, qword ptr [rbp + 112]
                        cmp              rax, 1
                                                                                        je    n1_repalt_α
                                                                                        jmp   main_ω
n1_repalt_β:
                                                                                        jmp   n6_to_β
#-----------------------------------------------------------------------------------------------------------------------
n2_limit_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jl    .Lx14_240
                        add              rsp, 144
                                                                                        jmp   main_ω
.Lx14_240:
                        inc              qword ptr [rbp + 64]
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n3_call_builtin_icon_α
n2_limit_β:
                                                                                        jmp   n1_repalt_β
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn16:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn16]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    n1_repalt_β
                                                                                        jmp   n1_repalt_β
n3_call_builtin_icon_β:
                                                                                        jmp   n1_repalt_β
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 160], 3                       # result
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n5_lit_integer_α
n4_lit_integer_β:
                                                                                        jmp   main_ω
.Lx17_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rbp + 176], 3                       # result
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n6_to_α
.Lx18_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n6_to_α:
                        mov              rdi, qword ptr [rbp + 160]                     # v
                        mov              rsi, qword ptr [rbp + 168]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 160], 3
                        mov              qword ptr [rbp + 168], rax
                        mov              rdi, qword ptr [rbp + 176]                     # v
                        mov              rsi, qword ptr [rbp + 184]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 176], 3
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 144], rax
.Lx20_0:
                        mov              rax, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 184]
                        cmp              rax, rcx
                                                                                        jg    n1_repalt_rt
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1_repalt_ry
n6_to_β:
                        inc              qword ptr [rbp + 144]
                                                                                        jmp   .Lx20_0
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
