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
#         <stmt 1, line 1: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                                         jmp   n1_statement_end_α
n0_statement_begin_β:                                                         jmp   n2_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_statement_end_α:                                                           jmp   n2_statement_begin_α
#=======================================================================================================================
#         LGE('abc', 'abc')          :s(e001)
#-----------------------------------------------------------------------------------------------------------------------
n2_statement_begin_α:                                                         jmp   n3_lit_string_α
n2_statement_begin_β:                                                         jmp   n7_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_lit_string_α
.Lx78_0:                .quad            .Lx78_0_s
.Lx78_0_s:              .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n5_cmp_test_α
n4_lit_string_β:        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_statement_begin_β
.Lx79_0:                .quad            .Lx79_0_s
.Lx79_0_s:              .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n5_cmp_test_α:          sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # lit_string
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jns   .Lx81_240
                        add              rsp, 16;                             jmp   n4_lit_string_β
.Lx81_240:                                                                    jmp   n6_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_end_α:     add              rsp, 48;                             jmp   n11_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 918/001: LGE(abc,abc) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_begin_α:                                                         jmp   n8_lit_string_α
n7_statement_begin_β:                                                         jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 41
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_assign_α
.Lx86_0:                .quad            .Lx86_0_s
.Lx86_0_s:              .string          "FAIL 918/001: LGE(abc,abc) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_statement_end_α
.Lx87_0:                .quad            .Lx87_0_s
.Lx87_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_end_α:    add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e001  <stmt 4, line 8: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_begin_α:                                                        jmp   n12_statement_end_α
n11_statement_begin_β:                                                        jmp   n13_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:                                                          jmp   n13_statement_begin_α
#=======================================================================================================================
#         LGE('xyz', 'abc')          :s(e002)
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:                                                        jmp   n14_lit_string_α
n13_statement_begin_β:                                                        jmp   n18_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_lit_string_α
.Lx96_0:                .quad            .Lx96_0_s
.Lx96_0_s:              .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_cmp_test_α
n15_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n13_statement_begin_β
.Lx97_0:                .quad            .Lx97_0_s
.Lx97_0_s:              .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n16_cmp_test_α:         sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # lit_string
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jns   .Lx99_240
                        add              rsp, 16;                             jmp   n15_lit_string_β
.Lx99_240:                                                                    jmp   n17_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:    add              rsp, 48;                             jmp   n22_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 918/002: LGE(xyz,abc) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:                                                        jmp   n19_lit_string_α
n18_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 41
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_assign_α
.Lx104_0:               .quad            .Lx104_0_s
.Lx104_0_s:             .string          "FAIL 918/002: LGE(xyz,abc) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n21_statement_end_α
.Lx105_0:               .quad            .Lx105_0_s
.Lx105_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_end_α:    add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e002  <stmt 7, line 13: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_begin_α:                                                        jmp   n23_statement_end_α
n22_statement_begin_β:                                                        jmp   n24_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:                                                          jmp   n24_statement_begin_α
#=======================================================================================================================
#         LGE('abc', 'xyz')          :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:                                                        jmp   n25_lit_string_α
n24_statement_begin_β:                                                        jmp   n33_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_lit_string_α
.Lx114_0:               .quad            .Lx114_0_s
.Lx114_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_cmp_test_α
n26_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n24_statement_begin_β
.Lx115_0:               .quad            .Lx115_0_s
.Lx115_0_s:             .string          "xyz"
#-----------------------------------------------------------------------------------------------------------------------
n27_cmp_test_α:         sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # lit_string
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jns   .Lx117_240
                        add              rsp, 16;                             jmp   n26_lit_string_β
.Lx117_240:                                                                   jmp   n28_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_end_α:    add              rsp, 48;                             jmp   n29_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 918/003: LGE(abc,xyz) should fail'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_begin_α:                                                        jmp   n30_lit_string_α
n29_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 38
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_assign_α
.Lx122_0:               .quad            .Lx122_0_s
.Lx122_0_s:             .string          "FAIL 918/003: LGE(abc,xyz) should fail"
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n32_statement_end_α
.Lx123_0:               .quad            .Lx123_0_s
.Lx123_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_end_α:    add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e003  <stmt 10, line 18: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_begin_α:                                                        jmp   n34_statement_end_α
n33_statement_begin_β:                                                        jmp   n35_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:                                                          jmp   n35_statement_begin_α
#=======================================================================================================================
#         LGE('abc', '')             :s(e004)
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_begin_α:                                                        jmp   n36_lit_string_α
n35_statement_begin_β:                                                        jmp   n40_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_lit_string_α
.Lx132_0:               .quad            .Lx132_0_s
.Lx132_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_cmp_test_α
n37_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n35_statement_begin_β
.Lx133_0:               .quad            .Lx133_0_s
.Lx133_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n38_cmp_test_α:         sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # lit_string
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jns   .Lx135_240
                        add              rsp, 16;                             jmp   n37_lit_string_β
