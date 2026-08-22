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
# 	X = 'q'
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                                         jmp   n1_lit_string_α
n0_statement_begin_β:                                                         jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_assign_α
.Lx113_0:               .quad            .Lx113_0_s
.Lx113_0_s:             .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # X
                        mov              qword ptr [r9 + 8], rdx;             jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:     add              rsp, 16;                             jmp   n4_statement_begin_α
#=======================================================================================================================
# 	X = '2'
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:                                                         jmp   n5_lit_string_α
n4_statement_begin_β:                                                         jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_assign_α
.Lx119_0:               .quad            .Lx119_0_s
.Lx119_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # X
                        mov              qword ptr [r9 + 8], rdx;             jmp   n7_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:     add              rsp, 16;                             jmp   n8_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = GT(X, 1) 'a'
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:                                                         jmp   n9_var_α
n8_statement_begin_β:                                                         jmp   n17_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # X
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n11_coerce_numeric_α
n10_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n8_statement_begin_β
.Lx126_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx128_1
                        cmp              al, 3;                               jne   .Lx128_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx128_0
.Lx128_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_coerce_numeric_α
.Lx128_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n12_coerce_numeric_α
n11_coerce_numeric_β:   add              rsp, 16;                             jmp   n10_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n12_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx130_1
                        cmp              al, 3;                               jne   .Lx130_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx130_0
.Lx130_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_cmp_test_α
.Lx130_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n13_cmp_test_α
n12_coerce_numeric_β:   add              rsp, 16;                             jmp   n11_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n13_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx132_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lx132_239
                        add              rsp, 16;                             jmp   n12_coerce_numeric_β
.Lx132_239:                                                                   jmp   n14_lit_string_α
.Lx132_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jg    .Lx132_240
                        add              rsp, 16;                             jmp   n12_coerce_numeric_β
.Lx132_240:                                                                   jmp   n14_lit_string_α
n13_cmp_test_β:         add              rsp, 16;                             jmp   n12_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx133_0:               .quad            .Lx133_0_s
.Lx133_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n16_statement_end_α
.Lx134_0:               .quad            .Lx134_0_s
.Lx134_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_end_α:    add              rsp, 96;                             jmp   n17_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = GT(2.5, 2) 'b'
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_begin_α:                                                        jmp   n18_lit_real_α
n17_statement_begin_β:                                                        jmp   n26_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_real_α:         sub              rsp, 16
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_lit_integer_α
.Lx139_0:               .quad            4612811918334230528
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_coerce_numeric_α
n19_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n17_statement_begin_β
.Lx140_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n20_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_real
                        cmp              al, 5;                               je    .Lx142_1
                        cmp              al, 3;                               jne   .Lx142_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx142_0
.Lx142_1:               mov              rax, qword ptr [rsp + 32]            # lit_real
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_real
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_coerce_numeric_α
.Lx142_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_coerce_numeric_α
n20_coerce_numeric_β:   add              rsp, 16;                             jmp   n19_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n21_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx144_1
                        cmp              al, 3;                               jne   .Lx144_0
                        mov              eax, dword ptr [rsp + 48]            # lit_real
                        cmp              al, 3;                               jne   .Lx144_0
.Lx144_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_cmp_test_α
.Lx144_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # lit_real
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_cmp_test_α
n21_coerce_numeric_β:   add              rsp, 16;                             jmp   n20_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n22_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx146_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lx146_239
                        add              rsp, 16;                             jmp   n21_coerce_numeric_β
.Lx146_239:                                                                   jmp   n23_lit_string_α
.Lx146_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jg    .Lx146_240
                        add              rsp, 16;                             jmp   n21_coerce_numeric_β
.Lx146_240:                                                                   jmp   n23_lit_string_α
n22_cmp_test_β:         add              rsp, 16;                             jmp   n21_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_assign_α
.Lx147_0:               .quad            .Lx147_0_s
.Lx147_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n25_statement_end_α
.Lx148_0:               .quad            .Lx148_0_s
.Lx148_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:    add              rsp, 96;                             jmp   n26_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = LT('2.5', X) 'c'
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_begin_α:                                                        jmp   n27_lit_string_α
n26_statement_begin_β:                                                        jmp   n35_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n28_var_α
.Lx153_0:               .quad            .Lx153_0_s
.Lx153_0_s:             .string          "2.5"
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # X
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n29_coerce_numeric_α
n28_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n26_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n29_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_string
                        cmp              al, 5;                               je    .Lx156_1
                        cmp              al, 3;                               jne   .Lx156_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lx156_0
