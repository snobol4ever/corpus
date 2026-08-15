                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "X"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
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
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         X = 'AB'
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                                         jmp   n1_lit_string_α
n0_statement_begin_β:                                                         jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_assign_α
n1_lit_string_β:        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx25_0:                .quad            .Lx25_0_s
.Lx25_0_s:              .string          "AB"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # X
                        mov              qword ptr [r9 + 8], rdx;             jmp   n3_statement_end_α
n2_assign_β:                                                                  jmp   n0_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:     add              rsp, 16;                             jmp   n4_statement_begin_α
n3_statement_end_β:     add              rsp, 16;                             jmp   n4_statement_begin_α
#=======================================================================================================================
#         X  POS(0) FENCE('X' | 'Y' | 'Z')                      :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:                                                         jmp   n5_var_α
n4_statement_begin_β:                                                         jmp   n19_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # X
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n6_match_begin_α
n5_var_β:               add              rsp, 16;                             jmp   n19_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n6_match_begin_α:       mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 40
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
.Lx33_0:                mov              r14d, dword ptr [rbp + -40];         jmp   n7_match_pos_α
n6_match_begin_β:       lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx33_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx33_1
                                                                              jmp   .Lx33_0
.Lx33_1:
n6_match_begin_af:      mov              r12, qword ptr [rbp + -8]            # cas_mark
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
                        add              rsp, 16;                             jmp   n19_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_match_pos_α:         mov              rax, 0
                        cmp              r14d, eax;                           jne   n6_match_begin_β
                                                                              jmp   n8_match_fence1_α
n7_match_pos_β:                                                               jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_fence1_α:      mov              qword ptr [rbp + -64], rsp
                        sub              rsp, 0;                              jmp   n11_match_alternate_α
n8_match_fence1_as:     add              rsp, 0
                        mov              rsp, qword ptr [rbp + -64];          jmp   n9_match_end_α
n8_match_fence1_af:     add              rsp, 0
n8_match_fence1_β:      mov              rsp, qword ptr [rbp + -64];          jmp   n7_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_end_α:         push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rdx, r13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_end_ok_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx38_1:                test             rax, rax;                            je    .Lx38_2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx38_3]
                        lea              rdx, [rip + .Lx38_4];                jmp   rax
.Lx38_3:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx38_1
.Lx38_4:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx38_1
.Lx38_2:                call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n10_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_end_α:    add              rsp, 16;                             jmp   n15_statement_begin_α
n10_statement_end_β:    add              rsp, 16;                             jmp   n19_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n11_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx42_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n14_match_lit_α
.Lx42_21:               lea              rax, [rip + .Lx42_22]
                        mov              qword ptr [rsp + 16], rax;           jmp   n13_match_lit_α
.Lx42_22:               lea              rax, [rip + .Lx42_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n12_match_lit_α
n11_match_alternate_s0: lea              rax, [rip + .Lx42_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n11_match_alternate_as
n11_match_alternate_s1: lea              rax, [rip + .Lx42_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n11_match_alternate_as
n11_match_alternate_s2: lea              rax, [rip + .Lx42_42]
                        mov              qword ptr [rsp + 8], rax;            jmp   n11_match_alternate_as
.Lx42_40:                                                                     jmp   n14_match_lit_β
.Lx42_41:                                                                     jmp   n13_match_lit_β
.Lx42_42:                                                                     jmp   n12_match_lit_β
n11_match_alternate_as:                                                       jmp   n8_match_fence1_as
n11_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n11_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx42_19:               add              rsp, 32;                             jmp   n8_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n12_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n11_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 90;                             jne   n11_match_alternate_af
                        add              r14d, 1;                             jmp   n11_match_alternate_s2
n12_match_lit_β:        sub              r14d, 1;                             jmp   n11_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n13_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n11_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 89;                             jne   n11_match_alternate_af
                        add              r14d, 1;                             jmp   n11_match_alternate_s1
n13_match_lit_β:        sub              r14d, 1;                             jmp   n11_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n14_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n11_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 88;                             jne   n11_match_alternate_af
                        add              r14d, 1;                             jmp   n11_match_alternate_s0
n14_match_lit_β:        sub              r14d, 1;                             jmp   n11_match_alternate_af
#=======================================================================================================================
# YES     OUTPUT = 'unexpected match'                           :(END)
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_begin_α:                                                        jmp   n16_lit_string_α
n15_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 16
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_assign_α
n16_lit_string_β:       add              rsp, 16;                             jmp   n15_statement_begin_β
.Lx51_0:                .quad            .Lx51_0_s
.Lx51_0_s:              .string          "unexpected match"
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_statement_end_α
n17_assign_β:                                                                 jmp   n15_statement_begin_β
.Lx52_0:                .quad            .Lx52_0_s
.Lx52_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_end_α:    add              rsp, 16;                             jmp   main_γ
n18_statement_end_β:    add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# NO      OUTPUT = 'no alt matched'
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_begin_α:                                                        jmp   n20_lit_string_α
n19_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_assign_α
n20_lit_string_β:       add              rsp, 16;                             jmp   n19_statement_begin_β
.Lx57_0:                .quad            .Lx57_0_s
.Lx57_0_s:              .string          "no alt matched"
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n22_statement_end_α
n21_assign_β:                                                                 jmp   n19_statement_begin_β
.Lx58_0:                .quad            .Lx58_0_s
.Lx58_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:    add              rsp, 16;                             jmp   main_γ
n22_statement_end_β:    add              rsp, 16;                             jmp   main_γ
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
