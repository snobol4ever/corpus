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
                        lea              rax, [rip + n6_match_lit_β]
                        mov              qword ptr [rbp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n4_match_lit_α:
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
                                                                                        jle   .Lx11_239
                        add              rsp, 96
                                                                                        jmp   proc_PAT$1_scanfail
.Lx11_239:
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        je    .Lx11_240
                        add              rsp, 96
                                                                                        jmp   proc_PAT$1_scanfail
.Lx11_240:
                        add              r14d, 1
                                                                                        jmp   n5_match_fence1_α
n4_match_lit_β:
                        sub              r14d, 1
                        add              rsp, 96
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n5_match_fence1_α:
                        mov              qword ptr [rbp + 32], rsp
                                                                                        jmp   n7_match_alternate_α
n5_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 32], rbp
                                                                                        jmp   n6_match_lit_α
n5_match_fence1_β:
n5_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 32]
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx15_239
                        add              rsp, 96
                                                                                        jmp   proc_PAT$1_scanfail
.Lx15_239:
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        je    .Lx15_240
                        add              rsp, 96
                                                                                        jmp   proc_PAT$1_scanfail
.Lx15_240:
                        add              r14d, 1
                        add              rsp, 96
                                                                                        jmp   proc_PAT$1_scanhit
n6_match_lit_β:
                        sub              r14d, 1
                        add              rsp, 96
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n7_match_alternate_α:
                        mov              dword ptr [rbp + 48], r14d
                        lea              rax, [rip + .Lx17_21]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n9_match_defer_α
.Lx17_21:
                        lea              rax, [rip + .Lx17_19]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   n8_match_patref_α
n7_match_alternate_s0:
                        lea              rax, [rip + .Lx17_40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n7_match_alternate_as
n7_match_alternate_s1:
                        lea              rax, [rip + .Lx17_41]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n7_match_alternate_as
.Lx17_40:
                                                                                        jmp   n9_match_defer_β
.Lx17_41:
                                                                                        jmp   n8_match_patref_β
n7_match_alternate_as:
                                                                                        jmp   n5_match_fence1_as
n7_match_alternate_β:
                        mov              rax, qword ptr [rbp + 56]
                                                                                        jmp   rax
n7_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rax, qword ptr [rbp + 64]
                                                                                        jmp   rax
.Lx17_19:
                                                                                        jmp   n5_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n8_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx18_11
                        mov              rax, qword ptr [1879052288]                    # eps
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx18_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx18_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx18_10
.Lx18_9:
                        xor              eax, eax
.Lx18_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx18_11:
                        test             rax, rax
                                                                                        jz    .Lx18_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx18_4]
                        lea              rdx, [rip + .Lx18_5]
                                                                                        jmp   rax
.Lx18_4:
                                                                                        jmp   n7_match_alternate_s1
.Lx18_5:
                                                                                        jmp   n7_match_alternate_af
.Lx18_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx18_2:
                        test             rax, rax
                                                                                        je    .Lx18_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx18_7]
                        lea              rdx, [rip + .Lx18_8]
                                                                                        jmp   rax
.Lx18_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx18_2
.Lx18_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx18_2
.Lx18_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n7_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx18_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n7_match_alternate_s1
.Lx18_6:
                        add              rsp, 16
                                                                                        jmp   n7_match_alternate_af
n8_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n9_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx19_11
                        mov              rax, qword ptr [1879052304]                    # B
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx19_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx19_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx19_10
.Lx19_9:
                        xor              eax, eax
.Lx19_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx19_11:
                        test             rax, rax
                                                                                        jz    .Lx19_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx19_4]
                        lea              rdx, [rip + .Lx19_5]
                                                                                        jmp   rax
.Lx19_4:
                                                                                        jmp   n7_match_alternate_s0
.Lx19_5:
                                                                                        jmp   n7_match_alternate_af
.Lx19_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx19_2:
                        test             rax, rax
                                                                                        je    .Lx19_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx19_7]
                        lea              rdx, [rip + .Lx19_8]
                                                                                        jmp   rax
.Lx19_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx19_2
.Lx19_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx19_2
.Lx19_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n7_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx19_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n7_match_alternate_s0
.Lx19_6:
                        add              rsp, 16
                                                                                        jmp   n7_match_alternate_af
n9_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   .Lx20_0
                        mov              ecx, dword ptr [rbp + 136]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx20_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   .Lx21_0
                        mov              eax, dword ptr [rbp + 136]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx21_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx21_0
                        mov              dword ptr [rbp + 136], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
.Lx21_0:
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
.Lgvan1:                .string          "B"
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
                        mov              r12, qword ptr [0x70000000]
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
n22_statement_begin_α:
                                                                                        jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n24_call_α
.Lx61_0:
                        .quad            .Lx61_0_s
.Lx61_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n24_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd63:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd63]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx62_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n27_statement_begin_α
.Lx62_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n25_assign_α
n24_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n27_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # eps
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n26_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n27_statement_begin_α
#=======================================================================================================================
#         B    = '(' FENCE(*B | eps) ')'
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_begin_α:
                                                                                        jmp   n28_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n29_call_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n29_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd71:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd71]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx70_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n32_statement_begin_α
