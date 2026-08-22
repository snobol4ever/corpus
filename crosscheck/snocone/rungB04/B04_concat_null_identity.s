                        .intel_syntax    noprefix
                        .text
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
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "X"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         <stmt 1, line 1: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_lit_string_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_assign_α
.Lx18_0:                .quad            .Lx18_0_s
.Lx18_0_s:              .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 3
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # X
                        mov              qword ptr [r9 + 8], rdx;             jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:     mov              r11, 4
                        mov              r10, 1
                        add              rsp, 16;                             jmp   n4_statement_begin_α
#=======================================================================================================================
#         <stmt 2, line 2: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:   mov              r11, 5
                        mov              r10, 2;                              jmp   n5_var_α
n4_statement_begin_β:   mov              r11, 5;                              jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               sub              rsp, 16
                        mov              r11, 6
                        mov              rax, qword ptr [r9 + 0]              # X
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n6_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              r11, 7
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n7_statement_end_α
.Lx25_0:                .quad            .Lx25_0_s
.Lx25_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:     mov              r11, 8
                        mov              r10, 2
                        add              rsp, 16;                             jmp   n8_statement_begin_α
#=======================================================================================================================
#         <stmt 3, line 3: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:   mov              r11, 9
                        mov              r10, 3;                              jmp   n9_var_α
n8_statement_begin_β:   mov              r11, 9;                              jmp   n12_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               sub              rsp, 16
                        mov              r11, 10
                        mov              rax, qword ptr [r9 + 0]              # X
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n10_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              r11, 11
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n11_statement_end_α
.Lx31_0:                .quad            .Lx31_0_s
.Lx31_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_end_α:    mov              r11, 12
                        mov              r10, 3
                        add              rsp, 16;                             jmp   n12_statement_begin_α
#=======================================================================================================================
#         <stmt 4, line 4: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_begin_α:  mov              r11, 13
                        mov              r10, 4;                              jmp   n13_lit_string_α
n12_statement_begin_β:  mov              r11, 13;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_assign_α
.Lx36_0:                .quad            .Lx36_0_s
.Lx36_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              r11, 15
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_statement_end_α
.Lx37_0:                .quad            .Lx37_0_s
.Lx37_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:    mov              r11, 16
                        mov              r10, 4
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
