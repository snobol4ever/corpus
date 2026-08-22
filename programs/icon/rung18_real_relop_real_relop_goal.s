                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_real_α:          mov              qword ptr [rsp + 64], 5              # result
                        mov              rax, qword ptr [rip + .Lx7_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n1_disjunction_α
.Lx7_0:                 .quad            4613937818241073152
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:       mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              dword ptr [rsp + 96], 0;             jmp   n6_lit_real_α
n1_disjunction_as:      mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              jne   .Lx9_0
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax;           jmp   n2_binop_test_α
.Lx9_0:                 cmp              eax, 1;                              jne   .Lx9_1
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax;           jmp   n2_binop_test_α
.Lx9_1:                 cmp              eax, 2;                              jne   .Lx9_2
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 88], rax;           jmp   n2_binop_test_α
.Lx9_2:                                                                       jmp   n2_binop_test_α
n1_disjunction_β:       mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              je    n1_disjunction_af
                        cmp              eax, 1;                              je    n1_disjunction_af
                                                                              jmp   n1_disjunction_af
n1_disjunction_af:      add              dword ptr [rsp + 96], 1
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 1;                              je    n5_lit_real_α
                        cmp              eax, 2;                              je    n4_lit_real_α
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_binop_test_α:        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 80]
                        mov              rcx, qword ptr [rsp + 88]
                        mov              r8d, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n1_disjunction_β
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax;           jmp   n3_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α: mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn12:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn12]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n1_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_disjunction_β
n3_call_builtin_icon_β:                                                       jmp   n1_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_real_α:          mov              qword ptr [rsp + 144], 5             # result
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n1_disjunction_as
n4_lit_real_β:                                                                jmp   n1_disjunction_af
.Lx13_0:                .quad            4616752568008179712
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_real_α:          mov              qword ptr [rsp + 128], 5             # result
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1_disjunction_as
n5_lit_real_β:                                                                jmp   n1_disjunction_af
.Lx14_0:                .quad            4615063718147915776
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_real_α:          mov              qword ptr [rsp + 112], 5             # result
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n1_disjunction_as
n6_lit_real_β:                                                                jmp   n1_disjunction_af
.Lx15_0:                .quad            4612811918334230528
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        and              rsp, -16
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