.Lx156_1:               mov              rax, qword ptr [rsp + 32]            # lit_string
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_string
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_coerce_numeric_α
.Lx156_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n30_coerce_numeric_α
n29_coerce_numeric_β:   add              rsp, 16;                             jmp   n28_var_β
#-----------------------------------------------------------------------------------------------------------------------
n30_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx158_1
                        cmp              al, 3;                               jne   .Lx158_0
                        mov              eax, dword ptr [rsp + 48]            # lit_string
                        cmp              al, 3;                               jne   .Lx158_0
.Lx158_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_cmp_test_α
.Lx158_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # lit_string
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n31_cmp_test_α
n30_coerce_numeric_β:   add              rsp, 16;                             jmp   n29_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n31_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx160_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx160_239
                        add              rsp, 16;                             jmp   n30_coerce_numeric_β
.Lx160_239:                                                                   jmp   n32_lit_string_α
.Lx160_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx160_240
                        add              rsp, 16;                             jmp   n30_coerce_numeric_β
.Lx160_240:                                                                   jmp   n32_lit_string_α
n31_cmp_test_β:         add              rsp, 16;                             jmp   n30_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n33_assign_α
.Lx161_0:               .quad            .Lx161_0_s
.Lx161_0_s:             .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n34_statement_end_α
.Lx162_0:               .quad            .Lx162_0_s
.Lx162_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:    add              rsp, 96;                             jmp   n35_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = EQ('2.0', 2) 'd'
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_begin_α:                                                        jmp   n36_lit_string_α
n35_statement_begin_β:                                                        jmp   n44_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_lit_integer_α
.Lx167_0:               .quad            .Lx167_0_s
.Lx167_0_s:             .string          "2.0"
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_coerce_numeric_α
n37_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n35_statement_begin_β
.Lx168_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n38_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_string
                        cmp              al, 5;                               je    .Lx170_1
                        cmp              al, 3;                               jne   .Lx170_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx170_0
.Lx170_1:               mov              rax, qword ptr [rsp + 32]            # lit_string
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_string
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_coerce_numeric_α
.Lx170_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 101
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n39_coerce_numeric_α
n38_coerce_numeric_β:   add              rsp, 16;                             jmp   n37_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n39_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx172_1
                        cmp              al, 3;                               jne   .Lx172_0
                        mov              eax, dword ptr [rsp + 48]            # lit_string
                        cmp              al, 3;                               jne   .Lx172_0
.Lx172_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_cmp_test_α
.Lx172_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # lit_string
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 102
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n40_cmp_test_α
n39_coerce_numeric_β:   add              rsp, 16;                             jmp   n38_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n40_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx174_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            je    .Lx174_239
                        add              rsp, 16;                             jmp   n39_coerce_numeric_β
.Lx174_239:                                                                   jmp   n41_lit_string_α
.Lx174_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx174_240
                        add              rsp, 16;                             jmp   n39_coerce_numeric_β
.Lx174_240:                                                                   jmp   n41_lit_string_α
n40_cmp_test_β:         add              rsp, 16;                             jmp   n39_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_assign_α
.Lx175_0:               .quad            .Lx175_0_s
.Lx175_0_s:             .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n43_statement_end_α
.Lx176_0:               .quad            .Lx176_0_s
.Lx176_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:    add              rsp, 96;                             jmp   n44_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = GE(, 0) 'e'
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_begin_α:                                                        jmp   n45_lit_integer_α
n44_statement_begin_β:                                                        jmp   n53_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_lit_string_α
.Lx181_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_coerce_numeric_α
n46_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n44_statement_begin_β
.Lx182_0:               .quad            .Lx182_0_s
.Lx182_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n47_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx184_1
                        cmp              al, 3;                               jne   .Lx184_0
                        mov              eax, dword ptr [rsp + 16]            # lit_string
                        cmp              al, 3;                               jne   .Lx184_0
