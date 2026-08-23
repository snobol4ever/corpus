                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 4
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 4
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "ref_b"
.Lgvan1:                .string          "A"
.Lgvan2:                .string          "X"
.Lgvan3:                .string          "NM"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 0;                              jmp   n1_statement_end_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n2_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_statement_end_α:     mov              r11, 2
                        mov              r10, 1;                              jmp   n2_statement_begin_α
#=======================================================================================================================
#         A = 42
#-----------------------------------------------------------------------------------------------------------------------
n2_statement_begin_α:   mov              r11, 3
                        mov              r10, 2;                              jmp   n3_lit_integer_α
n2_statement_begin_β:   mov              r11, 3;                              jmp   n6_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       sub              rsp, 16
                        mov              r11, 4
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_assign_α
.Lx106_0:               .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              r11, 5
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # A
                        mov              qword ptr [r9 + 24], rdx;            jmp   n5_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_end_α:     mov              r11, 6
                        mov              r10, 2
                        add              rsp, 16;                             jmp   n6_statement_begin_α
#=======================================================================================================================
#         X = 'A'
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_begin_α:   mov              r11, 7
                        mov              r10, 3;                              jmp   n7_lit_string_α
n6_statement_begin_β:   mov              r11, 7;                              jmp   n10_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        sub              rsp, 16
                        mov              r11, 8
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n8_assign_α
.Lx112_0:               .quad            .Lx112_0_s
.Lx112_0_s:             .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:            mov              r11, 9
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # X
                        mov              qword ptr [r9 + 40], rdx;            jmp   n9_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_end_α:     mov              r11, 10
                        mov              r10, 3
                        add              rsp, 16;                             jmp   n10_statement_begin_α
#=======================================================================================================================
#         DIFFER($X, 42)                             :F(e001)
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_begin_α:  mov              r11, 11
                        mov              r10, 4;                              jmp   n11_var_α
n10_statement_begin_β:  mov              r11, 11;                             jmp   n21_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              sub              rsp, 16
                        mov              r11, 12
                        mov              rax, qword ptr [r9 + 32]             # X
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_call_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_α:             sub              rsp, 16
                        mov              r11, 13
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd120:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd120]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 524341
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx119_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n10_statement_begin_β
.Lx119_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n13_deref_α
n12_call_β:             mov              r11, 13
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n10_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n13_deref_α:            sub              rsp, 16
                        mov              r11, 14
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx121_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n10_statement_begin_β
.Lx121_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_lit_integer_α
n13_deref_β:            mov              r11, 14
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n10_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      sub              rsp, 16
                        mov              r11, 15
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_differ_α
n14_lit_integer_β:      mov              r11, 15
                        add              rsp, 16;                             jmp   n13_deref_β
.Lx122_0:               .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n15_differ_α:           sub              rsp, 16
                        mov              r11, 16
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx124_240
                        add              rsp, 16;                             jmp   n14_lit_integer_β
.Lx124_240:                                                                   jmp   n16_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_end_α:    mov              r11, 17
                        mov              r10, 4
                        add              rsp, 80;                             jmp   n17_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 213/001: dollar-X indirect'    :(END)
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_begin_α:  mov              r11, 18
                        mov              r10, 5;                              jmp   n18_lit_string_α
n17_statement_begin_β:  mov              r11, 18;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       sub              rsp, 16
                        mov              r11, 19
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx129_0:               .quad            .Lx129_0_s
.Lx129_0_s:             .string          "FAIL 213/001: dollar-X indirect"
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              r11, 20
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n20_statement_end_α
.Lx130_0:               .quad            .Lx130_0_s
.Lx130_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_end_α:    mov              r11, 21
                        mov              r10, 5
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e001  <stmt 6, line 10: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_begin_α:  mov              r11, 22
                        mov              r10, 6;                              jmp   n22_statement_end_α
n21_statement_begin_β:  mov              r11, 22;                             jmp   n23_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:    mov              r11, 23
                        mov              r10, 6;                              jmp   n23_statement_begin_α
#=======================================================================================================================
#         NM = .A
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:  mov              r11, 24
                        mov              r10, 7;                              jmp   n24_lit_name_α
n23_statement_begin_β:  mov              r11, 24;                             jmp   n27_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_name_α:         sub              rsp, 16
                        mov              r11, 25
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_assign_α
.Lx139_0:               .quad            .Lx139_0_s
.Lx139_0_s:             .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              r11, 26
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # NM
                        mov              qword ptr [r9 + 56], rdx;            jmp   n26_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_end_α:    mov              r11, 27
                        mov              r10, 7
                        add              rsp, 16;                             jmp   n27_statement_begin_α
