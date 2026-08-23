                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "a"
.Lgvan1:                .string          "b"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
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
#         DATA('node(val,lson,rson)')
#-----------------------------------------------------------------------------------------------------------------------
n2_statement_begin_α:   mov              r11, 3
                        mov              r10, 2;                              jmp   n3_lit_string_α
n2_statement_begin_β:   mov              r11, 3;                              jmp   n6_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        sub              rsp, 16
                        mov              r11, 4
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 19
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_call_α
.Lx119_0:               .quad            .Lx119_0_s
.Lx119_0_s:             .string          "node(val,lson,rson)"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:              sub              rsp, 16
                        mov              r11, 5
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd121:            .string          "DATA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd121]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx120_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_statement_begin_β
.Lx120_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n5_statement_end_α
n4_call_β:              mov              r11, 5
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_end_α:     mov              r11, 6
                        mov              r10, 2;                              jmp   n6_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_begin_α:   mov              r11, 7
                        mov              r10, 0;                              jmp   n7_statement_end_α
n6_statement_begin_β:   mov              r11, 7
                        add              rsp, 32;                             jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:     mov              r11, 8
                        mov              r10, 3
                        add              rsp, 32;                             jmp   n8_statement_begin_α
#=======================================================================================================================
#         a = node('x', 'y', 'z')
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:   mov              r11, 9
                        mov              r10, 4;                              jmp   n9_lit_string_α
n8_statement_begin_β:   mov              r11, 9;                              jmp   n15_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_lit_string_α
.Lx130_0:               .quad            .Lx130_0_s
.Lx130_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       sub              rsp, 16
                        mov              r11, 11
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n11_lit_string_α
n10_lit_string_β:       mov              r11, 11
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n8_statement_begin_β
.Lx131_0:               .quad            .Lx131_0_s
.Lx131_0_s:             .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       sub              rsp, 16
                        mov              r11, 12
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_call_α
n11_lit_string_β:       mov              r11, 12
                        add              rsp, 16;                             jmp   n10_lit_string_β
.Lx132_0:               .quad            .Lx132_0_s
.Lx132_0_s:             .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n12_call_α:             sub              rsp, 16
                        mov              r11, 13
                        sub              rsp, 48
                        mov              r8, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], r8
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], r8
                        .section         .rodata
.Lrkfnzd134:            .string          "node"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd134]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lx133_240
                        add              rsp, 16;                             jmp   n11_lit_string_β
.Lx133_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n13_assign_α
n12_call_β:             mov              r11, 13
                        add              rsp, 16;                             jmp   n11_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              r11, 14
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # a
                        mov              qword ptr [r9 + 8], rdx;             jmp   n14_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_end_α:    mov              r11, 15
                        mov              r10, 4;                              jmp   n15_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_begin_α:  mov              r11, 16
                        mov              r10, 0;                              jmp   n16_statement_end_α
n15_statement_begin_β:  mov              r11, 16
                        add              rsp, 64;                             jmp   n17_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_end_α:    mov              r11, 17
                        mov              r10, 5
                        add              rsp, 64;                             jmp   n17_statement_begin_α
#=======================================================================================================================
#         DIFFER(REPLACE(DATATYPE(a),&LCASE,&UCASE), 'NODE')   :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_begin_α:  mov              r11, 18
                        mov              r10, 6;                              jmp   n18_var_α
n17_statement_begin_β:  mov              r11, 18;                             jmp   n30_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              sub              rsp, 16
                        mov              r11, 19
                        mov              rax, qword ptr [r9 + 0]              # a
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n19_call_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_α:             sub              rsp, 16
                        mov              r11, 20
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd146:            .string          "DATATYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd146]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx145_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n17_statement_begin_β
.Lx145_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n20_keyword_snobol4_α
n19_call_β:             mov              r11, 20
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n17_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n20_keyword_snobol4_α:  sub              rsp, 16
                        mov              r11, 21
                        mov              rdi, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n21_keyword_snobol4_α
.Lx147_0:               .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n21_keyword_snobol4_α:  sub              rsp, 16
                        mov              r11, 22
                        mov              rdi, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n22_call_α
.Lx148_0:               .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n22_call_α:             sub              rsp, 16
                        mov              r11, 23
                        sub              rsp, 48
                        mov              r8, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], r8
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], r8
                        .section         .rodata
