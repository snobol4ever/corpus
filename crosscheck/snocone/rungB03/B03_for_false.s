                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "i"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 1
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 1
                        call             gva_register@PLT
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
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_assign_α
.Lx15_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n4_coerce_numeric_α
.Lx18_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx20_1
                        cmp              eax, 6
                                                                                        jne   .Lx20_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx20_0
.Lx20_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_coerce_numeric_α
.Lx20_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 118
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n5_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n5_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx22_1
                        cmp              eax, 6
                                                                                        jne   .Lx22_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx22_0
.Lx22_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_cmp_test_α
.Lx22_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 119
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n6_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n6_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx24_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n13_lit_string_α
.Lx24_240:
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 16
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_assign_α
.Lx25_0:
                        .quad            .Lx25_0_s
.Lx25_0_s:
                        .string          "should not print"
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx26_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n9_var_α
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_call_α
.Lx28_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n11_call_α:
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
.Lbynamefnzd12:         .string          "ADD"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd12]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx29_240
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n13_lit_string_α
.Lx29_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n12_assign_α
n11_call_β:
                        add              rsp, 16
                        add              rsp, 144
                                                                                        jmp   n13_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 160
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rsp + 208], 1
                        mov              dword ptr [rsp + 212], 4
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n14_assign_α
.Lx31_0:
                        .quad            .Lx31_0_s
.Lx31_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              rdi, qword ptr [rip + .Lx32_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx32_0:
                        .quad            .Lx32_0_s
.Lx32_0_s:
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
