                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 6
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 6
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "C"
.Lgvan1:                .string          "DGT$0"
.Lgvan2:                .string          "D"
.Lgvan3:                .string          "DGT$1"
.Lgvan4:                .string          "E"
.Lgvan5:                .string          "DGT$2"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         C = CODE("  OUTPUT = 'code entered on success' :(SECOND)")
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_lit_string_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n5_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 46
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_call_α
.Lx58_0:                .quad            .Lx58_0_s
.Lx58_0_s:              .string          "  OUTPUT = 'code entered on success' :(SECOND)"
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              sub              rsp, 16
                        mov              r11, 3
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd3:          .string          "CODE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd3]
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
                        cmp              al, 104;                             jne   .Lx59_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx59_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_assign_α
n2_call_β:              mov              r11, 3
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              r11, 4
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # C
                        mov              qword ptr [r9 + 8], rdx;             jmp   n4_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_end_α:     mov              r11, 5
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n5_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'first'                         :S<C>F(NEVER)
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_begin_α:   mov              r11, 6
                        mov              r10, 2;                              jmp   n6_lit_string_α
n5_statement_begin_β:   mov              r11, 6;                              jmp   LBL__NEVER
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        sub              rsp, 16
                        mov              r11, 7
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_assign_α
.Lx65_0:                .quad            .Lx65_0_s
.Lx65_0_s:              .string          "first"
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              r11, 8
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_statement_end_α
.Lx66_0:                .quad            .Lx66_0_s
.Lx66_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_end_α:     mov              r11, 9
                        mov              r10, 2;                              jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               sub              rsp, 16
                        mov              r11, 10
                        mov              rax, qword ptr [r9 + 0]              # C
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n10_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              r11, 11
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # DGT$0
                        mov              qword ptr [r9 + 24], rdx;            jmp   n11_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n11_goto_deferred_α:    mov              r11, 12
                        mov              rdi, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_goto_resolve@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx72_1
                        add              rsp, 32;                             jmp   rax
.Lx72_0:                .quad            .Lx72_0_s
.Lx72_0_s:              .string          "<DGT$0"
.Lx72_1:                add              rsp, 32;                             jmp   main_γ
#=======================================================================================================================
# NEVER   OUTPUT = 'NOT REACHED'                   :(END)
#-----------------------------------------------------------------------------------------------------------------------
LBL__NEVER:             mov              r11, 13
                        mov              r10, 3;                              jmp   n13_lit_string_α
n12_statement_begin_β:  mov              r11, 13;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_assign_α
.Lx75_0:                .quad            .Lx75_0_s
.Lx75_0_s:              .string          "NOT REACHED"
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              r11, 15
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n15_statement_end_α
.Lx76_0:                .quad            .Lx76_0_s
.Lx76_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:    mov              r11, 16
                        mov              r10, 3
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# SECOND  D = CODE("  OUTPUT = 'NOT REACHED' :(END)")
#-----------------------------------------------------------------------------------------------------------------------
LBL__SECOND:            mov              r11, 17
                        mov              r10, 4;                              jmp   n17_lit_string_α
n16_statement_begin_β:  mov              r11, 17;                             jmp   n21_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       sub              rsp, 16
                        mov              r11, 18
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_call_α
.Lx81_0:                .quad            .Lx81_0_s
.Lx81_0_s:              .string          "  OUTPUT = 'NOT REACHED' :(END)"
#-----------------------------------------------------------------------------------------------------------------------
n18_call_α:             sub              rsp, 16
                        mov              r11, 19
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd19:         .string          "CODE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd19]
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
                        cmp              al, 104;                             jne   .Lx82_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n16_statement_begin_β
.Lx82_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n19_assign_α
n18_call_β:             mov              r11, 19
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n16_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              r11, 20
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # D
                        mov              qword ptr [r9 + 40], rdx;            jmp   n20_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_end_α:    mov              r11, 21
                        mov              r10, 4
                        add              rsp, 32;                             jmp   n21_statement_begin_α
#=======================================================================================================================
#         OUTPUT = IDENT('a','b')                  :S<D>F(FELL)
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_begin_α:  mov              r11, 22
                        mov              r10, 5;                              jmp   n22_lit_string_α
n21_statement_begin_β:  mov              r11, 22;                             jmp   LBL__FELL
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       sub              rsp, 16
                        mov              r11, 23
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_lit_string_α
.Lx88_0:                .quad            .Lx88_0_s
.Lx88_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_ident_α
n23_lit_string_β:       mov              r11, 24
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n21_statement_begin_β
.Lx89_0:                .quad            .Lx89_0_s
.Lx89_0_s:              .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n24_ident_α:            sub              rsp, 16
                        mov              r11, 25
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jne   .Lx91_240
                        add              rsp, 16;                             jmp   n23_lit_string_β
.Lx91_240:              mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n25_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              r11, 26
                        mov              rsi, qword ptr [rsp + 0]             # ident
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n26_statement_end_α
.Lx92_0:                .quad            .Lx92_0_s
.Lx92_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_end_α:    mov              r11, 27
                        mov              r10, 5;                              jmp   n27_var_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:              sub              rsp, 16
                        mov              r11, 28
                        mov              rax, qword ptr [r9 + 32]             # D
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n28_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:           mov              r11, 29
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # DGT$1
                        mov              qword ptr [r9 + 56], rdx;            jmp   n29_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n29_goto_deferred_α:    mov              r11, 30
                        mov              rdi, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_goto_resolve@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx98_1
                        add              rsp, 64;                             jmp   rax
