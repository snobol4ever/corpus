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
n0_match_alternate_α:   mov              r11, 1
                        mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .Lx7_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n5_match_lit_α
.Lx7_21:                lea              rax, [rip + .Lx7_22]
                        mov              qword ptr [rbp + -56], rax;          jmp   n4_match_lit_α
.Lx7_22:                lea              rax, [rip + .Lx7_23]
                        mov              qword ptr [rbp + -56], rax;          jmp   n3_match_lit_α
.Lx7_23:                lea              rax, [rip + .Lx7_24]
                        mov              qword ptr [rbp + -56], rax;          jmp   n2_match_lit_α
.Lx7_24:                lea              rax, [rip + .Lx7_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n1_match_lit_α
n0_match_alternate_s0:  mov              r11, 1
                        lea              rax, [rip + .Lx7_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   n0_match_alternate_as
n0_match_alternate_s1:  mov              r11, 1
                        lea              rax, [rip + .Lx7_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   n0_match_alternate_as
n0_match_alternate_s2:  mov              r11, 1
                        lea              rax, [rip + .Lx7_42]
                        mov              qword ptr [rbp + -64], rax;          jmp   n0_match_alternate_as
n0_match_alternate_s3:  mov              r11, 1
                        lea              rax, [rip + .Lx7_43]
                        mov              qword ptr [rbp + -64], rax;          jmp   n0_match_alternate_as
n0_match_alternate_s4:  mov              r11, 1
                        lea              rax, [rip + .Lx7_44]
                        mov              qword ptr [rbp + -64], rax;          jmp   n0_match_alternate_as
.Lx7_40:                                                                      jmp   n5_match_lit_β
.Lx7_41:                                                                      jmp   n4_match_lit_β
.Lx7_42:                                                                      jmp   n3_match_lit_β
.Lx7_43:                                                                      jmp   n2_match_lit_β
.Lx7_44:                                                                      jmp   n1_match_lit_β
n0_match_alternate_as:  mov              r11, 1;                              jmp   PAT$0_γ
n0_match_alternate_β:   mov              r11, 1
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
n0_match_alternate_af:  mov              r11, 1
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lx7_19:                                                                      jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_lit_α:         mov              r11, 2
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 61;                             jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 61;                             jne   n0_match_alternate_af
                        add              r14d, 2;                             jmp   n0_match_alternate_s4
n1_match_lit_β:         mov              r11, 2
                        sub              r14d, 2;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n2_match_lit_α:         mov              r11, 3
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 62;                             jne   n0_match_alternate_af
                        add              r14d, 1;                             jmp   n0_match_alternate_s3
n2_match_lit_β:         mov              r11, 3
                        sub              r14d, 1;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n3_match_lit_α:         mov              r11, 4
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 62;                             jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 61;                             jne   n0_match_alternate_af
                        add              r14d, 2;                             jmp   n0_match_alternate_s2
n3_match_lit_β:         mov              r11, 4
                        sub              r14d, 2;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n4_match_lit_α:         mov              r11, 5
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 60;                             jne   n0_match_alternate_af
                        add              r14d, 1;                             jmp   n0_match_alternate_s1
n4_match_lit_β:         mov              r11, 5
                        sub              r14d, 1;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n5_match_lit_α:         mov              r11, 6
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 60;                             jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 61;                             jne   n0_match_alternate_af
                        add              r14d, 2;                             jmp   n0_match_alternate_s0
n5_match_lit_β:         mov              r11, 6
                        sub              r14d, 2;                             jmp   n0_match_alternate_af
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
.Lgvan0:                .string          "cmpop"
.Lgvan1:                .string          "s"
.Lgvan2:                .string          "X"
.Lgvan3:                .string          "OP"
.Lgvan4:                .string          "Y"
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
                        sub              rsp, 0
#=======================================================================================================================
#         cmpop = FENCE('<=' | '<' | '>=' | '>' | '==')
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:  mov              r11, 7
                        mov              r10, 1;                              jmp   n19_lit_string_α
n18_statement_begin_β:  mov              r11, 7;                              jmp   n23_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       sub              rsp, 16
                        mov              r11, 8
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_call_α
.Lx65_0:                .quad            .Lx65_0_s
.Lx65_0_s:              .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:             sub              rsp, 16
                        mov              r11, 9
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd67:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd67]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx66_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n18_statement_begin_β
.Lx66_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n21_assign_α
n20_call_β:             mov              r11, 9
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n18_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              r11, 10
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # cmpop
                        mov              qword ptr [r9 + 8], rdx;             jmp   n22_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:    mov              r11, 11
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n23_statement_begin_α
#=======================================================================================================================
#         s = 'a <= b'
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:  mov              r11, 12
                        mov              r10, 2;                              jmp   n24_lit_string_α
n23_statement_begin_β:  mov              r11, 12;                             jmp   n27_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       sub              rsp, 16
                        mov              r11, 13
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_assign_α
.Lx73_0:                .quad            .Lx73_0_s
.Lx73_0_s:              .string          "a <= b"
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              r11, 14
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # s
                        mov              qword ptr [r9 + 24], rdx;            jmp   n26_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_end_α:    mov              r11, 15
                        mov              r10, 2
                        add              rsp, 16;                             jmp   n27_statement_begin_α
#=======================================================================================================================
#         s POS(0) LEN(1) . X ' ' cmpop . OP ' ' LEN(1) . Y RPOS(0)  :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_begin_α:  mov              r11, 16
                        mov              r10, 3;                              jmp   n28_var_α
n27_statement_begin_β:  mov              r11, 16;                             jmp   n59_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              sub              rsp, 16
                        mov              r11, 17
                        mov              rax, qword ptr [r9 + 16]             # s
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              sub              rsp, 16
                        mov              r11, 18
                        mov              rax, qword ptr [r9 + 0]              # cmpop
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n30_assign_α
n29_var_β:              mov              r11, 18
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n59_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              r11, 19
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n31_match_begin_α
n30_assign_β:           mov              r11, 19;                             jmp   n29_var_β
.Lx81_0:                .quad            .Lx81_0_s
.Lx81_0_s:              .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n31_match_begin_α:      mov              r11, 20
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
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
.Lx83_0:                mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx83_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n32_match_pos_α
n31_match_begin_β:      mov              r11, 20
.Lx83_13:               lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx83_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx83_1
                                                                              jmp   .Lx83_0
.Lx83_1:
n31_match_begin_af:     mov              r11, 20
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
                        pop              rbp;                                 jmp   n30_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n32_match_pos_α:        mov              r11, 21
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n31_match_begin_β
                                                                              jmp   n33_match_assign_save_α
n32_match_pos_β:        mov              r11, 21;                             jmp   n31_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n33_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 22
                        mov              dword ptr [rsp + 0], r14d;           jmp   n34_match_len_α
n33_match_assign_save_β:
                        mov              r11, 22
                        add              rsp, 16;                             jmp   n31_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n34_match_len_α:        mov              r11, 23
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jle   .Lx87_240
                        add              rsp, 16;                             jmp   n31_match_begin_β
.Lx87_240:              add              r14d, 1;                             jmp   n35_match_assign_cond_α
n34_match_len_β:        mov              r11, 23
                        sub              r14d, 1
                        add              rsp, 16;                             jmp   n31_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n35_match_assign_cond_α:
                        mov              r11, 24
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n36_match_lit_α
n35_match_assign_cond_β:
                        mov              r11, 24
                        sub              r12, 24;                             jmp   n34_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n36_match_lit_α:        mov              r11, 25
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n35_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 32;                             jne   n35_match_assign_cond_β
                        add              r14d, 1;                             jmp   n37_match_assign_save_α
n36_match_lit_β:        mov              r11, 25
                        sub              r14d, 1;                             jmp   n35_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n37_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 26
                        mov              dword ptr [rbp + -64], r14d;         jmp   n38_match_defer_α
n37_match_assign_save_β:
                        mov              r11, 26
                        add              rsp, 16;                             jmp   n36_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n38_match_defer_α:      mov              r11, 27
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_probe_run@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             rax, rax;                            jz    .Lx94_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx94_5]
                        push             rcx
                        lea              rcx, [rip + .Lx94_4]
                        push             rcx;                                 jmp   rax
.Lx94_4:                                                                      jmp   n39_match_assign_cond_α
.Lx94_5:                                                                      jmp   n37_match_assign_save_β
.Lx94_0:                mov              eax, edx
                        test             eax, eax;                            js    n37_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx94_6]
                        push             rcx
                        push             rax;                                 jmp   n39_match_assign_cond_α
