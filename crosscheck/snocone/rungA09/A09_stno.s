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
.Lgvan0:                .string          "x"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         <stmt 1, line 2: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       sub              rsp, 16
                        mov              r11, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_call_α
.Lx25_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_call_α:              sub              rsp, 16
                        mov              r11, 2
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd27:             .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd27]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx26_240
                        add              rsp, 16;                             jmp   n2_statement_begin_α
.Lx26_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n2_statement_begin_α
n1_call_β:              mov              r11, 2
                        add              rsp, 16;                             jmp   n2_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n2_statement_begin_α:   mov              r11, 3
                        mov              r10, 1;                              jmp   n3_lit_integer_α
n2_statement_begin_β:   mov              r11, 3
                        add              rsp, 32;                             jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       sub              rsp, 16
                        mov              r11, 4
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_assign_α
.Lx30_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              r11, 5
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # x
                        mov              qword ptr [r9 + 8], rdx;             jmp   n5_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_end_α:     mov              r11, 6
                        mov              r10, 1
                        add              rsp, 48;                             jmp   n6_lit_integer_α
#=======================================================================================================================
#         <stmt 2, line 3: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       sub              rsp, 16
                        mov              r11, 7
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_call_α
.Lx34_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n7_call_α:              sub              rsp, 16
                        mov              r11, 8
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd36:             .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd36]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx35_240
                        add              rsp, 16;                             jmp   n8_statement_begin_α
.Lx35_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n8_statement_begin_α
n7_call_β:              mov              r11, 8
                        add              rsp, 16;                             jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:   mov              r11, 9
                        mov              r10, 2;                              jmp   n9_lit_integer_α
n8_statement_begin_β:   mov              r11, 9
                        add              rsp, 32;                             jmp   n12_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_assign_α
.Lx39_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              r11, 11
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # x
                        mov              qword ptr [r9 + 8], rdx;             jmp   n11_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_end_α:    mov              r11, 12
                        mov              r10, 2
                        add              rsp, 48;                             jmp   n12_lit_integer_α
#=======================================================================================================================
#         <stmt 5, line 8: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      sub              rsp, 16
                        mov              r11, 13
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_call_α
.Lx43_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n13_call_α:             sub              rsp, 16
                        mov              r11, 14
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd45:             .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd45]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx44_240
                        add              rsp, 16;                             jmp   n14_statement_begin_α
.Lx44_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_statement_begin_α
n13_call_β:             mov              r11, 14
                        add              rsp, 16;                             jmp   n14_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_begin_α:  mov              r11, 15
                        mov              r10, 5;                              jmp   n15_keyword_snobol4_α
n14_statement_begin_β:  mov              r11, 15
                        add              rsp, 32;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n15_keyword_snobol4_α:  sub              rsp, 16
                        mov              r11, 16
                        mov              rcx, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rdx, qword ptr [rcx]
                        mov              rax, 3
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_coerce_numeric_α
n16_lit_integer_β:      mov              r11, 17
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n22_lit_string_α
.Lx49_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n17_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 18
                        mov              eax, dword ptr [rsp + 32]            # keyword_snobol4
                        cmp              al, 5;                               je    .Lx51_1
                        cmp              al, 3;                               jne   .Lx51_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx51_0
.Lx51_1:                mov              rax, qword ptr [rsp + 32]            # keyword_snobol4
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # keyword_snobol4
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_coerce_numeric_α
.Lx51_0:                lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n18_coerce_numeric_α
n17_coerce_numeric_β:   mov              r11, 18
                        add              rsp, 16;                             jmp   n16_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n18_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 19
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx53_1
                        cmp              al, 3;                               jne   .Lx53_0
                        mov              eax, dword ptr [rsp + 48]            # keyword_snobol4
                        cmp              al, 3;                               jne   .Lx53_0
.Lx53_1:                mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_cmp_test_α
.Lx53_0:                lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # keyword_snobol4
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n19_cmp_test_α
n18_coerce_numeric_β:   mov              r11, 19
                        add              rsp, 16;                             jmp   n17_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n19_cmp_test_α:         sub              rsp, 16
                        mov              r11, 20
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx55_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lx55_239
                        add              rsp, 16;                             jmp   n18_coerce_numeric_β
.Lx55_239:                                                                    jmp   n20_lit_string_α
.Lx55_0:                lea              rdi, [rsp + 32]                      # a
                        lea              rsi, [rsp + 16]                      # b
                        call             rt_cmp_d@PLT
                        test             eax, eax;                            jg    .Lx55_240
                        add              rsp, 16;                             jmp   n18_coerce_numeric_β
.Lx55_240:                                                                    jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       sub              rsp, 16
                        mov              r11, 21
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_assign_α
.Lx56_0:                .quad            .Lx56_0_s
.Lx56_0_s:              .string          "stno ok"
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              r11, 22
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n24_statement_end_α
.Lx57_0:                .quad            .Lx57_0_s
.Lx57_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              r11, 23
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 5
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n23_assign_α
.Lx58_0:                .quad            .Lx58_0_s
.Lx58_0_s:              .string          "wrong"
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              r11, 24
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              rdi, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n24_statement_end_α
.Lx59_0:                .quad            .Lx59_0_s
.Lx59_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    mov              r11, 25
                        mov              r10, 5
                        add              rsp, 128;                            jmp   main_γ
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
