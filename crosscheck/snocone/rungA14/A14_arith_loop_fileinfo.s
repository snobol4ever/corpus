                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "chars"
.Lgvan1:                .string          "lines"
.Lgvan2:                .string          "line"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 3
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 3
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
n0_statement_begin_β:
                                                                                        jmp   n5_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_lit_integer_α
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_call_α
.Lx39_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_call_α:
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
.Lrkfnzd41:             .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd41]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx40_240
                        add              rsp, 16
                                                                                        jmp   n5_statement_begin_α
.Lx40_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n4_statement_end_α
n3_call_β:
                        add              rsp, 16
                                                                                        jmp   n5_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_end_α:
                                                                                        jmp   n5_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_begin_α:
                                                                                        jmp   n6_lit_integer_α
n5_statement_begin_β:
                                                                                        jmp   n9_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_assign_α
.Lx46_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # chars
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n8_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_end_α:
                                                                                        jmp   n9_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_begin_α:
                                                                                        jmp   n10_lit_integer_α
n9_statement_begin_β:
                                                                                        jmp   n13_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_assign_α
.Lx52_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # lines
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n12_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:
                                                                                        jmp   n13_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:
                                                                                        jmp   n14_var_α
n13_statement_begin_β:
                        add              rsp, 80
                                                                                        jmp   n26_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx58_0]                 # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx58_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n25_statement_end_α
.Lx58_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n15_assign_α
n14_var_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n25_statement_end_α
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # line
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # chars
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # line
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n18_call_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd63:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd63]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx62_240
                        add              rsp, 16
                                                                                        jmp   n21_var_α
.Lx62_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n19_binop_α
n18_call_β:
                        add              rsp, 16
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx64_240
                        add              rsp, 16
                                                                                        jmp   n21_var_α
.Lx64_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n20_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # chars
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # lines
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n22_lit_integer_α
n21_var_β:
                        add              rsp, 16
                        add              rsp, 160
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n23_binop_α
n22_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n21_var_β
.Lx67_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n23_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx68_240
                        add              rsp, 16
                                                                                        jmp   n22_lit_integer_β
.Lx68_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n24_assign_α
n23_binop_β:
                        add              rsp, 16
                                                                                        jmp   n22_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # lines
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 208
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:
                                                                                        jmp   n26_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_begin_α:
                                                                                        jmp   n27_var_α
n26_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        mov              rax, qword ptr [1879052288]                    # chars
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 352], rax                     # result
                        mov              qword ptr [rsp + 360], rdx
                                                                                        jmp   n28_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rsp + 368], 2                       # result
                        mov              dword ptr [rsp + 372], 13
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rsp + 376], rax
                                                                                        jmp   n29_binop_α
.Lx75_0:
                        .quad            .Lx75_0_s
.Lx75_0_s:
                        .string          " characters, "
#-----------------------------------------------------------------------------------------------------------------------
n29_binop_α:
                        mov              rdi, qword ptr [rsp + 352]                     # a
                        mov              rsi, qword ptr [rsp + 360]                     # a
                        mov              rdx, qword ptr [rsp + 368]                     # b
                        mov              rcx, qword ptr [rsp + 376]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [1879052304]                    # lines
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 384], rax                     # result
                        mov              qword ptr [rsp + 392], rdx
                                                                                        jmp   n31_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n31_binop_α:
                        mov              rdi, qword ptr [rsp + 336]                     # a
                        mov              rsi, qword ptr [rsp + 344]                     # a
                        mov              rdx, qword ptr [rsp + 384]                     # b
                        mov              rcx, qword ptr [rsp + 392]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                                                                                        jmp   n32_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rsp + 400], 2                       # result
                        mov              dword ptr [rsp + 404], 11
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n33_binop_α
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          " lines read"
#-----------------------------------------------------------------------------------------------------------------------
n33_binop_α:
                        mov              rdi, qword ptr [rsp + 320]                     # a
                        mov              rsi, qword ptr [rsp + 328]                     # a
                        mov              rdx, qword ptr [rsp + 400]                     # b
                        mov              rcx, qword ptr [rsp + 408]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                                                                                        jmp   n34_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rsi, qword ptr [rsp + 304]                     # val
                        mov              rdx, qword ptr [rsp + 312]                     # val
                        mov              rdi, qword ptr [rip + .Lx81_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n35_statement_end_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:
                                                                                        jmp   main_γ
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
