                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "x"
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
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_call_α
.Lx22_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd24:             .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd24]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx23_240
                        add              rsp, 16
                                                                                        jmp   n2_lit_integer_α
.Lx23_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_lit_integer_α
n1_call_β:
                        add              rsp, 16
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_assign_α
.Lx25_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # x
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n4_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_α:
                                                                                        jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_call_α
.Lx29_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n6_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd31:             .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd31]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx30_240
                        add              rsp, 16
                                                                                        jmp   n7_lit_integer_α
.Lx30_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n7_lit_integer_α
n6_call_β:
                        add              rsp, 16
                                                                                        jmp   n7_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_assign_α
.Lx32_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # x
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n9_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_α:
                                                                                        jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_call_α
.Lx36_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n11_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd38:             .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd38]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx37_240
                        add              rsp, 16
                                                                                        jmp   n12_keyword_snobol4_α
.Lx37_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n12_keyword_snobol4_α
n11_call_β:
                        add              rsp, 16
                                                                                        jmp   n12_keyword_snobol4_α
#-----------------------------------------------------------------------------------------------------------------------
n12_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx39_0]                 # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n13_lit_integer_α
.Lx39_0:
                        .quad            .Lx39_0_s
.Lx39_0_s:
                        .string          "STNO"
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n14_coerce_numeric_α
.Lx40_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n14_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # keyword_snobol4
                        cmp              eax, 5
                                                                                        je    .Lx42_1
                        cmp              eax, 3
                                                                                        jne   .Lx42_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx42_0
.Lx42_1:
                        mov              rax, qword ptr [rsp + 32]                      # keyword_snobol4
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # keyword_snobol4
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n15_coerce_numeric_α
.Lx42_0:
                        lea              rdi, [rsp + 32]                                # keyword_snobol4
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n15_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n15_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx44_1
                        cmp              eax, 3
                                                                                        jne   .Lx44_0
                        mov              eax, dword ptr [rsp + 48]                      # keyword_snobol4
                        cmp              eax, 3
                                                                                        jne   .Lx44_0
.Lx44_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n16_cmp_test_α
.Lx44_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # keyword_snobol4
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n16_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n16_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx46_240
                        add              rsp, 16
                        add              rsp, 192
                                                                                        jmp   n19_lit_string_α
.Lx46_240:
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n18_assign_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "stno ok"
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx48_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n21_statement_α
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rsp + 64], 2                        # result
                        mov              dword ptr [rsp + 68], 5
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n20_assign_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "wrong"
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rsi, qword ptr [rsp + 64]                      # val
                        mov              rdx, qword ptr [rsp + 72]                      # val
                        mov              rdi, qword ptr [rip + .Lx50_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n21_statement_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_α:
                        add              rsp, 224
                                                                                        jmp   main_γ
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
