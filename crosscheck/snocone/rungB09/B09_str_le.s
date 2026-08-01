                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "a"
.Lgvan1:                .string          "b"
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
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_assign_α
.Lx39_0:
                        .quad            .Lx39_0_s
.Lx39_0_s:
                        .string          "apple"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_assign_α
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          "banana"
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n6_coerce_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 0]
                        mov              rdx, 128
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n7_coerce_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 0]
                        mov              rdx, 129
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n8_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n8_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx50_240
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n11_lit_string_α
.Lx50_240:
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n10_assign_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "le"
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx52_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n13_lit_string_α
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rsp + 64], 1
                        mov              dword ptr [rsp + 68], 6
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n12_assign_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "not le"
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              rdi, qword ptr [rip + .Lx54_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n13_lit_string_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n14_assign_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "cat"
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_assign_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "cat"
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n19_coerce_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 0]
                        mov              rdx, 128
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n20_coerce_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 0]
                        mov              rdx, 129
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n21_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n21_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx66_240
                        add              rsp, 16
                        add              rsp, 224
                                                                                        jmp   n24_lit_string_α
.Lx66_240:
                                                                                        jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n23_assign_α
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "le"
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx68_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n26_lit_string_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        mov              qword ptr [rsp + 192], 1
                        mov              dword ptr [rsp + 196], 6
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n25_assign_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "not le"
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              rdi, qword ptr [rip + .Lx70_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n26_lit_string_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n27_assign_α
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "zebra"
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n28_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n29_assign_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "apple"
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n32_coerce_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 0]
                        mov              rdx, 128
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n33_coerce_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 0]
                        mov              rdx, 129
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n34_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n34_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx82_240
                        add              rsp, 16
                        add              rsp, 352
                                                                                        jmp   n37_lit_string_α
.Lx82_240:
                                                                                        jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n36_assign_α
.Lx83_0:
                        .quad            .Lx83_0_s
.Lx83_0_s:
                        .string          "le"
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx84_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 384
                                                                                        jmp   main_γ
.Lx84_0:
                        .quad            .Lx84_0_s
.Lx84_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rsp + 320], 1
                        mov              dword ptr [rsp + 324], 6
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n38_assign_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "not le"
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              rdi, qword ptr [rip + .Lx86_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
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