.Lrkfnzd150:            .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd150]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lx149_240
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n17_statement_begin_β
.Lx149_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n23_lit_string_α
n22_call_β:             mov              r11, 23
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n17_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_differ_α
n23_lit_string_β:       mov              r11, 24
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n17_statement_begin_β
.Lx151_0:               .quad            .Lx151_0_s
.Lx151_0_s:             .string          "NODE"
#-----------------------------------------------------------------------------------------------------------------------
n24_differ_α:           sub              rsp, 16
                        mov              r11, 25
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx153_240
                        add              rsp, 16;                             jmp   n23_lit_string_β
.Lx153_240:                                                                   jmp   n25_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:    mov              r11, 26
                        mov              r10, 6
                        add              rsp, 112;                            jmp   n26_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1115/001: datatype of node'            :(END)
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_begin_α:  mov              r11, 27
                        mov              r10, 7;                              jmp   n27_lit_string_α
n26_statement_begin_β:  mov              r11, 27;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       sub              rsp, 16
                        mov              r11, 28
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n28_assign_α
.Lx158_0:               .quad            .Lx158_0_s
.Lx158_0_s:             .string          "FAIL 1115/001: datatype of node"
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:           mov              r11, 29
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_statement_end_α
.Lx159_0:               .quad            .Lx159_0_s
.Lx159_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_end_α:    mov              r11, 30
                        mov              r10, 7
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e001  <stmt 8, line 14: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_begin_α:  mov              r11, 31
                        mov              r10, 8;                              jmp   n31_statement_end_α
n30_statement_begin_β:  mov              r11, 31;                             jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:    mov              r11, 32
                        mov              r10, 8;                              jmp   n32_statement_begin_α
#=======================================================================================================================
#         DIFFER(val(a), 'x')                   :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:  mov              r11, 33
                        mov              r10, 9;                              jmp   n33_var_α
n32_statement_begin_β:  mov              r11, 33;                             jmp   n42_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              sub              rsp, 16
                        mov              r11, 34
                        mov              rax, qword ptr [r9 + 0]              # a
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n34_call_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:             sub              rsp, 16
                        mov              r11, 35
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd170:            .string          "val"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd170]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx169_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n32_statement_begin_β
.Lx169_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n35_lit_string_α
n34_call_β:             mov              r11, 35
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n32_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       sub              rsp, 16
                        mov              r11, 36
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n36_differ_α
n35_lit_string_β:       mov              r11, 36
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n32_statement_begin_β
.Lx171_0:               .quad            .Lx171_0_s
.Lx171_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n36_differ_α:           sub              rsp, 16
                        mov              r11, 37
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx173_240
                        add              rsp, 16;                             jmp   n35_lit_string_β
.Lx173_240:                                                                   jmp   n37_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_end_α:    mov              r11, 38
                        mov              r10, 9
                        add              rsp, 64;                             jmp   n38_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1115/002: field accessor val'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_begin_α:  mov              r11, 39
                        mov              r10, 10;                             jmp   n39_lit_string_α
n38_statement_begin_β:  mov              r11, 39;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       sub              rsp, 16
                        mov              r11, 40
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_assign_α
.Lx178_0:               .quad            .Lx178_0_s
.Lx178_0_s:             .string          "FAIL 1115/002: field accessor val"
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              r11, 41
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n41_statement_end_α
.Lx179_0:               .quad            .Lx179_0_s
.Lx179_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_end_α:    mov              r11, 42
                        mov              r10, 10
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e002  <stmt 11, line 18: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:  mov              r11, 43
                        mov              r10, 11;                             jmp   n43_statement_end_α
n42_statement_begin_β:  mov              r11, 43;                             jmp   n44_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:    mov              r11, 44
                        mov              r10, 11;                             jmp   n44_statement_begin_α
#=======================================================================================================================
#         b = node()
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_begin_α:  mov              r11, 45
                        mov              r10, 12;                             jmp   n45_call_α
n44_statement_begin_β:  mov              r11, 45;                             jmp   n48_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_α:             sub              rsp, 16
                        mov              r11, 46
                        .section         .rodata
.Lrkfnzd189:            .string          "node"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd189]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx188_240
                        add              rsp, 16;                             jmp   n44_statement_begin_β