#=======================================================================================================================
#         DIFFER($NM, 42)                            :F(e002)
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_begin_α:  mov              r11, 28
                        mov              r10, 8;                              jmp   n28_var_α
n27_statement_begin_β:  mov              r11, 28;                             jmp   n38_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              sub              rsp, 16
                        mov              r11, 29
                        mov              rax, qword ptr [r9 + 48]             # NM
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n29_call_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_α:             sub              rsp, 16
                        mov              r11, 30
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd147:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd147]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 524341
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx146_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n27_statement_begin_β
.Lx146_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n30_deref_α
n29_call_β:             mov              r11, 30
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n27_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n30_deref_α:            sub              rsp, 16
                        mov              r11, 31
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx148_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n27_statement_begin_β
.Lx148_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_lit_integer_α
n30_deref_β:            mov              r11, 31
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n27_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      sub              rsp, 16
                        mov              r11, 32
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_differ_α
n31_lit_integer_β:      mov              r11, 32
                        add              rsp, 16;                             jmp   n30_deref_β
.Lx149_0:               .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n32_differ_α:           sub              rsp, 16
                        mov              r11, 33
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx151_240
                        add              rsp, 16;                             jmp   n31_lit_integer_β
.Lx151_240:                                                                   jmp   n33_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_end_α:    mov              r11, 34
                        mov              r10, 8
                        add              rsp, 80;                             jmp   n34_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 213/002: dollar-NM DT_N deref' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_begin_α:  mov              r11, 35
                        mov              r10, 9;                              jmp   n35_lit_string_α
n34_statement_begin_β:  mov              r11, 35;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       sub              rsp, 16
                        mov              r11, 36
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 34
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n36_assign_α
.Lx156_0:               .quad            .Lx156_0_s
.Lx156_0_s:             .string          "FAIL 213/002: dollar-NM DT_N deref"
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:           mov              r11, 37
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_statement_end_α
.Lx157_0:               .quad            .Lx157_0_s
.Lx157_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_end_α:    mov              r11, 38
                        mov              r10, 9
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e002  <stmt 10, line 16: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_begin_α:  mov              r11, 39
                        mov              r10, 10;                             jmp   n39_statement_end_α
n38_statement_begin_β:  mov              r11, 39;                             jmp   n40_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:    mov              r11, 40
                        mov              r10, 10;                             jmp   n40_statement_begin_α
#=======================================================================================================================
#         $X = 99
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:  mov              r11, 41
                        mov              r10, 11;                             jmp   n41_var_α
n40_statement_begin_β:  mov              r11, 41;                             jmp   n46_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              sub              rsp, 16
                        mov              r11, 42
                        mov              rax, qword ptr [r9 + 32]             # X
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n42_call_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_α:             sub              rsp, 16
                        mov              r11, 43
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd168:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd168]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 524341
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx167_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n40_statement_begin_β
.Lx167_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_lit_integer_α
n42_call_β:             mov              r11, 43
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n40_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:      sub              rsp, 16
                        mov              r11, 44
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_assign_var_α
n43_lit_integer_β:      mov              r11, 44
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n40_statement_begin_β
.Lx169_0:               .quad            99
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_var_α:       sub              rsp, 16
                        mov              r11, 45
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx170_240
                        add              rsp, 16;                             jmp   n43_lit_integer_β
.Lx170_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_end_α:    mov              r11, 46
                        mov              r10, 11
                        add              rsp, 64;                             jmp   n46_statement_begin_α
#=======================================================================================================================
#         DIFFER(A, 99)                              :F(e003)
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_begin_α:  mov              r11, 47
                        mov              r10, 12;                             jmp   n47_var_α
n46_statement_begin_β:  mov              r11, 47;                             jmp   n55_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              sub              rsp, 16
                        mov              r11, 48
                        mov              rax, qword ptr [r9 + 16]             # A
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n48_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      sub              rsp, 16
                        mov              r11, 49
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_differ_α
n48_lit_integer_β:      mov              r11, 49
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n46_statement_begin_β
.Lx176_0:               .quad            99
#-----------------------------------------------------------------------------------------------------------------------
n49_differ_α:           sub              rsp, 16
                        mov              r11, 50
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx178_240
                        add              rsp, 16;                             jmp   n48_lit_integer_β
.Lx178_240:                                                                   jmp   n50_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_end_α:    mov              r11, 51
                        mov              r10, 12
                        add              rsp, 48;                             jmp   n51_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 213/003: dollar-X lvalue assign' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_begin_α:  mov              r11, 52
                        mov              r10, 13;                             jmp   n52_lit_string_α
