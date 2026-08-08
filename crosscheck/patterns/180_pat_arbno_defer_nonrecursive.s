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
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$0_scanfail
                        add              r14d, 2
                                                                                        jmp   proc_PAT$0_scanhit
n0_match_len_β:
                        sub              r14d, 2
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
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "P"
.Lgvan1:                .string          "S"
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
                        call             proc_startup
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
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
#         P = LEN(2)
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:
                                                                                        jmp   n5_lit_string_α
n4_statement_begin_β:
                                                                                        jmp   n9_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_call_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n6_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd62:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd62]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx61_240
                                                                                        jmp   n8_statement_end_α
.Lx61_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n7_assign_α
n6_call_β:
                                                                                        jmp   n8_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # P
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n8_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n9_statement_begin_α
#=======================================================================================================================
#         S = 'aabbccddee'
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_begin_α:
                                                                                        jmp   n10_lit_string_α
n9_statement_begin_β:
                                                                                        jmp   n13_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_assign_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "aabbccddee"
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # S
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n12_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n13_statement_begin_α
#=======================================================================================================================
#         S POS(0) ARBNO(*P) RPOS(0)                            :S(OK1)F(BAD1)
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:
                                                                                        jmp   n14_var_α
n13_statement_begin_β:
                                                                                        jmp   n29_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        sub              rsp, 352
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
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # S
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n15_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n15_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 160], r13                     # outer_Σ
                        mov              qword ptr [rbp + 168], r14                     # outer_δ
                        mov              qword ptr [rbp + 176], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 184], rax                     # cap_gen
                        mov              qword ptr [rbp + 152], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 128], rsp                     # zls2_mark
                        mov              dword ptr [rbp + 112], 0                       # start_δ
.Lx76_0:
                        mov              r14d, dword ptr [rbp + 112]
                                                                                        jmp   n16_lit_integer_α
n15_match_begin_β:
                        add              dword ptr [rbp + 112], 1
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, r15d
                                                                                        jg    .Lx76_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx76_1
                                                                                        jmp   .Lx76_0
.Lx76_1:
n15_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 128]
                        mov              r13, qword ptr [rbp + 160]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 168]                     # outer_δ
                        mov              r15, qword ptr [rbp + 176]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 184]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 152]                     # old_rbp
                        add              rsp, 352
                                                                                        jmp   n29_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rsp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n17_match_pos_α
.Lx77_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n17_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n15_match_begin_β
                                                                                        jmp   n18_match_arbno_α
n17_match_pos_β:
                                                                                        jmp   n15_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n18_match_arbno_α:
                        mov              dword ptr [rbp + 224], r14d
                        mov              dword ptr [rbp + 228], r14d
                        mov              dword ptr [rbp + 232], 0
                        mov              qword ptr [rbp + 248], rsp
                        mov              qword ptr [rbp + 256], rbp
                        mov              qword ptr [rbp + 240], 0
                                                                                        jmp   n19_lit_integer_α
n18_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 228]
                        mov              rax, qword ptr [rbp + 240]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 240], rsp
                        mov              rbp, rsp
                        add              rbp, -248
                                                                                        jmp   n28_match_defer_α
n18_match_arbno_as:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              r14d, eax
                                                                                        je    n28_match_defer_β
                        mov              rbp, qword ptr [rbp + 248]
                        mov              eax, dword ptr [rbp + 232]
                        add              eax, 1
                        mov              dword ptr [rbp + 232], eax
                        mov              dword ptr [rbp + 228], r14d
                                                                                        jmp   n19_lit_integer_α
n18_match_arbno_af:
                        mov              rax, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              rsp, [rbp + 328]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 232]
                        test             ecx, ecx
                                                                                        jz    .Lx80_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 232], ecx
                        mov              qword ptr [rbp + 240], rax
                        lea              rbp, [rax + -248]
                                                                                        jmp   n28_match_defer_β
.Lx80_2:
                        mov              r14d, dword ptr [rbp + 224]
                        mov              rbp, qword ptr [rbp + 256]
                        mov              rsp, qword ptr [rbp + 248]
                                                                                        jmp   n17_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rsp + 320], 3                       # result
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n20_match_rpos_α
.Lx81_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n20_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n18_match_arbno_β
                                                                                        jmp   n21_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n21_match_end_α:
                        mov              r10, r12