.Lx188_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n46_assign_α
n45_call_β:             mov              r11, 46
                        add              rsp, 16;                             jmp   n44_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:           mov              r11, 47
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # b
                        mov              qword ptr [r9 + 24], rdx;            jmp   n47_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:    mov              r11, 48
                        mov              r10, 12
                        add              rsp, 16;                             jmp   n48_statement_begin_α
#=======================================================================================================================
#         DIFFER(rson(b))            :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_begin_α:  mov              r11, 49
                        mov              r10, 13;                             jmp   n49_var_α
n48_statement_begin_β:  mov              r11, 49;                             jmp   n58_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:              sub              rsp, 16
                        mov              r11, 50
                        mov              rax, qword ptr [r9 + 16]             # b
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n50_call_α
#-----------------------------------------------------------------------------------------------------------------------
n50_call_α:             sub              rsp, 16
                        mov              r11, 51
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd197:            .string          "rson"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd197]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx196_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n48_statement_begin_β
.Lx196_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_lit_string_α
n50_call_β:             mov              r11, 51
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n48_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       sub              rsp, 16
                        mov              r11, 52
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_differ_α
n51_lit_string_β:       mov              r11, 52
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n48_statement_begin_β
.Lx198_0:               .quad            .Lx198_0_s
.Lx198_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n52_differ_α:           sub              rsp, 16
                        mov              r11, 53
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx200_240
                        add              rsp, 16;                             jmp   n51_lit_string_β
.Lx200_240:                                                                   jmp   n53_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_end_α:    mov              r11, 54
                        mov              r10, 13
                        add              rsp, 64;                             jmp   n54_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1115/003: unset field is null'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_begin_α:  mov              r11, 55
                        mov              r10, 14;                             jmp   n55_lit_string_α
n54_statement_begin_β:  mov              r11, 55;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       sub              rsp, 16
                        mov              r11, 56
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 34
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_assign_α
.Lx205_0:               .quad            .Lx205_0_s
.Lx205_0_s:             .string          "FAIL 1115/003: unset field is null"
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:           mov              r11, 57
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_statement_end_α
.Lx206_0:               .quad            .Lx206_0_s
.Lx206_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_end_α:    mov              r11, 58
                        mov              r10, 14
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e003  <stmt 15, line 24: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_begin_α:  mov              r11, 59
                        mov              r10, 15;                             jmp   n59_statement_end_α
n58_statement_begin_β:  mov              r11, 59;                             jmp   n60_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_end_α:    mov              r11, 60
                        mov              r10, 15;                             jmp   n60_statement_begin_α
#=======================================================================================================================
#         lson(b) = a
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_begin_α:  mov              r11, 61
                        mov              r10, 16;                             jmp   n61_var_α
n60_statement_begin_β:  mov              r11, 61;                             jmp   n66_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              sub              rsp, 16
                        mov              r11, 62
                        mov              rax, qword ptr [r9 + 16]             # b
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n62_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n62_field_var_α:        sub              rsp, 16
                        mov              r11, 63
                        mov              rdi, qword ptr [rip + .Lx216_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx216_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n60_statement_begin_β
.Lx216_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n63_var_α
n62_field_var_β:        mov              r11, 63
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n60_statement_begin_β
.Lx216_0:               .quad            .Lx216_0_s
.Lx216_0_s:             .string          "lson"
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:              sub              rsp, 16
                        mov              r11, 64
                        mov              rax, qword ptr [r9 + 0]              # a
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n64_assign_var_α
n63_var_β:              mov              r11, 64
                        add              rsp, 16;                             jmp   n62_field_var_β
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_var_α:       sub              rsp, 16
                        mov              r11, 65
                        mov              rdi, qword ptr [rsp + 32]            # field_var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx218_240
                        add              rsp, 16;                             jmp   n63_var_β
.Lx218_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n65_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_end_α:    mov              r11, 66
                        mov              r10, 16
                        add              rsp, 64;                             jmp   n66_statement_begin_α
#=======================================================================================================================
#         DIFFER(rson(lson(b)), 'z')                   :f(e004)
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_begin_α:  mov              r11, 67
                        mov              r10, 17;                             jmp   n67_var_α
n66_statement_begin_β:  mov              r11, 67;                             jmp   n77_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              sub              rsp, 16
                        mov              r11, 68
                        mov              rax, qword ptr [r9 + 16]             # b
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_call_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_α:             sub              rsp, 16
                        mov              r11, 69
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd225:            .string          "lson"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd225]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx224_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n66_statement_begin_β
.Lx224_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n69_call_α
n68_call_β:             mov              r11, 69
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n66_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n69_call_α:             sub              rsp, 16
                        mov              r11, 70
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd227:            .string          "rson"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd227]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx226_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n66_statement_begin_β
.Lx226_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_lit_string_α
n69_call_β:             mov              r11, 70
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n66_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       sub              rsp, 16
                        mov              r11, 71
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_differ_α
n70_lit_string_β:       mov              r11, 71
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n66_statement_begin_β
.Lx228_0:               .quad            .Lx228_0_s
.Lx228_0_s:             .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n71_differ_α:           sub              rsp, 16
                        mov              r11, 72
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx230_240
                        add              rsp, 16;                             jmp   n70_lit_string_β
