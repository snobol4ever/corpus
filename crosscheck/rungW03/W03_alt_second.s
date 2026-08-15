                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "subject"
.Lgvan1:                .string          "pat"
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
#         <stmt 1, line 1: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                                         jmp   n1_statement_end_α
n0_statement_begin_β:                                                         jmp   n2_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_statement_end_α:                                                           jmp   n2_statement_begin_α
n1_statement_end_β:                                                           jmp   n2_statement_begin_α
#=======================================================================================================================
#         subject = 'foobar'
#-----------------------------------------------------------------------------------------------------------------------
n2_statement_begin_α:                                                         jmp   n3_lit_string_α
n2_statement_begin_β:                                                         jmp   n6_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_assign_α
n3_lit_string_β:        add              rsp, 16;                             jmp   n2_statement_begin_β
.Lx30_0:                .quad            .Lx30_0_s
.Lx30_0_s:              .string          "foobar"
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # subject
                        mov              qword ptr [r9 + 8], rdx;             jmp   n5_statement_end_α
n4_assign_β:                                                                  jmp   n2_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_end_α:     add              rsp, 16;                             jmp   n6_statement_begin_α
n5_statement_end_β:     add              rsp, 16;                             jmp   n6_statement_begin_α
#=======================================================================================================================
#         pat = 'baz' | 'bar'
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_begin_α:                                                         jmp   n7_statement_end_α
n6_statement_begin_β:                                                         jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:                                                           jmp   n8_statement_begin_α
n7_statement_end_β:                                                           jmp   n8_statement_begin_α
#=======================================================================================================================
#         subject pat              :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:                                                         jmp   n9_var_α
n8_statement_begin_β:                                                         jmp   n20_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # subject
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n10_match_begin_α
n9_var_β:               add              rsp, 16;                             jmp   n20_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n10_match_begin_α:      mov              rdi, qword ptr [rsp + 0]             # var
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
.Lx42_0:                mov              r14d, dword ptr [rbp + -40];         jmp   n11_match_alternate_α
n10_match_begin_β:      lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx42_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx42_1
                                                                              jmp   .Lx42_0
.Lx42_1:
n10_match_begin_af:     mov              r12, qword ptr [rbp + -8]            # cas_mark
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
                        add              rsp, 16;                             jmp   n20_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n11_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx44_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n15_match_lit_α
.Lx44_21:               lea              rax, [rip + .Lx44_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n14_match_lit_α
n11_match_alternate_s0: lea              rax, [rip + .Lx44_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n11_match_alternate_as
n11_match_alternate_s1: lea              rax, [rip + .Lx44_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n11_match_alternate_as
.Lx44_40:                                                                     jmp   n15_match_lit_β
.Lx44_41:                                                                     jmp   n14_match_lit_β
n11_match_alternate_as:                                                       jmp   n12_match_end_α
n11_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n11_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx44_19:               add              rsp, 32;                             jmp   n10_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n12_match_end_α:        push             r14
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
.Lx46_1:                test             rax, rax;                            je    .Lx46_2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx46_3]
                        lea              rdx, [rip + .Lx46_4];                jmp   rax
.Lx46_3:                mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx46_1
.Lx46_4:                mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx46_1
.Lx46_2:                call             rt_dcap_end_ok_close@PLT
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
                        pop              rbp;                                 jmp   n13_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_end_α:    add              rsp, 16;                             jmp   n16_statement_begin_α
n13_statement_end_β:    add              rsp, 16;                             jmp   n20_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_match_lit_α:        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    n11_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98;                             jne   n11_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 97;                             jne   n11_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 114;                            jne   n11_match_alternate_af
                        add              r14d, 3;                             jmp   n11_match_alternate_s1
n14_match_lit_β:        sub              r14d, 3;                             jmp   n11_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n15_match_lit_α:        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    n11_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98;                             jne   n11_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 97;                             jne   n11_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 122;                            jne   n11_match_alternate_af
                        add              r14d, 3;                             jmp   n11_match_alternate_s0
n15_match_lit_β:        sub              r14d, 3;                             jmp   n11_match_alternate_af
#=======================================================================================================================
#         OUTPUT = 'PASS W03/002: alt second branch matched'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:                                                        jmp   n17_lit_string_α
n16_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 39
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_assign_α
n17_lit_string_β:       add              rsp, 16;                             jmp   n16_statement_begin_β
.Lx55_0:                .quad            .Lx55_0_s
.Lx55_0_s:              .string          "PASS W03/002: alt second branch matched"
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n19_statement_end_α
n18_assign_β:                                                                 jmp   n16_statement_begin_β
.Lx56_0:                .quad            .Lx56_0_s
.Lx56_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:    add              rsp, 16;                             jmp   main_γ
n19_statement_end_β:    add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e001    OUTPUT = 'FAIL W03/002: alt second branch should match'
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_begin_α:                                                        jmp   n21_lit_string_α
n20_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 44
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_assign_α
n21_lit_string_β:       add              rsp, 16;                             jmp   n20_statement_begin_β
.Lx61_0:                .quad            .Lx61_0_s
.Lx61_0_s:              .string          "FAIL W03/002: alt second branch should match"
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_statement_end_α
n22_assign_β:                                                                 jmp   n20_statement_begin_β
.Lx62_0:                .quad            .Lx62_0_s
.Lx62_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:    add              rsp, 16;                             jmp   main_γ
n23_statement_end_β:    add              rsp, 16;                             jmp   main_γ
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