.Lx84_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx84_9
                        mov              rsp, qword ptr [rbp + 128]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx84_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx84_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx84_1:
                        test             rax, rax
                                                                                        je    .Lx84_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx84_3]
                        lea              rdx, [rip + .Lx84_4]
                                                                                        jmp   rax
.Lx84_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx84_1
.Lx84_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx84_1
.Lx84_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 160]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 168]                     # outer_δ
                        mov              r15, qword ptr [rbp + 176]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 184]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 152]                     # old_rbp
                                                                                        jmp   n22_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:
                        add              rsp, 352
                                                                                        jmp   n23_statement_begin_α
#=======================================================================================================================
# OK1     OUTPUT = 'even ok'                                     :(T2)
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:
                                                                                        jmp   n24_lit_string_α
n23_statement_begin_β:
                                                                                        jmp   n33_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_assign_α
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "even ok"
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx90_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n26_statement_end_α
.Lx90_0:
                        .quad            .Lx90_0_s
.Lx90_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n33_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rsp + 304], 2                       # result
                        mov              dword ptr [rsp + 308], 5
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   main_γ
n27_lit_string_β:
                                                                                        jmp   main_ω
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n28_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx94_11
                        mov              rax, qword ptr [1879052288]                    # P
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx94_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx94_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx94_10
.Lx94_9:
                        xor              eax, eax
.Lx94_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx94_11:
                        test             rax, rax
                                                                                        jz    .Lx94_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx94_4]
                        lea              rdx, [rip + .Lx94_5]
                                                                                        jmp   rax
.Lx94_4:
                                                                                        jmp   n18_match_arbno_as
.Lx94_5:
                                                                                        jmp   n18_match_arbno_af
.Lx94_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx94_2:
                        test             rax, rax
                                                                                        je    .Lx94_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx94_7]
                        lea              rdx, [rip + .Lx94_8]
                                                                                        jmp   rax
.Lx94_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx94_2
.Lx94_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx94_2
.Lx94_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n18_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx94_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n18_match_arbno_as
.Lx94_6:
                        add              rsp, 16
                                                                                        jmp   n18_match_arbno_af
n28_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
# BAD1    OUTPUT = 'even FAIL'
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_begin_α:
                                                                                        jmp   n30_lit_string_α
n29_statement_begin_β:
                                                                                        jmp   n33_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n31_assign_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "even FAIL"
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx98_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n32_statement_end_α
.Lx98_0:
                        .quad            .Lx98_0_s
.Lx98_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n33_statement_begin_α
#=======================================================================================================================
# T2      'abcde' POS(0) ARBNO(*P) RPOS(0)                      :S(BAD2)F(OK2)
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_begin_α:
                                                                                        jmp   n34_lit_string_α
n33_statement_begin_β:
                                                                                        jmp   n53_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        sub              rsp, 640
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
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n35_match_begin_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n35_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 448], r13                     # outer_Σ
                        mov              qword ptr [rbp + 456], r14                     # outer_δ
                        mov              qword ptr [rbp + 464], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 472], rax                     # cap_gen
                        mov              qword ptr [rbp + 440], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 416], rsp                     # zls2_mark
                        mov              dword ptr [rbp + 400], 0                       # start_δ
.Lx105_0:
                        mov              r14d, dword ptr [rbp + 400]
                                                                                        jmp   n36_lit_integer_α
n35_match_begin_β:
                        add              dword ptr [rbp + 400], 1
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, r15d
                                                                                        jg    .Lx105_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx105_1
                                                                                        jmp   .Lx105_0
.Lx105_1:
n35_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 416]
                        mov              r13, qword ptr [rbp + 448]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 456]                     # outer_δ
                        mov              r15, qword ptr [rbp + 464]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 472]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 440]                     # old_rbp
                        add              rsp, 640
                                                                                        jmp   n53_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rsp + 480], 3                       # result
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 488], rax
                                                                                        jmp   n37_match_pos_α
.Lx106_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n37_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n35_match_begin_β
                                                                                        jmp   n38_match_arbno_α
n37_match_pos_β:
                                                                                        jmp   n35_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n38_match_arbno_α:
                        mov              dword ptr [rbp + 512], r14d
                        mov              dword ptr [rbp + 516], r14d
                        mov              dword ptr [rbp + 520], 0
                        mov              qword ptr [rbp + 536], rsp
                        mov              qword ptr [rbp + 544], rbp
                        mov              qword ptr [rbp + 528], 0
                                                                                        jmp   n39_lit_integer_α