.Lx70_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n30_assign_α
n29_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # B
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n31_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n32_statement_begin_α
#=======================================================================================================================
#         s    = '((()))'
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:
                                                                                        jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n34_assign_α
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "((()))"
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # s
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n35_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n36_statement_begin_α
#=======================================================================================================================
#         s POS(0) *B RPOS(0)                                   :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:
                                                                                        jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:
                        sub              rsp, 336
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # s
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n38_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n38_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 216], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 224], r13                     # outer_Σ
                        mov              qword ptr [rbp + 232], r14                     # outer_δ
                        mov              qword ptr [rbp + 240], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 248], rax                     # cap_gen
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
                        mov              qword ptr [rbp + 192], rsp                     # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 184], rax                     # patstk_mark
                        mov              dword ptr [rbp + 176], 0                       # start_δ
.Lx85_0:
                        mov              r14d, dword ptr [rbp + 176]
                                                                                        jmp   n39_match_sequence_α
n38_match_begin_β:
                        add              dword ptr [rbp + 176], 1
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, r15d
                                                                                        jg    .Lx85_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx85_1
                                                                                        jmp   .Lx85_0
.Lx85_1:
                        mov              rax, qword ptr [rbp + 184]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 192]
                        mov              r10, qword ptr [1879048192]
.Lx85_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx85_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 224]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 232]                     # outer_δ
                        mov              r15, qword ptr [rbp + 240]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 248]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 216]                     # old_rbp
                        add              rsp, 336
                                                                                        jmp   n53_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n39_match_sequence_α:
                        mov              dword ptr [rbp + 256], r14d
                                                                                        jmp   n51_lit_integer_α
n39_match_sequence_as:
                                                                                        jmp   n40_match_end_α
n39_match_sequence_β:
                                                                                        jmp   n49_match_rpos_β
n39_match_sequence_af:
                                                                                        jmp   n38_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n40_match_end_α:
                        mov              rax, qword ptr [rbp + 184]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 192]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx89_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx89_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx89_1:
                        test             rax, rax
                                                                                        je    .Lx89_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx89_3]
                        lea              rdx, [rip + .Lx89_4]
                                                                                        jmp   rax
.Lx89_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx89_1
.Lx89_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx89_1
.Lx89_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx89_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx89_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 224]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 232]                     # outer_δ
                        mov              r15, qword ptr [rbp + 240]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 248]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n41_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_end_α:
                        mov              rbp, qword ptr [rbp + 216]                     # old_rbp
                        add              rsp, 336
                                                                                        jmp   n42_statement_begin_α
#=======================================================================================================================
# YES     OUTPUT = 'balanced ' s                                :(END)
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:
                                                                                        jmp   n43_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n44_var_α
.Lx94_0:
                        .quad            .Lx94_0_s
.Lx94_0_s:
                        .string          "balanced "
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # s
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n45_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n45_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n46_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx97_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n47_statement_end_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:
                        mov              qword ptr [rsp + 304], 3                       # result
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n49_match_rpos_α
n48_lit_integer_β:
                                                                                        jmp   n50_match_defer_β
.Lx100_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n49_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n50_match_defer_β
                                                                                        jmp   n40_match_end_α
n49_match_rpos_β:
                                                                                        jmp   n50_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n50_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx102_11
                        mov              rax, qword ptr [1879052304]                    # B
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx102_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx102_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx102_10
.Lx102_9:
                        xor              eax, eax
.Lx102_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx102_11:
                        test             rax, rax
                                                                                        jz    .Lx102_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx102_4]
                        lea              rdx, [rip + .Lx102_5]
                                                                                        jmp   rax
.Lx102_4:
                                                                                        jmp   n48_lit_integer_α
.Lx102_5:
                                                                                        jmp   n38_match_begin_β
.Lx102_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx102_2:
                        test             rax, rax
                                                                                        je    .Lx102_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx102_7]
                        lea              rdx, [rip + .Lx102_8]
                                                                                        jmp   rax
.Lx102_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx102_2
.Lx102_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx102_2
.Lx102_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n38_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx102_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n48_lit_integer_α
.Lx102_6:
                        add              rsp, 16
                                                                                        jmp   n38_match_begin_β
n50_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:
                        mov              qword ptr [rsp + 272], 3                       # result
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n52_match_pos_α
n51_lit_integer_β:
                                                                                        jmp   n38_match_begin_β
.Lx103_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n52_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n38_match_begin_β
                                                                                        jmp   n50_match_defer_α
n52_match_pos_β:
                                                                                        jmp   n38_match_begin_β
#=======================================================================================================================
# NO      OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:
                                                                                        jmp   n54_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n55_assign_α
.Lx107_0:
                        .quad            .Lx107_0_s
.Lx107_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx108_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n56_statement_end_α
.Lx108_0:
                        .quad            .Lx108_0_s
.Lx108_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n57_goto_α:
                                                                                        jmp   n42_statement_begin_α
n57_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n58_goto_α:
                                                                                        jmp   n53_statement_begin_α
n58_goto_β:
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
.S1:                    .string          "B"
                        .text
                        .section         .note.GNU-stack,"",@progbits
