                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 5
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 5
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "A"
.Lgvan1:                .string          "T"
.Lgvan2:                .string          "J"
.Lgvan3:                .string          "G"
.Lgvan4:                .string          "TMP"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         DATA('box(payload)')
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_lit_string_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 12
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_call_α
.Lx76_0:                .quad            .Lx76_0_s
.Lx76_0_s:              .string          "box(payload)"
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              sub              rsp, 16
                        mov              r11, 3
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd78:             .string          "DATA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd78]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx77_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx77_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_statement_end_α
n2_call_β:              mov              r11, 3
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:     mov              r11, 4
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n4_statement_begin_α
#=======================================================================================================================
#         A = ARRAY(5)
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:   mov              r11, 5
                        mov              r10, 2;                              jmp   n5_lit_integer_α
n4_statement_begin_β:   mov              r11, 5;                              jmp   n9_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       sub              rsp, 16
                        mov              r11, 6
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_call_α
.Lx83_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n6_call_α:              sub              rsp, 16
                        mov              r11, 7
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd85:             .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd85]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx84_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
.Lx84_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_assign_α
n6_call_β:              mov              r11, 7
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n4_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              r11, 8
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # A
                        mov              qword ptr [r9 + 8], rdx;             jmp   n8_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_end_α:     mov              r11, 9
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n9_statement_begin_α
#=======================================================================================================================
#         A<3> = box('deep-' DUPL('d', 8))
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_begin_α:   mov              r11, 10
                        mov              r10, 3;                              jmp   n10_var_α
n9_statement_begin_β:   mov              r11, 10;                             jmp   n21_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              sub              rsp, 16
                        mov              r11, 11
                        mov              rax, qword ptr [r9 + 0]              # A
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      sub              rsp, 16
                        mov              r11, 12
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_subscript_α
n11_lit_integer_β:      mov              r11, 12
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n9_statement_begin_β
.Lx92_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n12_subscript_α:        sub              rsp, 16
                        mov              r11, 13
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx93_240
                        add              rsp, 16;                             jmp   n11_lit_integer_β
.Lx93_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n13_lit_string_α
n12_subscript_β:        mov              r11, 13
                        add              rsp, 16;                             jmp   n11_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_lit_string_α
n13_lit_string_β:       mov              r11, 14
                        add              rsp, 16;                             jmp   n12_subscript_β
.Lx94_0:                .quad            .Lx94_0_s
.Lx94_0_s:              .string          "deep-"
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       sub              rsp, 16
                        mov              r11, 15
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_lit_integer_α
n14_lit_string_β:       mov              r11, 15
                        add              rsp, 16;                             jmp   n13_lit_string_β
.Lx95_0:                .quad            .Lx95_0_s
.Lx95_0_s:              .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      sub              rsp, 16
                        mov              r11, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_call_α
n15_lit_integer_β:      mov              r11, 16
                        add              rsp, 16;                             jmp   n14_lit_string_β
.Lx96_0:                .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n16_call_α:             sub              rsp, 16
                        mov              r11, 17
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd98:             .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd98]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx97_240
                        add              rsp, 16;                             jmp   n15_lit_integer_β
.Lx97_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n17_binop_α
n16_call_β:             mov              r11, 17
                        add              rsp, 16;                             jmp   n15_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n17_binop_α:            sub              rsp, 16
                        mov              r11, 18
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n18_call_α
n17_binop_β:            mov              r11, 18
                        add              rsp, 32;                             jmp   n15_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n18_call_α:             sub              rsp, 16
                        mov              r11, 19
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd101:            .string          "box"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd101]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx100_240
                        add              rsp, 16;                             jmp   n17_binop_β
.Lx100_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n19_assign_var_α
n18_call_β:             mov              r11, 19
                        add              rsp, 16;                             jmp   n17_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_var_α:       sub              rsp, 16
                        mov              r11, 20
                        mov              rdi, qword ptr [rsp + 112]           # subscript
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx102_240
                        add              rsp, 32;                             jmp   n17_binop_β
.Lx102_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n20_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_end_α:    mov              r11, 21
                        mov              r10, 3
                        add              rsp, 160;                            jmp   n21_statement_begin_α
#=======================================================================================================================
#         T = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_begin_α:  mov              r11, 22
                        mov              r10, 4;                              jmp   n22_call_α
n21_statement_begin_β:  mov              r11, 22;                             jmp   n25_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_α:             sub              rsp, 16
                        mov              r11, 23
                        .section         .rodata
.Lrkfnzd108:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd108]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx107_240
                        add              rsp, 16;                             jmp   n21_statement_begin_β
.Lx107_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n23_assign_α
n22_call_β:             mov              r11, 23
                        add              rsp, 16;                             jmp   n21_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              r11, 24
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # T
                        mov              qword ptr [r9 + 24], rdx;            jmp   n24_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    mov              r11, 25
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n25_statement_begin_α
#=======================================================================================================================
#         T<'slot'> = A
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:  mov              r11, 26
                        mov              r10, 5;                              jmp   n26_var_α
