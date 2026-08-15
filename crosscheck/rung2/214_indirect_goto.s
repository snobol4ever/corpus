                        .intel_syntax    noprefix
                        .text
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__BETA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + BETA_body]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__ALPHA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + ALPHA_body]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "LBL__GAMMA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + GAMMA_body]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "WHICH"
.Lgvan1:                .string          "NEXT"
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
                        call             proc_startup
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
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                                         jmp   n1_lit_string_α
n0_statement_begin_β:                                                         jmp   n5_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_integer_α
.Lx45_0:                .quad            .Lx45_0_s
.Lx45_0_s:              .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
n2_lit_integer_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx46_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_call_α:              sub              rsp, 16
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
.Lrkfnzd48:             .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd48]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx47_240
                        add              rsp, 16;                             jmp   n2_lit_integer_β
.Lx47_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n4_statement_end_α
n3_call_β:              add              rsp, 16;                             jmp   n2_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_end_α:     add              rsp, 48;                             jmp   n5_statement_begin_α
#=======================================================================================================================
#         WHICH = 'ALPHA'
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_begin_α:                                                         jmp   n6_lit_string_α
n5_statement_begin_β:                                                         jmp   n9_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_assign_α
.Lx53_0:                .quad            .Lx53_0_s
.Lx53_0_s:              .string          "ALPHA"
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # WHICH
                        mov              qword ptr [r9 + 8], rdx;             jmp   n8_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_end_α:     add              rsp, 16;                             jmp   n9_statement_begin_α
#=======================================================================================================================
#         :($WHICH)
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_begin_α:                                                         jmp   n10_statement_end_α
n9_statement_begin_β:                                                         jmp   n12_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_end_α:                                                          jmp   n11_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n11_goto_deferred_α:    mov              rdi, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_goto_transfer@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx62_1
.Lx62_0:                .quad            .Lx62_0_s
.Lx62_0_s:              .string          "$WHICH"
.Lx62_1:                                                                      jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n12_goto_deferred_α:    mov              rdi, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_goto_transfer@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx64_1
.Lx64_0:                .quad            .Lx64_0_s
.Lx64_0_s:              .string          "$WHICH"
.Lx64_1:                                                                      jmp   main_γ
#=======================================================================================================================
# BETA    OUTPUT = 'at BETA'
#-----------------------------------------------------------------------------------------------------------------------
BETA_body:                                                                    jmp   n14_lit_string_α
n13_statement_begin_β:                                                        jmp   n17_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Lx67_0:                .quad            .Lx67_0_s
.Lx67_0_s:              .string          "at BETA"
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_statement_end_α
.Lx68_0:                .quad            .Lx68_0_s
.Lx68_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_end_α:    add              rsp, 16;                             jmp   n17_statement_begin_α
#=======================================================================================================================
#         NEXT = 'GAMMA'
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_begin_α:                                                        jmp   n18_lit_string_α
n17_statement_begin_β:                                                        jmp   n21_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Lx73_0:                .quad            .Lx73_0_s
.Lx73_0_s:              .string          "GAMMA"
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # NEXT
                        mov              qword ptr [r9 + 24], rdx;            jmp   n20_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_end_α:    add              rsp, 16;                             jmp   n21_statement_begin_α
#=======================================================================================================================
#         :($NEXT)
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_begin_α:                                                        jmp   n22_statement_end_α
n21_statement_begin_β:                                                        jmp   n24_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:                                                          jmp   n23_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n23_goto_deferred_α:    mov              rdi, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_goto_transfer@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx82_1
.Lx82_0:                .quad            .Lx82_0_s
.Lx82_0_s:              .string          "$NEXT"
.Lx82_1:                                                                      jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n24_goto_deferred_α:    mov              rdi, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_goto_transfer@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx84_1
.Lx84_0:                .quad            .Lx84_0_s
.Lx84_0_s:              .string          "$NEXT"
.Lx84_1:                                                                      jmp   main_γ
#=======================================================================================================================
# ALPHA   OUTPUT = 'at ALPHA'
#-----------------------------------------------------------------------------------------------------------------------
ALPHA_body:                                                                   jmp   n26_lit_string_α
n25_statement_begin_β:                                                        jmp   n29_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_assign_α
.Lx87_0:                .quad            .Lx87_0_s
.Lx87_0_s:              .string          "at ALPHA"
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n28_statement_end_α
.Lx88_0:                .quad            .Lx88_0_s
.Lx88_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_end_α:    add              rsp, 16;                             jmp   n29_statement_begin_α
#=======================================================================================================================
#         WHICH = 'BE' 'TA'
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_begin_α:                                                        jmp   n30_lit_string_α
n29_statement_begin_β:                                                        jmp   n35_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_lit_string_α
.Lx93_0:                .quad            .Lx93_0_s
.Lx93_0_s:              .string          "BE"
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_binop_α
n31_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n29_statement_begin_β
.Lx94_0:                .quad            .Lx94_0_s
.Lx94_0_s:              .string          "TA"
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # WHICH
                        mov              qword ptr [r9 + 8], rdx;             jmp   n34_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:    add              rsp, 48;                             jmp   n35_statement_begin_α
#=======================================================================================================================
#         :($WHICH)
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_begin_α:                                                        jmp   n36_statement_end_α
n35_statement_begin_β:                                                        jmp   n38_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:                                                          jmp   n37_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n37_goto_deferred_α:    mov              rdi, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_goto_transfer@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx104_1
.Lx104_0:               .quad            .Lx104_0_s
.Lx104_0_s:             .string          "$WHICH"
.Lx104_1:                                                                     jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n38_goto_deferred_α:    mov              rdi, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_goto_transfer@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx106_1
.Lx106_0:               .quad            .Lx106_0_s
.Lx106_0_s:             .string          "$WHICH"
.Lx106_1:                                                                     jmp   main_γ
#=======================================================================================================================
# GAMMA   OUTPUT = 'at GAMMA'                      :(END)
#-----------------------------------------------------------------------------------------------------------------------
GAMMA_body:                                                                   jmp   n40_lit_string_α
n39_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_assign_α
.Lx109_0:               .quad            .Lx109_0_s
.Lx109_0_s:             .string          "at GAMMA"
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n42_statement_end_α
.Lx110_0:               .quad            .Lx110_0_s
.Lx110_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:    add              rsp, 16;                             jmp   main_γ
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
