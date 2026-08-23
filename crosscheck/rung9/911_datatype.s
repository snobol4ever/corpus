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
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 0;                              jmp   n1_statement_end_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n2_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_statement_end_α:     mov              r11, 2
                        mov              r10, 1;                              jmp   n2_statement_begin_α
#=======================================================================================================================
#         DIFFER(REPLACE(DATATYPE('hello'),&UCASE,&LCASE), 'string')   :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n2_statement_begin_α:   mov              r11, 3
                        mov              r10, 2;                              jmp   n3_lit_string_α
n2_statement_begin_β:   mov              r11, 3;                              jmp   n15_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        sub              rsp, 16
                        mov              r11, 4
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_call_α
.Lx72_0:                .quad            .Lx72_0_s
.Lx72_0_s:              .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:              sub              rsp, 16
                        mov              r11, 5
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd74:             .string          "DATATYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd74]
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
                        cmp              al, 104;                             jne   .Lx73_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_statement_begin_β
.Lx73_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n5_keyword_snobol4_α
n4_call_β:              mov              r11, 5
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n5_keyword_snobol4_α:   sub              rsp, 16
                        mov              r11, 6
                        mov              rdi, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n6_keyword_snobol4_α
.Lx75_0:                .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n6_keyword_snobol4_α:   sub              rsp, 16
                        mov              r11, 7
                        mov              rdi, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_call_α
.Lx76_0:                .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n7_call_α:              sub              rsp, 16
                        mov              r11, 8
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
.Lrkfnzd78:             .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd78]
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
                        cmp              al, 104;                             jne   .Lx77_240
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n2_statement_begin_β
.Lx77_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n8_lit_string_α
n7_call_β:              mov              r11, 8
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n2_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        sub              rsp, 16
                        mov              r11, 9
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_differ_α
n8_lit_string_β:        mov              r11, 9
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n2_statement_begin_β
.Lx79_0:                .quad            .Lx79_0_s
.Lx79_0_s:              .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n9_differ_α:            sub              rsp, 16
                        mov              r11, 10
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
                        test             eax, eax;                            je    .Lx81_240
                        add              rsp, 16;                             jmp   n8_lit_string_β
.Lx81_240:                                                                    jmp   n10_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_end_α:    mov              r11, 11
                        mov              r10, 2
                        add              rsp, 112;                            jmp   n11_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 911/001: string literal datatype' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_begin_α:  mov              r11, 12
                        mov              r10, 3;                              jmp   n12_lit_string_α
n11_statement_begin_β:  mov              r11, 12;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       sub              rsp, 16
                        mov              r11, 13
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 37
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_assign_α
.Lx86_0:                .quad            .Lx86_0_s
.Lx86_0_s:              .string          "FAIL 911/001: string literal datatype"
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              r11, 14
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n14_statement_end_α
.Lx87_0:                .quad            .Lx87_0_s
.Lx87_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_end_α:    mov              r11, 15
                        mov              r10, 3
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e001  <stmt 4, line 10: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_begin_α:  mov              r11, 16
                        mov              r10, 4;                              jmp   n16_statement_end_α
n15_statement_begin_β:  mov              r11, 16;                             jmp   n17_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_end_α:    mov              r11, 17
                        mov              r10, 4;                              jmp   n17_statement_begin_α
#=======================================================================================================================
#         DIFFER(REPLACE(DATATYPE(12),&UCASE,&LCASE), 'integer')       :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_begin_α:  mov              r11, 18
                        mov              r10, 5;                              jmp   n18_lit_integer_α
n17_statement_begin_β:  mov              r11, 18;                             jmp   n30_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      sub              rsp, 16
                        mov              r11, 19
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_call_α
.Lx96_0:                .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n19_call_α:             sub              rsp, 16
                        mov              r11, 20
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd98:             .string          "DATATYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd98]
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
                        cmp              al, 104;                             jne   .Lx97_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n17_statement_begin_β