.Lx184_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_coerce_numeric_α
.Lx184_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_string
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 109
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n48_coerce_numeric_α
n47_coerce_numeric_β:   add              rsp, 16;                             jmp   n46_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n48_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_string
                        cmp              al, 5;                               je    .Lx186_1
                        cmp              al, 3;                               jne   .Lx186_0
                        mov              eax, dword ptr [rsp + 48]            # lit_integer
                        cmp              al, 3;                               jne   .Lx186_0
.Lx186_1:               mov              rax, qword ptr [rsp + 32]            # lit_string
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_string
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_cmp_test_α
.Lx186_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 110
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n49_cmp_test_α
n48_coerce_numeric_β:   add              rsp, 16;                             jmp   n47_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n49_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx188_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jge   .Lx188_239
                        add              rsp, 16;                             jmp   n48_coerce_numeric_β
.Lx188_239:                                                                   jmp   n50_lit_string_α
.Lx188_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jns   .Lx188_240
                        add              rsp, 16;                             jmp   n48_coerce_numeric_β
.Lx188_240:                                                                   jmp   n50_lit_string_α
n49_cmp_test_β:         add              rsp, 16;                             jmp   n48_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_assign_α
.Lx189_0:               .quad            .Lx189_0_s
.Lx189_0_s:             .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n52_statement_end_α
.Lx190_0:               .quad            .Lx190_0_s
.Lx190_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    add              rsp, 96;                             jmp   n53_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = LGT('b', 'a') 'f'
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:                                                        jmp   n54_lit_string_α
n53_statement_begin_β:                                                        jmp   n60_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_lit_string_α
.Lx195_0:               .quad            .Lx195_0_s
.Lx195_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_cmp_test_α
n55_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n53_statement_begin_β
.Lx196_0:               .quad            .Lx196_0_s
.Lx196_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n56_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_string
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx198_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lx198_239
                        add              rsp, 16;                             jmp   n55_lit_string_β
.Lx198_239:                                                                   jmp   n57_lit_string_α
.Lx198_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jg    .Lx198_240
                        add              rsp, 16;                             jmp   n55_lit_string_β
.Lx198_240:                                                                   jmp   n57_lit_string_α
n56_cmp_test_β:         add              rsp, 16;                             jmp   n55_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_assign_α
.Lx199_0:               .quad            .Lx199_0_s
.Lx199_0_s:             .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n59_statement_end_α
.Lx200_0:               .quad            .Lx200_0_s
.Lx200_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_end_α:    add              rsp, 64;                             jmp   n60_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = LGT(10, 9) 'g'
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_begin_α:                                                        jmp   n61_lit_integer_α
n60_statement_begin_β:                                                        jmp   n69_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n62_lit_integer_α
.Lx205_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_coerce_string_α
n62_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n60_statement_begin_β
.Lx206_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n63_coerce_string_α:    sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # lit_integer
                        lea              rsi, [rsp + 0]                       # result
                        mov              rdx, 126
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_str_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n64_coerce_string_α
n63_coerce_string_β:    add              rsp, 16;                             jmp   n62_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n64_coerce_string_α:    sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # lit_integer
                        lea              rsi, [rsp + 0]                       # result
                        mov              rdx, 127
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_str_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n65_cmp_test_α
n64_coerce_string_β:    add              rsp, 16;                             jmp   n63_coerce_string_β
#-----------------------------------------------------------------------------------------------------------------------
n65_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_string
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx212_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lx212_239
                        add              rsp, 16;                             jmp   n64_coerce_string_β
.Lx212_239:                                                                   jmp   n66_lit_string_α
.Lx212_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jg    .Lx212_240
                        add              rsp, 16;                             jmp   n64_coerce_string_β
.Lx212_240:                                                                   jmp   n66_lit_string_α
n65_cmp_test_β:         add              rsp, 16;                             jmp   n64_coerce_string_β
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_assign_α
.Lx213_0:               .quad            .Lx213_0_s
.Lx213_0_s:             .string          "g"
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n68_statement_end_α
.Lx214_0:               .quad            .Lx214_0_s
.Lx214_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    add              rsp, 96;                             jmp   n69_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = NE(3, X) 'h'
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:                                                        jmp   n70_lit_integer_α
n69_statement_begin_β:                                                        jmp   n78_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_var_α
.Lx219_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # X
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_coerce_numeric_α
n71_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n69_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n72_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx222_1
                        cmp              al, 3;                               jne   .Lx222_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lx222_0
