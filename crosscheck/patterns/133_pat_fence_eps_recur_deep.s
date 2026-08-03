                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        sub              rsp, 96
                        mov              qword ptr [rsp + 72], rcx
                        mov              qword ptr [rsp + 80], rdx
                        mov              qword ptr [rsp + 88], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 64], r8
                        mov              dword ptr [rsp + 56], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n0_match_len_β]
                        mov              qword ptr [rbp + 32], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_len_α:
                        mov              eax, r14d
                        add              eax, 0
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$0_scanfail
                        add              r14d, 0
                                                                                        jmp   proc_PAT$0_scanhit
n0_match_len_β:
                        sub              r14d, 0
                                                                                        jmp   proc_PAT$0_scanfail
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   .Lx2_0
                        mov              ecx, dword ptr [rbp + 56]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx2_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 64], 1
                                                                                        jne   .Lx3_0
                        mov              eax, dword ptr [rbp + 56]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx3_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx3_0
                        mov              dword ptr [rbp + 56], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
.Lx3_0:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 32]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, qword ptr [rbp + 80]
                        lea              rsp, [rbp + 96]
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        sub              rsp, 176
                        mov              qword ptr [rsp + 152], rcx
                        mov              qword ptr [rsp + 160], rdx
                        mov              qword ptr [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 144], r8
                        mov              dword ptr [rsp + 136], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + proc_PAT$1_ω]
                        mov              qword ptr [rbp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n4_match_len_α:
                        sub              rsp, 96
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx9_240
                        add              rsp, 96
                                                                                        jmp   proc_PAT$1_scanfail
.Lx9_240:
                        add              r14d, 1
                                                                                        jmp   n5_match_fence1_α
n4_match_len_β:
                        sub              r14d, 1
                        add              rsp, 96
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n5_match_fence1_α:
                        mov              qword ptr [rbp + 16], rsp
                                                                                        jmp   n6_match_alternate_α
n5_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 16], rbp
                                                                                        jmp   proc_PAT$1_γ
n5_match_fence1_β:
n5_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 16]
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_match_alternate_α:
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx13_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n8_match_defer_α
.Lx13_21:
                        lea              rax, [rip + .Lx13_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n7_match_patref_α
n6_match_alternate_s0:
                        lea              rax, [rip + .Lx13_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n6_match_alternate_as
n6_match_alternate_s1:
                        lea              rax, [rip + .Lx13_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n6_match_alternate_as
.Lx13_40:
                                                                                        jmp   n8_match_defer_β
.Lx13_41:
                                                                                        jmp   n7_match_patref_β
n6_match_alternate_as:
                                                                                        jmp   n5_match_fence1_as
n6_match_alternate_β:
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n6_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx13_19:
                                                                                        jmp   n5_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n7_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx14_11
                        mov              rax, qword ptr [1879052288]                    # eps
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx14_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx14_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx14_10
.Lx14_9:
                        xor              eax, eax
.Lx14_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx14_11:
                        test             rax, rax
                                                                                        jz    .Lx14_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx14_4]
                        lea              rdx, [rip + .Lx14_5]
                                                                                        jmp   rax
.Lx14_4:
                                                                                        jmp   n6_match_alternate_s1
.Lx14_5:
                                                                                        jmp   n6_match_alternate_af
.Lx14_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx14_2:
                        test             rax, rax
                                                                                        je    .Lx14_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx14_7]
                        lea              rdx, [rip + .Lx14_8]
                                                                                        jmp   rax
.Lx14_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx14_2
.Lx14_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx14_2
.Lx14_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n6_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx14_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n6_match_alternate_s1
.Lx14_6:
                        add              rsp, 16
                                                                                        jmp   n6_match_alternate_af
n7_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n8_match_defer_α:
                        mov              qword ptr [rbp + 64], rsp
                        mov              rax, qword ptr [1879052304]                    # P
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx15_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx15_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx15_10
.Lx15_9:
                        xor              eax, eax
.Lx15_10:
                        test             rax, rax
                                                                                        jz    .Lx15_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx15_4]
                        lea              rdx, [rip + .Lx15_5]
                                                                                        jmp   rax
.Lx15_4:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n6_match_alternate_s0
.Lx15_5:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n6_match_alternate_af
.Lx15_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx15_2:
                        test             rax, rax
                                                                                        je    .Lx15_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx15_7]
                        lea              rdx, [rip + .Lx15_8]
                                                                                        jmp   rax
.Lx15_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx15_2
.Lx15_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx15_2
.Lx15_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n6_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx15_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n6_match_alternate_s0
.Lx15_6:
                        add              rsp, 16
                                                                                        jmp   n6_match_alternate_af
n8_match_defer_β:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n6_match_alternate_af
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   .Lx16_0
                        mov              ecx, dword ptr [rbp + 136]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx16_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   .Lx17_0
                        mov              eax, dword ptr [rbp + 136]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx17_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx17_0
                        mov              dword ptr [rbp + 136], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
.Lx17_0:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rbp + 112]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              rbp, qword ptr [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, qword ptr [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, qword ptr [rbp + 168]
                                                                                        jmp   rax
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
                        mov              esi, 48
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "PAT$1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_PAT$1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 128
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "eps"
.Lgvan1:                .string          "P"
.Lgvan2:                .string          "s"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 3
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 3
                        call             gva_register@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         eps  = LEN(0)
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n19_call_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n19_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd51:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd51]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx50_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n22_lit_string_α
.Lx50_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n20_assign_α
n19_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # eps
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n21_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_α:
                        add              rsp, 32
                                                                                        jmp   n22_lit_string_α
#=======================================================================================================================
#         P    = LEN(1) FENCE(*P | eps)
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n23_call_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n23_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd57:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd57]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx56_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n26_lit_string_α
.Lx56_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n24_assign_α
n23_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # P
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n25_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_α:
                        add              rsp, 32
                                                                                        jmp   n26_lit_string_α