.Lx94_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n37_match_assign_save_β
n38_match_defer_β:      mov              r11, 27
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx94_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx94_12
                                                                              jmp   rax
.Lx94_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n39_match_assign_cond_α:
                        mov              r11, 28
                        mov              eax, dword ptr [rbp + -64]
                        lea              rcx, [rip + .S2]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n40_match_lit_α
n39_match_assign_cond_β:
                        mov              r11, 28
                        sub              r12, 24;                             jmp   n38_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n40_match_lit_α:        mov              r11, 29
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n39_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 32;                             jne   n39_match_assign_cond_β
                        add              r14d, 1;                             jmp   n41_match_assign_save_α
n40_match_lit_β:        mov              r11, 29
                        sub              r14d, 1;                             jmp   n39_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n41_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 30
                        mov              dword ptr [rsp + 0], r14d;           jmp   n42_match_len_α
n41_match_assign_save_β:
                        mov              r11, 30
                        add              rsp, 16;                             jmp   n40_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n42_match_len_α:        mov              r11, 31
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jle   .Lx101_240
                        add              rsp, 16;                             jmp   n40_match_lit_β
.Lx101_240:             add              r14d, 1;                             jmp   n43_match_assign_cond_α
n42_match_len_β:        mov              r11, 31
                        sub              r14d, 1
                        add              rsp, 16;                             jmp   n40_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n43_match_assign_cond_α:
                        mov              r11, 32
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S3]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n44_match_rpos_α
n43_match_assign_cond_β:
                        mov              r11, 32
                        sub              r12, 24;                             jmp   n42_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n44_match_rpos_α:       mov              r11, 33
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n43_match_assign_cond_β
                                                                              jmp   n45_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n45_match_end_α:        mov              r11, 34
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
                        test             rax, rax;                            je    .Lx106_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n31_match_begin_af