.Lx222_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_coerce_numeric_α
.Lx222_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 149
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n73_coerce_numeric_α
n72_coerce_numeric_β:   add              rsp, 16;                             jmp   n71_var_β
#-----------------------------------------------------------------------------------------------------------------------
n73_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx224_1
                        cmp              al, 3;                               jne   .Lx224_0
                        mov              eax, dword ptr [rsp + 48]            # lit_integer
                        cmp              al, 3;                               jne   .Lx224_0
.Lx224_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n74_cmp_test_α
.Lx224_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 150
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n74_cmp_test_α
n73_coerce_numeric_β:   add              rsp, 16;                             jmp   n72_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n74_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx226_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jne   .Lx226_239
                        add              rsp, 16;                             jmp   n73_coerce_numeric_β
.Lx226_239:                                                                   jmp   n75_lit_string_α
.Lx226_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jne   .Lx226_240
                        add              rsp, 16;                             jmp   n73_coerce_numeric_β
.Lx226_240:                                                                   jmp   n75_lit_string_α
n74_cmp_test_β:         add              rsp, 16;                             jmp   n73_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_assign_α
.Lx227_0:               .quad            .Lx227_0_s
.Lx227_0_s:             .string          "h"
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n77_statement_end_α
.Lx228_0:               .quad            .Lx228_0_s
.Lx228_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_end_α:    add              rsp, 96;                             jmp   n78_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = LE(X, 2) 'i'
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_begin_α:                                                        jmp   n79_var_α
n78_statement_begin_β:                                                        jmp   n87_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # X
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_coerce_numeric_α
n80_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n78_statement_begin_β
.Lx234_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n81_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx236_1
                        cmp              al, 3;                               jne   .Lx236_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx236_0
.Lx236_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_coerce_numeric_α
.Lx236_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n82_coerce_numeric_α
n81_coerce_numeric_β:   add              rsp, 16;                             jmp   n80_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n82_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx238_1
                        cmp              al, 3;                               jne   .Lx238_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx238_0
.Lx238_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_cmp_test_α
.Lx238_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n83_cmp_test_α
n82_coerce_numeric_β:   add              rsp, 16;                             jmp   n81_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n83_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx240_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lx240_239
                        add              rsp, 16;                             jmp   n82_coerce_numeric_β
.Lx240_239:                                                                   jmp   n84_lit_string_α
.Lx240_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jle   .Lx240_240
                        add              rsp, 16;                             jmp   n82_coerce_numeric_β
.Lx240_240:                                                                   jmp   n84_lit_string_α
n83_cmp_test_β:         add              rsp, 16;                             jmp   n82_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_assign_α
.Lx241_0:               .quad            .Lx241_0_s
.Lx241_0_s:             .string          "i"
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n86_statement_end_α
.Lx242_0:               .quad            .Lx242_0_s
.Lx242_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    add              rsp, 96;                             jmp   n87_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = LNE(X, 'q') 'j'
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:                                                        jmp   n88_var_α
n87_statement_begin_β:                                                        jmp   n95_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # X
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_coerce_string_α
n89_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n87_statement_begin_β
.Lx248_0:               .quad            .Lx248_0_s
.Lx248_0_s:             .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n90_coerce_string_α:    sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # var
                        lea              rsi, [rsp + 0]                       # result
                        mov              rdx, 132
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_str_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n91_cmp_test_α
n90_coerce_string_β:    add              rsp, 16;                             jmp   n89_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n91_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]            # coerce_string
                        mov              ecx, dword ptr [rsp + 32]            # lit_string
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx252_0
                        mov              rax, qword ptr [rsp + 24]            # coerce_string
                        mov              rdx, qword ptr [rsp + 40]            # lit_string
                        cmp              rax, rdx;                            jne   .Lx252_239
                        add              rsp, 16;                             jmp   n90_coerce_string_β
