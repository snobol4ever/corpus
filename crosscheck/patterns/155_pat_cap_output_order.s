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
#  'B2' ? ('A' | 'B') . OUTPUT ('1' | '2' | '3') . OUTPUT
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                                         jmp   n1_lit_string_α
n0_statement_begin_β:                                                         jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_match_begin_α
n1_lit_string_β:        add              rsp, 16;                             jmp   main_γ
.Lx18_0:                .quad            .Lx18_0_s
.Lx18_0_s:              .string          "B2"
#-----------------------------------------------------------------------------------------------------------------------
n2_match_begin_α:       mov              rdi, qword ptr [rsp + 0]             # lit_string
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx20_0:                mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx20_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n3_match_assign_save_α
n2_match_begin_β:
.Lx20_13:               lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx20_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx20_1
                                                                              jmp   .Lx20_0
.Lx20_1:
n2_match_begin_af:      mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n3_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n4_match_alternate_α
n3_match_assign_save_β: add              rsp, 16;                             jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_alternate_α:   sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx24_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n15_match_lit_α
.Lx24_21:               lea              rax, [rip + .Lx24_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n14_match_lit_α
n4_match_alternate_s0:  lea              rax, [rip + .Lx24_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_match_alternate_as
n4_match_alternate_s1:  lea              rax, [rip + .Lx24_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_match_alternate_as
.Lx24_40:                                                                     jmp   n15_match_lit_β
.Lx24_41:                                                                     jmp   n14_match_lit_β
n4_match_alternate_as:                                                        jmp   n5_match_assign_cond_α
n4_match_alternate_β:   mov              rax, qword ptr [rsp + 8];            jmp   rax
n4_match_alternate_af:  mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx24_19:               add              rsp, 32;                             jmp   n3_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_assign_cond_α: mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n6_match_assign_save_α
n5_match_assign_cond_β: sub              r12, 24;                             jmp   n4_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n6_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n7_match_alternate_α
n6_match_assign_save_β: add              rsp, 16;                             jmp   n5_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n7_match_alternate_α:   sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx30_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n13_match_lit_α
.Lx30_21:               lea              rax, [rip + .Lx30_22]
                        mov              qword ptr [rsp + 16], rax;           jmp   n12_match_lit_α
.Lx30_22:               lea              rax, [rip + .Lx30_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n11_match_lit_α
n7_match_alternate_s0:  lea              rax, [rip + .Lx30_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_match_alternate_as
n7_match_alternate_s1:  lea              rax, [rip + .Lx30_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_match_alternate_as
n7_match_alternate_s2:  lea              rax, [rip + .Lx30_42]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_match_alternate_as
.Lx30_40:                                                                     jmp   n13_match_lit_β
.Lx30_41:                                                                     jmp   n12_match_lit_β
.Lx30_42:                                                                     jmp   n11_match_lit_β
n7_match_alternate_as:                                                        jmp   n8_match_assign_cond_α
n7_match_alternate_β:   mov              rax, qword ptr [rsp + 8];            jmp   rax
n7_match_alternate_af:  mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx30_19:               add              rsp, 32;                             jmp   n6_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_assign_cond_α: mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n9_match_end_α
n8_match_assign_cond_β: sub              r12, 24;                             jmp   n7_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_end_α:         mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n10_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_end_α:    add              rsp, 16;                             jmp   main_γ
n10_statement_end_β:    add              rsp, 48;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n11_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n7_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 51;                             jne   n7_match_alternate_af
                        add              r14d, 1;                             jmp   n7_match_alternate_s2
n11_match_lit_β:        sub              r14d, 1;                             jmp   n7_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n12_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n7_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 50;                             jne   n7_match_alternate_af
                        add              r14d, 1;                             jmp   n7_match_alternate_s1
n12_match_lit_β:        sub              r14d, 1;                             jmp   n7_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n13_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n7_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 49;                             jne   n7_match_alternate_af
                        add              r14d, 1;                             jmp   n7_match_alternate_s0
n13_match_lit_β:        sub              r14d, 1;                             jmp   n7_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n14_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n4_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66;                             jne   n4_match_alternate_af
                        add              r14d, 1;                             jmp   n4_match_alternate_s1
n14_match_lit_β:        sub              r14d, 1;                             jmp   n4_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n15_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n4_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65;                             jne   n4_match_alternate_af
                        add              r14d, 1;                             jmp   n4_match_alternate_s0
n15_match_lit_β:        sub              r14d, 1;                             jmp   n4_match_alternate_af
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
                        .section         .rodata
.S0:                    .string          "OUTPUT"
                        .text
                        .section         .note.GNU-stack,"",@progbits