n25_statement_begin_β:  mov              r11, 26;                             jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              sub              rsp, 16
                        mov              r11, 27
                        mov              rax, qword ptr [r9 + 16]             # T
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n27_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       sub              rsp, 16
                        mov              r11, 28
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n28_subscript_α
n27_lit_string_β:       mov              r11, 28
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n25_statement_begin_β
.Lx115_0:               .quad            .Lx115_0_s
.Lx115_0_s:             .string          "slot"
#-----------------------------------------------------------------------------------------------------------------------
n28_subscript_α:        sub              rsp, 16
                        mov              r11, 29
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx116_240
                        add              rsp, 16;                             jmp   n27_lit_string_β
.Lx116_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n29_var_α
n28_subscript_β:        mov              r11, 29
                        add              rsp, 16;                             jmp   n27_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              sub              rsp, 16
                        mov              r11, 30
                        mov              rax, qword ptr [r9 + 0]              # A
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n30_assign_var_α
n29_var_β:              mov              r11, 30
                        add              rsp, 16;                             jmp   n28_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_var_α:       sub              rsp, 16
                        mov              r11, 31
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx118_240
                        add              rsp, 16;                             jmp   n29_var_β
.Lx118_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:    mov              r11, 32
                        mov              r10, 5
                        add              rsp, 80;                             jmp   n32_statement_begin_α
#=======================================================================================================================
#         J = 0
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:  mov              r11, 33
                        mov              r10, 6;                              jmp   n33_lit_integer_α
n32_statement_begin_β:  mov              r11, 33;                             jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_assign_α
.Lx123_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              r11, 35
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # J
                        mov              qword ptr [r9 + 40], rdx;            jmp   n35_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:    mov              r11, 36
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n36_statement_begin_α
#=======================================================================================================================
# cl      J = LT(J, 250) J + 1                                        :F(rd)
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:  mov              r11, 37
                        mov              r10, 7;                              jmp   n37_var_α
n36_statement_begin_β:  mov              r11, 37;                             jmp   n59_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              sub              rsp, 16
                        mov              r11, 38
                        mov              rax, qword ptr [r9 + 32]             # J
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n38_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      sub              rsp, 16
                        mov              r11, 39
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_coerce_numeric_α
n38_lit_integer_β:      mov              r11, 39
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n36_statement_begin_β
.Lx130_0:               .quad            250
#-----------------------------------------------------------------------------------------------------------------------
n39_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 40
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx132_1
                        cmp              al, 3;                               jne   .Lx132_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx132_0
.Lx132_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_coerce_numeric_α
.Lx132_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n40_coerce_numeric_α
n39_coerce_numeric_β:   mov              r11, 40
                        add              rsp, 16;                             jmp   n38_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n40_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 41
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx134_1
                        cmp              al, 3;                               jne   .Lx134_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx134_0
.Lx134_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_cmp_test_α
.Lx134_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n41_cmp_test_α
n40_coerce_numeric_β:   mov              r11, 41
                        add              rsp, 16;                             jmp   n39_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n41_cmp_test_α:         sub              rsp, 16
                        mov              r11, 42
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx136_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx136_239
                        add              rsp, 16;                             jmp   n40_coerce_numeric_β
.Lx136_239:                                                                   jmp   n42_var_α
.Lx136_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx136_240
                        add              rsp, 16;                             jmp   n40_coerce_numeric_β
.Lx136_240:                                                                   jmp   n42_var_α
n41_cmp_test_β:         mov              r11, 42
                        add              rsp, 16;                             jmp   n40_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              sub              rsp, 16
                        mov              r11, 43
                        mov              rax, qword ptr [r9 + 32]             # J
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_lit_integer_α
n42_var_β:              mov              r11, 43
                        add              rsp, 16;                             jmp   n41_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:      sub              rsp, 16
                        mov              r11, 44
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_binop_α
n43_lit_integer_β:      mov              r11, 44
                        add              rsp, 16;                             jmp   n42_var_β
.Lx138_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n44_binop_α:            sub              rsp, 16
                        mov              r11, 45
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx139_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx139_7
.Lx139_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx139_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx139_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx139_4
.Lx139_3:               movq             xmm0, rsi
.Lx139_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx139_7:                                                                     jmp   n45_assign_α
.Lx139_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx139_240
                        add              rsp, 16;                             jmp   n43_lit_integer_β
.Lx139_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n45_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              r11, 46
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # J
                        mov              qword ptr [r9 + 40], rdx;            jmp   n46_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    mov              r11, 47
                        mov              r10, 7
                        add              rsp, 128;                            jmp   n47_statement_begin_α
#=======================================================================================================================
#         G = 'nest-junk' J DUPL('n', 22)
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_begin_α:  mov              r11, 48
                        mov              r10, 8;                              jmp   n48_lit_string_α
