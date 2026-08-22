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
main_α_body:
#=======================================================================================================================
#         <stmt 2, line 3: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 2;                              jmp   n1_lit_string_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n7_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_string_α
.Lx30_0:                .quad            .Lx30_0_s
.Lx30_0_s:              .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_cmp_test_α
.Lx31_0:                .quad            .Lx31_0_s
.Lx31_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n3_cmp_test_α:          sub              rsp, 16
                        mov              r11, 4
                        mov              eax, dword ptr [rsp + 32]            # lit_string
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx33_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lx33_239
                        add              rsp, 16;                             jmp   n6_statement_end_α
.Lx33_239:                                                                    jmp   n4_lit_string_α
.Lx33_0:                lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jg    .Lx33_240
                        add              rsp, 16;                             jmp   n6_statement_end_α
.Lx33_240:                                                                    jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        sub              rsp, 16
                        mov              r11, 5
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n5_assign_α
.Lx34_0:                .quad            .Lx34_0_s
.Lx34_0_s:              .string          "b > a"
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:            mov              r11, 6
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n6_statement_end_α
.Lx35_0:                .quad            .Lx35_0_s
.Lx35_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_end_α:     mov              r11, 7
                        mov              r10, 2
                        add              rsp, 64;                             jmp   n7_statement_begin_α
#=======================================================================================================================
#         <stmt 4, line 4: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_begin_α:   mov              r11, 8
                        mov              r10, 4;                              jmp   n8_lit_string_α
n7_statement_begin_β:   mov              r11, 8;                              jmp   n14_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        sub              rsp, 16
                        mov              r11, 9
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_lit_string_α
.Lx40_0:                .quad            .Lx40_0_s
.Lx40_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_cmp_test_α
.Lx41_0:                .quad            .Lx41_0_s
.Lx41_0_s:              .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n10_cmp_test_α:         sub              rsp, 16
                        mov              r11, 11
                        mov              eax, dword ptr [rsp + 32]            # lit_string
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx43_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx43_239
                        add              rsp, 16;                             jmp   n13_statement_end_α
.Lx43_239:                                                                    jmp   n11_lit_string_α
.Lx43_0:                lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx43_240
                        add              rsp, 16;                             jmp   n13_statement_end_α
.Lx43_240:                                                                    jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       sub              rsp, 16
                        mov              r11, 12
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_assign_α
.Lx44_0:                .quad            .Lx44_0_s
.Lx44_0_s:              .string          "a < b"
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:           mov              r11, 13
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n13_statement_end_α
.Lx45_0:                .quad            .Lx45_0_s
.Lx45_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_end_α:    mov              r11, 14
                        mov              r10, 4
                        add              rsp, 64;                             jmp   n14_statement_begin_α
#=======================================================================================================================
#         <stmt 6, line 5: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_begin_α:  mov              r11, 15
                        mov              r10, 6;                              jmp   n15_lit_string_α
n14_statement_begin_β:  mov              r11, 15;                             jmp   n21_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       sub              rsp, 16
                        mov              r11, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_lit_string_α
.Lx50_0:                .quad            .Lx50_0_s
.Lx50_0_s:              .string          "cat"
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_cmp_test_α
.Lx51_0:                .quad            .Lx51_0_s
.Lx51_0_s:              .string          "cat"
#-----------------------------------------------------------------------------------------------------------------------
n17_cmp_test_α:         sub              rsp, 16
                        mov              r11, 18
                        mov              eax, dword ptr [rsp + 32]            # lit_string
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx53_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            je    .Lx53_239
                        add              rsp, 16;                             jmp   n20_statement_end_α
.Lx53_239:                                                                    jmp   n18_lit_string_α
.Lx53_0:                lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx53_240
                        add              rsp, 16;                             jmp   n20_statement_end_α
.Lx53_240:                                                                    jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       sub              rsp, 16
                        mov              r11, 19
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx54_0:                .quad            .Lx54_0_s
.Lx54_0_s:              .string          "cat = cat"
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              r11, 20
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n20_statement_end_α
.Lx55_0:                .quad            .Lx55_0_s
.Lx55_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_end_α:    mov              r11, 21
                        mov              r10, 6
                        add              rsp, 64;                             jmp   n21_statement_begin_α
#=======================================================================================================================
#         <stmt 8, line 6: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_begin_α:  mov              r11, 22
                        mov              r10, 8;                              jmp   n22_lit_string_α
n21_statement_begin_β:  mov              r11, 22;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       sub              rsp, 16
                        mov              r11, 23
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_lit_string_α
.Lx60_0:                .quad            .Lx60_0_s
.Lx60_0_s:              .string          "cat"
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_cmp_test_α
.Lx61_0:                .quad            .Lx61_0_s
.Lx61_0_s:              .string          "dog"
#-----------------------------------------------------------------------------------------------------------------------
n24_cmp_test_α:         sub              rsp, 16
                        mov              r11, 25
                        mov              eax, dword ptr [rsp + 32]            # lit_string
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx63_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jne   .Lx63_239
                        add              rsp, 16;                             jmp   n27_statement_end_α
.Lx63_239:                                                                    jmp   n25_lit_string_α
.Lx63_0:                lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jne   .Lx63_240
                        add              rsp, 16;                             jmp   n27_statement_end_α
.Lx63_240:                                                                    jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       sub              rsp, 16
                        mov              r11, 26
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_assign_α
.Lx64_0:                .quad            .Lx64_0_s
.Lx64_0_s:              .string          "cat != dog"
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:           mov              r11, 27
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_statement_end_α
.Lx65_0:                .quad            .Lx65_0_s
.Lx65_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    mov              r11, 28
                        mov              r10, 8
                        add              rsp, 64;                             jmp   main_γ
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
