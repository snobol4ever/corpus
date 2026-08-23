                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 9
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 9
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "C"
.Lgvan1:                .string          "DGT$0"
.Lgvan2:                .string          "DGT$1"
.Lgvan3:                .string          "D"
.Lgvan4:                .string          "DGT$2"
.Lgvan5:                .string          "DGT$3"
.Lgvan6:                .string          "E"
.Lgvan7:                .string          "DGT$4"
.Lgvan8:                .string          "DGT$5"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .quad            .Lgvan8
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         C = CODE("  OUTPUT = 'first block' :(TWO)")
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_lit_string_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n5_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_call_α
.Lx51_0:                .quad            .Lx51_0_s
.Lx51_0_s:              .string          "  OUTPUT = 'first block' :(TWO)"
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
                        cmp              al, 104;                             jne   .Lx52_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx52_240:              mov              qword ptr [rsp + 0], rax             # result
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
#         OUTPUT = 'main'                          :<C>
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_begin_α:   mov              r11, 6
                        mov              r10, 2;                              jmp   n6_lit_string_α
n5_statement_begin_β:   mov              r11, 6;                              jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        sub              rsp, 16
                        mov              r11, 7
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_assign_α
.Lx58_0:                .quad            .Lx58_0_s
.Lx58_0_s:              .string          "main"
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              r11, 8
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_statement_end_α
.Lx59_0:                .quad            .Lx59_0_s
.Lx59_0_s:              .string          "OUTPUT"
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
                        mov              rdi, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_goto_resolve@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx65_1
                        add              rsp, 32;                             jmp   rax
.Lx65_0:                .quad            .Lx65_0_s
.Lx65_0_s:              .string          "<DGT$0"
.Lx65_1:                add              rsp, 32;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              mov              r11, 13
                        mov              rax, qword ptr [r9 + 0]              # C
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n13_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              r11, 14
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [r9 + 32], rax             # DGT$1
                        mov              qword ptr [r9 + 40], rdx;            jmp   n14_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n14_goto_deferred_α:    mov              r11, 15
                        mov              rdi, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_goto_resolve@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx69_1
                                                                              jmp   rax
.Lx69_0:                .quad            .Lx69_0_s
.Lx69_0_s:              .string          "<DGT$1"
.Lx69_1:                                                                      jmp   main_γ
#=======================================================================================================================
# BAD     OUTPUT = 'NOT REACHED'                   :(END)
#-----------------------------------------------------------------------------------------------------------------------
LBL__BAD:               mov              r11, 16
                        mov              r10, 3;                              jmp   n16_lit_string_α
n15_statement_begin_β:  mov              r11, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_assign_α
.Lx72_0:                .quad            .Lx72_0_s
.Lx72_0_s:              .string          "NOT REACHED"
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:           mov              r11, 18
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_statement_end_α
.Lx73_0:                .quad            .Lx73_0_s
.Lx73_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_end_α:    mov              r11, 19
                        mov              r10, 3
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# TWO     D = CODE("  OUTPUT = 'second block' :(THREE)")
#-----------------------------------------------------------------------------------------------------------------------
LBL__TWO:               mov              r11, 20
                        mov              r10, 4;                              jmp   n20_lit_string_α
n19_statement_begin_β:  mov              r11, 20;                             jmp   n24_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       sub              rsp, 16
                        mov              r11, 21
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 34
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_call_α
.Lx78_0:                .quad            .Lx78_0_s
.Lx78_0_s:              .string          "  OUTPUT = 'second block' :(THREE)"
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:             sub              rsp, 16
                        mov              r11, 22
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd22:         .string          "CODE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd22]
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
                        cmp              al, 104;                             jne   .Lx79_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n19_statement_begin_β
.Lx79_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n22_assign_α
n21_call_β:             mov              r11, 22
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n19_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:           mov              r11, 23
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # D
                        mov              qword ptr [r9 + 56], rdx;            jmp   n23_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:    mov              r11, 24
                        mov              r10, 4
                        add              rsp, 32;                             jmp   n24_statement_begin_α
#=======================================================================================================================
#         :< D >
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:  mov              r11, 25
                        mov              r10, 5;                              jmp   n25_statement_end_α
n24_statement_begin_β:  mov              r11, 25;                             jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:    mov              r11, 26
                        mov              r10, 5;                              jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              sub              rsp, 16
                        mov              r11, 27
                        mov              rax, qword ptr [r9 + 48]             # D
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n27_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:           mov              r11, 28
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # DGT$2
                        mov              qword ptr [r9 + 72], rdx;            jmp   n28_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n28_goto_deferred_α:    mov              r11, 29
                        mov              rdi, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_goto_resolve@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx90_1
                        add              rsp, 16;                             jmp   rax