.Lx230_240:                                                                   jmp   n72_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_end_α:    mov              r11, 73
                        mov              r10, 17
                        add              rsp, 80;                             jmp   n73_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1115/004: nested accessor after mutate' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_begin_α:  mov              r11, 74
                        mov              r10, 18;                             jmp   n74_lit_string_α
n73_statement_begin_β:  mov              r11, 74;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       sub              rsp, 16
                        mov              r11, 75
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 43
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n75_assign_α
.Lx235_0:               .quad            .Lx235_0_s
.Lx235_0_s:             .string          "FAIL 1115/004: nested accessor after mutate"
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:           mov              r11, 76
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n76_statement_end_α
.Lx236_0:               .quad            .Lx236_0_s
.Lx236_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_end_α:    mov              r11, 77
                        mov              r10, 18
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e004  <stmt 19, line 30: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_begin_α:  mov              r11, 78
                        mov              r10, 19;                             jmp   n78_statement_end_α
n77_statement_begin_β:  mov              r11, 78;                             jmp   n79_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_end_α:    mov              r11, 79
                        mov              r10, 19;                             jmp   n79_statement_begin_α
#=======================================================================================================================
#         DIFFER(VALUE('b'), b)                   :f(e005)
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_begin_α:  mov              r11, 80
                        mov              r10, 20;                             jmp   n80_lit_string_α
n79_statement_begin_β:  mov              r11, 80;                             jmp   n89_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       sub              rsp, 16
                        mov              r11, 81
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_call_α
.Lx245_0:               .quad            .Lx245_0_s
.Lx245_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n81_call_α:             sub              rsp, 16
                        mov              r11, 82
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd247:            .string          "VALUE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd247]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx246_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n79_statement_begin_β
.Lx246_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n82_var_α
n81_call_β:             mov              r11, 82
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n79_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              sub              rsp, 16
                        mov              r11, 83
                        mov              rax, qword ptr [r9 + 16]             # b
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n83_differ_α
n82_var_β:              mov              r11, 83
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n79_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n83_differ_α:           sub              rsp, 16
                        mov              r11, 84
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx250_240
                        add              rsp, 16;                             jmp   n82_var_β
.Lx250_240:                                                                   jmp   n84_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_end_α:    mov              r11, 85
                        mov              r10, 20
                        add              rsp, 64;                             jmp   n85_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1115/005: VALUE() by variable name' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_begin_α:  mov              r11, 86
                        mov              r10, 21;                             jmp   n86_lit_string_α
n85_statement_begin_β:  mov              r11, 86;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       sub              rsp, 16
                        mov              r11, 87
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 39
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_assign_α
.Lx255_0:               .quad            .Lx255_0_s
.Lx255_0_s:             .string          "FAIL 1115/005: VALUE() by variable name"
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:           mov              r11, 88
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n88_statement_end_α
.Lx256_0:               .quad            .Lx256_0_s
.Lx256_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_end_α:    mov              r11, 89
                        mov              r10, 21
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e005  <stmt 22, line 35: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_begin_α:  mov              r11, 90
                        mov              r10, 22;                             jmp   n90_statement_end_α
n89_statement_begin_β:  mov              r11, 90;                             jmp   n91_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_end_α:    mov              r11, 91
                        mov              r10, 22;                             jmp   n91_statement_begin_α