.Lx135_240:                                                                   jmp   n39_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:    add              rsp, 48;                             jmp   n44_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 918/004: LGE(abc,null) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:                                                        jmp   n41_lit_string_α
n40_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 42
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_assign_α
.Lx140_0:               .quad            .Lx140_0_s
.Lx140_0_s:             .string          "FAIL 918/004: LGE(abc,null) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_statement_end_α
.Lx141_0:               .quad            .Lx141_0_s
.Lx141_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:    add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e004  <stmt 13, line 23: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_begin_α:                                                        jmp   n45_statement_end_α
n44_statement_begin_β:                                                        jmp   n46_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_end_α:                                                          jmp   n46_statement_begin_α
#=======================================================================================================================
#         LGE('', '')                :s(e005)
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_begin_α:                                                        jmp   n47_lit_string_α
n46_statement_begin_β:                                                        jmp   n51_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_lit_string_α
.Lx150_0:               .quad            .Lx150_0_s
.Lx150_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_cmp_test_α
n48_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n46_statement_begin_β
.Lx151_0:               .quad            .Lx151_0_s
.Lx151_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n49_cmp_test_α:         sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # lit_string
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jns   .Lx153_240
                        add              rsp, 16;                             jmp   n48_lit_string_β
.Lx153_240:                                                                   jmp   n50_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_end_α:    add              rsp, 48;                             jmp   n55_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 918/005: LGE(null,null) should succeed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_begin_α:                                                        jmp   n52_lit_string_α
n51_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 43
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_assign_α
.Lx158_0:               .quad            .Lx158_0_s
.Lx158_0_s:             .string          "FAIL 918/005: LGE(null,null) should succeed"
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n54_statement_end_α
.Lx159_0:               .quad            .Lx159_0_s
.Lx159_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_end_α:    add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e005  <stmt 16, line 28: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_begin_α:                                                        jmp   n56_statement_end_α
n55_statement_begin_β:                                                        jmp   n57_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:                                                          jmp   n57_statement_begin_α
#=======================================================================================================================
#         LGE('a', 'A')              :s(e006)
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:                                                        jmp   n58_lit_string_α
n57_statement_begin_β:                                                        jmp   n62_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_lit_string_α
.Lx168_0:               .quad            .Lx168_0_s
.Lx168_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n60_cmp_test_α
n59_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n57_statement_begin_β
.Lx169_0:               .quad            .Lx169_0_s
.Lx169_0_s:             .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n60_cmp_test_α:         sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # lit_string
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            jns   .Lx171_240
                        add              rsp, 16;                             jmp   n59_lit_string_β
.Lx171_240:                                                                   jmp   n61_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:    add              rsp, 48;                             jmp   n66_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 918/006: LGE(a,A) should succeed (ordinal)' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_begin_α:                                                        jmp   n63_lit_string_α
n62_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 47
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_assign_α
.Lx176_0:               .quad            .Lx176_0_s
.Lx176_0_s:             .string          "FAIL 918/006: LGE(a,A) should succeed (ordinal)"
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n65_statement_end_α
.Lx177_0:               .quad            .Lx177_0_s
.Lx177_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_end_α:    add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e006  <stmt 19, line 33: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_begin_α:                                                        jmp   n67_statement_end_α
n66_statement_begin_β:                                                        jmp   n68_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_end_α:                                                          jmp   n68_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS 918_lge (6/6)'
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_begin_α:                                                        jmp   n69_lit_string_α
n68_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n70_assign_α
.Lx186_0:               .quad            .Lx186_0_s
.Lx186_0_s:             .string          "PASS 918_lge (6/6)"
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n71_statement_end_α
.Lx187_0:               .quad            .Lx187_0_s
.Lx187_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_end_α:    add              rsp, 16;                             jmp   main_γ
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
