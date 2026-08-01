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
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx7_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_lit_string_α
.Lx7_0:
                        .quad            .Lx7_0_s
.Lx7_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx8_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_call_α
.Lx8_0:
                        .quad            .Lx8_0_s
.Lx8_0_s:
                        .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd10:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd10]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx9_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n5_lit_string_α
.Lx9_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_lit_string_α
n2_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n4_assign_α
.Lx11_0:
                        .quad            .Lx11_0_s
.Lx11_0_s:
                        .string          "different"
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx12_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 64
                                                                                        jmp   main_γ
.Lx12_0:
                        .quad            .Lx12_0_s
.Lx12_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rsp + 32], 1
                        mov              dword ptr [rsp + 36], 4
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n6_assign_α
.Lx13_0:
                        .quad            .Lx13_0_s
.Lx13_0_s:
                        .string          "same"
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rsi, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rip + .Lx14_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx14_0:
                        .quad            .Lx14_0_s
.Lx14_0_s:
                        .string          "OUTPUT"
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