.Lx252_239:                                                                   jmp   n92_lit_string_α
.Lx252_0:               lea              rdi, [rsp + 16]                      # coerce_string
                        lea              rsi, [rsp + 32]                      # lit_string
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jne   .Lx252_240
                        add              rsp, 16;                             jmp   n90_coerce_string_β
.Lx252_240:                                                                   jmp   n92_lit_string_α
n91_cmp_test_β:         add              rsp, 16;                             jmp   n90_coerce_string_β
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n93_assign_α
.Lx253_0:               .quad            .Lx253_0_s
.Lx253_0_s:             .string          "j"
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n94_statement_end_α
.Lx254_0:               .quad            .Lx254_0_s
.Lx254_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_end_α:    add              rsp, 80;                             jmp   n95_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = LLT('a', X) 'k'
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_begin_α:                                                        jmp   n96_lit_string_α
n95_statement_begin_β:                                                        jmp   n103_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n97_var_α
.Lx259_0:               .quad            .Lx259_0_s
.Lx259_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # X
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_coerce_string_α
n97_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n95_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n98_coerce_string_α:    sub              rsp, 16
                        lea              rdi, [rsp + 16]                      # var
                        lea              rsi, [rsp + 0]                       # result
                        mov              rdx, 131
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_str_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n99_cmp_test_α
n98_coerce_string_β:    add              rsp, 16;                             jmp   n97_var_β
#-----------------------------------------------------------------------------------------------------------------------
n99_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 48]            # lit_string
                        mov              ecx, dword ptr [rsp + 16]            # coerce_string
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx264_0
                        mov              rax, qword ptr [rsp + 56]            # lit_string
                        mov              rdx, qword ptr [rsp + 24]            # coerce_string
                        cmp              rax, rdx;                            jl    .Lx264_239
                        add              rsp, 16;                             jmp   n98_coerce_string_β
.Lx264_239:                                                                   jmp   n100_lit_string_α
.Lx264_0:               lea              rdi, [rsp + 48]                      # lit_string
                        lea              rsi, [rsp + 16]                      # coerce_string
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx264_240
                        add              rsp, 16;                             jmp   n98_coerce_string_β
.Lx264_240:                                                                   jmp   n100_lit_string_α
n99_cmp_test_β:         add              rsp, 16;                             jmp   n98_coerce_string_β
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n101_assign_α
.Lx265_0:               .quad            .Lx265_0_s
.Lx265_0_s:             .string          "k"
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_α:          mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n102_statement_end_α
.Lx266_0:               .quad            .Lx266_0_s
.Lx266_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:   add              rsp, 80;                             jmp   n103_statement_begin_α
#=======================================================================================================================
# 	OUTPUT = LEQ(X, '2') 'l'
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_begin_α:                                                       jmp   n104_var_α
n103_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # X
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n106_coerce_string_α
n105_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n103_statement_begin_β
.Lx272_0:               .quad            .Lx272_0_s
.Lx272_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n106_coerce_string_α:   sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # var
                        lea              rsi, [rsp + 0]                       # result
                        mov              rdx, 122
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_str_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n107_cmp_test_α
n106_coerce_string_β:   add              rsp, 16;                             jmp   n105_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n107_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]            # coerce_string
                        mov              ecx, dword ptr [rsp + 32]            # lit_string
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx276_0
                        mov              rax, qword ptr [rsp + 24]            # coerce_string
                        mov              rdx, qword ptr [rsp + 40]            # lit_string
                        cmp              rax, rdx;                            je    .Lx276_239
                        add              rsp, 16;                             jmp   n106_coerce_string_β
.Lx276_239:                                                                   jmp   n108_lit_string_α
.Lx276_0:               lea              rdi, [rsp + 16]                      # coerce_string
                        lea              rsi, [rsp + 32]                      # lit_string
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx276_240
                        add              rsp, 16;                             jmp   n106_coerce_string_β
.Lx276_240:                                                                   jmp   n108_lit_string_α
n107_cmp_test_β:        add              rsp, 16;                             jmp   n106_coerce_string_β
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n109_assign_α
.Lx277_0:               .quad            .Lx277_0_s
.Lx277_0_s:             .string          "l"
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:          mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n110_statement_end_α
.Lx278_0:               .quad            .Lx278_0_s
.Lx278_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:   add              rsp, 80;                             jmp   main_γ
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
