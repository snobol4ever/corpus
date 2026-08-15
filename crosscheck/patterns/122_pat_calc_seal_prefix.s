                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
proc_PAT$0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_alternate_α:   sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx7_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n5_match_lit_α
.Lx7_21:                lea              rax, [rip + .Lx7_22]
                        mov              qword ptr [rsp + 16], rax;           jmp   n4_match_lit_α
.Lx7_22:                lea              rax, [rip + .Lx7_23]
                        mov              qword ptr [rsp + 16], rax;           jmp   n3_match_lit_α
.Lx7_23:                lea              rax, [rip + .Lx7_24]
                        mov              qword ptr [rsp + 16], rax;           jmp   n2_match_lit_α
.Lx7_24:                lea              rax, [rip + .Lx7_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n1_match_lit_α
n0_match_alternate_s0:  lea              rax, [rip + .Lx7_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n0_match_alternate_as
n0_match_alternate_s1:  lea              rax, [rip + .Lx7_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n0_match_alternate_as
n0_match_alternate_s2:  lea              rax, [rip + .Lx7_42]
                        mov              qword ptr [rsp + 8], rax;            jmp   n0_match_alternate_as
n0_match_alternate_s3:  lea              rax, [rip + .Lx7_43]
                        mov              qword ptr [rsp + 8], rax;            jmp   n0_match_alternate_as
n0_match_alternate_s4:  lea              rax, [rip + .Lx7_44]
                        mov              qword ptr [rsp + 8], rax;            jmp   n0_match_alternate_as
.Lx7_40:                                                                      jmp   n5_match_lit_β
.Lx7_41:                                                                      jmp   n4_match_lit_β
.Lx7_42:                                                                      jmp   n3_match_lit_β
.Lx7_43:                                                                      jmp   n2_match_lit_β
.Lx7_44:                                                                      jmp   n1_match_lit_β
n0_match_alternate_as:                                                        jmp   proc_PAT$0_γ
n0_match_alternate_β:   mov              rax, qword ptr [rsp + 8];            jmp   rax
n0_match_alternate_af:  mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx7_19:                add              rsp, 32;                             jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_lit_α:         mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 61;                             jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 61;                             jne   n0_match_alternate_af
                        add              r14d, 2;                             jmp   n0_match_alternate_s4
n1_match_lit_β:         sub              r14d, 2;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n2_match_lit_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 62;                             jne   n0_match_alternate_af
                        add              r14d, 1;                             jmp   n0_match_alternate_s3
n2_match_lit_β:         sub              r14d, 1;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n3_match_lit_α:         mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 62;                             jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 61;                             jne   n0_match_alternate_af
                        add              r14d, 2;                             jmp   n0_match_alternate_s2
n3_match_lit_β:         sub              r14d, 2;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n4_match_lit_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 60;                             jne   n0_match_alternate_af
                        add              r14d, 1;                             jmp   n0_match_alternate_s1
n4_match_lit_β:         sub              r14d, 1;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n5_match_lit_α:         mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 60;                             jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 61;                             jne   n0_match_alternate_af
                        add              r14d, 2;                             jmp   n0_match_alternate_s0
n5_match_lit_β:         sub              r14d, 2;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                              jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax;                                 jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                                                                              jmp   r11
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 80
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
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
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
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
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         cmpop = FENCE('<=' | '<' | '>=' | '>' | '==')
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:                                                        jmp   n19_lit_string_α
n18_statement_begin_β:                                                        jmp   n23_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_call_α
.Lx65_0:                .quad            .Lx65_0_s
.Lx65_0_s:              .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:             sub              rsp, 16
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx66_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n18_statement_begin_β
.Lx66_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n21_assign_α
n20_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n18_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # cmpop
                        mov              qword ptr [r9 + 8], rdx;             jmp   n22_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:    add              rsp, 32;                             jmp   n23_statement_begin_α
#=======================================================================================================================
#         s = 'a <= b'
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:                                                        jmp   n24_lit_string_α
n23_statement_begin_β:                                                        jmp   n27_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_assign_α
.Lx73_0:                .quad            .Lx73_0_s
.Lx73_0_s:              .string          "a <= b"
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # s
                        mov              qword ptr [r9 + 24], rdx;            jmp   n26_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_end_α:    add              rsp, 16;                             jmp   n27_statement_begin_α
#=======================================================================================================================
#         s POS(0) LEN(1) . X ' ' cmpop . OP ' ' LEN(1) . Y RPOS(0)  :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_begin_α:                                                        jmp   n28_var_α
n27_statement_begin_β:                                                        jmp   n59_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # s
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # cmpop
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n30_assign_α
n29_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n59_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n31_match_begin_α
n30_assign_β:                                                                 jmp   n29_var_β
.Lx81_0:                .quad            .Lx81_0_s
.Lx81_0_s:              .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n31_match_begin_α:      mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
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
.Lx83_0:                mov              r14d, dword ptr [rbp + -40];         jmp   n32_match_pos_α
n31_match_begin_β:      lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx83_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx83_1
                                                                              jmp   .Lx83_0
.Lx83_1:
n31_match_begin_af:     mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n30_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n32_match_pos_α:        mov              rax, 0
                        cmp              r14d, eax;                           jne   n31_match_begin_β
                                                                              jmp   n33_match_assign_save_α
n32_match_pos_β:                                                              jmp   n31_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n33_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n34_match_len_α
n33_match_assign_save_β:
                        add              rsp, 16;                             jmp   n31_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n34_match_len_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jle   .Lx87_240
                        add              rsp, 16;                             jmp   n31_match_begin_β
.Lx87_240:              add              r14d, 1;                             jmp   n35_match_assign_cond_α
n34_match_len_β:        sub              r14d, 1
                        add              rsp, 16;                             jmp   n31_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n35_match_assign_cond_α:
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
                        sub              r12, 24;                             jmp   n34_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n36_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n35_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 32;                             jne   n35_match_assign_cond_β
                        add              r14d, 1;                             jmp   n37_match_assign_save_α
n36_match_lit_β:        sub              r14d, 1;                             jmp   n35_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n37_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + -64], r14d;         jmp   n38_match_defer_α
n37_match_assign_save_β:
                        add              rsp, 16;                             jmp   n36_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n38_match_defer_α:      lea              rdi, [rip + .S1]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_get_pat_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            jz    .Lx94_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx94_4]
                        lea              r11, [rip + .Lx94_5];                jmp   rax
.Lx94_4:                                                                      jmp   n39_match_assign_cond_α
.Lx94_5:                                                                      jmp   n37_match_assign_save_β
.Lx94_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx94_2:                test             rax, rax;                            je    .Lx94_3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx94_7]
                        lea              rdx, [rip + .Lx94_8];                jmp   rax