#=======================================================================================================================
#         s    = DUPL('a', 30)
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n27_lit_integer_α
.Lx61_0:
                        .quad            .Lx61_0_s
.Lx61_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n28_call_α
.Lx62_0:
                        .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n28_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd64:             .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd64]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx63_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n31_var_α
.Lx63_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n29_assign_α
n28_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # s
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n30_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_α:
                        add              rsp, 48
                                                                                        jmp   n31_var_α
#=======================================================================================================================
#         s POS(0) *P RPOS(0)                                   :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:
                        sub              rsp, 416
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # s
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n32_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n32_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 296], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 304], r13                     # outer_Σ
                        mov              qword ptr [rbp + 312], r14                     # outer_δ
                        mov              qword ptr [rbp + 320], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 328], rax                     # cap_gen
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]                    # cas_top
                        mov              qword ptr [r10 + 0], 0
                        mov              qword ptr [r10 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r10 + 16], rax                      # cas_patstk
                        add              r10, 24
                        mov              qword ptr [1879048192], r10                    # cas_top
                        mov              qword ptr [rbp + 272], rsp                     # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 264], rax                     # patstk_mark
                        mov              dword ptr [rbp + 256], 0                       # start_δ
.Lx70_0:
                        mov              r14d, dword ptr [rbp + 256]
                                                                                        jmp   n33_match_sequence_α
n32_match_begin_β:
                        add              dword ptr [rbp + 256], 1
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, r15d
                                                                                        jg    .Lx70_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx70_1
                                                                                        jmp   .Lx70_0
.Lx70_1:
                        mov              rax, qword ptr [rbp + 264]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 272]
                        mov              r10, qword ptr [1879048192]
.Lx70_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx70_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 304]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 312]                     # outer_δ
                        mov              r15, qword ptr [rbp + 320]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 328]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 296]                     # old_rbp
                        add              rsp, 416
                                                                                        jmp   n44_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_match_sequence_α:
                        mov              dword ptr [rbp + 336], r14d
                                                                                        jmp   n42_lit_integer_α
n33_match_sequence_as:
                                                                                        jmp   n34_match_end_α
n33_match_sequence_β:
                                                                                        jmp   n40_match_rpos_β
n33_match_sequence_af:
                                                                                        jmp   n32_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n34_match_end_α:
                        mov              rax, qword ptr [rbp + 264]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 272]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx74_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx74_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx74_1:
                        test             rax, rax
                                                                                        je    .Lx74_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx74_3]
                        lea              rdx, [rip + .Lx74_4]
                                                                                        jmp   rax
.Lx74_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx74_1
.Lx74_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx74_1
.Lx74_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx74_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx74_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 304]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 312]                     # outer_δ
                        mov              r15, qword ptr [rbp + 320]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 328]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n35_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_α:
                        mov              rbp, qword ptr [rbp + 296]                     # old_rbp
                        add              rsp, 416
                                                                                        jmp   n36_lit_string_α
#=======================================================================================================================
# YES     OUTPUT = 'matched depth 30'                           :(END)
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 16
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n37_assign_α
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "matched depth 30"
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx78_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n38_statement_α
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:
                        mov              qword ptr [rsp + 384], 3                       # result
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 392], rax
                                                                                        jmp   n40_match_rpos_α
n39_lit_integer_β:
                                                                                        jmp   n41_match_defer_β
.Lx81_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n40_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n41_match_defer_β
                                                                                        jmp   n34_match_end_α
n40_match_rpos_β:
                                                                                        jmp   n41_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n41_match_defer_α:
                        mov              qword ptr [rbp + 368], rsp
                        mov              rax, qword ptr [1879052304]                    # P
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx83_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx83_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx83_10
.Lx83_9:
                        xor              eax, eax
.Lx83_10:
                        test             rax, rax
                                                                                        jz    .Lx83_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx83_4]
                        lea              rdx, [rip + .Lx83_5]
                                                                                        jmp   rax
.Lx83_4:
                        mov              rsp, qword ptr [rbp + 368]
                                                                                        jmp   n39_lit_integer_α
.Lx83_5:
                        mov              rsp, qword ptr [rbp + 368]
                                                                                        jmp   n32_match_begin_β
.Lx83_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx83_2:
                        test             rax, rax
                                                                                        je    .Lx83_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx83_7]
                        lea              rdx, [rip + .Lx83_8]
                                                                                        jmp   rax
.Lx83_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx83_2
.Lx83_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx83_2
.Lx83_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n32_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx83_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n39_lit_integer_α
.Lx83_6:
                        add              rsp, 16
                                                                                        jmp   n32_match_begin_β
n41_match_defer_β:
                        mov              rsp, qword ptr [rbp + 368]
                                                                                        jmp   n32_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:
                        mov              qword ptr [rsp + 352], 3                       # result
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n43_match_pos_α
n42_lit_integer_β:
                                                                                        jmp   n32_match_begin_β
.Lx84_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n43_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n32_match_begin_β
                                                                                        jmp   n41_match_defer_α
n43_match_pos_β:
                                                                                        jmp   n32_match_begin_β
#=======================================================================================================================
# NO      OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n45_assign_α
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx87_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n46_statement_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n47_goto_α:
                                                                                        jmp   n36_lit_string_α
n47_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n48_goto_α:
                                                                                        jmp   n44_lit_string_α
n48_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .rodata
.S0:                    .string          "eps"
.S1:                    .string          "P"
                        .text
                        .section         .note.GNU-stack,"",@progbits
