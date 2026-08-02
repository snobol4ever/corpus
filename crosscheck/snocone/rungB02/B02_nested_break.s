                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "i"
.Lgvan1:                .string          "j"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
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
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_assign_α
.Lx33_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # i
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # i
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n4_coerce_numeric_α
.Lx36_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx38_1
                        cmp              eax, 3
                                                                                        jne   .Lx38_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx38_0
.Lx38_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n5_coerce_numeric_α
.Lx38_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 118                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n5_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n5_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx40_1
                        cmp              eax, 3
                                                                                        jne   .Lx40_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx40_0
.Lx40_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n6_cmp_test_α
.Lx40_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 119                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n6_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n6_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx42_240
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   main_γ
.Lx42_240:
                                                                                        jmp   n7_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_assign_α
.Lx43_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # j
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # j
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_coerce_numeric_α
.Lx46_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx48_1
                        cmp              eax, 3
                                                                                        jne   .Lx48_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx48_0
.Lx48_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n12_coerce_numeric_α
.Lx48_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 118                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n12_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n12_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx50_1
                        cmp              eax, 3
                                                                                        jne   .Lx50_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx50_0
.Lx50_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n13_cmp_test_α
.Lx50_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 119                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n13_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n13_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx52_240
                        add              rsp, 16
                                                                                        jmp   n29_var_α
.Lx52_240:
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # j
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_coerce_numeric_α
.Lx54_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n16_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx56_1
                        cmp              eax, 3
                                                                                        jne   .Lx56_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx56_0
.Lx56_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n17_coerce_numeric_α
.Lx56_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 101                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n17_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n17_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx58_1
                        cmp              eax, 3
                                                                                        jne   .Lx58_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx58_0
.Lx58_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n18_cmp_test_α
.Lx58_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 102                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n18_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n18_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx60_240
                        add              rsp, 16
                        add              rsp, 256
                                                                                        jmp   n19_var_α
.Lx60_240:
                                                                                        jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        mov              rax, qword ptr [1879052288]                    # i
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 384], rax                     # result
                        mov              qword ptr [rsp + 392], rdx
                                                                                        jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rsp + 400], 2                       # result
                        mov              dword ptr [rsp + 404], 1
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n21_binop_α
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_α:
                        mov              rdi, qword ptr [rsp + 384]                     # a
                        mov              rsi, qword ptr [rsp + 392]                     # a
                        mov              rdx, qword ptr [rsp + 400]                     # b
                        mov              rcx, qword ptr [rsp + 408]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                                                                                        jmp   n22_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [1879052304]                    # j
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 416], rax                     # result
                        mov              qword ptr [rsp + 424], rdx
                                                                                        jmp   n23_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n23_binop_α:
                        mov              rdi, qword ptr [rsp + 368]                     # a
                        mov              rsi, qword ptr [rsp + 376]                     # a
                        mov              rdx, qword ptr [rsp + 416]                     # b
                        mov              rcx, qword ptr [rsp + 424]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                                                                                        jmp   n24_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:
                        mov              rsi, qword ptr [rsp + 352]                     # val
                        mov              rdx, qword ptr [rsp + 360]                     # val
                        mov              rdi, qword ptr [rip + .Lx66_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n25_var_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [1879052304]                    # j
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 320], rax                     # result
                        mov              qword ptr [rsp + 328], rdx
                                                                                        jmp   n26_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        mov              qword ptr [rsp + 336], 3                       # result
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n27_call_α
.Lx68_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n27_call_α:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lbynamefn28:           .string          "ADD"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn28]                      # fn
                        lea              rsi, [rsp + 272]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              eax, 104
                                                                                        je    n9_var_α
                                                                                        jmp   n28_assign_α
n27_call_β:
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [1879052304], rax                    # j
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # i
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n31_call_α
.Lx72_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n31_call_α:
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
.Lbynamefnzd32:         .string          "ADD"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd32]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx73_240
                        add              rsp, 16
                        add              rsp, 304
                                                                                        jmp   n2_var_α
.Lx73_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n32_assign_α
n31_call_β:
                        add              rsp, 16
                        add              rsp, 304
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # i
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 320
                                                                                        jmp   n2_var_α
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
