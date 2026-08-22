                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 40
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n0_match_len_α:         mov              eax, r14d
                        add              eax, 0
                        cmp              eax, r15d;                           jg    PAT$0_ω
                        add              r14d, 0;                             jmp   PAT$0_γ
n0_match_len_β:         sub              r14d, 0;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n0_match_len_β
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
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$1:
PAT$1_α_body:
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
n2_match_alternate_α:   mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .Lx6_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n4_match_lit_α
.Lx6_21:                lea              rax, [rip + .Lx6_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n3_match_lit_α
n2_match_alternate_s0:  lea              rax, [rip + .Lx6_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   n2_match_alternate_as
n2_match_alternate_s1:  lea              rax, [rip + .Lx6_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   n2_match_alternate_as
.Lx6_40:                                                                      jmp   n4_match_lit_β
.Lx6_41:                                                                      jmp   n3_match_lit_β
n2_match_alternate_as:                                                        jmp   PAT$1_γ
n2_match_alternate_β:   mov              rax, qword ptr [rbp + -64];          jmp   rax
n2_match_alternate_af:  mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lx6_19:                                                                      jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_match_lit_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n2_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66;                             jne   n2_match_alternate_af
                        add              r14d, 1;                             jmp   n2_match_alternate_s1
n3_match_lit_β:         sub              r14d, 1;                             jmp   n2_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n4_match_lit_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n2_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65;                             jne   n2_match_alternate_af
                        add              r14d, 1;                             jmp   n2_match_alternate_s0
n4_match_lit_β:         sub              r14d, 1;                             jmp   n2_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$1_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$2:
PAT$2_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 88
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n11_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx17_16
                        mov              rax, qword ptr [rdx + 0]
.Lx17_16:               test             rax, rax;                            jz    .Lx17_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx17_5]
                        push             rcx
                        lea              rcx, [rip + .Lx17_4]
                        push             rcx;                                 jmp   rax
.Lx17_4:                                                                      jmp   n12_match_alternate_α
.Lx17_5:                add              rsp, 16;                             jmp   PAT$2_ω
.Lx17_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S0]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            jns   .Lx17_240
                        add              rsp, 16;                             jmp   PAT$2_ω
.Lx17_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx17_6]
                        push             rcx
                        push             rax;                                 jmp   n12_match_alternate_α
.Lx17_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$2_ω
n11_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx17_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx17_12
                                                                              jmp   rax
.Lx17_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n12_match_alternate_α:  mov              dword ptr [rbp + -88], r14d
                        lea              rax, [rip + .Lx19_21]
                        mov              qword ptr [rbp + -72], rax;          jmp   n15_match_lit_α
.Lx19_21:               lea              rax, [rip + .Lx19_19]
                        mov              qword ptr [rbp + -72], rax;          jmp   n13_match_defer_α
n12_match_alternate_s0: lea              rax, [rip + .Lx19_40]
                        mov              qword ptr [rbp + -80], rax;          jmp   n12_match_alternate_as
n12_match_alternate_s1: lea              rax, [rip + .Lx19_41]
                        mov              qword ptr [rbp + -80], rax;          jmp   n12_match_alternate_as
.Lx19_40:                                                                     jmp   n14_goto_β
.Lx19_41:                                                                     jmp   n13_match_defer_β
n12_match_alternate_as:                                                       jmp   PAT$2_γ
n12_match_alternate_β:  mov              rax, qword ptr [rbp + -80];          jmp   rax
n12_match_alternate_af: mov              r14d, dword ptr [rbp + -88]
                        mov              rax, qword ptr [rbp + -72];          jmp   rax
.Lx19_19:                                                                     jmp   n11_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n13_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S1]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx20_16
                        mov              rax, qword ptr [rdx + 0]
.Lx20_16:               test             rax, rax;                            jz    .Lx20_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx20_5]
                        push             rcx
                        lea              rcx, [rip + .Lx20_4]
                        push             rcx;                                 jmp   rax
.Lx20_4:                                                                      jmp   n12_match_alternate_s1
.Lx20_5:                                                                      jmp   n12_match_alternate_af
.Lx20_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S1]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n12_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx20_6]
                        push             rcx
                        push             rax;                                 jmp   n12_match_alternate_s1