.Lx106_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n46_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    mov              r11, 35
                        mov              r10, 3
                        add              rsp, 32;                             jmp   n47_statement_begin_α
#=======================================================================================================================
# YES     OUTPUT = X ' ' OP ' ' Y                               :(END)
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_begin_α:  mov              r11, 36
                        mov              r10, 4;                              jmp   n48_var_α
n47_statement_begin_β:  mov              r11, 36;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:              sub              rsp, 16
                        mov              r11, 37
                        mov              rax, qword ptr [r9 + 32]             # X
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n49_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       sub              rsp, 16
                        mov              r11, 38
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_binop_α
n49_lit_string_β:       mov              r11, 38
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n47_statement_begin_β
.Lx112_0:               .quad            .Lx112_0_s
.Lx112_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n50_binop_α:            sub              rsp, 16
                        mov              r11, 39
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n51_var_α
n50_binop_β:            mov              r11, 39
                        add              rsp, 16;                             jmp   n49_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              sub              rsp, 16
                        mov              r11, 40
                        mov              rax, qword ptr [r9 + 48]             # OP
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n52_binop_α
n51_var_β:              mov              r11, 40
                        add              rsp, 16;                             jmp   n50_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n52_binop_α:            sub              rsp, 16
                        mov              r11, 41
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n53_lit_string_α
n52_binop_β:            mov              r11, 41
                        add              rsp, 16;                             jmp   n51_var_β
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       sub              rsp, 16
                        mov              r11, 42
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_binop_α
n53_lit_string_β:       mov              r11, 42
                        add              rsp, 16;                             jmp   n52_binop_β
.Lx116_0:               .quad            .Lx116_0_s
.Lx116_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n54_binop_α:            sub              rsp, 16
                        mov              r11, 43
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n55_var_α
n54_binop_β:            mov              r11, 43
                        add              rsp, 16;                             jmp   n53_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              sub              rsp, 16
                        mov              r11, 44
                        mov              rax, qword ptr [r9 + 64]             # Y
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n56_binop_α
n55_var_β:              mov              r11, 44
                        add              rsp, 16;                             jmp   n54_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:            sub              rsp, 16
                        mov              r11, 45
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n57_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:           mov              r11, 46
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n58_statement_end_α
.Lx120_0:               .quad            .Lx120_0_s
.Lx120_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:    mov              r11, 47
                        mov              r10, 4
                        add              rsp, 144;                            jmp   main_γ
#=======================================================================================================================
# NO      OUTPUT = 'parse fail'
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_begin_α:  mov              r11, 48
                        mov              r10, 5;                              jmp   n60_lit_string_α
n59_statement_begin_β:  mov              r11, 48;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       sub              rsp, 16
                        mov              r11, 49
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_assign_α
.Lx125_0:               .quad            .Lx125_0_s
.Lx125_0_s:             .string          "parse fail"
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:           mov              r11, 50
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n62_statement_end_α
.Lx126_0:               .quad            .Lx126_0_s
.Lx126_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_end_α:    mov              r11, 51
                        mov              r10, 5
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
.S0:                    .string          "X"
.S1:                    .string          "PATV$0"
.S2:                    .string          "OP"
.S3:                    .string          "Y"
                        .text
                        .section         .note.GNU-stack,"",@progbits
