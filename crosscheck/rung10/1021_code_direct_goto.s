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
.Lgvan0:                .string          "S"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "DGT$0"
.Lgvan3:                .string          "C"
.Lgvan4:                .string          "DGT$1"
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
# 	S = 'X OUTPUT = "in-block " N; N = LT(N,2) N + 1 :S(X)F(FIN)'
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_lit_string_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 55
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_assign_α
.Lx25_0:                .quad            .Lx25_0_s
.Lx25_0_s:              .string          "X OUTPUT = \"in-block \" N; N = LT(N,2) N + 1 :S(X)F(FIN)"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 3
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # S
                        mov              qword ptr [r9 + 8], rdx;             jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:     mov              r11, 4
                        mov              r10, 1
                        add              rsp, 16;                             jmp   n4_statement_begin_α
#=======================================================================================================================
# 	N = 1
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:   mov              r11, 5
                        mov              r10, 2;                              jmp   n5_lit_integer_α
n4_statement_begin_β:   mov              r11, 5;                              jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       sub              rsp, 16
                        mov              r11, 6
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_assign_α
.Lx31_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              r11, 7
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              qword ptr [r9 + 24], rdx;            jmp   n7_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:     mov              r11, 8
                        mov              r10, 2
                        add              rsp, 16;                             jmp   n8_statement_begin_α
#=======================================================================================================================
# 	C = CODE(S)	:<C>
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:   mov              r11, 9
                        mov              r10, 3;                              jmp   n9_var_α
n8_statement_begin_β:   mov              r11, 9;                              jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               sub              rsp, 16
                        mov              r11, 10
                        mov              rax, qword ptr [r9 + 0]              # S
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n10_call_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_α:             sub              rsp, 16
                        mov              r11, 11
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd11:         .string          "CODE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd11]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx38_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n8_statement_begin_β
.Lx38_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n11_assign_α
n10_call_β:             mov              r11, 11
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n8_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:           mov              r11, 12
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # C
                        mov              qword ptr [r9 + 56], rdx;            jmp   n12_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:    mov              r11, 13
                        mov              r10, 3;                              jmp   n13_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              sub              rsp, 16
                        mov              r11, 14
                        mov              rax, qword ptr [r9 + 48]             # C
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              r11, 15
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DGT$0
                        mov              qword ptr [r9 + 40], rdx;            jmp   n15_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n15_goto_deferred_α:    mov              r11, 16
                        mov              rdi, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_goto_resolve@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            jz    .Lx45_1
                        add              rsp, 48;                             jmp   rax
.Lx45_0:                .quad            .Lx45_0_s
.Lx45_0_s:              .string          "<DGT$0"
.Lx45_1:                add              rsp, 48;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              r11, 17
                        mov              rax, qword ptr [r9 + 48]             # C
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 160], rax           # result
                        mov              qword ptr [rsp + 168], rdx;          jmp   n17_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:           mov              r11, 18
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [r9 + 64], rax             # DGT$1
                        mov              qword ptr [r9 + 72], rdx;            jmp   n18_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n18_goto_deferred_α:    mov              r11, 19
                        mov              rdi, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_goto_resolve@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            jz    .Lx49_1
                                                                              jmp   rax
.Lx49_0:                .quad            .Lx49_0_s
.Lx49_0_s:              .string          "<DGT$1"
.Lx49_1:                                                                      jmp   main_γ
#=======================================================================================================================
# FIN	OUTPUT = 'fin'
#-----------------------------------------------------------------------------------------------------------------------
LBL__FIN:               mov              r11, 20
                        mov              r10, 4;                              jmp   n20_lit_string_α
n19_statement_begin_β:  mov              r11, 20;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       sub              rsp, 16
                        mov              r11, 21
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_assign_α
.Lx52_0:                .quad            .Lx52_0_s
.Lx52_0_s:              .string          "fin"
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              r11, 22
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_statement_end_α
.Lx53_0:                .quad            .Lx53_0_s
.Lx53_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:    mov              r11, 23
                        mov              r10, 4
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
.Lstartup_pname0:       .string          "LBL__FIN"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__FIN
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            256
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
