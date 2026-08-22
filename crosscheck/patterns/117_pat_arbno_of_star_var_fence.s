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
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97;                             jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 98;                             jne   n0_match_alternate_af
                        add              r14d, 2;                             jmp   n0_match_alternate_s1
n1_match_lit_β:         sub              r14d, 2;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n2_match_lit_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97;                             jne   n0_match_alternate_af
                        add              r14d, 1;                             jmp   n0_match_alternate_s0
n2_match_lit_β:         sub              r14d, 1;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   PAT$0_ω
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
.Lgvan0:                .string          "cmd"
.Lgvan1:                .string          "s"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         cmd = FENCE('a' | 'ab')
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_begin_α:                                                         jmp   n10_lit_string_α
n9_statement_begin_β:                                                         jmp   n14_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n11_call_α
.Lx38_0:                .quad            .Lx38_0_s
.Lx38_0_s:              .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n11_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd40:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd40]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx39_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n9_statement_begin_β
.Lx39_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n12_assign_α
n11_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n9_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # cmd
                        mov              qword ptr [r9 + 8], rdx;             jmp   n13_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_end_α:    add              rsp, 32;                             jmp   n14_statement_begin_α
#=======================================================================================================================
#         s = 'aaa'
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_begin_α:                                                        jmp   n15_lit_string_α
n14_statement_begin_β:                                                        jmp   n18_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_assign_α
.Lx46_0:                .quad            .Lx46_0_s
.Lx46_0_s:              .string          "aaa"
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # s
                        mov              qword ptr [r9 + 24], rdx;            jmp   n17_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:    add              rsp, 16;                             jmp   n18_statement_begin_α
#=======================================================================================================================
#         s POS(0) ARBNO(*cmd) RPOS(0)                          :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:                                                        jmp   n19_var_α
n18_statement_begin_β:                                                        jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # s
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n20_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n20_match_begin_α:      mov              rdi, qword ptr [rsp + 0]             # var
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
.Lx54_0:                mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx54_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n21_match_pos_α
n20_match_begin_β:
.Lx54_13:               lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx54_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx54_1
                                                                              jmp   .Lx54_0
.Lx54_1:
n20_match_begin_af:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
n21_match_pos_α:        mov              rax, 0
                        cmp              r14d, eax;                           jne   n20_match_begin_β
                                                                              jmp   n22_match_arbno_α
n21_match_pos_β:                                                              jmp   n20_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_arbno_α:      mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   n23_match_rpos_α
n22_match_arbno_β:                                                            jmp   n27_match_defer_α
n22_match_arbno_as:     mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n27_match_defer_β
                        mov              dword ptr [rbp + -60], r14d;         jmp   n23_match_rpos_α
n22_match_arbno_af:     mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n21_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n23_match_rpos_α:       mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n22_match_arbno_β
                                                                              jmp   n24_match_end_α
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
                        test             rax, rax;                            je    .Lx60_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n20_match_begin_af
.Lx60_13:               add              rsp, 16
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
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 5
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   main_γ
n26_lit_string_β:                                                             jmp   main_ω
.Lx63_0:                .quad            .Lx63_0_s
.Lx63_0_s:              .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n27_match_defer_α:      push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 0]              # cmd
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx64_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx64_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx64_10
.Lx64_9:                cmp              al, 88;                              jne   .Lx64_21
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_xpat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx64_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx64_10
.Lx64_21:               xor              eax, eax
.Lx64_10:               test             rax, rax;                            jz    .Lx64_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx64_5]
                        push             rcx
                        lea              rcx, [rip + .Lx64_4]
                        push             rcx;                                 jmp   rax
.Lx64_4:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n22_match_arbno_as
.Lx64_5:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n22_match_arbno_af
.Lx64_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n22_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx64_6]
                        push             rcx
                        push             rax;                                 jmp   n22_match_arbno_as
.Lx64_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n22_match_arbno_af
n27_match_defer_β:      mov              rsp, rbp
                        pop              rbp;                                 jmp   n22_match_arbno_af
#=======================================================================================================================
# YES     OUTPUT = 'arbno-star-cmd matched aaa'                 :(END)
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:                                                        jmp   n29_lit_string_α
n28_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 26
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_assign_α
.Lx67_0:                .quad            .Lx67_0_s
.Lx67_0_s:              .string          "arbno-star-cmd matched aaa"
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n31_statement_end_α
.Lx68_0:                .quad            .Lx68_0_s
.Lx68_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:    add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# NO      OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:                                                        jmp   n33_lit_string_α
n32_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_assign_α
.Lx73_0:                .quad            .Lx73_0_s
.Lx73_0_s:              .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n35_statement_end_α
.Lx74_0:                .quad            .Lx74_0_s
.Lx74_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:    add              rsp, 16;                             jmp   main_γ
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
                        .section         .rodata
.S0:                    .string          "cmd"
                        .text
                        .section         .note.GNU-stack,"",@progbits