.Lx20_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n12_match_alternate_af
n13_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx20_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx20_12
                                                                              jmp   rax
.Lx20_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n14_goto_α:                                                                   jmp   n12_match_alternate_af
n14_goto_β:                                                                   jmp   n12_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n15_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n12_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n12_match_alternate_af
                        add              r14d, 1;                             jmp   n16_match_defer_α
n15_match_lit_β:        sub              r14d, 1;                             jmp   n12_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n16_match_defer_α:      lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx24_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx24_11
.Lx24_13:               mov              rax, qword ptr [r9 + 32]             # layer
                        mov              rdx, qword ptr [r9 + 40]
                        cmp              al, 8;                               jne   .Lx24_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx24_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, qword ptr [r9 + 40];            jmp   .Lx24_10
.Lx24_9:                cmp              al, 88;                              jne   .Lx24_21
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_xpat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx24_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx24_10
.Lx24_21:               xor              eax, eax
.Lx24_10:               test             rax, rax;                            je    .Lx24_15
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rdx
.Lx24_15:
.Lx24_11:               test             rax, rax;                            jz    .Lx24_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx24_5]
                        push             rcx
                        lea              rcx, [rip + .Lx24_4]
                        push             rcx;                                 jmp   rax
.Lx24_4:                                                                      jmp   n12_match_alternate_s0
.Lx24_5:                                                                      jmp   n15_match_lit_β
.Lx24_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n15_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx24_6]
                        push             rcx
                        push             rax;                                 jmp   n12_match_alternate_s0
.Lx24_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n15_match_lit_β
n16_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx24_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx24_12
                                                                              jmp   rax
.Lx24_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_β:
                                                                              jmp   n12_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$2_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_ω:
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
.Lgvan0:                .string          "eps"
.Lgvan1:                .string          "choose"
.Lgvan2:                .string          "layer"
.Lgvan3:                .string          "s"
.Lgvan4:                .string          "PAT$2$V0"
.Lgvan5:                .string          "PAT$2$V1"
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
                        sub              rsp, 0
#=======================================================================================================================
#         eps  = LEN(0)
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:                                                        jmp   n26_lit_string_α
n25_statement_begin_β:                                                        jmp   n30_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_call_α
.Lx69_0:                .quad            .Lx69_0_s
.Lx69_0_s:              .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n27_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd71:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd71]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx70_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n25_statement_begin_β
.Lx70_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n28_assign_α
n27_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n25_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # eps
                        mov              qword ptr [r9 + 8], rdx;             jmp   n29_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_end_α:    add              rsp, 32;                             jmp   n30_statement_begin_α
#=======================================================================================================================
#         choose = FENCE('A' | 'B')
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_begin_α:                                                        jmp   n31_lit_string_α
n30_statement_begin_β:                                                        jmp   n35_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_call_α
.Lx77_0:                .quad            .Lx77_0_s
.Lx77_0_s:              .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd79:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd79]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx78_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n30_statement_begin_β
.Lx78_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n33_assign_α
n32_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n30_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # choose
                        mov              qword ptr [r9 + 24], rdx;            jmp   n34_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:    add              rsp, 32;                             jmp   n35_statement_begin_α
#=======================================================================================================================
#         layer  = choose ('-' *layer | eps)
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_begin_α:                                                        jmp   n36_var_α
n35_statement_begin_β:                                                        jmp   n45_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # choose
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n37_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # PAT$2$V0
                        mov              qword ptr [r9 + 72], rdx;            jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # eps
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_assign_α
n38_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n35_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # PAT$2$V1
                        mov              qword ptr [r9 + 88], rdx;            jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_lit_string_α
n40_lit_string_β:       add              rsp, 16;                             jmp   n38_var_β
.Lx89_0:                .quad            .Lx89_0_s
.Lx89_0_s:              .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_call_α
n41_lit_string_β:       add              rsp, 16;                             jmp   n40_lit_string_β
.Lx90_0:                .quad            .Lx90_0_s
.Lx90_0_s:              .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n42_call_α:             sub              rsp, 16
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
.Lrkfnzd92:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd92]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx91_240
                        add              rsp, 16;                             jmp   n41_lit_string_β