.Lx97_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n20_keyword_snobol4_α
n19_call_β:             mov              r11, 20
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n17_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n20_keyword_snobol4_α:  sub              rsp, 16
                        mov              r11, 21
                        mov              rdi, qword ptr [rip + .Lx99_0]
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
.Lx99_0:                .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n21_keyword_snobol4_α:  sub              rsp, 16
                        mov              r11, 22
                        mov              rdi, qword ptr [rip + .Lx100_0]
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
.Lx100_0:               .quad            22
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
.Lrkfnzd102:            .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd102]
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
                        cmp              al, 104;                             jne   .Lx101_240
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n17_statement_begin_β
.Lx101_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n23_lit_string_α
n22_call_β:             mov              r11, 23
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n17_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_differ_α
n23_lit_string_β:       mov              r11, 24
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n17_statement_begin_β
.Lx103_0:               .quad            .Lx103_0_s
.Lx103_0_s:             .string          "integer"
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
                        test             eax, eax;                            je    .Lx105_240
                        add              rsp, 16;                             jmp   n23_lit_string_β
.Lx105_240:                                                                   jmp   n25_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:    mov              r11, 26
                        mov              r10, 5
                        add              rsp, 112;                            jmp   n26_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 911/002: integer datatype'       :(END)
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_begin_α:  mov              r11, 27
                        mov              r10, 6;                              jmp   n27_lit_string_α
n26_statement_begin_β:  mov              r11, 27;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       sub              rsp, 16
                        mov              r11, 28
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 30
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n28_assign_α
.Lx110_0:               .quad            .Lx110_0_s
.Lx110_0_s:             .string          "FAIL 911/002: integer datatype"
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:           mov              r11, 29
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_statement_end_α
.Lx111_0:               .quad            .Lx111_0_s
.Lx111_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_end_α:    mov              r11, 30
                        mov              r10, 6
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e002  <stmt 7, line 14: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_begin_α:  mov              r11, 31
                        mov              r10, 7;                              jmp   n31_statement_end_α
n30_statement_begin_β:  mov              r11, 31;                             jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:    mov              r11, 32
                        mov              r10, 7;                              jmp   n32_statement_begin_α
#=======================================================================================================================
#         DIFFER(REPLACE(DATATYPE(1.33),&UCASE,&LCASE), 'real')        :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:  mov              r11, 33
                        mov              r10, 8;                              jmp   n33_lit_real_α
n32_statement_begin_β:  mov              r11, 33;                             jmp   n45_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_real_α:         sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_call_α
.Lx120_0:               .quad            4608668606677049672
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:             sub              rsp, 16
                        mov              r11, 35
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd122:            .string          "DATATYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd122]
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
                        cmp              al, 104;                             jne   .Lx121_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n32_statement_begin_β
.Lx121_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n35_keyword_snobol4_α
n34_call_β:             mov              r11, 35
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n32_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n35_keyword_snobol4_α:  sub              rsp, 16
                        mov              r11, 36
                        mov              rdi, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n36_keyword_snobol4_α
.Lx123_0:               .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n36_keyword_snobol4_α:  sub              rsp, 16
                        mov              r11, 37
                        mov              rdi, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n37_call_α
.Lx124_0:               .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n37_call_α:             sub              rsp, 16
                        mov              r11, 38
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
.Lrkfnzd126:            .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd126]
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
                        cmp              al, 104;                             jne   .Lx125_240
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n32_statement_begin_β
.Lx125_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n38_lit_string_α
n37_call_β:             mov              r11, 38
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n32_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:       sub              rsp, 16
                        mov              r11, 39
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_differ_α
n38_lit_string_β:       mov              r11, 39
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n32_statement_begin_β
.Lx127_0:               .quad            .Lx127_0_s
.Lx127_0_s:             .string          "real"
#-----------------------------------------------------------------------------------------------------------------------
n39_differ_α:           sub              rsp, 16
                        mov              r11, 40
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
                        test             eax, eax;                            je    .Lx129_240
                        add              rsp, 16;                             jmp   n38_lit_string_β
.Lx129_240:                                                                   jmp   n40_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    mov              r11, 41
                        mov              r10, 8
                        add              rsp, 112;                            jmp   n41_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 911/003: real datatype'          :(END)
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:  mov              r11, 42
                        mov              r10, 9;                              jmp   n42_lit_string_α