.Lx94_7:                mov              qword ptr [rip + rtccb+40], r8
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
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx94_2
.Lx94_8:                mov              qword ptr [rip + rtccb+40], r8
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
                        call             rt_defer_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx94_2
.Lx94_3:                add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_close@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    n37_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx94_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n39_match_assign_cond_α
.Lx94_6:                add              rsp, 16;                             jmp   n37_match_assign_save_β
n38_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n39_match_assign_cond_α:
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
                        sub              r12, 24;                             jmp   n38_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n40_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n39_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 32;                             jne   n39_match_assign_cond_β
                        add              r14d, 1;                             jmp   n41_match_assign_save_α
n40_match_lit_β:        sub              r14d, 1;                             jmp   n39_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n41_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n42_match_len_α
n41_match_assign_save_β:
                        add              rsp, 16;                             jmp   n40_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n42_match_len_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jle   .Lx101_240
                        add              rsp, 16;                             jmp   n40_match_lit_β
.Lx101_240:             add              r14d, 1;                             jmp   n43_match_assign_cond_α
n42_match_len_β:        sub              r14d, 1
                        add              rsp, 16;                             jmp   n40_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n43_match_assign_cond_α:
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
                        sub              r12, 24;                             jmp   n42_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n44_match_rpos_α:       mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n43_match_assign_cond_β
                                                                              jmp   n45_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n45_match_end_α:        push             r14
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
.Lx106_1:               test             rax, rax;                            je    .Lx106_2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx106_3]
                        lea              rdx, [rip + .Lx106_4];               jmp   rax
.Lx106_3:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx106_1
.Lx106_4:               mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx106_1
.Lx106_2:               call             rt_dcap_end_ok_close@PLT
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
                        pop              rbp;                                 jmp   n46_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    add              rsp, 32;                             jmp   n47_statement_begin_α
#=======================================================================================================================
# YES     OUTPUT = X ' ' OP ' ' Y                               :(END)
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_begin_α:                                                        jmp   n48_var_α
n47_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # X
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n49_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_binop_α
n49_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n47_statement_begin_β
.Lx112_0:               .quad            .Lx112_0_s
.Lx112_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n50_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n51_var_α
n50_binop_β:            add              rsp, 16;                             jmp   n49_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # OP
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n52_binop_α
n51_var_β:              add              rsp, 16;                             jmp   n50_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n52_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n53_lit_string_α
n52_binop_β:            add              rsp, 16;                             jmp   n51_var_β
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_binop_α
n53_lit_string_β:       add              rsp, 16;                             jmp   n52_binop_β
.Lx116_0:               .quad            .Lx116_0_s
.Lx116_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n54_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n55_var_α
n54_binop_β:            add              rsp, 16;                             jmp   n53_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # Y
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n56_binop_α
n55_var_β:              add              rsp, 16;                             jmp   n54_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:           mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n58_statement_end_α
.Lx120_0:               .quad            .Lx120_0_s
.Lx120_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:    add              rsp, 144;                            jmp   main_γ
#=======================================================================================================================
# NO      OUTPUT = 'parse fail'
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_begin_α:                                                        jmp   n60_lit_string_α
n59_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_assign_α
.Lx125_0:               .quad            .Lx125_0_s
.Lx125_0_s:             .string          "parse fail"
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n62_statement_end_α
.Lx126_0:               .quad            .Lx126_0_s
.Lx126_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_end_α:    add              rsp, 16;                             jmp   main_γ
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
                        .section         .rodata
.S0:                    .string          "X"
.S1:                    .string          "PATV$0"
.S2:                    .string          "OP"
.S3:                    .string          "Y"
                        .text
                        .section         .note.GNU-stack,"",@progbits
