                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 72
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n0_match_alternate_α:   mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .Lx4_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n2_match_lit_α
.Lx4_21:                lea              rax, [rip + .Lx4_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n1_match_lit_α
n0_match_alternate_s0:  lea              rax, [rip + .Lx4_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   n0_match_alternate_as
n0_match_alternate_s1:  lea              rax, [rip + .Lx4_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   n0_match_alternate_as
.Lx4_40:                                                                      jmp   n2_match_lit_β
.Lx4_41:                                                                      jmp   n1_match_lit_β
n0_match_alternate_as:                                                        jmp   PAT$0_γ
n0_match_alternate_β:   mov              rax, qword ptr [rbp + -64];          jmp   rax
n0_match_alternate_af:  mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lx4_19:                                                                      jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_lit_α:         mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98;                             jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 97;                             jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 114;                            jne   n0_match_alternate_af
                        add              r14d, 3;                             jmp   n0_match_alternate_s1
n1_match_lit_β:         sub              r14d, 3;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n2_match_lit_α:         mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98;                             jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 97;                             jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 122;                            jne   n0_match_alternate_af
                        add              r14d, 3;                             jmp   n0_match_alternate_s0
n2_match_lit_β:         sub              r14d, 3;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n0_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$0_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
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
.Lgvan0:                .string          "subject"
.Lgvan1:                .string          "pat"
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
n9_statement_begin_α:                                                         jmp   n10_statement_end_α
n9_statement_begin_β:                                                         jmp   n11_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_end_α:                                                          jmp   n11_statement_begin_α
n10_statement_end_β:                                                          jmp   n11_statement_begin_α
#=======================================================================================================================
#         subject = 'foobar'
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_begin_α:                                                        jmp   n12_lit_string_α
n11_statement_begin_β:                                                        jmp   n15_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_assign_α
n12_lit_string_β:       add              rsp, 16;                             jmp   n11_statement_begin_β
.Lx42_0:                .quad            .Lx42_0_s
.Lx42_0_s:              .string          "foobar"
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # subject
                        mov              qword ptr [r9 + 8], rdx;             jmp   n14_statement_end_α
n13_assign_β:                                                                 jmp   n11_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_end_α:    add              rsp, 16;                             jmp   n15_statement_begin_α
n14_statement_end_β:    add              rsp, 16;                             jmp   n15_statement_begin_α
#=======================================================================================================================
#         pat = 'baz' | 'bar'
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_begin_α:                                                        jmp   n16_lit_string_α
n15_statement_begin_β:                                                        jmp   n20_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_call_α
n16_lit_string_β:       add              rsp, 16;                             jmp   n15_statement_begin_β
.Lx48_0:                .quad            .Lx48_0_s
.Lx48_0_s:              .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n17_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd50:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd50]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx49_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n15_statement_begin_β
.Lx49_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n18_assign_α
n17_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n15_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # pat
                        mov              qword ptr [r9 + 24], rdx;            jmp   n19_statement_end_α
n18_assign_β:                                                                 jmp   n15_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:    add              rsp, 32;                             jmp   n20_statement_begin_α
n19_statement_end_β:    add              rsp, 32;                             jmp   n20_statement_begin_α
#=======================================================================================================================
#         subject pat              :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_begin_α:                                                        jmp   n21_var_α
n20_statement_begin_β:                                                        jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # subject
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n22_match_begin_α
n21_var_β:              add              rsp, 16;                             jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n22_match_begin_α:      mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx58_0:                mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx58_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n23_match_alternate_α
n22_match_begin_β:
.Lx58_13:               lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx58_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx58_1
                                                                              jmp   .Lx58_0
.Lx58_1:
n22_match_begin_af:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        add              rsp, 16;                             jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n23_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx60_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n27_match_lit_α
.Lx60_21:               lea              rax, [rip + .Lx60_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n26_match_lit_α
n23_match_alternate_s0: lea              rax, [rip + .Lx60_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_match_alternate_as
n23_match_alternate_s1: lea              rax, [rip + .Lx60_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_match_alternate_as
.Lx60_40:                                                                     jmp   n27_match_lit_β
.Lx60_41:                                                                     jmp   n26_match_lit_β
n23_match_alternate_as:                                                       jmp   n24_match_end_α
n23_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n23_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx60_19:               add              rsp, 32;                             jmp   n22_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n24_match_end_α:        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        test             rax, rax;                            je    .Lx62_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n22_match_begin_af
.Lx62_13:               add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n25_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:    add              rsp, 16;                             jmp   n28_statement_begin_α
n25_statement_end_β:    add              rsp, 16;                             jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_match_lit_α:        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    n23_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98;                             jne   n23_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 97;                             jne   n23_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 114;                            jne   n23_match_alternate_af
                        add              r14d, 3;                             jmp   n23_match_alternate_s1
n26_match_lit_β:        sub              r14d, 3;                             jmp   n23_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n27_match_lit_α:        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    n23_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98;                             jne   n23_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 97;                             jne   n23_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 122;                            jne   n23_match_alternate_af
                        add              r14d, 3;                             jmp   n23_match_alternate_s0
n27_match_lit_β:        sub              r14d, 3;                             jmp   n23_match_alternate_af
#=======================================================================================================================
#         OUTPUT = 'PASS W03/002: alt second branch matched'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:                                                        jmp   n29_lit_string_α
n28_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 39
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_assign_α
n29_lit_string_β:       add              rsp, 16;                             jmp   n28_statement_begin_β
.Lx71_0:                .quad            .Lx71_0_s
.Lx71_0_s:              .string          "PASS W03/002: alt second branch matched"
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n31_statement_end_α
n30_assign_β:                                                                 jmp   n28_statement_begin_β
.Lx72_0:                .quad            .Lx72_0_s
.Lx72_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:    add              rsp, 16;                             jmp   main_γ
n31_statement_end_β:    add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# e001    OUTPUT = 'FAIL W03/002: alt second branch should match'
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:                                                        jmp   n33_lit_string_α
n32_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 44
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_assign_α
n33_lit_string_β:       add              rsp, 16;                             jmp   n32_statement_begin_β
.Lx77_0:                .quad            .Lx77_0_s
.Lx77_0_s:              .string          "FAIL W03/002: alt second branch should match"
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n35_statement_end_α
n34_assign_β:                                                                 jmp   n32_statement_begin_β
.Lx78_0:                .quad            .Lx78_0_s
.Lx78_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:    add              rsp, 16;                             jmp   main_γ
n35_statement_end_β:    add              rsp, 16;                             jmp   main_γ
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
.Lstartup_pname0:       .string          "PAT$0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__PAT$0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            80
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
