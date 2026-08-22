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
#         <stmt 1, line 4: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_lit_string_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_assign_α
.Lx95_0:                .quad            .Lx95_0_s
.Lx95_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 3
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n3_statement_end_α
.Lx96_0:                .quad            .Lx96_0_s
.Lx96_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:     mov              r11, 4
                        mov              r10, 1
                        add              rsp, 16;                             jmp   n4_statement_begin_α
#=======================================================================================================================
#         <stmt 2, line 5: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:   mov              r11, 5
                        mov              r10, 2;                              jmp   n5_lit_string_α
n4_statement_begin_β:   mov              r11, 5;                              jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        sub              rsp, 16
                        mov              r11, 6
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_assign_α
.Lx101_0:               .quad            .Lx101_0_s
.Lx101_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              r11, 7
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n7_statement_end_α
.Lx102_0:               .quad            .Lx102_0_s
.Lx102_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:     mov              r11, 8
                        mov              r10, 2
                        add              rsp, 16;                             jmp   n8_statement_begin_α
#=======================================================================================================================
#         <stmt 3, line 6: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:   mov              r11, 9
                        mov              r10, 3;                              jmp   n9_lit_string_α
n8_statement_begin_β:   mov              r11, 9;                              jmp   n12_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 12
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_assign_α
.Lx107_0:               .quad            .Lx107_0_s
.Lx107_0_s:             .string          "Hello World!"
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              r11, 11
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n11_statement_end_α
.Lx108_0:               .quad            .Lx108_0_s
.Lx108_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_end_α:    mov              r11, 12
                        mov              r10, 3
                        add              rsp, 16;                             jmp   n12_statement_begin_α
#=======================================================================================================================
#         <stmt 4, line 7: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_begin_α:  mov              r11, 13
                        mov              r10, 4;                              jmp   n13_lit_integer_α
n12_statement_begin_β:  mov              r11, 13;                             jmp   n16_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_assign_α
.Lx113_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              r11, 15
                        mov              rsi, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_statement_end_α
.Lx114_0:               .quad            .Lx114_0_s
.Lx114_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:    mov              r11, 16
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n16_statement_begin_α
#=======================================================================================================================
#         <stmt 5, line 8: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:  mov              r11, 17
                        mov              r10, 5;                              jmp   n17_lit_integer_α
n16_statement_begin_β:  mov              r11, 17;                             jmp   n20_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      sub              rsp, 16
                        mov              r11, 18
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_assign_α
.Lx119_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:           mov              r11, 19
                        mov              rsi, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n19_statement_end_α
.Lx120_0:               .quad            .Lx120_0_s
.Lx120_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:    mov              r11, 20
                        mov              r10, 5
                        add              rsp, 16;                             jmp   n20_statement_begin_α
#=======================================================================================================================
#         <stmt 6, line 9: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_begin_α:  mov              r11, 21
                        mov              r10, 6;                              jmp   n21_lit_integer_α
n20_statement_begin_β:  mov              r11, 21;                             jmp   n25_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      sub              rsp, 16
                        mov              r11, 22
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_unop_α
.Lx125_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n22_unop_α:             sub              rsp, 16
                        mov              r11, 23
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n23_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              r11, 24
                        mov              rsi, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n24_statement_end_α
.Lx127_0:               .quad            .Lx127_0_s
.Lx127_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    mov              r11, 25
                        mov              r10, 6
                        add              rsp, 32;                             jmp   n25_statement_begin_α
#=======================================================================================================================
#         <stmt 7, line 10: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:  mov              r11, 26
                        mov              r10, 7;                              jmp   n26_lit_real_α
n25_statement_begin_β:  mov              r11, 26;                             jmp   n29_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_real_α:         sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_assign_α
.Lx132_0:               .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:           mov              r11, 28
                        mov              rsi, qword ptr [rsp + 0]             # lit_real
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_statement_end_α
.Lx133_0:               .quad            .Lx133_0_s
.Lx133_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_end_α:    mov              r11, 29
                        mov              r10, 7
                        add              rsp, 16;                             jmp   n29_statement_begin_α
#=======================================================================================================================
#         <stmt 8, line 11: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_begin_α:  mov              r11, 30
                        mov              r10, 8;                              jmp   n30_lit_string_α
n29_statement_begin_β:  mov              r11, 30;                             jmp   n33_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:       sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_assign_α
.Lx138_0:               .quad            .Lx138_0_s
.Lx138_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:           mov              r11, 32
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n32_statement_end_α
.Lx139_0:               .quad            .Lx139_0_s
.Lx139_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_end_α:    mov              r11, 33
                        mov              r10, 8
                        add              rsp, 16;                             jmp   n33_statement_begin_α