n41_statement_begin_β:  mov              r11, 42;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       sub              rsp, 16
                        mov              r11, 43
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 27
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_assign_α
.Lx134_0:               .quad            .Lx134_0_s
.Lx134_0_s:             .string          "FAIL 911/003: real datatype"
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:           mov              r11, 44
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n44_statement_end_α
.Lx135_0:               .quad            .Lx135_0_s
.Lx135_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_end_α:    mov              r11, 45
                        mov              r10, 9
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e003  <stmt 10, line 18: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_begin_α:  mov              r11, 46
                        mov              r10, 10;                             jmp   n46_statement_end_α
n45_statement_begin_β:  mov              r11, 46;                             jmp   n47_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    mov              r11, 47
                        mov              r10, 10;                             jmp   n47_statement_begin_α
#=======================================================================================================================
#         DIFFER(REPLACE(DATATYPE(''),&UCASE,&LCASE), 'string')        :f(e004)
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_begin_α:  mov              r11, 48
                        mov              r10, 11;                             jmp   n48_lit_string_α
n47_statement_begin_β:  mov              r11, 48;                             jmp   n60_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       sub              rsp, 16
                        mov              r11, 49
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_call_α
.Lx144_0:               .quad            .Lx144_0_s
.Lx144_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n49_call_α:             sub              rsp, 16
                        mov              r11, 50
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
                        add              rsp, 16;                             jmp   n47_statement_begin_β
.Lx145_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n50_keyword_snobol4_α
n49_call_β:             mov              r11, 50
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n47_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n50_keyword_snobol4_α:  sub              rsp, 16
                        mov              r11, 51
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_keyword_snobol4_α
.Lx147_0:               .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n51_keyword_snobol4_α:  sub              rsp, 16
                        mov              r11, 52
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n52_call_α
.Lx148_0:               .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n52_call_α:             sub              rsp, 16
                        mov              r11, 53
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
                        add              rsp, 64;                             jmp   n47_statement_begin_β
.Lx149_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n53_lit_string_α
n52_call_β:             mov              r11, 53
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n47_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_differ_α
n53_lit_string_β:       mov              r11, 54
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n47_statement_begin_β
.Lx151_0:               .quad            .Lx151_0_s
.Lx151_0_s:             .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n54_differ_α:           sub              rsp, 16
                        mov              r11, 55
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
                        add              rsp, 16;                             jmp   n53_lit_string_β
.Lx153_240:                                                                   jmp   n55_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_end_α:    mov              r11, 56
                        mov              r10, 11
                        add              rsp, 112;                            jmp   n56_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 911/004: null is string'         :(END)
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_begin_α:  mov              r11, 57
                        mov              r10, 12;                             jmp   n57_lit_string_α
n56_statement_begin_β:  mov              r11, 57;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       sub              rsp, 16
                        mov              r11, 58
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 28
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_assign_α
.Lx158_0:               .quad            .Lx158_0_s
.Lx158_0_s:             .string          "FAIL 911/004: null is string"
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:           mov              r11, 59
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n59_statement_end_α
.Lx159_0:               .quad            .Lx159_0_s
.Lx159_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_end_α:    mov              r11, 60
                        mov              r10, 12
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e004  <stmt 13, line 23: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_begin_α:  mov              r11, 61
                        mov              r10, 13;                             jmp   n61_statement_end_α
n60_statement_begin_β:  mov              r11, 61;                             jmp   n62_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:    mov              r11, 62
                        mov              r10, 13;                             jmp   n62_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS 911_datatype (4/4)'
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_begin_α:  mov              r11, 63
                        mov              r10, 14;                             jmp   n63_lit_string_α
n62_statement_begin_β:  mov              r11, 63;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       sub              rsp, 16
                        mov              r11, 64
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 23
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_assign_α
.Lx168_0:               .quad            .Lx168_0_s
.Lx168_0_s:             .string          "PASS 911_datatype (4/4)"
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:           mov              r11, 65
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n65_statement_end_α
.Lx169_0:               .quad            .Lx169_0_s
.Lx169_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_end_α:    mov              r11, 66
                        mov              r10, 14
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