.Lx98_0:                .quad            .Lx98_0_s
.Lx98_0_s:              .string          "<DGT$1"
.Lx98_1:                add              rsp, 64;                             jmp   main_γ
#=======================================================================================================================
# FELL    OUTPUT = 'failure branch took the label'
#-----------------------------------------------------------------------------------------------------------------------
LBL__FELL:              mov              r11, 31
                        mov              r10, 6;                              jmp   n31_lit_string_α
n30_statement_begin_β:  mov              r11, 31;                             jmp   n34_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       sub              rsp, 16
                        mov              r11, 32
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 29
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_assign_α
.Lx101_0:               .quad            .Lx101_0_s
.Lx101_0_s:             .string          "failure branch took the label"
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              r11, 33
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_statement_end_α
.Lx102_0:               .quad            .Lx102_0_s
.Lx102_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_end_α:    mov              r11, 34
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n34_statement_begin_α
#=======================================================================================================================
#         E = CODE("  OUTPUT = 'code entered on failure' :(THIRD)")
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_begin_α:  mov              r11, 35
                        mov              r10, 7;                              jmp   n35_lit_string_α
n34_statement_begin_β:  mov              r11, 35;                             jmp   n39_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       sub              rsp, 16
                        mov              r11, 36
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 45
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n36_call_α
.Lx107_0:               .quad            .Lx107_0_s
.Lx107_0_s:             .string          "  OUTPUT = 'code entered on failure' :(THIRD)"
#-----------------------------------------------------------------------------------------------------------------------
n36_call_α:             sub              rsp, 16
                        mov              r11, 37
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd37:         .string          "CODE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd37]
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
                        cmp              al, 104;                             jne   .Lx108_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n34_statement_begin_β
.Lx108_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n37_assign_α
n36_call_β:             mov              r11, 37
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n34_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:           mov              r11, 38
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # E
                        mov              qword ptr [r9 + 72], rdx;            jmp   n38_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_end_α:    mov              r11, 39
                        mov              r10, 7
                        add              rsp, 32;                             jmp   n39_statement_begin_α
#=======================================================================================================================
#         OUTPUT = IDENT('a','b')                  :F<E>S(NEVER2)
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_begin_α:  mov              r11, 40
                        mov              r10, 8;                              jmp   n40_lit_string_α
n39_statement_begin_β:  mov              r11, 40;                             jmp   n45_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_lit_string_α
.Lx114_0:               .quad            .Lx114_0_s
.Lx114_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       sub              rsp, 16
                        mov              r11, 42
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_ident_α
n41_lit_string_β:       mov              r11, 42
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n39_statement_begin_β
.Lx115_0:               .quad            .Lx115_0_s
.Lx115_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n42_ident_α:            sub              rsp, 16
                        mov              r11, 43
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jne   .Lx117_240
                        add              rsp, 16;                             jmp   n41_lit_string_β
.Lx117_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n43_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:           mov              r11, 44
                        mov              rsi, qword ptr [rsp + 0]             # ident
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n44_statement_end_α
.Lx118_0:               .quad            .Lx118_0_s
.Lx118_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_end_α:    mov              r11, 45
                        mov              r10, 8
                        add              rsp, 48;                             jmp   LBL__NEVER2
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              mov              r11, 46
                        mov              rax, qword ptr [r9 + 64]             # E
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 432], rax           # result
                        mov              qword ptr [rsp + 440], rdx;          jmp   n46_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:           mov              r11, 47
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [r9 + 80], rax             # DGT$2
                        mov              qword ptr [r9 + 88], rdx;            jmp   n47_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n47_goto_deferred_α:    mov              r11, 48
                        mov              rdi, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_goto_resolve@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx124_1
                                                                              jmp   rax
.Lx124_0:               .quad            .Lx124_0_s
.Lx124_0_s:             .string          "<DGT$2"
.Lx124_1:                                                                     jmp   main_γ
#=======================================================================================================================
# NEVER2  OUTPUT = 'NOT REACHED'                   :(END)
#-----------------------------------------------------------------------------------------------------------------------
LBL__NEVER2:            mov              r11, 49
                        mov              r10, 9;                              jmp   n49_lit_string_α
n48_statement_begin_β:  mov              r11, 49;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       sub              rsp, 16
                        mov              r11, 50
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_assign_α
.Lx127_0:               .quad            .Lx127_0_s
.Lx127_0_s:             .string          "NOT REACHED"
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:           mov              r11, 51
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n51_statement_end_α
.Lx128_0:               .quad            .Lx128_0_s
.Lx128_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_end_α:    mov              r11, 52
                        mov              r10, 9
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# THIRD   OUTPUT = 'done'
#-----------------------------------------------------------------------------------------------------------------------
LBL__THIRD:             mov              r11, 53
                        mov              r10, 10;                             jmp   n53_lit_string_α
n52_statement_begin_β:  mov              r11, 53;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_assign_α
.Lx133_0:               .quad            .Lx133_0_s
.Lx133_0_s:             .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:           mov              r11, 55
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n55_statement_end_α
.Lx134_0:               .quad            .Lx134_0_s
.Lx134_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_end_α:    mov              r11, 56
                        mov              r10, 10
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
.Lstartup_pname0:       .string          "LBL__NEVER"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__NEVER
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            528
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__SECOND"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            LBL__SECOND
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            528
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "LBL__FELL"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            LBL__FELL
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            528
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "LBL__NEVER2"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            LBL__NEVER2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            528
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "LBL__THIRD"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            LBL__THIRD
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            528
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
