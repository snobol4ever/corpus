                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 1
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 1
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "X"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         X = 'aXYb'
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_lit_string_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_assign_α
n1_lit_string_β:        mov              r11, 2
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx27_0:                .quad            .Lx27_0_s
.Lx27_0_s:              .string          "aXYb"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 3
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # X
                        mov              qword ptr [r9 + 8], rdx;             jmp   n3_statement_end_α
n2_assign_β:            mov              r11, 3;                              jmp   n0_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:     mov              r11, 4
                        mov              r10, 1
                        add              rsp, 16;                             jmp   n4_statement_begin_α
n3_statement_end_β:     mov              r11, 4
                        add              rsp, 16;                             jmp   n4_statement_begin_α
#=======================================================================================================================
#         X  POS(0) 'a' FENCE('X' | 'XY')  'b'  RPOS(0)         :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:   mov              r11, 5
                        mov              r10, 2;                              jmp   n5_var_α
n4_statement_begin_β:   mov              r11, 5;                              jmp   n21_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               sub              rsp, 16
                        mov              r11, 6
                        mov              rax, qword ptr [r9 + 0]              # X
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n6_match_begin_α
n5_var_β:               mov              r11, 6
                        add              rsp, 16;                             jmp   n21_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n6_match_begin_α:       mov              r11, 7
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 40
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx35_0:                mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx35_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n7_match_pos_α
n6_match_begin_β:       mov              r11, 7
.Lx35_13:               lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx35_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx35_1
                                                                              jmp   .Lx35_0
.Lx35_1:
n6_match_begin_af:      mov              r11, 7
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13                             # sig
                        mov              rsi, r15                             # len
                        call             rt_match_ctx_restore@PLT
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 16;                             jmp   n21_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_match_pos_α:         mov              r11, 8
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n6_match_begin_β
                                                                              jmp   n8_match_lit_α
n7_match_pos_β:         mov              r11, 8;                              jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_lit_α:         mov              r11, 9
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n6_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97;                             jne   n6_match_begin_β
                        add              r14d, 1;                             jmp   n9_match_fence1_α
n8_match_lit_β:         mov              r11, 9
                        sub              r14d, 1;                             jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_fence1_α:      mov              r11, 10
                        mov              qword ptr [rbp + -64], rsp
                        sub              rsp, 0;                              jmp   n14_match_alternate_α
n9_match_fence1_as:     mov              r11, 10
                        add              rsp, 0
                        mov              rsp, qword ptr [rbp + -64];          jmp   n10_match_lit_α
n9_match_fence1_af:     mov              r11, 10
                        add              rsp, 0
n9_match_fence1_β:      mov              r11, 10
                        mov              rsp, qword ptr [rbp + -64];          jmp   n8_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_lit_α:        mov              r11, 11
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n6_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98;                             jne   n6_match_begin_β
                        add              r14d, 1;                             jmp   n11_match_rpos_α
n10_match_lit_β:        mov              r11, 11
                        sub              r14d, 1;                             jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n11_match_rpos_α:       mov              r11, 12
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n9_match_fence1_β
                                                                              jmp   n12_match_end_α
n11_match_rpos_β:       mov              r11, 12;                             jmp   n9_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n12_match_end_α:        mov              r11, 13
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rax, qword ptr [rbp + -32]           # outer_Δ
                        mov              rcx, qword ptr [rbp + -16]           # outer_Σ
                        push             rax
                        push             rcx
                        lea              rcx, [rsp + 0]
                        mov              rsi, r12
                        mov              rdx, r13
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx45_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n6_match_begin_af
.Lx45_13:               add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n13_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_end_α:    mov              r11, 14
                        mov              r10, 2
                        add              rsp, 16;                             jmp   n17_statement_begin_α
n13_statement_end_β:    mov              r11, 14
                        add              rsp, 16;                             jmp   n21_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_match_alternate_α:  mov              r11, 15
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx49_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n16_match_lit_α
.Lx49_21:               lea              rax, [rip + .Lx49_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n15_match_lit_α
n14_match_alternate_s0: mov              r11, 15
                        lea              rax, [rip + .Lx49_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_match_alternate_as
n14_match_alternate_s1: mov              r11, 15
                        lea              rax, [rip + .Lx49_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_match_alternate_as
.Lx49_40:                                                                     jmp   n16_match_lit_β
.Lx49_41:                                                                     jmp   n15_match_lit_β
n14_match_alternate_as: mov              r11, 15;                             jmp   n9_match_fence1_as
n14_match_alternate_β:  mov              r11, 15
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
n14_match_alternate_af: mov              r11, 15
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx49_19:               add              rsp, 32;                             jmp   n9_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n15_match_lit_α:        mov              r11, 16
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n14_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 88;                             jne   n14_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 89;                             jne   n14_match_alternate_af
                        add              r14d, 2;                             jmp   n14_match_alternate_s1
n15_match_lit_β:        mov              r11, 16
                        sub              r14d, 2;                             jmp   n14_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n16_match_lit_α:        mov              r11, 17
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n14_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 88;                             jne   n14_match_alternate_af
                        add              r14d, 1;                             jmp   n14_match_alternate_s0
n16_match_lit_β:        mov              r11, 17
                        sub              r14d, 1;                             jmp   n14_match_alternate_af
#=======================================================================================================================
# YES     OUTPUT = 'longer alt was tried (NOT fenced)'          :(END)
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_begin_α:  mov              r11, 18
                        mov              r10, 3;                              jmp   n18_lit_string_α
n17_statement_begin_β:  mov              r11, 18;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       sub              rsp, 16
                        mov              r11, 19
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
n18_lit_string_β:       mov              r11, 19
                        add              rsp, 16;                             jmp   n17_statement_begin_β
.Lx56_0:                .quad            .Lx56_0_s
.Lx56_0_s:              .string          "longer alt was tried (NOT fenced)"
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              r11, 20
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n20_statement_end_α
n19_assign_β:           mov              r11, 20;                             jmp   n17_statement_begin_β
.Lx57_0:                .quad            .Lx57_0_s
.Lx57_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_end_α:    mov              r11, 21
                        mov              r10, 3
                        add              rsp, 16;                             jmp   main_γ
n20_statement_end_β:    mov              r11, 21
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# NO      OUTPUT = 'fenced'
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_begin_α:  mov              r11, 22
                        mov              r10, 4;                              jmp   n22_lit_string_α
n21_statement_begin_β:  mov              r11, 22;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       sub              rsp, 16
                        mov              r11, 23
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_assign_α
n22_lit_string_β:       mov              r11, 23
                        add              rsp, 16;                             jmp   n21_statement_begin_β
.Lx62_0:                .quad            .Lx62_0_s
.Lx62_0_s:              .string          "fenced"
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              r11, 24
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n24_statement_end_α
n23_assign_β:           mov              r11, 24;                             jmp   n21_statement_begin_β
.Lx63_0:                .quad            .Lx63_0_s
.Lx63_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    mov              r11, 25
                        mov              r10, 4
                        add              rsp, 16;                             jmp   main_γ
n24_statement_end_β:    mov              r11, 25
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