#=======================================================================================================================
#         <stmt 9, line 12: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_begin_α:  mov              r11, 34
                        mov              r10, 9;                              jmp   n34_lit_string_α
n33_statement_begin_β:  mov              r11, 34;                             jmp   n37_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       sub              rsp, 16
                        mov              r11, 35
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_assign_α
.Lx144_0:               .quad            .Lx144_0_s
.Lx144_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:           mov              r11, 36
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n36_statement_end_α
.Lx145_0:               .quad            .Lx145_0_s
.Lx145_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    mov              r11, 37
                        mov              r10, 9
                        add              rsp, 16;                             jmp   n37_statement_begin_α
#=======================================================================================================================
#         <stmt 10, line 13: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:  mov              r11, 38
                        mov              r10, 10;                             jmp   n38_lit_string_α
n37_statement_begin_β:  mov              r11, 38;                             jmp   n41_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:       sub              rsp, 16
                        mov              r11, 39
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_assign_α
.Lx150_0:               .quad            .Lx150_0_s
.Lx150_0_s:             .string          "1.0"
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              r11, 40
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n40_statement_end_α
.Lx151_0:               .quad            .Lx151_0_s
.Lx151_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    mov              r11, 41
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n41_statement_begin_α
#=======================================================================================================================
#         <stmt 11, line 14: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:  mov              r11, 42
                        mov              r10, 11;                             jmp   n42_lit_string_α
n41_statement_begin_β:  mov              r11, 42;                             jmp   n45_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       sub              rsp, 16
                        mov              r11, 43
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_assign_α
.Lx156_0:               .quad            .Lx156_0_s
.Lx156_0_s:             .string          "I'm here"
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:           mov              r11, 44
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n44_statement_end_α
.Lx157_0:               .quad            .Lx157_0_s
.Lx157_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_end_α:    mov              r11, 45
                        mov              r10, 11
                        add              rsp, 16;                             jmp   n45_statement_begin_α
#=======================================================================================================================
#         <stmt 12, line 15: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_begin_α:  mov              r11, 46
                        mov              r10, 12;                             jmp   n46_lit_string_α
n45_statement_begin_β:  mov              r11, 46;                             jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       sub              rsp, 16
                        mov              r11, 47
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_assign_α
.Lx162_0:               .quad            .Lx162_0_s
.Lx162_0_s:             .string          "\"Quote of the day\""
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              r11, 48
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n48_statement_end_α
.Lx163_0:               .quad            .Lx163_0_s
.Lx163_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    mov              r11, 49
                        mov              r10, 12
                        add              rsp, 16;                             jmp   n49_statement_begin_α
#=======================================================================================================================
#         <stmt 13, line 16: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:  mov              r11, 50
                        mov              r10, 13;                             jmp   n50_lit_integer_α
n49_statement_begin_β:  mov              r11, 50;                             jmp   n53_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:      sub              rsp, 16
                        mov              r11, 51
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_assign_α
.Lx168_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              r11, 52
                        mov              rsi, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n52_statement_end_α
.Lx169_0:               .quad            .Lx169_0_s
.Lx169_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    mov              r11, 53
                        mov              r10, 13
                        add              rsp, 16;                             jmp   n53_statement_begin_α
#=======================================================================================================================
#         <stmt 14, line 17: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:  mov              r11, 54
                        mov              r10, 14;                             jmp   n54_lit_integer_α
n53_statement_begin_β:  mov              r11, 54;                             jmp   n57_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:      sub              rsp, 16
                        mov              r11, 55
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_assign_α
.Lx174_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:           mov              r11, 56
                        mov              rsi, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n56_statement_end_α
.Lx175_0:               .quad            .Lx175_0_s
.Lx175_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    mov              r11, 57
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n57_statement_begin_α
#=======================================================================================================================
#         <stmt 15, line 18: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:  mov              r11, 58
                        mov              r10, 15;                             jmp   n58_lit_integer_α
n57_statement_begin_β:  mov              r11, 58;                             jmp   n61_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      sub              rsp, 16
                        mov              r11, 59
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_assign_α
.Lx180_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:           mov              r11, 60
                        mov              rsi, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n60_statement_end_α
.Lx181_0:               .quad            .Lx181_0_s
.Lx181_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:    mov              r11, 61
                        mov              r10, 15
                        add              rsp, 16;                             jmp   n61_statement_begin_α
#=======================================================================================================================
#         <stmt 16, line 19: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_begin_α:  mov              r11, 62
                        mov              r10, 16;                             jmp   n62_lit_string_α