n51_statement_begin_β:  mov              r11, 52;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_assign_α
.Lx183_0:               .quad            .Lx183_0_s
.Lx183_0_s:             .string          "FAIL 213/003: dollar-X lvalue assign"
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:           mov              r11, 54
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n54_statement_end_α
.Lx184_0:               .quad            .Lx184_0_s
.Lx184_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_end_α:    mov              r11, 55
                        mov              r10, 13
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e003  <stmt 14, line 22: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_begin_α:  mov              r11, 56
                        mov              r10, 14;                             jmp   n56_statement_end_α
n55_statement_begin_β:  mov              r11, 56;                             jmp   n57_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    mov              r11, 57
                        mov              r10, 14;                             jmp   n57_statement_begin_α
#=======================================================================================================================
#         A = 77
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:  mov              r11, 58
                        mov              r10, 15;                             jmp   n58_lit_integer_α
n57_statement_begin_β:  mov              r11, 58;                             jmp   n61_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      sub              rsp, 16
                        mov              r11, 59
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_assign_α
.Lx193_0:               .quad            77
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:           mov              r11, 60
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # A
                        mov              qword ptr [r9 + 24], rdx;            jmp   n60_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:    mov              r11, 61
                        mov              r10, 15
                        add              rsp, 16;                             jmp   n61_statement_begin_α
#=======================================================================================================================
#         DIFFER($.A, 77)                            :F(e004)
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_begin_α:  mov              r11, 62
                        mov              r10, 16;                             jmp   n62_lit_name_α
n61_statement_begin_β:  mov              r11, 62;                             jmp   n71_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_name_α:         sub              rsp, 16
                        mov              r11, 63
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_deref_α
.Lx199_0:               .quad            .Lx199_0_s
.Lx199_0_s:             .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n63_deref_α:            sub              rsp, 16
                        mov              r11, 64
                        mov              rdi, qword ptr [rsp + 16]            # lit_name
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx200_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n61_statement_begin_β
.Lx200_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n64_lit_integer_α
n63_deref_β:            mov              r11, 64
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n61_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:      sub              rsp, 16
                        mov              r11, 65
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n65_differ_α
n64_lit_integer_β:      mov              r11, 65
                        add              rsp, 16;                             jmp   n63_deref_β
.Lx201_0:               .quad            77
#-----------------------------------------------------------------------------------------------------------------------
n65_differ_α:           sub              rsp, 16
                        mov              r11, 66
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx203_240
                        add              rsp, 16;                             jmp   n64_lit_integer_β
.Lx203_240:                                                                   jmp   n66_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:    mov              r11, 67
                        mov              r10, 16
                        add              rsp, 64;                             jmp   n67_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 213/004: dollar-dot literal'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_begin_α:  mov              r11, 68
                        mov              r10, 17;                             jmp   n68_lit_string_α
n67_statement_begin_β:  mov              r11, 68;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       sub              rsp, 16
                        mov              r11, 69
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_assign_α
.Lx208_0:               .quad            .Lx208_0_s
.Lx208_0_s:             .string          "FAIL 213/004: dollar-dot literal"
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:           mov              r11, 70
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n70_statement_end_α
.Lx209_0:               .quad            .Lx209_0_s
.Lx209_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_end_α:    mov              r11, 71
                        mov              r10, 17
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e004  <stmt 18, line 28: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_begin_α:  mov              r11, 72
                        mov              r10, 18;                             jmp   n72_statement_end_α
n71_statement_begin_β:  mov              r11, 72;                             jmp   n73_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_end_α:    mov              r11, 73
                        mov              r10, 18;                             jmp   n73_statement_begin_α
#=======================================================================================================================
#         DEFINE('ref_b()')                          :(ref_b_end)
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_begin_α:  mov              r11, 74
                        mov              r10, 19;                             jmp   n74_define_α