.Lx91_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_assign_α
n42_call_β:             add              rsp, 16;                             jmp   n41_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # layer
                        mov              qword ptr [r9 + 40], rdx;            jmp   n44_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_end_α:    add              rsp, 80;                             jmp   n45_statement_begin_α
#=======================================================================================================================
#         s      = 'A-A-B'
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_begin_α:                                                        jmp   n46_lit_string_α
n45_statement_begin_β:                                                        jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_assign_α
.Lx98_0:                .quad            .Lx98_0_s
.Lx98_0_s:              .string          "A-A-B"
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # s
                        mov              qword ptr [r9 + 56], rdx;            jmp   n48_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    add              rsp, 16;                             jmp   n49_statement_begin_α
#=======================================================================================================================
#         s POS(0) *layer RPOS(0)                               :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:                                                        jmp   n50_var_α
n49_statement_begin_β:                                                        jmp   n63_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # s
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n51_match_begin_α:      mov              rdi, qword ptr [rsp + 0]             # var
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
.Lx106_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx106_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n52_match_pos_α
n51_match_begin_β:
.Lx106_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx106_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx106_1
                                                                              jmp   .Lx106_0
.Lx106_1:
n51_match_begin_af:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        add              rsp, 16;                             jmp   n63_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n52_match_pos_α:        mov              rax, 0
                        cmp              r14d, eax;                           jne   n51_match_begin_β
                                                                              jmp   n53_match_defer_α
n52_match_pos_β:                                                              jmp   n51_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n53_match_defer_α:      sub              rsp, 16
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx108_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx108_11
.Lx108_13:              mov              rax, qword ptr [r9 + 32]             # layer
                        mov              rdx, qword ptr [r9 + 40]
                        cmp              al, 8;                               jne   .Lx108_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx108_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, qword ptr [r9 + 40];            jmp   .Lx108_10
.Lx108_9:               cmp              al, 88;                              jne   .Lx108_21
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_xpat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx108_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx108_10
.Lx108_21:              xor              eax, eax
.Lx108_10:              test             rax, rax;                            je    .Lx108_15
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rdx
.Lx108_15:
.Lx108_11:              test             rax, rax;                            jz    .Lx108_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx108_5]
                        push             rcx
                        lea              rcx, [rip + .Lx108_4]
                        push             rcx;                                 jmp   rax
.Lx108_4:                                                                     jmp   n54_match_rpos_α
.Lx108_5:               add              rsp, 16;                             jmp   n51_match_begin_β
.Lx108_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            jns   .Lx108_240
                        add              rsp, 16;                             jmp   n51_match_begin_β
.Lx108_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx108_6]
                        push             rcx
                        push             rax;                                 jmp   n54_match_rpos_α
.Lx108_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n51_match_begin_β
n53_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx108_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx108_12
                                                                              jmp   rax
.Lx108_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n54_match_rpos_α:       mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n53_match_defer_β
                                                                              jmp   n55_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n55_match_end_α:        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        test             rax, rax;                            je    .Lx111_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n51_match_begin_af
.Lx111_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    add              rsp, 16;                             jmp   n57_statement_begin_α
#=======================================================================================================================
# YES     OUTPUT = 'matched ' s                                 :(END)
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:                                                        jmp   n58_lit_string_α
n57_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_var_α
.Lx116_0:               .quad            .Lx116_0_s
.Lx116_0_s:             .string          "matched "
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # s
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n60_binop_α
n59_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n57_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n61_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:           mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n62_statement_end_α
.Lx119_0:               .quad            .Lx119_0_s
.Lx119_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_end_α:    add              rsp, 48;                             jmp   main_γ
#=======================================================================================================================
# NO      OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_begin_α:                                                        jmp   n64_lit_string_α
n63_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n65_assign_α
.Lx124_0:               .quad            .Lx124_0_s
.Lx124_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n66_statement_end_α
.Lx125_0:               .quad            .Lx125_0_s
.Lx125_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:    add              rsp, 16;                             jmp   main_γ
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
                        .long            48
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "PAT$1"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__PAT$1
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
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "PAT$2"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__PAT$2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            128
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "PAT$2$V0"
.S1:                    .string          "PAT$2$V1"
.S2:                    .string          "layer"
                        .text
                        .section         .note.GNU-stack,"",@progbits