#=======================================================================================================================
#         val(a) = 'new'
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_begin_α:  mov              r11, 92
                        mov              r10, 23;                             jmp   n92_var_α
n91_statement_begin_β:  mov              r11, 92;                             jmp   n97_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              sub              rsp, 16
                        mov              r11, 93
                        mov              rax, qword ptr [r9 + 0]              # a
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n93_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n93_field_var_α:        sub              rsp, 16
                        mov              r11, 94
                        mov              rdi, qword ptr [rip + .Lx266_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx266_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n91_statement_begin_β
.Lx266_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n94_lit_string_α
n93_field_var_β:        mov              r11, 94
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n91_statement_begin_β
.Lx266_0:               .quad            .Lx266_0_s
.Lx266_0_s:             .string          "val"
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       sub              rsp, 16
                        mov              r11, 95
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n95_assign_var_α
n94_lit_string_β:       mov              r11, 95
                        add              rsp, 16;                             jmp   n93_field_var_β
.Lx267_0:               .quad            .Lx267_0_s
.Lx267_0_s:             .string          "new"
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_var_α:       sub              rsp, 16
                        mov              r11, 96
                        mov              rdi, qword ptr [rsp + 32]            # field_var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx268_240
                        add              rsp, 16;                             jmp   n94_lit_string_β
.Lx268_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_end_α:    mov              r11, 97
                        mov              r10, 23
                        add              rsp, 64;                             jmp   n97_statement_begin_α
#=======================================================================================================================
#         DIFFER(val(a), 'new')                   :f(e006)
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_begin_α:  mov              r11, 98
                        mov              r10, 24;                             jmp   n98_var_α
n97_statement_begin_β:  mov              r11, 98;                             jmp   n107_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:              sub              rsp, 16
                        mov              r11, 99
                        mov              rax, qword ptr [r9 + 0]              # a
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n99_call_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_α:             sub              rsp, 16
                        mov              r11, 100
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd275:            .string          "val"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd275]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx274_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n97_statement_begin_β
.Lx274_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n100_lit_string_α
n99_call_β:             mov              r11, 100
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n97_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:      sub              rsp, 16
                        mov              r11, 101
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n101_differ_α
n100_lit_string_β:      mov              r11, 101
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n97_statement_begin_β
.Lx276_0:               .quad            .Lx276_0_s
.Lx276_0_s:             .string          "new"
#-----------------------------------------------------------------------------------------------------------------------
n101_differ_α:          sub              rsp, 16
                        mov              r11, 102
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx278_240
                        add              rsp, 16;                             jmp   n100_lit_string_β
.Lx278_240:                                                                   jmp   n102_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:   mov              r11, 103
                        mov              r10, 24
                        add              rsp, 64;                             jmp   n103_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1115/006: mutate field and read back' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_begin_α: mov              r11, 104
                        mov              r10, 25;                             jmp   n104_lit_string_α
n103_statement_begin_β: mov              r11, 104;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      sub              rsp, 16
                        mov              r11, 105
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 41
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n105_assign_α
.Lx283_0:               .quad            .Lx283_0_s
.Lx283_0_s:             .string          "FAIL 1115/006: mutate field and read back"
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_α:          mov              r11, 106
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n106_statement_end_α
.Lx284_0:               .quad            .Lx284_0_s
.Lx284_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_end_α:   mov              r11, 107
                        mov              r10, 25
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e006  <stmt 26, line 41: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_begin_α: mov              r11, 108
                        mov              r10, 26;                             jmp   n108_statement_end_α
n107_statement_begin_β: mov              r11, 108;                            jmp   n109_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_end_α:   mov              r11, 109
                        mov              r10, 26;                             jmp   n109_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS 1115_data_basic (6/6)'
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_begin_α: mov              r11, 110
                        mov              r10, 27;                             jmp   n110_lit_string_α
n109_statement_begin_β: mov              r11, 110;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      sub              rsp, 16
                        mov              r11, 111
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 26
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n111_assign_α
.Lx293_0:               .quad            .Lx293_0_s
.Lx293_0_s:             .string          "PASS 1115_data_basic (6/6)"
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_α:          mov              r11, 112
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n112_statement_end_α
.Lx294_0:               .quad            .Lx294_0_s
.Lx294_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_end_α:   mov              r11, 113
                        mov              r10, 27
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
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "node(val,lson,rson)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