n47_statement_begin_β:  mov              r11, 48;                             jmp   n57_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       sub              rsp, 16
                        mov              r11, 49
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_var_α
.Lx145_0:               .quad            .Lx145_0_s
.Lx145_0_s:             .string          "nest-junk"
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:              sub              rsp, 16
                        mov              r11, 50
                        mov              rax, qword ptr [r9 + 32]             # J
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n50_binop_α
n49_var_β:              mov              r11, 50
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n47_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n50_binop_α:            sub              rsp, 16
                        mov              r11, 51
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n51_lit_string_α
n50_binop_β:            mov              r11, 51
                        add              rsp, 16;                             jmp   n49_var_β
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       sub              rsp, 16
                        mov              r11, 52
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_lit_integer_α
n51_lit_string_β:       mov              r11, 52
                        add              rsp, 16;                             jmp   n50_binop_β
.Lx148_0:               .quad            .Lx148_0_s
.Lx148_0_s:             .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_call_α
n52_lit_integer_β:      mov              r11, 53
                        add              rsp, 16;                             jmp   n51_lit_string_β
.Lx149_0:               .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n53_call_α:             sub              rsp, 16
                        mov              r11, 54
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd151:            .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd151]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx150_240
                        add              rsp, 16;                             jmp   n52_lit_integer_β
.Lx150_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n54_binop_α
n53_call_β:             mov              r11, 54
                        add              rsp, 16;                             jmp   n52_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n54_binop_α:            sub              rsp, 16
                        mov              r11, 55
                        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n55_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:           mov              r11, 56
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # G
                        mov              qword ptr [r9 + 56], rdx;            jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    mov              r11, 57
                        mov              r10, 8
                        add              rsp, 112;                            jmp   n57_statement_begin_α
#=======================================================================================================================
#         :(cl)
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:  mov              r11, 58
                        mov              r10, 9;                              jmp   n58_statement_end_α
n57_statement_begin_β:  mov              r11, 58;                             jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:    mov              r11, 59
                        mov              r10, 9;                              jmp   n36_statement_begin_α
#=======================================================================================================================
# rd      TMP = T<'slot'>
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_begin_α:  mov              r11, 60
                        mov              r10, 10;                             jmp   n60_var_α
n59_statement_begin_β:  mov              r11, 60;                             jmp   n66_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              sub              rsp, 16
                        mov              r11, 61
                        mov              rax, qword ptr [r9 + 16]             # T
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n61_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:       sub              rsp, 16
                        mov              r11, 62
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n62_subscript_α
n61_lit_string_β:       mov              r11, 62
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n59_statement_begin_β
.Lx163_0:               .quad            .Lx163_0_s
.Lx163_0_s:             .string          "slot"
#-----------------------------------------------------------------------------------------------------------------------
n62_subscript_α:        sub              rsp, 16
                        mov              r11, 63
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx164_240
                        add              rsp, 16;                             jmp   n61_lit_string_β
.Lx164_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n63_deref_α
n62_subscript_β:        mov              r11, 63
                        add              rsp, 16;                             jmp   n61_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n63_deref_α:            sub              rsp, 16
                        mov              r11, 64
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx165_240
                        add              rsp, 16;                             jmp   n62_subscript_β
.Lx165_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n64_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:           mov              r11, 65
                        mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # TMP
                        mov              qword ptr [r9 + 72], rdx;            jmp   n65_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_end_α:    mov              r11, 66
                        mov              r10, 10
                        add              rsp, 64;                             jmp   n66_statement_begin_α
#=======================================================================================================================
#         OUTPUT = payload(TMP<3>)
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_begin_α:  mov              r11, 67
                        mov              r10, 11;                             jmp   n67_var_α
n66_statement_begin_β:  mov              r11, 67;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              sub              rsp, 16
                        mov              r11, 68
                        mov              rax, qword ptr [r9 + 64]             # TMP
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:      sub              rsp, 16
                        mov              r11, 69
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_subscript_α
n68_lit_integer_β:      mov              r11, 69
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n66_statement_begin_β
.Lx172_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n69_subscript_α:        sub              rsp, 16
                        mov              r11, 70
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx173_240
                        add              rsp, 16;                             jmp   n68_lit_integer_β
.Lx173_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_deref_α
n69_subscript_β:        mov              r11, 70
                        add              rsp, 16;                             jmp   n68_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n70_deref_α:            sub              rsp, 16
                        mov              r11, 71
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx174_240
                        add              rsp, 16;                             jmp   n69_subscript_β
.Lx174_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_call_α
n70_deref_β:            mov              r11, 71
                        add              rsp, 16;                             jmp   n69_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:             sub              rsp, 16
                        mov              r11, 72
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd176:            .string          "payload"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd176]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx175_240
                        add              rsp, 16;                             jmp   n70_deref_β
.Lx175_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_assign_α
n71_call_β:             mov              r11, 72
                        add              rsp, 16;                             jmp   n70_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:           mov              r11, 73
                        mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n73_statement_end_α
.Lx177_0:               .quad            .Lx177_0_s
.Lx177_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_end_α:    mov              r11, 74
                        mov              r10, 11
                        add              rsp, 80;                             jmp   main_γ
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
.Lclassspec0:           .string          "box(payload)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
