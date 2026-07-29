                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 200
                        mov              rdi, rsp
                        mov              ecx, 200
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 192], rbp
                        mov              rbp, rsp
main_α_body:
                        mov              qword ptr [rbp + 64], 0
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        mov              qword ptr [rbp + 160], 6
                        mov              rax, qword ptr [rip + .Lx8_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n1_assign_α
.Lx8_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 80], 6
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n3_repalt_α
.Lx10_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n3_repalt_α:
                        mov              qword ptr [rbp + 112], 0
                                                                                        jmp   n5_var_α
n3_repalt_ry:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        mov              qword ptr [rbp + 112], 1
                                                                                        jmp   n4_limit_α
n3_repalt_rt:
                        mov              rax, qword ptr [rbp + 112]
                        cmp              rax, 1
                                                                                        je    n3_repalt_α
                                                                                        jmp   main_ω
n3_repalt_β:
                                                                                        jmp   n3_repalt_rt
#-----------------------------------------------------------------------------------------------------------------------
n4_limit_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jge   main_ω
                        inc              qword ptr [rbp + 64]
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n6_call_builtin_icon_α
n4_limit_β:
                                                                                        jmp   n3_repalt_β
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n3_repalt_ry
n5_var_β:
                                                                                        jmp   n3_repalt_rt
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn20:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn20]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n3_repalt_β
                                                                                        jmp   n3_repalt_β
n6_call_builtin_icon_β:
                                                                                        jmp   n3_repalt_β
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 192]
                        add              rsp, 200
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 192]
                        add              rsp, 200
                        ret
                        .section         .note.GNU-stack,"",@progbits
