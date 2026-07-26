                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "I"
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
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
main_α:
#=======================================================================================================================
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 65544
                        mov              rdi, rsp
                        mov              ecx, 65544
                        xor              eax, eax
                        rep stosb
                        mov              qword ptr [rsp + 472], rsp
                        mov              r12, qword ptr [1879048192]
                        mov              [rsp + 65536], rbp
                        mov              rbp, rsp
main_α_body:
#         I = 1
# IR_LIT_INTEGER
xchain0_n0_α:
                        mov              qword ptr [rbp + 112], 6
                        mov              rax, qword ptr [rip + .Lx1_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   xchain0_n1_α
.Lx1_0:
                        .quad            1
# IR_ASSIGN gva
xchain0_n1_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain0_n2_α
# LOOP    OUTPUT = I
# IR_VAR
xchain0_n2_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   xchain0_n3_α
# IR_ASSIGN global
xchain0_n3_α:
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              rdi, qword ptr [rip + .Lx4_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   xchain0_n4_α
.Lx4_0:
                        .quad            .Lx4_0_s
.Lx4_0_s:
                        .string          "OUTPUT"
#         I = I + 1
# IR_VAR
xchain0_n4_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   xchain0_n5_α
# IR_LIT_INTEGER
xchain0_n5_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx6_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   xchain0_n7_α
.Lx6_0:
                        .quad            1
#         LT(I, 6) :S(LOOP)
# IR_VAR
xchain0_n6_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   xchain0_n8_α
xchain0_n7_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 100
                                                                                        je    .Lx8_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 6
                                                                                        jne   .Lx8_2
.Lx8_1:
                        mov              rax, qword ptr [rbp + 248]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 208], 6
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   xchain0_n9_α
.Lx8_0:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              r8d, 0
                        lea              r9, [rbp + 208]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain0_n9_α
.Lx8_2:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n6_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   xchain0_n9_α
xchain0_n7_β:
                                                                                        jmp   xchain0_n6_α
# IR_LIT_INTEGER
xchain0_n8_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx9_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   xchain0_n10_α
.Lx9_0:
                        .quad            6
# IR_ASSIGN gva
xchain0_n9_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   xchain0_n6_α
# IR_COERCE_NUMERIC
xchain0_n10_α:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 7
                                                                                        je    .Lx12_1
                        cmp              eax, 6
                                                                                        jne   .Lx12_0
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 6
                                                                                        jne   .Lx12_0
.Lx12_1:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   xchain0_n11_α
.Lx12_0:
                        lea              rdi, [rbp + 432]
                        lea              rsi, [rbp + 400]
                        lea              rdx, [rbp + 368]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n11_α
# IR_COERCE_NUMERIC
xchain0_n11_α:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 7
                                                                                        je    .Lx14_1
                        cmp              eax, 6
                                                                                        jne   .Lx14_0
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 6
                                                                                        jne   .Lx14_0
.Lx14_1:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   xchain0_n12_α
.Lx14_0:
                        lea              rdi, [rbp + 400]
                        lea              rsi, [rbp + 432]
                        lea              rdx, [rbp + 336]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain0_n12_α
# IR_CMP_TEST
xchain0_n12_α:
                        lea              rdi, [rbp + 368]
                        lea              rsi, [rbp + 336]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   main_γ
                        mov              qword ptr [rbp + 304], 0
                        mov              qword ptr [rbp + 312], 0
                                                                                        jmp   xchain0_n2_α
main_β:
                                                                                        jmp   main_ω
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, qword ptr [rbp + 472]
                        mov              rbp, [rsp + 65536]
                        add              rsp, 65544
                        ret
main_ω:
                        mov              rsp, qword ptr [rbp + 472]
                        mov              dword ptr [rsp+0], 99
                        mov              dword ptr [rsp+4], 0
                        mov              qword ptr [rsp+8], 0
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 65536]
                        add              rsp, 65544
                        ret