n61_statement_begin_β:  mov              r11, 62;                             jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       sub              rsp, 16
                        mov              r11, 63
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_assign_α
.Lx186_0:               .quad            .Lx186_0_s
.Lx186_0_s:             .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:           mov              r11, 64
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n64_statement_end_α
.Lx187_0:               .quad            .Lx187_0_s
.Lx187_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    mov              r11, 65
                        mov              r10, 16
                        add              rsp, 16;                             jmp   n65_statement_begin_α
#=======================================================================================================================
#         <stmt 17, line 20: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:  mov              r11, 66
                        mov              r10, 17;                             jmp   n66_lit_string_α
n65_statement_begin_β:  mov              r11, 66;                             jmp   n69_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       sub              rsp, 16
                        mov              r11, 67
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_assign_α
.Lx192_0:               .quad            .Lx192_0_s
.Lx192_0_s:             .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              r11, 68
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n68_statement_end_α
.Lx193_0:               .quad            .Lx193_0_s
.Lx193_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    mov              r11, 69
                        mov              r10, 17
                        add              rsp, 16;                             jmp   n69_statement_begin_α
#=======================================================================================================================
#         <stmt 18, line 21: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:  mov              r11, 70
                        mov              r10, 18;                             jmp   n70_lit_string_α
n69_statement_begin_β:  mov              r11, 70;                             jmp   n73_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       sub              rsp, 16
                        mov              r11, 71
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_assign_α
.Lx198_0:               .quad            .Lx198_0_s
.Lx198_0_s:             .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n71_assign_α:           mov              r11, 72
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n72_statement_end_α
.Lx199_0:               .quad            .Lx199_0_s
.Lx199_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_end_α:    mov              r11, 73
                        mov              r10, 18
                        add              rsp, 16;                             jmp   n73_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 22: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_begin_α:  mov              r11, 74
                        mov              r10, 19;                             jmp   n74_lit_string_α
n73_statement_begin_β:  mov              r11, 74;                             jmp   n77_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       sub              rsp, 16
                        mov              r11, 75
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n75_assign_α
.Lx204_0:               .quad            .Lx204_0_s
.Lx204_0_s:             .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:           mov              r11, 76
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n76_statement_end_α
.Lx205_0:               .quad            .Lx205_0_s
.Lx205_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_end_α:    mov              r11, 77
                        mov              r10, 19
                        add              rsp, 16;                             jmp   n77_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 23: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_begin_α:  mov              r11, 78
                        mov              r10, 20;                             jmp   n78_lit_integer_α
n77_statement_begin_β:  mov              r11, 78;                             jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:      sub              rsp, 16
                        mov              r11, 79
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_assign_α
.Lx210_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              r11, 80
                        mov              rsi, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n80_statement_end_α
.Lx211_0:               .quad            .Lx211_0_s
.Lx211_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    mov              r11, 81
                        mov              r10, 20
                        add              rsp, 16;                             jmp   n81_statement_begin_α
#=======================================================================================================================
#         <stmt 21, line 24: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:  mov              r11, 82
                        mov              r10, 21;                             jmp   n82_lit_integer_α
n81_statement_begin_β:  mov              r11, 82;                             jmp   n85_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      sub              rsp, 16
                        mov              r11, 83
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_assign_α
.Lx216_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:           mov              r11, 84
                        mov              rsi, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n84_statement_end_α
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_end_α:    mov              r11, 85
                        mov              r10, 21
                        add              rsp, 16;                             jmp   n85_statement_begin_α
#=======================================================================================================================
#         <stmt 22, line 25: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_begin_α:  mov              r11, 86
                        mov              r10, 22;                             jmp   n86_lit_integer_α
n85_statement_begin_β:  mov              r11, 86;                             jmp   n89_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:      sub              rsp, 16
                        mov              r11, 87
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_assign_α
.Lx222_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:           mov              r11, 88
                        mov              rsi, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n88_statement_end_α
.Lx223_0:               .quad            .Lx223_0_s
.Lx223_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_end_α:    mov              r11, 89
                        mov              r10, 22
                        add              rsp, 16;                             jmp   n89_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 26: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_begin_α:  mov              r11, 90
                        mov              r10, 23;                             jmp   n90_lit_integer_α
n89_statement_begin_β:  mov              r11, 90;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:      sub              rsp, 16
                        mov              r11, 91
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_assign_α
.Lx228_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:           mov              r11, 92
                        mov              rsi, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n92_statement_end_α
.Lx229_0:               .quad            .Lx229_0_s
.Lx229_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:    mov              r11, 93
                        mov              r10, 23
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