.Lx90_0:                .quad            .Lx90_0_s
.Lx90_0_s:              .string          "<DGT$2"
.Lx90_1:                add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              mov              r11, 30
                        mov              rax, qword ptr [r9 + 48]             # D
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 320], rax           # result
                        mov              qword ptr [rsp + 328], rdx;          jmp   n30_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              r11, 31
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [r9 + 80], rax             # DGT$3
                        mov              qword ptr [r9 + 88], rdx;            jmp   n31_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n31_goto_deferred_α:    mov              r11, 32
                        mov              rdi, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_goto_resolve@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx94_1
                                                                              jmp   rax
.Lx94_0:                .quad            .Lx94_0_s
.Lx94_0_s:              .string          "<DGT$3"
.Lx94_1:                                                                      jmp   main_γ
#=======================================================================================================================
# THREE   E = CODE("LBL OUTPUT = 'third block, labelled' :(DONE)")
#-----------------------------------------------------------------------------------------------------------------------
LBL__THREE:             mov              r11, 33
                        mov              r10, 6;                              jmp   n33_lit_string_α
n32_statement_begin_β:  mov              r11, 33;                             jmp   n37_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 44
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_call_α
.Lx97_0:                .quad            .Lx97_0_s
.Lx97_0_s:              .string          "LBL OUTPUT = 'third block, labelled' :(DONE)"
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:             sub              rsp, 16
                        mov              r11, 35
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd35:         .string          "CODE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd35]
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
                        cmp              al, 104;                             jne   .Lx98_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n32_statement_begin_β
.Lx98_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n35_assign_α
n34_call_β:             mov              r11, 35
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n32_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:           mov              r11, 36
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # E
                        mov              qword ptr [r9 + 104], rdx;           jmp   n36_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    mov              r11, 37
                        mov              r10, 6
                        add              rsp, 32;                             jmp   n37_statement_begin_α
#=======================================================================================================================
#         :<E>
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:  mov              r11, 38
                        mov              r10, 7;                              jmp   n38_statement_end_α
n37_statement_begin_β:  mov              r11, 38;                             jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_end_α:    mov              r11, 39
                        mov              r10, 7;                              jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              sub              rsp, 16
                        mov              r11, 40
                        mov              rax, qword ptr [r9 + 96]             # E
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n40_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              r11, 41
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # DGT$4
                        mov              qword ptr [r9 + 120], rdx;           jmp   n41_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n41_goto_deferred_α:    mov              r11, 42
                        mov              rdi, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_goto_resolve@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx109_1
                        add              rsp, 16;                             jmp   rax
.Lx109_0:               .quad            .Lx109_0_s
.Lx109_0_s:             .string          "<DGT$4"
.Lx109_1:               add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              mov              r11, 43
                        mov              rax, qword ptr [r9 + 96]             # E
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 416], rax           # result
                        mov              qword ptr [rsp + 424], rdx;          jmp   n43_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:           mov              r11, 44
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [r9 + 128], rax            # DGT$5
                        mov              qword ptr [r9 + 136], rdx;           jmp   n44_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n44_goto_deferred_α:    mov              r11, 45
                        mov              rdi, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_goto_resolve@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx113_1
                                                                              jmp   rax
.Lx113_0:               .quad            .Lx113_0_s
.Lx113_0_s:             .string          "<DGT$5"
.Lx113_1:                                                                     jmp   main_γ
#=======================================================================================================================
# DONE    OUTPUT = 'back in main'
#-----------------------------------------------------------------------------------------------------------------------
LBL__DONE:              mov              r11, 46
                        mov              r10, 8;                              jmp   n46_lit_string_α
n45_statement_begin_β:  mov              r11, 46;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       sub              rsp, 16
                        mov              r11, 47
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 12
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_assign_α
.Lx116_0:               .quad            .Lx116_0_s
.Lx116_0_s:             .string          "back in main"
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              r11, 48
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n48_statement_end_α
.Lx117_0:               .quad            .Lx117_0_s
.Lx117_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    mov              r11, 49
                        mov              r10, 8
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
.Lstartup_pname0:       .string          "LBL__BAD"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__BAD
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            448
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__TWO"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            LBL__TWO
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            448
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "LBL__THREE"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            LBL__THREE
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            448
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "LBL__DONE"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            LBL__DONE
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            448
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