n73_statement_begin_β:  mov              r11, 74;                             jmp   n80_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n74_define_α:           mov              r11, 75
                        mov              rdi, qword ptr [rip + .Lx219_0]
                        mov              rsi, qword ptr [rip + .Lx219_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n76_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx219_0]
                        lea              rsi, [rip + ref_b_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n75_statement_end_α
n74_define_β:           mov              r11, 75;                             jmp   n73_statement_begin_β
.Lx219_0:               .quad            .Lx219_0_s
.Lx219_0_s:             .string          "ref_b"
.Lx219_1:               .quad            .Lx219_1_s
.Lx219_1_s:             .string          ""
                                                                              jmp   .Lx220_245
#-----------------------------------------------------------------------------------------------------------------------
ref_b_α:                sub              rsp, 48
                        mov              rax, qword ptr [r9 + 0]              # ref_b
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              rcx, [rip + ref_b_γ]
                        lea              rax, [rip + ref_b_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n76_statement_begin_α];  jmp   rax
ref_b_γ:                mov              rdi, qword ptr [r9 + 0]
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ref_b_ω:                mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx220_245:
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    mov              r11, 76
                        mov              r10, 19;                             jmp   n80_statement_begin_α
#=======================================================================================================================
# ref_b   ref_b = .A                                 :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:  mov              r11, 77
                        mov              r10, 20;                             jmp   n77_lit_name_α
n76_statement_begin_β:  mov              r11, 77;                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_name_α:         sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_assign_α
.Lx225_0:               .quad            .Lx225_0_s
.Lx225_0_s:             .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:           mov              r11, 79
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ref_b
                        mov              qword ptr [r9 + 8], rdx;             jmp   n79_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_end_α:    mov              r11, 80
                        mov              r10, 20
                        add              rsp, 16;                             jmp   NRETURN
#=======================================================================================================================
# ref_b_end  <stmt 21, line 33: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_begin_α:  mov              r11, 81
                        mov              r10, 21;                             jmp   n81_statement_end_α
n80_statement_begin_β:  mov              r11, 81;                             jmp   n82_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_end_α:    mov              r11, 82
                        mov              r10, 21;                             jmp   n82_statement_begin_α
#=======================================================================================================================
#         DIFFER(ref_b(), 77)                        :F(e005)
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_begin_α:  mov              r11, 83
                        mov              r10, 22;                             jmp   n83_call_α
n82_statement_begin_β:  mov              r11, 83;                             jmp   n91_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:             sub              rsp, 16
                        mov              r11, 84
                        lea              rcx, [rip + .Lsig236z]
                        lea              rax, [rip + ref_b_α];                jmp   rax
.Lsig236z:              .quad            0
                        .quad            .Lx236_2
                        .quad            .Lx236_2
.Lx236_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx236_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx236_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx236_240
                        add              rsp, 16;                             jmp   n82_statement_begin_β
.Lx236_240:                                                                   jmp   n84_lit_integer_α
n83_call_β:             mov              r11, 84;                             jmp   n82_statement_begin_β
.Lx236_0:               .quad            .Lx236_0_s
.Lx236_0_s:             .string          "ref_b"
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      sub              rsp, 16
                        mov              r11, 85
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_differ_α
n84_lit_integer_β:      mov              r11, 85
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n82_statement_begin_β
.Lx237_0:               .quad            77
#-----------------------------------------------------------------------------------------------------------------------
n85_differ_α:           sub              rsp, 16
                        mov              r11, 86
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx239_240
                        add              rsp, 16;                             jmp   n84_lit_integer_β
.Lx239_240:                                                                   jmp   n86_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    mov              r11, 87
                        mov              r10, 22
                        add              rsp, 48;                             jmp   n87_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 213/005: NRETURN read value'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:  mov              r11, 88
                        mov              r10, 23;                             jmp   n88_lit_string_α
n87_statement_begin_β:  mov              r11, 88;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       sub              rsp, 16
                        mov              r11, 89
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n89_assign_α
.Lx244_0:               .quad            .Lx244_0_s
.Lx244_0_s:             .string          "FAIL 213/005: NRETURN read value"
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:           mov              r11, 90
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n90_statement_end_α
.Lx245_0:               .quad            .Lx245_0_s
.Lx245_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_end_α:    mov              r11, 91
                        mov              r10, 23
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e005  <stmt 24, line 36: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_begin_α:  mov              r11, 92
                        mov              r10, 24;                             jmp   n92_statement_end_α
n91_statement_begin_β:  mov              r11, 92;                             jmp   n93_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:    mov              r11, 93
                        mov              r10, 24;                             jmp   n93_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS 213_indirect_name (5/5)'
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_begin_α:  mov              r11, 94
                        mov              r10, 25;                             jmp   n94_lit_string_α
n93_statement_begin_β:  mov              r11, 94;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       sub              rsp, 16
                        mov              r11, 95
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 28
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n95_assign_α
.Lx254_0:               .quad            .Lx254_0_s
.Lx254_0_s:             .string          "PASS 213_indirect_name (5/5)"
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:           mov              r11, 96
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n96_statement_end_α
.Lx255_0:               .quad            .Lx255_0_s
.Lx255_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_end_α:    mov              r11, 97
                        mov              r10, 25
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 98
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              r11, 99
                        add              rsp, 8
                        pop              rcx;                                 jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              r11, 100
                        mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rax + 0], 1;              jmp   RETURN
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
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lseala1:               .string          "ref_b"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ref_b_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + ref_b_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