n38_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 516]
                        mov              rax, qword ptr [rbp + 528]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 528], rsp
                        mov              rbp, rsp
                        add              rbp, -536
                                                                                        jmp   n48_match_defer_α
n38_match_arbno_as:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              r14d, eax
                                                                                        je    n48_match_defer_β
                        mov              rbp, qword ptr [rbp + 536]
                        mov              eax, dword ptr [rbp + 520]
                        add              eax, 1
                        mov              dword ptr [rbp + 520], eax
                        mov              dword ptr [rbp + 516], r14d
                                                                                        jmp   n39_lit_integer_α
n38_match_arbno_af:
                        mov              rax, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 536]
                        lea              rsp, [rbp + 616]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 520]
                        test             ecx, ecx
                                                                                        jz    .Lx109_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 520], ecx
                        mov              qword ptr [rbp + 528], rax
                        lea              rbp, [rax + -536]
                                                                                        jmp   n48_match_defer_β
.Lx109_2:
                        mov              r14d, dword ptr [rbp + 512]
                        mov              rbp, qword ptr [rbp + 544]
                        mov              rsp, qword ptr [rbp + 536]
                                                                                        jmp   n37_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:
                        mov              qword ptr [rsp + 608], 3                       # result
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 616], rax
                                                                                        jmp   n40_match_rpos_α
.Lx110_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n40_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n38_match_arbno_β
                                                                                        jmp   n41_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n41_match_end_α:
                        mov              r10, r12
.Lx113_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx113_9
                        mov              rsp, qword ptr [rbp + 416]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx113_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx113_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx113_1:
                        test             rax, rax
                                                                                        je    .Lx113_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx113_3]
                        lea              rdx, [rip + .Lx113_4]
                                                                                        jmp   rax
.Lx113_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx113_1
.Lx113_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx113_1
.Lx113_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 448]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 456]                     # outer_δ
                        mov              r15, qword ptr [rbp + 464]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 472]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 440]                     # old_rbp
                                                                                        jmp   n42_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:
                        add              rsp, 640
                                                                                        jmp   n43_statement_begin_α
#=======================================================================================================================
# BAD2    OUTPUT = 'odd FAIL'
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:
                                                                                        jmp   n44_lit_string_α
n43_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n45_assign_α
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "odd FAIL"
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx119_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n46_statement_end_α
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rsp + 592], 2                       # result
                        mov              dword ptr [rsp + 596], 5
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   main_γ
n47_lit_string_β:
                                                                                        jmp   main_ω
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n48_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx123_11
                        mov              rax, qword ptr [1879052288]                    # P
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx123_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx123_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx123_10
.Lx123_9:
                        xor              eax, eax
.Lx123_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx123_11:
                        test             rax, rax
                                                                                        jz    .Lx123_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx123_4]
                        lea              rdx, [rip + .Lx123_5]
                                                                                        jmp   rax
.Lx123_4:
                                                                                        jmp   n38_match_arbno_as
.Lx123_5:
                                                                                        jmp   n38_match_arbno_af
.Lx123_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx123_2:
                        test             rax, rax
                                                                                        je    .Lx123_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx123_7]
                        lea              rdx, [rip + .Lx123_8]
                                                                                        jmp   rax
.Lx123_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx123_2
.Lx123_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx123_2
.Lx123_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n38_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx123_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n38_match_arbno_as
.Lx123_6:
                        add              rsp, 16
                                                                                        jmp   n38_match_arbno_af
n48_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n49_goto_α:
                                                                                        jmp   n23_statement_begin_α
n49_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n50_goto_α:
                                                                                        jmp   n29_statement_begin_α
n50_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n51_goto_α:
                                                                                        jmp   n33_statement_begin_α
n51_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n52_goto_α:
                                                                                        jmp   n53_statement_begin_α
n52_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# OK2     OUTPUT = 'odd rejected ok'                             :(END)
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:
                                                                                        jmp   n54_lit_string_α
n53_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n55_assign_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "odd rejected ok"
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx131_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n56_statement_end_α
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n57_goto_α:
                                                                                        jmp   n43_statement_begin_α
n57_goto_β:
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
.S0:                    .string          "P"
                        .text
                        .section         .note.GNU-stack,"",@progbits
